package com.oppo.camera.ui.menu.levelcontrol;

import a.a.a;
import a.a.b;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.oppo.camera.d;
import com.oppo.camera.gl.i;
import java.nio.Buffer;

/* compiled from: WrapperTexture */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private int f2801a;

    /* renamed from: b  reason: collision with root package name */
    private int f2802b;
    private int c;
    private int d;
    private int e;

    public k() {
        this(-1);
    }

    public k(int i) {
        this(-1, -1, i);
    }

    public k(int i, int i2, int i3) {
        this.f2801a = 0;
        this.f2802b = -1;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.c = i3;
        this.d = i;
        this.e = i2;
    }

    public void a() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.f2802b = iArr[0];
        int g = g();
        GLES20.glBindTexture(g, c());
        i.i();
        GLES20.glTexImage2D(g, 0, 6408, this.d, this.e, 0, 6408, 5121, (Buffer) null);
        i.i();
        GLES20.glBindTexture(g, c());
        i.i();
        GLES20.glTexParameteri(g, 10242, 33071);
        i.i();
        GLES20.glTexParameteri(g, 10243, 33071);
        i.i();
        GLES20.glTexParameterf(g, 10241, 9729.0f);
        i.i();
        GLES20.glTexParameterf(g, 10240, 9729.0f);
        i.i();
        d.a("WrapperTexture", "prepare, textureId: " + c() + ", mState: " + this.f2801a + ", width: " + this.d + ", height: " + this.e);
        this.f2801a = 1;
    }

    public void a(Bitmap bitmap) {
        boolean z;
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    z = true;
                    a.a(z);
                    int[] iArr = new int[1];
                    GLES20.glGenTextures(1, iArr, 0);
                    this.f2802b = iArr[0];
                    GLES20.glBindTexture(3553, c());
                    i.i();
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                    GLUtils.texImage2D(3553, 0, bitmap, 0);
                    i.i();
                    d.a("WrapperTexture", "prepare, textureId: " + c() + ", mState: " + this.f2801a);
                    this.f2801a = 1;
                }
            } catch (b e2) {
                e2.printStackTrace();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        z = false;
        a.a(z);
        int[] iArr2 = new int[1];
        GLES20.glGenTextures(1, iArr2, 0);
        this.f2802b = iArr2[0];
        GLES20.glBindTexture(3553, c());
        i.i();
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        i.i();
        d.a("WrapperTexture", "prepare, textureId: " + c() + ", mState: " + this.f2801a);
        this.f2801a = 1;
    }

    public void b() {
        d.a("WrapperTexture", "recycle, textureId: " + c() + ", mState: " + this.f2801a);
        if (h()) {
            GLES20.glDeleteTextures(1, new int[]{this.f2802b}, 0);
            i.i();
        }
        this.f2801a = 0;
    }

    public int c() {
        return this.f2802b;
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public int f() {
        return this.e;
    }

    public int g() {
        return 3553;
    }

    public boolean h() {
        return this.f2801a == 1;
    }
}
