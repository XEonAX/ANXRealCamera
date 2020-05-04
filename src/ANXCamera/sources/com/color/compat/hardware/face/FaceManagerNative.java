package com.color.compat.hardware.face;

import android.content.Context;
import android.util.Log;
import com.color.inner.hardware.face.FaceManagerWrapper;

public class FaceManagerNative {
    public static final int FACE_ERROR_CAMERA_UNAVAILABLE = 0;
    private final String TAG = "FaceManagerNative";
    private FaceManagerWrapper mFmWrapper = new FaceManagerWrapper();

    public int getFailedAttempts(Context context) {
        FaceManagerWrapper faceManagerWrapper = this.mFmWrapper;
        if (faceManagerWrapper == null) {
            return -1;
        }
        try {
            return faceManagerWrapper.getFailedAttempts(context);
        } catch (Throwable th) {
            Log.e("FaceManagerNative", th.toString());
            return -1;
        }
    }

    public long getLockoutAttemptDeadline(Context context) {
        FaceManagerWrapper faceManagerWrapper = this.mFmWrapper;
        if (faceManagerWrapper == null) {
            return -1;
        }
        try {
            return faceManagerWrapper.getLockoutAttemptDeadline(context);
        } catch (Throwable th) {
            Log.e("FaceManagerNative", th.toString());
            return -1;
        }
    }
}
