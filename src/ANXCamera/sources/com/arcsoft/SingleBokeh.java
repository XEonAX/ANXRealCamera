package com.arcsoft;

import java.nio.ByteBuffer;

public class SingleBokeh {
    static {
        System.loadLibrary("SingleBokeh");
    }

    public static native int init(int i, int i2);

    public static native int process(byte[] bArr, ByteBuffer byteBuffer, int i, int i2, int i3, int i4, int i5, int i6, float f, int i7, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5);

    public static native int processSplit(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, int i3, int i4, int i5, int i6, float f);

    public static native int unInit();
}
