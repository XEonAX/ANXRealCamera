package com.fotonation.panorama;

public class PanoramaEngine {
    static {
        System.loadLibrary("FNPanoramaApp");
    }

    public static native void panoramaDestroy(long j);

    public static native int panoramaGetDirCorrection(long j);

    public static native int panoramaGetDirection(long j);

    public static native String panoramaGetErrorStr(long j);

    public static native String panoramaGetVersion();

    public static native long panoramaInit(int i, int i2, int i3, int i4, int i5, boolean z);

    public static native int panoramaProcess(long j, byte[] bArr, int i, int i2, int[] iArr, int[] iArr2, int i3, int i4, int i5);

    public static native byte[] panoramaResult(long j, int[] iArr, boolean z);

    public static native int yuv2rgb(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4, int i5, int i6);
}
