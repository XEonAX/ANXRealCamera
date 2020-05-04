package com.color.compat.app;

import android.util.Log;
import com.color.inner.app.ActivityTaskManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ActivityTaskManagerNative {
    private static final String TAG = "ActivityTaskManagerNative";

    public static class StackInfoNative {
        public String[] taskNames;
        public int[] taskUserIds;
        public int userId;

        private StackInfoNative(ActivityTaskManagerWrapper.StackInfoWrapper stackInfoWrapper) {
            try {
                if (VersionUtils.isQ()) {
                    this.taskNames = stackInfoWrapper.taskNames;
                    this.userId = stackInfoWrapper.userId;
                    this.taskUserIds = stackInfoWrapper.taskUserIds;
                    return;
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.e(ActivityTaskManagerNative.TAG, th.toString());
            }
        }
    }

    private ActivityTaskManagerNative() {
    }

    public static StackInfoNative getStackInfo(int i, int i2) {
        try {
            return new StackInfoNative(ActivityTaskManagerWrapper.getStackInfo(i, i2));
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
