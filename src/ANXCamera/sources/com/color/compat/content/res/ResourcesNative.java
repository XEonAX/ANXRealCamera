package com.color.compat.content.res;

import android.content.res.Resources;
import android.util.Log;
import com.color.inner.content.res.ResourcesWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ResourcesNative {
    private static final String TAG = "ResourcesNative";

    private ResourcesNative() {
    }

    public static float getCompatApplicationScale(Resources resources) {
        try {
            if (VersionUtils.isQ()) {
                return ResourcesWrapper.getCompatApplicationScale(resources);
            }
            if (VersionUtils.isN()) {
                return resources.getCompatibilityInfo().applicationScale;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1.0f;
        }
    }

    public static boolean getThemeChanged(Resources resources) {
        try {
            return ResourcesWrapper.getThemeChanged(resources);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void setIsThemeChanged(Resources resources, boolean z) {
        try {
            ResourcesWrapper.setIsThemeChanged(resources, z);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
