package com.oppo.statistics.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class ApkInfoUtil {
    public static int getAppCode(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getApplicationInfo(getPackageName(context), 128).metaData.getInt("AppCode");
            if (i == 0) {
                LogUtil.e("NearMeStatistics", "AppCode not set. please read the document of NearMeStatistics SDK.");
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return i;
    }

    public static String getAppName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "0";
        }
    }

    public static String getPackageName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "0";
        }
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return 0;
        }
    }

    public static int getVersionCode(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return 0;
        }
    }

    public static String getVersionName(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null || packageInfo.versionName == null) {
                return "0";
            }
            String str = packageInfo.versionName;
            LogUtil.i("versionName=" + str);
            return str;
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            return "0";
        }
    }
}
