package co.polarr.renderer.b;

import android.opengl.Matrix;

public class h {
    public static final int TYPE_CENTERCROP = 1;
    public static final int TYPE_CENTERINSIDE = 2;
    public static final int TYPE_FITEND = 4;
    public static final int TYPE_FITSTART = 3;
    public static final int TYPE_FITXY = 0;

    public static float a(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (int) (((double) i) + Math.pow((double) (fArr[i2] - fArr2[i2]), 2.0d));
        }
        return (float) Math.pow((double) i, 0.5d);
    }

    public static void a(float[] fArr, float f, int i, float f2, int i2) {
        float tan = (float) (1.0d / Math.tan((double) (f / 2.0f)));
        float f3 = (float) i2;
        float f4 = 1.0f / (f2 - f3);
        fArr[0] = tan / ((float) i);
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = tan;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = (f3 + f2) * f4;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = ((float) (i2 * 2)) * f2 * f4;
        fArr[15] = 0.0f;
    }

    public static void a(float[] fArr, int i, int i2, int i3, int i4, int i5) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i6 = i;
        int i7 = i2;
        int i8 = i3;
        int i9 = i4;
        int i10 = i5;
        if (i8 > 0 && i7 > 0 && i9 > 0 && i10 > 0) {
            float[] fArr2 = new float[16];
            float[] fArr3 = new float[16];
            if (i6 == 0) {
                Matrix.orthoM(fArr2, 0, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 3.0f);
                Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
            }
            float f7 = ((float) i9) / ((float) i10);
            float f8 = ((float) i7) / ((float) i8);
            float f9 = -1.0f;
            float f10 = 1.0f;
            if (f8 <= f7) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            if (i6 == 4) {
                                f6 = 1.0f - ((f7 * 2.0f) / f8);
                                f4 = 1.0f;
                            }
                            Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                            Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
                        }
                        f4 = ((f7 * 2.0f) / f8) - 1.0f;
                        f6 = -1.0f;
                        f9 = f6;
                        f5 = -1.0f;
                        f = f4;
                        f2 = f9;
                        f9 = f5;
                        Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
                        Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                        Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
                    }
                }
                f3 = f8 / f7;
                f2 = -1.0f;
                f = 1.0f;
                f9 = (-f8) / f7;
                f10 = f3;
                Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
                Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
            } else if (i6 != 1) {
                if (i6 != 2) {
                    if (i6 != 3) {
                        if (i6 == 4) {
                            f3 = ((f8 * 2.0f) / f7) - 1.0f;
                            f2 = -1.0f;
                            f = 1.0f;
                            f10 = f3;
                            Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
                        }
                        Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                        Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
                    }
                    f5 = 1.0f - ((f8 * 2.0f) / f7);
                    f4 = 1.0f;
                    f = f4;
                    f2 = f9;
                    f9 = f5;
                    Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
                    Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                    Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
                }
                f3 = f8 / f7;
                f2 = -1.0f;
                f = 1.0f;
                f9 = (-f8) / f7;
                f10 = f3;
                Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
                Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
            }
            f6 = (-f7) / f8;
            f4 = f7 / f8;
            f9 = f6;
            f5 = -1.0f;
            f = f4;
            f2 = f9;
            f9 = f5;
            Matrix.orthoM(fArr2, 0, f2, f, f9, f10, 1.0f, 3.0f);
            Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
        }
    }

    public static void a(float[] fArr, float[] fArr2, float f, float[] fArr3) {
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        fArr3[0] = f2 + ((fArr2[0] - f2) * f);
        fArr3[1] = f3 + ((fArr2[1] - f3) * f);
        fArr3[2] = f4 + (f * (fArr2[2] - f4));
    }

    public static float[] a() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static float[] a(float[] fArr, boolean z, boolean z2) {
        if (z || z2) {
            float f = -1.0f;
            float f2 = z ? -1.0f : 1.0f;
            if (!z2) {
                f = 1.0f;
            }
            Matrix.scaleM(fArr, 0, f2, f, 1.0f);
        }
        return fArr;
    }
}
