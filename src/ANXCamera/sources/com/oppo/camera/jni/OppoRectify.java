package com.oppo.camera.jni;

import com.oppo.camera.d;
import com.oppo.camera.jni.NativeBufferProducer;

public class OppoRectify {
    public static String TAG = "OppoRectify";

    static {
        d.a(TAG, "static, prop_projectCode: SDM710_Q");
        try {
            System.loadLibrary("ArcsoftRectifyJni710");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public native int init();

    public native byte[] process(NativeBufferProducer.NativeBufferInfo nativeBufferInfo, int i, int i2, int i3, int i4, int i5, int[] iArr);

    public native int unInit();
}
