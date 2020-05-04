package com.color.compat.content;

import android.content.Intent;
import android.util.Log;
import com.color.inner.content.IntentWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class IntentNative {
    public static String ACTION_CALL_PRIVILEGED = null;
    public static int FLAG_RECEIVER_INCLUDE_BACKGROUND = 0;
    public static int OPPO_FLAG_MUTIL_APP = 1024;
    public static int OPPO_FLAG_MUTIL_CHOOSER = 512;
    private static final String TAG = "IntentNative";

    static {
        try {
            if (VersionUtils.isQ()) {
                FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
                ACTION_CALL_PRIVILEGED = "android.intent.action.CALL_PRIVILEGED";
            } else if (VersionUtils.isL()) {
                FLAG_RECEIVER_INCLUDE_BACKGROUND = 16777216;
                ACTION_CALL_PRIVILEGED = "android.intent.action.CALL_PRIVILEGED";
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private IntentNative() {
    }

    public static int getCallingUid(Intent intent) {
        try {
            if (!VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (intent != null) {
                return IntentWrapper.getCallingUid(intent);
            } else {
                return -1;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getColorUserId(Intent intent) {
        if (intent == null) {
            return -1;
        }
        try {
            return IntentWrapper.getColorUserId(intent);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getIsFromGameSpace(Intent intent) {
        if (intent == null) {
            return -1;
        }
        try {
            return IntentWrapper.getIsFromGameSpace(intent);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getOppoFlags(Intent intent) {
        if (intent == null) {
            return -1;
        }
        try {
            return IntentWrapper.getOppoFlags(intent);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void setColorUserId(Intent intent, int i) {
        if (intent != null) {
            try {
                IntentWrapper.setColorUserId(intent, i);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    public static void setIsFromGameSpace(Intent intent, int i) {
        if (intent != null) {
            try {
                IntentWrapper.setIsFromGameSpace(intent, i);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    public static void setOppoFlags(Intent intent, int i) {
        if (intent != null) {
            try {
                IntentWrapper.setOppoFlags(intent, i);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }
}
