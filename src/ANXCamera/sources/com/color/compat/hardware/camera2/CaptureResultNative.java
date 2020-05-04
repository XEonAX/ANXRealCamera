package com.color.compat.hardware.camera2;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import com.color.inner.hardware.camera2.CaptureResultWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class CaptureResultNative {
    private static final String TAG = "CaptureResultNative";

    private CaptureResultNative() {
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String str, Class<T> cls) {
        try {
            if (VersionUtils.isQ()) {
                return CaptureResultWrapper.captureResultKey(str, cls);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String str, Class<T> cls, long j) {
        try {
            if (VersionUtils.isQ()) {
                return CaptureResultWrapper.captureResultKey(str, cls, j);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String str, String str2, Class<T> cls) {
        try {
            if (VersionUtils.isQ()) {
                return CaptureResultWrapper.captureResultKey(str, str2, cls);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
