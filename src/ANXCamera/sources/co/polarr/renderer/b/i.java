package co.polarr.renderer.b;

import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.Build;
import co.polarr.renderer.e;
import co.polarr.renderer.render.b;
import co.polarr.renderer.render.f;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class i {
    public static void a() {
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
    }

    public static void a(int i) {
        GLES20.glBindTexture(3553, i);
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
        GLES20.glFlush();
        e.a("del tex");
    }

    public static void a(int i, int i2) {
        GLES20.glBindFramebuffer(36160, i);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
    }

    public static void a(int i, int i2, int i3) {
        GLES20.glBindTexture(3553, i);
        GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, (Buffer) null);
        GLES20.glBindTexture(3553, 0);
        e.a("resize tex id");
    }

    public static void a(int i, int i2, int i3, int i4) {
        GLES20.glTexParameterf(3553, 10242, (float) i);
        GLES20.glTexParameterf(3553, 10243, (float) i2);
        GLES20.glTexParameterf(3553, 10241, (float) i3);
        GLES20.glTexParameterf(3553, 10240, (float) i4);
    }

    public static void a(int i, int i2, Rect rect) {
        ByteBuffer allocate = ByteBuffer.allocate(rect.width() * rect.height() * 4);
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        a(iArr[0], i);
        GLES20.glReadPixels(rect.left, rect.top, rect.width(), rect.height(), 6408, 5121, allocate);
        b();
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        GLES20.glBindTexture(3553, i2);
        GLES20.glTexImage2D(3553, 0, 6408, rect.width(), rect.height(), 0, 6408, 5121, allocate);
        GLES20.glBindTexture(3553, 0);
    }

    public static void a(int i, int[] iArr, int i2, int i3, int i4, int i5) {
        a(i, iArr, i2, i3, 5121, i4, i5);
    }

    public static void a(int i, int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9 = i;
        int i10 = i3;
        int i11 = i4;
        GLES20.glGenTextures(i, iArr, i2);
        for (int i12 = 0; i12 < i9; i12++) {
            b.b(iArr[i2 + i12]);
        }
        for (int i13 = 0; i13 < i9; i13++) {
            GLES20.glBindTexture(3553, iArr[i13]);
            n.a("genTexturesWithParameter::texId=%d::width=%d::height=%d", Integer.valueOf(iArr[i13]), Integer.valueOf(i5), Integer.valueOf(i6));
            if (Build.VERSION.SDK_INT < 18 || !(i11 == 5126 || i11 == 5131 || i11 == 36193)) {
                GLES20.glTexImage2D(3553, 0, i3, i5, i6, 0, i3, i4, (Buffer) null);
            } else {
                if (i10 == 6408) {
                    i8 = 34842;
                } else if (i10 == 6407) {
                    i8 = 34843;
                } else {
                    i7 = i10;
                    GLES30.glTexImage2D(3553, 0, i7, i5, i6, 0, i3, i4, (Buffer) null);
                }
                i7 = i8;
                GLES30.glTexImage2D(3553, 0, i7, i5, i6, 0, i3, i4, (Buffer) null);
            }
            a();
        }
        GLES20.glBindTexture(3553, 0);
        e.a("gen tex");
    }

    public static void a(f fVar, int i, int i2) {
        if (fVar == null) {
            return;
        }
        if (fVar.d != i || fVar.e != i2) {
            GLES20.glBindTexture(3553, fVar.c);
            GLES20.glTexImage2D(3553, 0, fVar.f, i, i2, 0, fVar.f, 5121, (Buffer) null);
            if (i <= 0) {
                i = 1;
            }
            fVar.d = i;
            if (i2 <= 0) {
                i2 = 1;
            }
            fVar.e = i2;
            GLES20.glBindTexture(3553, 0);
            e.a("resize tex");
        }
    }

    public static void a(f fVar, int i, int i2, int i3, int i4) {
        if (fVar == null) {
            return;
        }
        if (fVar.d != i3 || fVar.e != i4) {
            GLES30.glBindTexture(3553, fVar.c);
            GLES30.glTexImage2D(3553, 0, i, i3, i4, 0, fVar.f, i2, (Buffer) null);
            int i5 = 1;
            if (i3 <= 0) {
                i3 = 1;
            }
            fVar.d = i3;
            if (i4 > 0) {
                i5 = i4;
            }
            fVar.e = i5;
            GLES30.glBindTexture(3553, 0);
            e.a("resize tex gl3");
        }
    }

    public static void a(boolean z, boolean z2) {
        if (z) {
            GLES20.glEnable(3042);
            if (z2) {
                GLES20.glBlendFunc(1, 771);
            } else {
                GLES20.glBlendFuncSeparate(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771, 1, 771);
            }
        } else {
            GLES20.glDisable(3042);
        }
    }

    public static ByteBuffer b(int i, int i2, int i3) {
        ByteBuffer allocate = ByteBuffer.allocate(i2 * i3 * 4);
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        a(iArr[0], i);
        GLES20.glReadPixels(0, 0, i2, i3, 6408, 5121, allocate);
        b();
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        return allocate;
    }

    public static void b() {
        GLES20.glBindFramebuffer(36160, 0);
    }

    public static void b(int i, int i2, int i3, int i4) {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        int i5 = i;
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i, 0);
        int i6 = i2;
        GLES20.glBindTexture(3553, i2);
        GLES20.glCopyTexSubImage2D(3553, 0, 0, 0, 0, 0, i3, i4);
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
    }

    public static void b(int i, int i2, Rect rect) {
        Rect rect2 = rect;
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        int i3 = i2;
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        int i4 = i;
        GLES20.glBindTexture(3553, i);
        GLES20.glCopyTexSubImage2D(3553, 0, rect2.left, rect2.top, 0, 0, rect.width(), rect.height());
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glDeleteFramebuffers(1, iArr, 0);
    }

    public static void b(f fVar, int i, int i2) {
        if (i <= 0) {
            i = 1;
        }
        fVar.d = i;
        if (i2 <= 0) {
            i2 = 1;
        }
        fVar.e = i2;
    }

    public static f c(int i, int i2, int i3, int i4) {
        f fVar = new f();
        fVar.c = i;
        fVar.f = i2;
        fVar.d = i3;
        fVar.e = i4;
        return fVar;
    }
}
