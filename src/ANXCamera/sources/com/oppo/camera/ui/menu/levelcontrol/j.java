package com.oppo.camera.ui.menu.levelcontrol;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.opengl.GLES31;
import com.oppo.camera.d;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* compiled from: ShaderUtil */
public class j {
    public static int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        d.e("ShaderUtil", "loadShader, Could not compile shader " + i + ": " + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }

    public static int a(String str, String str2) {
        int a2 = a(35633, str);
        if (a2 == 0) {
            return 0;
        }
        int a3 = a(35632, str2);
        if (a3 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, a2);
            a("glAttachShader");
            GLES20.glAttachShader(glCreateProgram, a3);
            a("glAttachShader");
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                d.e("ShaderUtil", "createProgram, Could not link program: " + GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return 0;
            }
        }
        return glCreateProgram;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x006e A[SYNTHETIC, Splitter:B:53:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0077 A[Catch:{ Exception -> 0x007b }] */
    public static String a(String str, Resources resources) {
        String str2;
        String str3;
        Throwable th;
        Throwable th2;
        String str4;
        Throwable th3 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                InputStream open = resources.getAssets().open(str);
                while (true) {
                    try {
                        int read = open.read();
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(read);
                    } catch (Throwable th4) {
                        th = th4;
                        th2 = null;
                        str3 = null;
                        if (open != null) {
                            if (th2 != null) {
                                try {
                                    open.close();
                                } catch (Throwable th5) {
                                    th = th5;
                                    th3 = th;
                                    try {
                                        throw th3;
                                    } catch (Throwable th6) {
                                        th = th6;
                                    }
                                }
                            } else {
                                open.close();
                            }
                        }
                        throw th;
                    }
                }
                str4 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                try {
                    str2 = str4.replaceAll("\\r\\n", "\n");
                    if (open != null) {
                        try {
                            open.close();
                        } catch (Throwable th7) {
                            th = th7;
                            str3 = str2;
                            if (th3 == null) {
                            }
                            throw th;
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    str3 = str4;
                    th2 = null;
                    if (open != null) {
                    }
                    throw th;
                }
            } catch (Throwable th9) {
                th = th9;
                str3 = null;
                if (th3 == null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th10) {
                        try {
                            th3.addSuppressed(th10);
                        } catch (Exception e2) {
                            e = e2;
                            str2 = str3;
                            e.printStackTrace();
                            return str2;
                        }
                    }
                } else {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            str2 = null;
            e.printStackTrace();
            return str2;
        }
        return str2;
    }

    public static FloatBuffer a(float[] fArr) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr);
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            d.e("ShaderUtil", "checkGlError, op: " + str + ", glError: " + glGetError);
            throw new RuntimeException(str + ": glError " + glGetError);
        }
    }

    public static void a(int[] iArr, int[] iArr2, int i, int i2) {
        GLES31.glGenFramebuffers(iArr.length, iArr, 0);
        GLES31.glGenTextures(iArr2.length, iArr2, 0);
        for (int i3 = 0; i3 < iArr2.length; i3++) {
            GLES31.glBindTexture(3553, iArr2[i3]);
            GLES31.glTexStorage2D(3553, 1, 32856, i, i2);
            GLES31.glTexParameterf(3553, 10240, 9729.0f);
            GLES31.glTexParameterf(3553, 10241, 9729.0f);
            GLES31.glTexParameterf(3553, 10242, 33071.0f);
            GLES31.glTexParameterf(3553, 10243, 33071.0f);
            GLES31.glBindFramebuffer(36160, iArr[i3]);
            GLES31.glFramebufferTexture2D(36160, 36064, 3553, iArr2[i3], 0);
            GLES31.glBindTexture(3553, 0);
            GLES31.glBindFramebuffer(36160, 0);
        }
        a("createStorageFrameBuffer");
    }
}
