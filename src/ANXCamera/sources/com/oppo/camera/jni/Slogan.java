package com.oppo.camera.jni;

import com.oppo.camera.o.d;
import java.nio.ByteBuffer;

public class Slogan {
    static {
        if (d.w()) {
            System.loadLibrary("SloganJni_qualcomm");
        } else {
            System.loadLibrary("SloganJni");
        }
    }

    public native int isSloganFileExist(String str);

    public native int setSloganBuffer(ByteBuffer byteBuffer, int i, String str);

    public native int sloganFileDelete(String str);
}
