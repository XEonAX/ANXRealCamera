package com.color.compat.view;

import android.util.Log;
import android.view.Window;
import com.color.inner.view.WindowWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class WindowNative {
    private static final String TAG = "WindowNative";

    private WindowNative() {
    }

    public static boolean isDestroyed(Window window) {
        try {
            if (VersionUtils.isQ()) {
                return WindowWrapper.isDestroyed(window);
            }
            if (VersionUtils.isN_MR1()) {
                return window.isDestroyed();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void setCloseOnTouchOutside(Window window, boolean z) {
        try {
            WindowWrapper.setCloseOnTouchOutside(window, z);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
