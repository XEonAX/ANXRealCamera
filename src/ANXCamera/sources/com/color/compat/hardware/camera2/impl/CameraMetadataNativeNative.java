package com.color.compat.hardware.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import com.color.inner.hardware.camera2.impl.CameraMetadataNativeWrapper;
import java.util.concurrent.ConcurrentHashMap;

public class CameraMetadataNativeNative {
    private static final String TAG = "CameraMetadataNativeNative";

    private CameraMetadataNativeNative() {
    }

    public static int copyBuf(Object obj, long j) {
        try {
            return CameraMetadataNativeWrapper.copyBuf(obj, j);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getBufSize(Object obj) {
        try {
            return CameraMetadataNativeWrapper.getBufSize(obj);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static long getMetadataPtr(Object obj) {
        try {
            return CameraMetadataNativeWrapper.getMetadataPtr(obj);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static ConcurrentHashMap<CaptureResult.Key<?>, Integer> getVendorTagId(CaptureResult captureResult) {
        try {
            return CameraMetadataNativeWrapper.getVendorTagId(captureResult);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}
