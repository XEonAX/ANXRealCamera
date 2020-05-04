package com.color.compat.telephony;

import android.telephony.TelephonyManager;
import android.util.Log;
import com.color.inner.telephony.TelephonyManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.List;

public class TelephonyManagerNative {
    public static int NETWORK_CLASS_2_G = 1;
    public static int NETWORK_CLASS_3_G = 2;
    public static int NETWORK_CLASS_4_G = 3;
    public static int NETWORK_CLASS_UNKNOWN = 0;
    private static final String TAG = "TelephonyManagerNative";

    static {
        try {
            if (VersionUtils.isQ()) {
                NETWORK_CLASS_UNKNOWN = 0;
            } else if (VersionUtils.isN_MR1()) {
                NETWORK_CLASS_UNKNOWN = 0;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private TelephonyManagerNative() {
    }

    public static String getIccAuthentication(TelephonyManager telephonyManager, int i, int i2, int i3, String str) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.getIccAuthentication(telephonyManager, i, i2, i3, str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getNetworkClass(TelephonyManager telephonyManager, int i) {
        int networkClass;
        int i2 = NETWORK_CLASS_UNKNOWN;
        try {
            if (VersionUtils.isQ()) {
                networkClass = TelephonyManagerWrapper.getNetworkClass(telephonyManager, i);
            } else if (VersionUtils.isN_MR1()) {
                networkClass = TelephonyManager.getNetworkClass(i);
            } else {
                throw new UnsupportedOperationException();
            }
            return networkClass;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return i2;
        }
    }

    public static int getPreferredNetworkType(TelephonyManager telephonyManager, int i) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.getPreferredNetworkType(telephonyManager, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static String getSimCountryIso(TelephonyManager telephonyManager, int i) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.getSimCountryIso(telephonyManager, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public static String getTelephonyProperty(TelephonyManager telephonyManager, int i, String str, String str2) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.getTelephonyProperty(telephonyManager, i, str, str2);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean isMultiSimEnabled(TelephonyManager telephonyManager) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.isMultiSimEnabled(telephonyManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean setRoamingOverride(TelephonyManager telephonyManager, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        try {
            if (VersionUtils.isQ()) {
                return TelephonyManagerWrapper.setRoamingOverride(telephonyManager, list, list2, list3, list4);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
