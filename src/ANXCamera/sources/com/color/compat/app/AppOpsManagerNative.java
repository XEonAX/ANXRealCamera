package com.color.compat.app;

import android.app.AppOpsManager;
import android.util.Log;
import com.color.inner.app.AppOpsManagerWrapper;

public class AppOpsManagerNative {
    public static int OP_GET_USAGE_STATS = 43;
    public static int OP_WRITE_SETTINGS = 23;
    private static final String TAG = "AppOpsManagerNative";

    private AppOpsManagerNative() {
    }

    public static void setMode(AppOpsManager appOpsManager, int i, int i2, String str, int i3) {
        try {
            AppOpsManagerWrapper.setMode(appOpsManager, i, i2, str, i3);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setUidMode(AppOpsManager appOpsManager, String str, int i, int i2) {
        try {
            AppOpsManagerWrapper.setUidMode(appOpsManager, str, i, i2);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
