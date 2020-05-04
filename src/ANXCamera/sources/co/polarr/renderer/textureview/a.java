package co.polarr.renderer.textureview;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.util.Log;
import android.view.Surface;

public final class a {
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    public static final int FLAG_RECORDABLE = 1;
    public static final int FLAG_TRY_GLES3 = 2;
    private static final String TAG = "EglCore";

    /* renamed from: a  reason: collision with root package name */
    private EGLDisplay f1292a;

    /* renamed from: b  reason: collision with root package name */
    private EGLContext f1293b;
    private EGLConfig c;
    private int d;

    public a() {
        this((EGLContext) null, 0);
    }

    public a(EGLContext eGLContext, int i) {
        this.f1292a = EGL14.EGL_NO_DISPLAY;
        this.f1293b = EGL14.EGL_NO_CONTEXT;
        this.c = null;
        this.d = -1;
        if (this.f1292a == EGL14.EGL_NO_DISPLAY) {
            eGLContext = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
            this.f1292a = EGL14.eglGetDisplay(0);
            if (this.f1292a != EGL14.EGL_NO_DISPLAY) {
                int[] iArr = new int[2];
                if (EGL14.eglInitialize(this.f1292a, iArr, 0, iArr, 1)) {
                    if ((i & 2) != 0) {
                        EGLConfig a2 = a(i, 3);
                        if (a2 != null) {
                            EGLContext eglCreateContext = EGL14.eglCreateContext(this.f1292a, a2, eGLContext, new int[]{12440, 3, 12344}, 0);
                            if (EGL14.eglGetError() == 12288) {
                                this.c = a2;
                                this.f1293b = eglCreateContext;
                                this.d = 3;
                            }
                        }
                    }
                    if (this.f1293b == EGL14.EGL_NO_CONTEXT) {
                        EGLConfig a3 = a(i, 2);
                        if (a3 != null) {
                            EGLContext eglCreateContext2 = EGL14.eglCreateContext(this.f1292a, a3, eGLContext, new int[]{12440, 2, 12344}, 0);
                            a("eglCreateContext");
                            this.c = a3;
                            this.f1293b = eglCreateContext2;
                            this.d = 2;
                        } else {
                            throw new RuntimeException("Unable to find a suitable EGLConfig");
                        }
                    }
                    int[] iArr2 = new int[1];
                    EGL14.eglQueryContext(this.f1292a, this.f1293b, 12440, iArr2, 0);
                    Log.d(TAG, "EGLContext created, client version " + iArr2[0]);
                    return;
                }
                this.f1292a = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            throw new RuntimeException("unable to get EGL14 display");
        }
        throw new RuntimeException("EGL already set up");
    }

    private EGLConfig a(int i, int i2) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i2 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i & 1) != 0) {
            iArr[iArr.length - 3] = EGL_RECORDABLE_ANDROID;
            iArr[iArr.length - 2] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.f1292a, iArr, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        Log.w(TAG, "unable to find RGB8888 / " + i2 + " EGLConfig");
        return null;
    }

    private void a(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
        }
    }

    public EGLSurface a(Object obj) {
        if ((obj instanceof Surface) || (obj instanceof SurfaceTexture)) {
            EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.f1292a, this.c, obj, new int[]{12344}, 0);
            a("eglCreateWindowSurface");
            if (eglCreateWindowSurface != null) {
                return eglCreateWindowSurface;
            }
            throw new RuntimeException("surface was null");
        }
        throw new RuntimeException("invalid surface: " + obj);
    }

    public void a() {
        if (this.f1292a != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(this.f1292a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.f1292a, this.f1293b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f1292a);
        }
        this.f1292a = EGL14.EGL_NO_DISPLAY;
        this.f1293b = EGL14.EGL_NO_CONTEXT;
        this.c = null;
    }

    public void a(EGLSurface eGLSurface) {
        EGL14.eglDestroySurface(this.f1292a, eGLSurface);
    }

    public void b(EGLSurface eGLSurface) {
        if (this.f1292a == EGL14.EGL_NO_DISPLAY) {
            Log.d(TAG, "NOTE: makeCurrent w/o display");
        }
        if (!EGL14.eglMakeCurrent(this.f1292a, eGLSurface, eGLSurface, this.f1293b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public boolean c(EGLSurface eGLSurface) {
        return EGL14.eglSwapBuffers(this.f1292a, eGLSurface);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        try {
            if (this.f1292a != EGL14.EGL_NO_DISPLAY) {
                Log.w(TAG, "WARNING: EglCore was not explicitly released -- state may be leaked");
                a();
            }
        } finally {
            super.finalize();
        }
    }
}
