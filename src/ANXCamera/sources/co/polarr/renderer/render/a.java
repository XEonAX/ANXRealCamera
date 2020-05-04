package co.polarr.renderer.render;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

public class a {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    public static final int SURFACE_PBUFFER = 1;
    public static final int SURFACE_PIM = 2;
    public static final int SURFACE_WINDOW = 3;

    /* renamed from: a  reason: collision with root package name */
    public EGL10 f1272a;

    /* renamed from: b  reason: collision with root package name */
    public EGLDisplay f1273b;
    public EGLConfig c;
    public EGLSurface d;
    public EGLContext e;
    public GL10 f;
    private int g = 1;
    private Object h;
    private int i = 8;
    private int j = 8;
    private int k = 8;
    private int l = 8;
    private int m = 0;
    private int n = 4;
    private int o = 12421;
    private EGLContext p = EGL10.EGL_NO_CONTEXT;

    private EGLSurface a(int[] iArr) {
        int i2 = this.g;
        return i2 != 2 ? i2 != 3 ? this.f1272a.eglCreatePbufferSurface(this.f1273b, this.c, iArr) : this.f1272a.eglCreateWindowSurface(this.f1273b, this.c, this.h, iArr) : this.f1272a.eglCreatePixmapSurface(this.f1273b, this.c, this.h, iArr);
    }

    public int a(int i2, int i3) {
        int[] iArr = {12324, this.i, 12323, this.j, 12322, this.k, 12321, this.l, 12325, this.m, 12352, this.n, 12344};
        this.f1272a = (EGL10) EGLContext.getEGL();
        this.f1273b = this.f1272a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f1272a.eglInitialize(this.f1273b, new int[2]);
        int[] iArr2 = new int[1];
        this.f1272a.eglChooseConfig(this.f1273b, iArr, (EGLConfig[]) null, 0, iArr2);
        if (iArr2[0] == 0) {
            return -1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
        this.f1272a.eglChooseConfig(this.f1273b, iArr, eGLConfigArr, iArr2[0], iArr2);
        this.c = eGLConfigArr[0];
        this.d = a(new int[]{12375, i2, 12374, i3, 12344});
        this.e = this.f1272a.eglCreateContext(this.f1273b, this.c, this.p, new int[]{EGL_CONTEXT_CLIENT_VERSION, 2, 12344});
        a();
        return this.f1272a.eglGetError();
    }

    public void a() {
        EGL10 egl10 = this.f1272a;
        EGLDisplay eGLDisplay = this.f1273b;
        EGLSurface eGLSurface = this.d;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.e);
        this.f = (GL10) this.e.getGL();
    }

    public void b() {
        this.f1272a.eglMakeCurrent(this.f1273b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.f1272a.eglDestroySurface(this.f1273b, this.d);
        this.f1272a.eglDestroyContext(this.f1273b, this.e);
        this.f1272a.eglTerminate(this.f1273b);
    }
}
