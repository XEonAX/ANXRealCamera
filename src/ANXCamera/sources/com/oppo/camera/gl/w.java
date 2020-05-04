package com.oppo.camera.gl;

import android.os.Build;

/* compiled from: Utils */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2196a = (Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug"));

    /* renamed from: b  reason: collision with root package name */
    private static long[] f2197b = new long[256];

    static {
        for (int i = 0; i < 256; i++) {
            long j = (long) i;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (j >> 1) ^ ((((int) j) & 1) != 0 ? -7661587058870466123L : 0);
            }
            f2197b[i] = j;
        }
    }

    public static float a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new AssertionError();
        }
    }
}
