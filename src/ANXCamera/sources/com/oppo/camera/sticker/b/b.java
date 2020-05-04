package com.oppo.camera.sticker.b;

import android.opengl.GLES20;
import com.oppo.camera.d;
import java.nio.Buffer;

/* compiled from: OpenGLUtils */
public class b {
    public static int a(int i, int i2, int[] iArr, int i3) {
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(i3, iArr[0]);
        GLES20.glTexParameterf(i3, 10240, 9729.0f);
        GLES20.glTexParameterf(i3, 10241, 9729.0f);
        GLES20.glTexParameterf(i3, 10242, 33071.0f);
        GLES20.glTexParameterf(i3, 10243, 33071.0f);
        GLES20.glTexImage2D(i3, 0, 6408, i, i2, 0, 6408, 5121, (Buffer) null);
        return iArr[0];
    }

    public static void a() {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Throwable th = new Throwable();
            d.d("OpenGLUtils", "checkGlError, error: " + glGetError, th);
        }
    }
}
