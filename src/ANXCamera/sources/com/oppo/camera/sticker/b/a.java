package com.oppo.camera.sticker.b;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.util.Log;

/* compiled from: EglCore */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private EGLDisplay f2382a;

    /* renamed from: b  reason: collision with root package name */
    private EGLContext f2383b;
    private EGLConfig c;
    private int d;
    private int[] e;

    public a() {
        this((EGLContext) null, 0);
    }

    public a(EGLContext eGLContext, int i) {
        this.f2382a = EGL14.EGL_NO_DISPLAY;
        this.f2383b = EGL14.EGL_NO_CONTEXT;
        this.c = null;
        this.d = -1;
        this.e = new int[]{12339, 4, 12352, 4, 12322, 5, 12323, 6, 12324, 5, 12344};
        if (this.f2382a == EGL14.EGL_NO_DISPLAY) {
            eGLContext = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
            this.f2382a = EGL14.eglGetDisplay(0);
            if (this.f2382a != EGL14.EGL_NO_DISPLAY) {
                int[] iArr = new int[2];
                if (EGL14.eglInitialize(this.f2382a, iArr, 0, iArr, 1)) {
                    if ((i & 2) != 0) {
                        EGLConfig a2 = a(i, 3);
                        if (a2 != null) {
                            EGLContext eglCreateContext = EGL14.eglCreateContext(this.f2382a, a2, eGLContext, new int[]{12440, 3, 12344}, 0);
                            if (EGL14.eglGetError() == 12288) {
                                this.c = a2;
                                this.f2383b = eglCreateContext;
                                this.d = 3;
                            }
                        }
                    }
                    if (this.f2383b == EGL14.EGL_NO_CONTEXT) {
                        EGLConfig a3 = a(i, 2);
                        if (a3 != null) {
                            EGLContext eglCreateContext2 = EGL14.eglCreateContext(this.f2382a, a3, eGLContext, new int[]{12440, 2, 12344}, 0);
                            a("eglCreateContext");
                            this.c = a3;
                            this.f2383b = eglCreateContext2;
                            this.d = 2;
                        } else {
                            throw new RuntimeException("Unable to find a suitable EGLConfig");
                        }
                    }
                    int[] iArr2 = new int[1];
                    EGL14.eglQueryContext(this.f2382a, this.f2383b, 12440, iArr2, 0);
                    Log.d("EglCore", "EGLContext created, client version " + iArr2[0]);
                    return;
                }
                this.f2382a = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            throw new RuntimeException("unable to get EGL14 display");
        }
        throw new RuntimeException("EGL already set up");
    }

    private EGLConfig a(int i, int i2) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i2 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i & 1) != 0) {
            iArr[iArr.length - 3] = 12610;
            iArr[iArr.length - 2] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.f2382a, iArr, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        Log.w("EglCore", "unable to find RGB8888 / " + i2 + " EGLConfig");
        return null;
    }

    private void a(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
        }
    }

    public void a() {
        if (this.f2382a != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(this.f2382a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.f2382a, this.f2383b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f2382a);
        }
        this.f2382a = EGL14.EGL_NO_DISPLAY;
        this.f2383b = EGL14.EGL_NO_CONTEXT;
        this.c = null;
    }

    public void b() {
        if (!EGL14.eglMakeCurrent(this.f2382a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, this.f2383b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void c() {
        if (!EGL14.eglMakeCurrent(this.f2382a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        try {
            if (this.f2382a != EGL14.EGL_NO_DISPLAY) {
                Log.w("EglCore", "WARNING: EglCore was not explicitly released -- state may be leaked");
                a();
            }
        } finally {
            super.finalize();
        }
    }
}
