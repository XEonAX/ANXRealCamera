package com.oppo.statistics.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.color.os.ColorBuild;
import java.util.regex.Pattern;

@SuppressLint({"DefaultLocale"})
public class SystemInfoUtil {
    private static final Pattern MTK_PATTERN = Pattern.compile("^[MT]{2}[a-zA-Z0-9]{0,10}$");
    private static int STATISTICS_PLATFORM_MTK = 1;
    private static int STATISTICS_PLATFORM_QUALCOMM = 2;
    public static final String SYSTEM_NAME = "Android";

    public static String getHardware() {
        if (!isEmpty(Build.HARDWARE)) {
            return Build.HARDWARE.toUpperCase();
        }
        LogUtil.w("NearMeStatistics", "No HARDWARE INFO.");
        return "0";
    }

    public static String getImei(Context context) {
        String str;
        try {
            str = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            try {
                if (!isEmpty(str)) {
                    return str;
                }
                LogUtil.w("NearMeStatistics", "No IMEI.");
                return "0";
            } catch (Exception unused) {
                LogUtil.e("NearMeStatistics", "Failed to take mac as IMEI.");
                return str;
            }
        } catch (Exception unused2) {
            str = "0";
            LogUtil.e("NearMeStatistics", "Failed to take mac as IMEI.");
            return str;
        }
    }

    public static String getLocalPhoneNO(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return !isEmpty(telephonyManager.getLine1Number()) ? telephonyManager.getLine1Number() : "0";
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "0";
        }
    }

    public static String getMacAddress(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (!isEmpty(connectionInfo.getMacAddress())) {
                return connectionInfo.getMacAddress();
            }
            LogUtil.w("NearMeStatistics", "NO MAC ADDRESS.");
            return "0";
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "0";
        }
    }

    public static String getMobile(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (!telephonyManager.hasIccCard()) {
            return "0";
        }
        String line1Number = telephonyManager.getLine1Number();
        return (TextUtils.isEmpty(line1Number) || line1Number.equals("null")) ? "0" : line1Number;
    }

    public static String getModel() {
        if (!isEmpty(Build.MODEL)) {
            return Build.MODEL.toUpperCase();
        }
        LogUtil.w("NearMeStatistics", "No MODEL.");
        return "0";
    }

    public static String getOperator(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "";
        }
    }

    public static int getOperatorId(Context context) {
        String lowerCase = getOperator(context).toLowerCase();
        if (lowerCase.equals("中国移动") || lowerCase.equals("china mobile") || lowerCase.equals("chinamobile")) {
            return 0;
        }
        if (lowerCase.equals("中国联通") || lowerCase.equals("china unicom") || lowerCase.equals("chinaunicom")) {
            return 1;
        }
        return (lowerCase.equals("中国电信") || lowerCase.equals("china net") || lowerCase.equals("chinanet")) ? 2 : 99;
    }

    public static int getPlatForm() {
        if (getHardware().equals("QCOM")) {
            return STATISTICS_PLATFORM_QUALCOMM;
        }
        if (MTK_PATTERN.matcher(getHardware()).find()) {
            return STATISTICS_PLATFORM_MTK;
        }
        return 0;
    }

    public static String getRomVersion() {
        return "" + ColorBuild.getColorOSVERSION();
    }

    public static int getSDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    private static boolean isEmpty(String str) {
        return TextUtils.isEmpty(str) || "null".equals(str);
    }
}
