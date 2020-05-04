package com.oppo.camera.facebeauty;

public class FaceSlender2D {
    static {
        System.loadLibrary("face_slender_2d");
    }

    public native int destroySlender();

    public native int initSlender(int i, int i2);

    public native int processSlender(int i, int[] iArr, int[] iArr2);

    public native int resetSlender();
}
