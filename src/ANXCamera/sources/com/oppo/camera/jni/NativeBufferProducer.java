package com.oppo.camera.jni;

import java.nio.ByteBuffer;

public class NativeBufferProducer {

    public static class NativeBufferInfo {
        public long mBufferAddr = 0;
        public int mBufferFd = 0;
        public int mBufferSize = 0;
        public boolean mbIonBuffer = false;

        public String toString() {
            return "NativeBufferInfo: " + "mBufferFd: " + this.mBufferFd + "\n mBufferSize: " + this.mBufferSize + "\n mBufferAddr: " + this.mBufferAddr;
        }
    }

    static {
        System.loadLibrary("OppoNativeBufferProducer");
    }

    public native byte[] freeNativeBuffer(NativeBufferInfo nativeBufferInfo);

    public native NativeBufferInfo getNativeBuffer(ByteBuffer[] byteBufferArr, int[] iArr, int[] iArr2, int[] iArr3, boolean z, boolean z2);

    public native NativeBufferInfo getNativeBufferFromByteArray(byte[] bArr, int i, boolean z);

    public native void removePadding(NativeBufferInfo nativeBufferInfo, int i, int i2, int i3, int i4, boolean z);
}
