package com.color.compat.app;

import android.util.Log;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class KeyguardManagerNative {
    public static String ACTION_CONFIRM_DEVICE_CREDENTIAL = null;
    private static final String TAG = "KeyguardManagerNative";

    static {
        try {
            if (VersionUtils.isQ()) {
                ACTION_CONFIRM_DEVICE_CREDENTIAL = "android.app.action.CONFIRM_DEVICE_CREDENTIAL";
            } else if (VersionUtils.isL()) {
                ACTION_CONFIRM_DEVICE_CREDENTIAL = "android.app.action.CONFIRM_DEVICE_CREDENTIAL";
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    private KeyguardManagerNative() {
    }
}
