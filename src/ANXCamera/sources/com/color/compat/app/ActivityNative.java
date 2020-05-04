package com.color.compat.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.util.Log;
import com.color.inner.app.ActivityWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ActivityNative {
    private static final String TAG = "ActivityNative";

    private ActivityNative() {
    }

    public static void convertFromTranslucent(Activity activity) {
        try {
            if (VersionUtils.isQ()) {
                ActivityWrapper.convertFromTranslucent(activity);
            } else if (VersionUtils.isN_MR1()) {
                activity.convertFromTranslucent();
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static boolean convertToTranslucent(Activity activity, ActivityOptions activityOptions) {
        try {
            if (VersionUtils.isQ()) {
                return ActivityWrapper.convertToTranslucent(activity, activityOptions);
            }
            if (VersionUtils.isN_MR1()) {
                activity.convertToTranslucent((Activity.TranslucentConversionListener) null, activityOptions);
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
