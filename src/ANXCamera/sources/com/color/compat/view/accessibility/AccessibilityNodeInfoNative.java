package com.color.compat.view.accessibility;

import android.util.Log;
import android.view.accessibility.AccessibilityNodeInfo;
import com.color.inner.view.accessibility.AccessibilityNodeInfoWrapper;

public class AccessibilityNodeInfoNative {
    private static final String TAG = "AccessibilityNodeInfoNative";

    private AccessibilityNodeInfoNative() {
    }

    public static CharSequence getRealClassName(AccessibilityNodeInfo accessibilityNodeInfo) {
        try {
            return AccessibilityNodeInfoWrapper.getRealClassName(accessibilityNodeInfo);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
