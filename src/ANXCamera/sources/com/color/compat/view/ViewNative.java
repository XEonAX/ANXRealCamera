package com.color.compat.view;

import android.util.Log;
import android.view.View;
import com.color.inner.view.ViewWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ViewNative {
    private static final String TAG = "ViewNative";

    private ViewNative() {
    }

    public static boolean isVisibleToUser(View view) {
        try {
            if (VersionUtils.isQ()) {
                return ViewWrapper.isVisibleToUser(view);
            }
            if (VersionUtils.isN_MR1()) {
                return view.isVisibleToUser();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean requestAccessibilityFocus(View view) {
        try {
            return ViewWrapper.requestAccessibilityFocus(view);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
