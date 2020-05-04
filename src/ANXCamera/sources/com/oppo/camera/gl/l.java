package com.oppo.camera.gl;

import android.graphics.SurfaceTexture;
import android.opengl.GLDebugHelper;
import android.util.Log;
import android.view.Choreographer;
import android.view.SurfaceHolder;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: GLProducer */
public class l {
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final j f2162b = new j();

    /* renamed from: a  reason: collision with root package name */
    Choreographer.FrameCallback f2163a = new Choreographer.FrameCallback() {
        public void doFrame(long j) {
            l.this.d();
            if (l.this.c() == 1) {
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    };
    private final WeakReference<l> c = new WeakReference<>(this);
    private i d;
    /* access modifiers changed from: private */
    public m e;
    private SurfaceTexture f;
    /* access modifiers changed from: private */
    public e g;
    /* access modifiers changed from: private */
    public f h;
    /* access modifiers changed from: private */
    public g i;
    /* access modifiers changed from: private */
    public k j;
    /* access modifiers changed from: private */
    public int k;
    /* access modifiers changed from: private */
    public int l;
    /* access modifiers changed from: private */
    public boolean m;

    /* compiled from: GLProducer */
    private abstract class a implements e {

        /* renamed from: a  reason: collision with root package name */
        protected int[] f2165a;

        public a(int[] iArr) {
            this.f2165a = a(iArr);
        }

        private int[] a(int[] iArr) {
            if (l.this.l != 2 && l.this.l != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[(length + 2)];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            if (l.this.l == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }

        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (egl10.eglChooseConfig(eGLDisplay, this.f2165a, (EGLConfig[]) null, 0, iArr)) {
                int i = iArr[0];
                if (i > 0) {
                    EGLConfig[] eGLConfigArr = new EGLConfig[i];
                    if (egl10.eglChooseConfig(eGLDisplay, this.f2165a, eGLConfigArr, i, iArr)) {
                        EGLConfig a2 = a(egl10, eGLDisplay, eGLConfigArr);
                        if (a2 != null) {
                            return a2;
                        }
                        throw new IllegalArgumentException("No config chosen");
                    }
                    throw new IllegalArgumentException("eglChooseConfig#2 failed");
                }
                throw new IllegalArgumentException("No configs match configSpec");
            }
            throw new IllegalArgumentException("eglChooseConfig failed");
        }

        /* access modifiers changed from: package-private */
        public abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);
    }

    /* compiled from: GLProducer */
    private class b extends a {
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        protected int g;
        protected int h;
        private int[] j = new int[1];

        public b(int i2, int i3, int i4, int i5, int i6, int i7) {
            super(new int[]{12324, i2, 12323, i3, 12322, i4, 12321, i5, 12325, i6, 12326, i7, 12344});
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int i3) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, this.j) ? this.j[0] : i3;
        }

        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                EGL10 egl102 = egl10;
                EGLDisplay eGLDisplay2 = eGLDisplay;
                EGLConfig eGLConfig2 = eGLConfig;
                int a2 = a(egl102, eGLDisplay2, eGLConfig2, 12325, 0);
                int a3 = a(egl102, eGLDisplay2, eGLConfig2, 12326, 0);
                if (a2 >= this.g && a3 >= this.h) {
                    EGL10 egl103 = egl10;
                    EGLDisplay eGLDisplay3 = eGLDisplay;
                    EGLConfig eGLConfig3 = eGLConfig;
                    int a4 = a(egl103, eGLDisplay3, eGLConfig3, 12324, 0);
                    int a5 = a(egl103, eGLDisplay3, eGLConfig3, 12323, 0);
                    int a6 = a(egl103, eGLDisplay3, eGLConfig3, 12322, 0);
                    int a7 = a(egl103, eGLDisplay3, eGLConfig3, 12321, 0);
                    if (a4 == this.c && a5 == this.d && a6 == this.e && a7 == this.f) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    /* compiled from: GLProducer */
    private class c implements f {

        /* renamed from: b  reason: collision with root package name */
        private int f2168b;

        private c() {
            this.f2168b = 12440;
        }

        public EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {this.f2168b, l.this.l, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (l.this.l == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (!egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
                h.a("eglDestroyContex", egl10.eglGetError());
            }
        }
    }

    /* compiled from: GLProducer */
    private static class d implements g {
        private d() {
        }

        public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, (int[]) null);
            } catch (IllegalArgumentException e) {
                Log.e("GLProducer", "eglCreateWindowSurface", e);
                return null;
            }
        }

        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    /* compiled from: GLProducer */
    public interface e {
        EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    /* compiled from: GLProducer */
    public interface f {
        EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    /* compiled from: GLProducer */
    public interface g {
        EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    /* compiled from: GLProducer */
    private static class h {

        /* renamed from: a  reason: collision with root package name */
        EGL10 f2169a;

        /* renamed from: b  reason: collision with root package name */
        EGLDisplay f2170b;
        EGLSurface c;
        EGLConfig d;
        EGLContext e;
        private WeakReference<l> f;

        public h(WeakReference<l> weakReference) {
            this.f = weakReference;
        }

        private void a(String str) {
            a(str, this.f2169a.eglGetError());
        }

        public static void a(String str, int i) {
            throw new RuntimeException(b(str, i));
        }

        public static void a(String str, String str2, int i) {
            Log.w(str, b(str2, i));
        }

        public static String b(String str, int i) {
            return str + " failed: " + l.e(i);
        }

        private void g() {
            EGLSurface eGLSurface = this.c;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                this.f2169a.eglMakeCurrent(this.f2170b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                l lVar = (l) this.f.get();
                if (lVar != null) {
                    lVar.i.a(this.f2169a, this.f2170b, this.c);
                }
                this.c = null;
            }
        }

        public void a() {
            Log.w("EglHelper", "start() tid=" + Thread.currentThread().getId());
            this.f2169a = (EGL10) EGLContext.getEGL();
            this.f2170b = this.f2169a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.f2170b != EGL10.EGL_NO_DISPLAY) {
                if (this.f2169a.eglInitialize(this.f2170b, new int[2])) {
                    l lVar = (l) this.f.get();
                    if (lVar == null) {
                        this.d = null;
                        this.e = null;
                    } else {
                        this.d = lVar.g.a(this.f2169a, this.f2170b);
                        this.e = lVar.h.a(this.f2169a, this.f2170b, this.d);
                    }
                    EGLContext eGLContext = this.e;
                    if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                        this.e = null;
                        a("createContext");
                    }
                    Log.v("GLProducer", "createContext, mEglContext: " + this.e + " tid: " + Thread.currentThread().getId());
                    this.c = null;
                    return;
                }
                throw new RuntimeException("eglInitialize failed");
            }
            throw new RuntimeException("eglGetDisplay failed");
        }

        public boolean b() {
            Log.w("EglHelper", "createSurface()  tid=" + Thread.currentThread().getId());
            if (this.f2169a == null) {
                throw new RuntimeException("egl not initialized");
            } else if (this.f2170b == null) {
                throw new RuntimeException("eglDisplay not initialized");
            } else if (this.d != null) {
                g();
                l lVar = (l) this.f.get();
                if (lVar != null) {
                    this.c = lVar.i.a(this.f2169a, this.f2170b, this.d, lVar.a());
                } else {
                    this.c = null;
                }
                EGLSurface eGLSurface = this.c;
                if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                    if (this.f2169a.eglGetError() == 12299) {
                        Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                    }
                    return false;
                }
                EGL10 egl10 = this.f2169a;
                EGLDisplay eGLDisplay = this.f2170b;
                EGLSurface eGLSurface2 = this.c;
                if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, this.e)) {
                    return true;
                }
                a("EGLHelper", "eglMakeCurrent", this.f2169a.eglGetError());
                return false;
            } else {
                throw new RuntimeException("mEglConfig not initialized");
            }
        }

        /* access modifiers changed from: package-private */
        public GL c() {
            GL gl = this.e.getGL();
            l lVar = (l) this.f.get();
            if (lVar == null) {
                return gl;
            }
            if (lVar.j != null) {
                gl = lVar.j.a(gl);
            }
            if ((lVar.k & 3) == 0) {
                return gl;
            }
            int i = 0;
            C0059l lVar2 = null;
            if ((lVar.k & 1) != 0) {
                i = 1;
            }
            if ((lVar.k & 2) != 0) {
                lVar2 = new C0059l();
            }
            return GLDebugHelper.wrap(gl, i, lVar2);
        }

        public int d() {
            if (!this.f2169a.eglSwapBuffers(this.f2170b, this.c)) {
                return this.f2169a.eglGetError();
            }
            return 12288;
        }

        public void e() {
            Log.w("EglHelper", "destroySurface()  tid=" + Thread.currentThread().getId());
            g();
        }

        public void f() {
            Log.w("EglHelper", "finish() tid=" + Thread.currentThread().getId());
            if (this.e != null) {
                l lVar = (l) this.f.get();
                if (lVar != null) {
                    Log.v("GLProducer", "finish, destroyContext mEglContext: " + this.e);
                    lVar.h.a(this.f2169a, this.f2170b, this.e);
                }
                this.e = null;
            }
            EGLDisplay eGLDisplay = this.f2170b;
            if (eGLDisplay != null) {
                this.f2169a.eglTerminate(eGLDisplay);
                this.f2170b = null;
            }
        }
    }

    /* compiled from: GLProducer */
    static class i extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2171a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public boolean f2172b;
        private boolean c;
        private boolean d;
        private boolean e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        private int l = 0;
        private int m = 0;
        private int n = 1;
        private boolean o = true;
        private boolean p = false;
        private boolean q;
        private ArrayList<Runnable> r = new ArrayList<>();
        private boolean s = true;
        private h t;
        private WeakReference<l> u;

        i(WeakReference<l> weakReference) {
            this.u = weakReference;
        }

        private void i() {
            if (this.i) {
                this.i = false;
                this.t.e();
            }
        }

        private void j() {
            if (this.h) {
                this.t.f();
                this.h = false;
                l.f2162b.b(this);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:101:?, code lost:
            r1.j = true;
            com.oppo.camera.gl.l.h().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:102:0x0273, code lost:
            monitor-exit(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:103:0x0274, code lost:
            r12 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:108:0x0279, code lost:
            r7 = com.oppo.camera.gl.l.h();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:109:0x027d, code lost:
            monitor-enter(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:?, code lost:
            r1.j = true;
            r1.f = true;
            com.oppo.camera.gl.l.h().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:113:0x028a, code lost:
            monitor-exit(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:114:0x028b, code lost:
            r0 = r2;
            r7 = r17;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:119:0x0293, code lost:
            if (r13 == false) goto L_0x02a0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:120:0x0295, code lost:
            r7 = (javax.microedition.khronos.opengles.GL10) r1.t.c();
            r13 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x02a0, code lost:
            r7 = r17;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:122:0x02a2, code lost:
            if (r11 == false) goto L_0x02cc;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:123:0x02a4, code lost:
            r0 = (com.oppo.camera.gl.l) r1.u.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:124:0x02ac, code lost:
            if (r0 == null) goto L_0x02cb;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:?, code lost:
            com.oppo.camera.d.a("onSurfaceCreated");
            com.oppo.camera.gl.l.h(r0).a(r7, r1.t.d);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:130:?, code lost:
            com.oppo.camera.d.b("onSurfaceCreated");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:134:0x02cb, code lost:
            r11 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:135:0x02cc, code lost:
            if (r6 == false) goto L_0x02f2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:136:0x02ce, code lost:
            r0 = (com.oppo.camera.gl.l) r1.u.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:137:0x02d6, code lost:
            if (r0 == null) goto L_0x02f1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:140:?, code lost:
            com.oppo.camera.d.a("onSurfaceChanged");
            com.oppo.camera.gl.l.h(r0).a(r7, r9, r10);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:143:?, code lost:
            com.oppo.camera.d.b("onSurfaceChanged");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:147:0x02f1, code lost:
            r6 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:148:0x02f2, code lost:
            r0 = (com.oppo.camera.gl.l) r1.u.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:149:0x02fa, code lost:
            if (r0 == null) goto L_0x0315;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:152:?, code lost:
            com.oppo.camera.d.a("onDrawFrame");
            com.oppo.camera.gl.l.h(r0).a(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:155:?, code lost:
            com.oppo.camera.d.b("onDrawFrame");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:159:0x0315, code lost:
            r0 = r1.t.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:160:0x031d, code lost:
            if (r0 == 12288) goto L_0x035a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:162:0x0321, code lost:
            if (r0 == 12302) goto L_0x033e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:163:0x0323, code lost:
            com.oppo.camera.gl.l.h.a("GLThread", "eglSwapBuffers", r0);
            r2 = com.oppo.camera.gl.l.h();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:164:0x032e, code lost:
            monitor-enter(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:167:?, code lost:
            r1.f = true;
            com.oppo.camera.gl.l.h().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:168:0x0339, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:174:0x033e, code lost:
            android.util.Log.i("GLThread", "egl context lost tid=" + getId());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:175:0x0359, code lost:
            r3 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:176:0x035a, code lost:
            if (r8 == false) goto L_0x035e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:177:0x035c, code lost:
            r4 = true;
            r8 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:178:0x035e, code lost:
            r1 = r19;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:91:0x0249, code lost:
            if (r14 == null) goto L_0x0253;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:94:0x0253, code lost:
            if (r12 == false) goto L_0x0293;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:95:0x0255, code lost:
            android.util.Log.w("GLThread", "egl createSurface");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:96:0x0262, code lost:
            if (r1.t.b() == false) goto L_0x0279;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:97:0x0264, code lost:
            r7 = com.oppo.camera.gl.l.h();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:98:0x0268, code lost:
            monitor-enter(r7);
         */
        private void k() throws InterruptedException {
            GL10 gl10;
            GL10 gl102;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            i iVar = this;
            iVar.t = new h(iVar.u);
            iVar.h = false;
            iVar.i = false;
            iVar.p = false;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            int i2 = 0;
            int i3 = 0;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            GL10 gl103 = null;
            loop0:
            while (true) {
                Runnable runnable = null;
                while (true) {
                    try {
                        synchronized (l.f2162b) {
                            while (!iVar.f2171a) {
                                if (!iVar.r.isEmpty()) {
                                    runnable = iVar.r.remove(0);
                                    gl102 = gl10;
                                    z = false;
                                } else {
                                    if (iVar.d != iVar.c) {
                                        boolean z14 = iVar.c;
                                        iVar.d = iVar.c;
                                        l.f2162b.notifyAll();
                                        z4 = z14;
                                        StringBuilder sb = new StringBuilder();
                                        z3 = z8;
                                        sb.append("mPaused is now ");
                                        sb.append(iVar.d);
                                        sb.append(" tid: ");
                                        z2 = z9;
                                        sb.append(getId());
                                        Log.i("GLThread", sb.toString());
                                    } else {
                                        z3 = z8;
                                        z2 = z9;
                                        z4 = false;
                                    }
                                    if (iVar.k) {
                                        Log.i("GLThread", "0 releasing EGL context because asked to tid: " + getId());
                                        i();
                                        j();
                                        iVar.k = false;
                                        z5 = true;
                                    } else {
                                        z5 = z3;
                                    }
                                    if (z6) {
                                        Log.i("GLThread", "1 releasing EGL surface because paused tid: " + getId());
                                        i();
                                        j();
                                        z6 = false;
                                    }
                                    if (!z4 || !iVar.i) {
                                        gl102 = gl10;
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("xxxx releasing EGL surface because paused tid: ");
                                        gl102 = gl10;
                                        sb2.append(getId());
                                        Log.i("GLThread", sb2.toString());
                                        i();
                                    }
                                    if (z4 && iVar.h) {
                                        l lVar = (l) iVar.u.get();
                                        if (!(lVar == null ? false : lVar.m)) {
                                            j();
                                            Log.i("GLThread", "releasing EGL context because paused tid=" + getId());
                                        }
                                    }
                                    if (!iVar.e && !iVar.g) {
                                        Log.i("GLThread", "noticed surfaceView surface lost tid=" + getId());
                                        if (iVar.i) {
                                            i();
                                        }
                                        iVar.g = true;
                                        iVar.f = false;
                                        l.f2162b.notifyAll();
                                    }
                                    if (iVar.e && iVar.g) {
                                        Log.i("GLThread", "noticed surfaceView surface acquired tid=" + getId());
                                        iVar.g = false;
                                        l.f2162b.notifyAll();
                                    }
                                    if (z7) {
                                        Log.i("GLThread", "sending render notification tid=" + getId());
                                        iVar.p = false;
                                        iVar.q = true;
                                        l.f2162b.notifyAll();
                                        z7 = false;
                                    }
                                    if (l()) {
                                        if (!iVar.h) {
                                            if (z5) {
                                                z5 = false;
                                            } else {
                                                try {
                                                    iVar.t.a();
                                                    iVar.h = true;
                                                    l.f2162b.notifyAll();
                                                    z11 = true;
                                                } catch (RuntimeException e2) {
                                                    l.f2162b.b(iVar);
                                                    throw e2;
                                                }
                                            }
                                        }
                                        if (iVar.h && !iVar.i) {
                                            iVar.i = true;
                                            z12 = true;
                                            z13 = true;
                                            z2 = true;
                                        }
                                        if (iVar.i) {
                                            if (iVar.s) {
                                                i2 = iVar.l;
                                                i3 = iVar.m;
                                                iVar.p = true;
                                                Log.i("GLThread", "noticing that we want render notification tid=" + getId());
                                                iVar.s = false;
                                                z = false;
                                                z12 = true;
                                                z2 = true;
                                            } else {
                                                z = false;
                                            }
                                            iVar.o = z;
                                            l.f2162b.notifyAll();
                                            if (iVar.p) {
                                                z8 = z5;
                                                z9 = z2;
                                                z10 = true;
                                            } else {
                                                z8 = z5;
                                                z9 = z2;
                                            }
                                        }
                                    }
                                    z8 = z5;
                                    z9 = z2;
                                    l.f2162b.wait();
                                    iVar = this;
                                    gl10 = gl102;
                                }
                            }
                            synchronized (l.f2162b) {
                                i();
                                j();
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        synchronized (l.f2162b) {
                            i();
                            j();
                            throw th;
                        }
                    }
                }
                runnable.run();
                boolean z15 = z;
                gl103 = gl102;
            }
        }

        private boolean l() {
            return !this.d && this.e && !this.f && this.l > 0 && this.m > 0 && this.o;
        }

        public void a(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (l.f2162b) {
                this.n = i2;
                l.f2162b.notifyAll();
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(8:16|17|18|19|20|32|26|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x005d, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0020, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0054 */
        public void a(int i2, int i3) {
            synchronized (l.f2162b) {
                this.l = i2;
                this.m = i3;
                this.s = true;
                this.o = true;
                this.q = false;
                if (Thread.currentThread() != this) {
                    l.f2162b.notifyAll();
                    while (!this.f2172b && !this.d && !this.q && a()) {
                        Log.i("Main thread", "onWindowResize waiting for render complete from tid=" + getId());
                        l.f2162b.wait();
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void a(Runnable runnable) {
            if (runnable != null) {
                synchronized (l.f2162b) {
                    this.r.add(runnable);
                    l.f2162b.notifyAll();
                }
                return;
            }
            throw new IllegalArgumentException("r must not be null");
        }

        public boolean a() {
            return this.h && this.i && l();
        }

        public int b() {
            int i2;
            synchronized (l.f2162b) {
                i2 = this.n;
            }
            return i2;
        }

        public void c() {
            synchronized (l.f2162b) {
                this.o = true;
                l.f2162b.notifyAll();
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:11|12|13|14|25|20|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0012, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0026 */
        public void d() {
            synchronized (l.f2162b) {
                this.e = true;
                this.j = false;
                l.f2162b.notifyAll();
                while (this.g && !this.j && !this.f2172b) {
                    l.f2162b.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:9|10|11|12|22|18|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x000f, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001f */
        public void e() {
            synchronized (l.f2162b) {
                this.e = false;
                l.f2162b.notifyAll();
                while (!this.g && !this.f2172b) {
                    l.f2162b.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(8:9|10|11|12|13|23|19|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0029, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0040 */
        public void f() {
            synchronized (l.f2162b) {
                Log.i("GLThread", "onPause tid=" + getId());
                this.c = true;
                l.f2162b.notifyAll();
                while (!this.f2172b && !this.d) {
                    Log.i("Main thread", "onPause waiting for mPaused.");
                    l.f2162b.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(8:11|12|13|14|15|26|21|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x002e, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x0049 */
        public void g() {
            synchronized (l.f2162b) {
                Log.i("GLThread", "onResume tid=" + getId());
                this.c = false;
                this.o = true;
                this.q = false;
                l.f2162b.notifyAll();
                while (!this.f2172b && this.d && !this.q) {
                    Log.i("Main thread", "onResume waiting for !mPaused.");
                    l.f2162b.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:7|8|9|10|19|16|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x000f, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001b */
        public void h() {
            synchronized (l.f2162b) {
                this.f2171a = true;
                l.f2162b.notifyAll();
                while (!this.f2172b) {
                    l.f2162b.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        public void run() {
            setName("GLProducer " + getId());
            try {
                k();
            } catch (InterruptedException unused) {
            } catch (Throwable th) {
                l.f2162b.a(this);
                throw th;
            }
            l.f2162b.a(this);
        }
    }

    /* compiled from: GLProducer */
    private static class j {

        /* renamed from: a  reason: collision with root package name */
        private static String f2173a = "GLThreadManager";

        private j() {
        }

        public synchronized void a(i iVar) {
            boolean unused = iVar.f2172b = true;
            notifyAll();
        }

        public void b(i iVar) {
            notifyAll();
        }
    }

    /* compiled from: GLProducer */
    public interface k {
        GL a(GL gl);
    }

    /* renamed from: com.oppo.camera.gl.l$l  reason: collision with other inner class name */
    /* compiled from: GLProducer */
    static class C0059l extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private StringBuilder f2174a = new StringBuilder();

        C0059l() {
        }

        private void a() {
            if (this.f2174a.length() > 0) {
                Log.v("GLSurfaceView", this.f2174a.toString());
                StringBuilder sb = this.f2174a;
                sb.delete(0, sb.length());
            }
        }

        public void close() {
            a();
        }

        public void flush() {
            a();
        }

        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == 10) {
                    a();
                } else {
                    this.f2174a.append(c);
                }
            }
        }
    }

    /* compiled from: GLProducer */
    public interface m {
        void a(GL10 gl10);

        void a(GL10 gl10, int i, int i2);

        void a(GL10 gl10, EGLConfig eGLConfig);
    }

    /* compiled from: GLProducer */
    private class n extends b {
        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public n(boolean z) {
            super(8, 8, 8, 0, z ? 16 : 0, 0);
        }
    }

    public l(SurfaceTexture surfaceTexture) {
        this.f = surfaceTexture;
    }

    private static String d(int i2) {
        return "0x" + Integer.toHexString(i2);
    }

    /* access modifiers changed from: private */
    public static String e(int i2) {
        switch (i2) {
            case 12288:
                return "EGL_SUCCESS";
            case 12289:
                return "EGL_NOT_INITIALIZED";
            case 12290:
                return "EGL_BAD_ACCESS";
            case 12291:
                return "EGL_BAD_ALLOC";
            case 12292:
                return "EGL_BAD_ATTRIBUTE";
            case 12293:
                return "EGL_BAD_CONFIG";
            case 12294:
                return "EGL_BAD_CONTEXT";
            case 12295:
                return "EGL_BAD_CURRENT_SURFACE";
            case 12296:
                return "EGL_BAD_DISPLAY";
            case 12297:
                return "EGL_BAD_MATCH";
            case 12298:
                return "EGL_BAD_NATIVE_PIXMAP";
            case 12299:
                return "EGL_BAD_NATIVE_WINDOW";
            case 12300:
                return "EGL_BAD_PARAMETER";
            case 12301:
                return "EGL_BAD_SURFACE";
            case 12302:
                return "EGL_CONTEXT_LOST";
            default:
                return d(i2);
        }
    }

    private void i() {
        if (this.d != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    public SurfaceTexture a() {
        return this.f;
    }

    public void a(int i2) {
        i();
        this.l = i2;
    }

    public void a(int i2, int i3, int i4, int i5, int i6, int i7) {
        b bVar = new b(i2, i3, i4, i5, i6, i7);
        a((e) bVar);
    }

    public void a(SurfaceHolder surfaceHolder) {
        this.d.d();
    }

    public void a(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        this.d.a(i3, i4);
    }

    public void a(e eVar) {
        i();
        this.g = eVar;
    }

    public void a(m mVar) {
        i();
        if (this.g == null) {
            this.g = new n(true);
        }
        if (this.h == null) {
            this.h = new c();
        }
        if (this.i == null) {
            this.i = new d();
        }
        this.e = mVar;
        this.d = new i(this.c);
        this.d.start();
    }

    public void a(Runnable runnable) {
        this.d.a(runnable);
    }

    public void a(boolean z) {
        this.m = z;
    }

    public void b() {
        Choreographer.getInstance().removeFrameCallback(this.f2163a);
        Choreographer.getInstance().postFrameCallback(this.f2163a);
    }

    public void b(int i2) {
        this.d.a(i2);
    }

    public void b(SurfaceHolder surfaceHolder) {
        this.d.e();
    }

    public int c() {
        return this.d.b();
    }

    public void d() {
        this.d.c();
    }

    public void e() {
        Log.d("GLProducer", "requestExitAndWait");
        i iVar = this.d;
        if (iVar != null) {
            iVar.h();
        }
    }

    public void f() {
        this.d.f();
        Choreographer.getInstance().removeFrameCallback(this.f2163a);
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        try {
            if (this.d != null) {
                this.d.h();
            }
        } finally {
            super.finalize();
        }
    }

    public void g() {
        this.d.g();
    }
}
