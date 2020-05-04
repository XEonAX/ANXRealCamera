package com.color.compat.hardware.camera2;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import com.color.inner.hardware.camera2.CaptureRequestWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class CaptureRequestNative {
    private static final String TAG = "CameDeviceNative";

    private CaptureRequestNative() {
    }

    public static <T> CaptureRequest.Key<T> captureRequestKey(String str, Class<T> cls) {
        try {
            if (VersionUtils.isQ()) {
                return CaptureRequestWrapper.captureRequestKey(str, cls);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static <T> CaptureRequest.Key<T> captureRequestKey(String str, Class<T> cls, long j) {
        try {
            if (VersionUtils.isQ()) {
                return CaptureRequestWrapper.captureRequestKey(str, cls, j);
            }
            throw new UnsupportedOperationException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
