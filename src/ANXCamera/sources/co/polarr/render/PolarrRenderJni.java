package co.polarr.render;

public class PolarrRenderJni {
    static {
        System.loadLibrary("PolarrRenderJNI");
    }

    public static native byte[] setYUVDataWithFilter(int i, int i2, int i3, int i4, boolean z, int i5, byte[] bArr, byte[] bArr2, boolean z2, int i6);

    public static native byte[] setYUVDataWithVignetteAndGrainParams(int i, int i2, int i3, int i4, boolean z, int i5, byte[] bArr, byte[] bArr2, boolean z2, int i6, float f, float f2, float f3, float f4, float f5, float f6, boolean z3, byte[] bArr3, int i7, float f7, float f8, float f9, float f10);

    public static native byte[] setYUVDataWithVignetteParams(int i, int i2, int i3, int i4, boolean z, int i5, byte[] bArr, byte[] bArr2, boolean z2, int i6, float f, float f2, float f3, float f4, float f5, float f6, boolean z3, byte[] bArr3, int i7);
}
