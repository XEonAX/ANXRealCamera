package com.oppo.camera.gl;

import android.content.Context;
import android.opengl.GLDebugHelper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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

/* compiled from: OppoGLSurfaceView */
public class q extends SurfaceView implements SurfaceHolder.Callback2 {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static j f2181a = new j();

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<q> f2182b = new WeakReference<>(this);
    /* access modifiers changed from: private */
    public Surface c = null;
    /* access modifiers changed from: private */
    public r d = null;
    /* access modifiers changed from: private */
    public boolean e = false;
    /* access modifiers changed from: private */
    public i f = null;
    /* access modifiers changed from: private */
    public m g = null;
    private boolean h = false;
    private e i = null;
    /* access modifiers changed from: private */
    public f j = null;
    /* access modifiers changed from: private */
    public g k = null;
    /* access modifiers changed from: private */
    public k l = null;
    /* access modifiers changed from: private */
    public int m = 0;
    /* access modifiers changed from: private */
    public int n = 0;
    /* access modifiers changed from: private */
    public boolean o = true;

    /* compiled from: OppoGLSurfaceView */
    private abstract class a implements e {

        /* renamed from: a  reason: collision with root package name */
        protected int[] f2184a = null;

        public a(int[] iArr) {
            this.f2184a = a(iArr);
        }

        private int[] a(int[] iArr) {
            if (q.this.n != 2 && q.this.n != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[(length + 2)];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            if (q.this.n == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }
    }

    /* compiled from: OppoGLSurfaceView */
    private class b extends a {
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        protected int g;
        protected int h;
        private int[] j;

        public b(int i2, int i3, int i4, int i5, int i6, int i7) {
            super(new int[]{12324, i2, 12323, i3, 12322, i4, 12321, i5, 12325, i6, 12326, i7, 12344});
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.j = null;
            this.j = new int[1];
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
        }
    }

    /* compiled from: OppoGLSurfaceView */
    private class c implements f {
        private c() {
        }

        public EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {12440, q.this.n, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (q.this.n == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (!egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                com.oppo.camera.d.e("GLSurfaceView", "destroyContext, display: " + eGLDisplay + " context: " + eGLContext);
                h.a("eglDestroyContex", egl10.eglGetError());
            }
        }
    }

    /* compiled from: OppoGLSurfaceView */
    private static class d implements g {
        private d() {
        }

        public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, (int[]) null);
            } catch (IllegalArgumentException e) {
                com.oppo.camera.d.d("GLSurfaceView", "eglCreateWindowSurface", e);
                return null;
            }
        }

        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    /* compiled from: OppoGLSurfaceView */
    public interface e {
    }

    /* compiled from: OppoGLSurfaceView */
    public interface f {
        EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    /* compiled from: OppoGLSurfaceView */
    public interface g {
        EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    /* compiled from: OppoGLSurfaceView */
    private static class h {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f2187a = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344};

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<q> f2188b = null;
        private EGL10 c = null;
        private EGLDisplay d = null;
        /* access modifiers changed from: private */
        public EGLSurface e = null;
        /* access modifiers changed from: private */
        public EGLSurface f = null;
        /* access modifiers changed from: private */
        public EGLConfig g = null;
        private EGLContext h = null;

        public h(WeakReference<q> weakReference) {
            this.f2188b = weakReference;
        }

        private void a(String str) {
            a(str, this.c.eglGetError());
        }

        public static void a(String str, int i) {
            throw new RuntimeException("error: " + i);
        }

        public static void a(String str, String str2, int i) {
            com.oppo.camera.d.d(str, "logEglErrorAsWarning, function: " + str2 + ", error: " + i);
        }

        /* access modifiers changed from: private */
        public GL h() {
            GL gl = this.h.getGL();
            q qVar = (q) this.f2188b.get();
            if (qVar == null) {
                return gl;
            }
            if (qVar.l != null) {
                gl = qVar.l.a(gl);
            }
            if ((qVar.m & 3) == 0) {
                return gl;
            }
            int i = 0;
            l lVar = null;
            if ((qVar.m & 1) != 0) {
                i = 1;
            }
            if ((qVar.m & 2) != 0) {
                lVar = new l();
            }
            return GLDebugHelper.wrap(gl, i, lVar);
        }

        private void i() {
            EGLSurface eGLSurface = this.e;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                this.c.eglMakeCurrent(this.d, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                q qVar = (q) this.f2188b.get();
                if (qVar != null) {
                    qVar.k.a(this.c, this.d, this.e);
                }
                this.e = null;
            }
        }

        /* access modifiers changed from: private */
        public void j() {
            EGLSurface eGLSurface = this.f;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                this.c.eglMakeCurrent(this.d, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                q qVar = (q) this.f2188b.get();
                if (qVar != null) {
                    qVar.k.a(this.c, this.d, this.f);
                }
                com.oppo.camera.d.d("GLSurfaceView", "destroyOutputEGLSurfaceImp, error: " + this.c.eglGetError());
                this.f = null;
            }
        }

        public void a() {
            this.c = (EGL10) EGLContext.getEGL();
            this.d = this.c.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.d != EGL10.EGL_NO_DISPLAY) {
                if (this.c.eglInitialize(this.d, new int[2])) {
                    q qVar = (q) this.f2188b.get();
                    if (qVar == null) {
                        this.g = null;
                        this.h = null;
                    } else {
                        EGLConfig[] eGLConfigArr = new EGLConfig[1];
                        EGLConfig[] eGLConfigArr2 = eGLConfigArr;
                        this.c.eglChooseConfig(this.d, f2187a, eGLConfigArr2, eGLConfigArr.length, new int[1]);
                        this.g = eGLConfigArr[0];
                        this.h = qVar.j.a(this.c, this.d, this.g);
                    }
                    EGLContext eGLContext = this.h;
                    if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                        this.h = null;
                        a("createContext");
                    }
                    com.oppo.camera.d.a("GLSurfaceView", "start, createContext: " + this.h + ", tid: " + Thread.currentThread().getId());
                    this.e = null;
                    this.f = null;
                    return;
                }
                throw new RuntimeException("eglInitialize failed");
            }
            throw new RuntimeException("eglGetDisplay failed");
        }

        public boolean a(EGLSurface eGLSurface) {
            if (this.c.eglMakeCurrent(this.d, eGLSurface, eGLSurface, this.h)) {
                return true;
            }
            a("GLSurfaceView", "eglMakeCurrent", this.c.eglGetError());
            return false;
        }

        public boolean b() {
            if (this.c == null) {
                throw new RuntimeException("egl not initialized");
            } else if (this.d == null) {
                throw new RuntimeException("eglDisplay not initialized");
            } else if (this.g != null) {
                i();
                q qVar = (q) this.f2188b.get();
                if (qVar != null) {
                    this.e = qVar.k.a(this.c, this.d, this.g, qVar.getHolder());
                } else {
                    this.e = null;
                }
                EGLSurface eGLSurface = this.e;
                if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                    if (this.c.eglGetError() == 12299) {
                        com.oppo.camera.d.e("GLSurfaceView", "createSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                    }
                    return false;
                }
                EGL10 egl10 = this.c;
                EGLDisplay eGLDisplay = this.d;
                EGLSurface eGLSurface2 = this.e;
                if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, this.h)) {
                    return true;
                }
                a("GLSurfaceView", "eglMakeCurrent", this.c.eglGetError());
                return false;
            } else {
                throw new RuntimeException("mEglConfig not initialized");
            }
        }

        public boolean c() {
            com.oppo.camera.d.a("GLSurfaceView", "createOutputEGLSurface");
            if (this.c == null) {
                throw new RuntimeException("egl not initialized");
            } else if (this.d == null) {
                throw new RuntimeException("eglDisplay not initialized");
            } else if (this.g != null) {
                j();
                q qVar = (q) this.f2188b.get();
                if (qVar != null) {
                    this.f = qVar.k.a(this.c, this.d, this.g, qVar.c);
                } else {
                    this.f = null;
                }
                EGLSurface eGLSurface = this.f;
                if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                    if (this.c.eglGetError() == 12299) {
                        com.oppo.camera.d.e("GLSurfaceView", "createOutputEGLSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                    }
                    return false;
                }
                EGL10 egl10 = this.c;
                EGLDisplay eGLDisplay = this.d;
                EGLSurface eGLSurface2 = this.f;
                if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, this.h)) {
                    return true;
                }
                a("GLSurfaceView", "eglMakeCurrent", this.c.eglGetError());
                return false;
            } else {
                throw new RuntimeException("mEglConfig not initialized");
            }
        }

        public int d() {
            if (!this.c.eglSwapBuffers(this.d, this.e)) {
                return this.c.eglGetError();
            }
            return 12288;
        }

        public int e() {
            if (!this.c.eglSwapBuffers(this.d, this.f)) {
                return this.c.eglGetError();
            }
            return 12288;
        }

        public void f() {
            i();
            j();
        }

        public void g() {
            if (this.h != null) {
                q qVar = (q) this.f2188b.get();
                if (qVar != null) {
                    com.oppo.camera.d.a("GLSurfaceView", "finish, destroyContext mEglContext: " + this.h);
                    qVar.j.a(this.c, this.d, this.h);
                }
                this.h = null;
            }
            EGLDisplay eGLDisplay = this.d;
            if (eGLDisplay != null) {
                this.c.eglTerminate(eGLDisplay);
                this.d = null;
            }
        }
    }

    /* compiled from: OppoGLSurfaceView */
    static class i extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2189a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public boolean f2190b;
        private boolean c;
        private boolean d;
        private boolean e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        private int l;
        private int m;
        private int n;
        private boolean o;
        private boolean p;
        private boolean q;
        private ArrayList<Runnable> r;
        private boolean s;
        private Runnable t;
        /* access modifiers changed from: private */
        public h u;
        private WeakReference<q> v;

        i(WeakReference<q> weakReference) {
            this.f2189a = false;
            this.f2190b = false;
            this.c = false;
            this.d = false;
            this.e = false;
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = 0;
            this.m = 0;
            this.n = 0;
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = new ArrayList<>();
            this.s = true;
            this.t = null;
            this.u = null;
            this.v = null;
            this.l = 0;
            this.m = 0;
            this.o = true;
            this.n = 1;
            this.p = false;
            this.v = weakReference;
        }

        private void i() {
            if (this.i) {
                this.i = false;
                this.u.f();
            }
        }

        private void j() {
            com.oppo.camera.d.a("GLSurfaceView", "stopEglContextLocked");
            if (this.h) {
                this.u.g();
                this.h = false;
                q.f2181a.b(this);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:101:?, code lost:
            r1.j = true;
            com.oppo.camera.gl.q.j().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:102:0x016b, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:103:0x016c, code lost:
            r14 = r6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:108:0x0171, code lost:
            r2 = com.oppo.camera.gl.q.j();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:109:0x0175, code lost:
            monitor-enter(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:?, code lost:
            r1.j = true;
            r1.f = true;
            com.oppo.camera.gl.q.j().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:113:0x0182, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:114:0x0183, code lost:
            r6 = r0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:120:0x018a, code lost:
            if (r7 == false) goto L_0x0196;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x018c, code lost:
            r8 = (javax.microedition.khronos.opengles.GL10) com.oppo.camera.gl.q.h.a(r1.u);
            r7 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:122:0x0196, code lost:
            if (r13 == false) goto L_0x01c2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:123:0x0198, code lost:
            r2 = (com.oppo.camera.gl.q) r1.v.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:124:0x01a0, code lost:
            if (r2 == null) goto L_0x01c1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:?, code lost:
            com.oppo.camera.d.a("onSurfaceCreated");
            com.oppo.camera.gl.q.h(r2).a(r8, com.oppo.camera.gl.q.h.b(r1.u));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:130:?, code lost:
            com.oppo.camera.d.b("onSurfaceCreated");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:134:0x01c1, code lost:
            r13 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:135:0x01c2, code lost:
            if (r9 == false) goto L_0x01e8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:136:0x01c4, code lost:
            r2 = (com.oppo.camera.gl.q) r1.v.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:137:0x01cc, code lost:
            if (r2 == null) goto L_0x01e7;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:140:?, code lost:
            com.oppo.camera.d.a("onSurfaceChanged");
            com.oppo.camera.gl.q.h(r2).a(r8, r10, r11);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:143:?, code lost:
            com.oppo.camera.d.b("onSurfaceChanged");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:147:0x01e7, code lost:
            r9 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:148:0x01e8, code lost:
            r1.u.a(com.oppo.camera.gl.q.h.c(r1.u));
            r2 = (com.oppo.camera.gl.q) r1.v.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:149:0x01fb, code lost:
            if (r2 == null) goto L_0x021c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:152:?, code lost:
            com.oppo.camera.d.a("onDrawFrame");
            com.oppo.camera.gl.q.h(r2).b(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:153:0x0209, code lost:
            if (r0 == null) goto L_0x020f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:154:0x020b, code lost:
            r0.run();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:155:0x020e, code lost:
            r0 = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:158:?, code lost:
            com.oppo.camera.d.b("onDrawFrame");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:162:0x021c, code lost:
            r6 = r0;
            r0 = r1.u.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:163:0x0225, code lost:
            if (r0 == 12288) goto L_0x024b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:165:0x0229, code lost:
            if (r0 == 12302) goto L_0x0248;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:166:0x022b, code lost:
            r18 = r3;
            com.oppo.camera.gl.q.h.a("GLSurfaceView", "eglSwapBuffers", r0);
            r2 = com.oppo.camera.gl.q.j();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:167:0x0238, code lost:
            monitor-enter(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:170:?, code lost:
            r1.f = true;
            com.oppo.camera.gl.q.j().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:171:0x0243, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:177:0x0248, code lost:
            r3 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:178:0x024b, code lost:
            r18 = r3;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:179:0x024e, code lost:
            r3 = r18;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:181:0x025c, code lost:
            if (com.oppo.camera.gl.q.d((com.oppo.camera.gl.q) r1.v.get()) == null) goto L_0x02d7;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:183:0x026a, code lost:
            if (com.oppo.camera.gl.q.i((com.oppo.camera.gl.q) r1.v.get()) != false) goto L_0x02d7;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:185:0x0272, code lost:
            if (com.oppo.camera.gl.q.h.d(r1.u) != null) goto L_0x0279;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:186:0x0274, code lost:
            r1.u.c();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:187:0x0279, code lost:
            r1.u.a(com.oppo.camera.gl.q.h.d(r1.u));
            r0 = (com.oppo.camera.gl.q) r1.v.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:188:0x0290, code lost:
            if (com.oppo.camera.gl.q.j(r0) == null) goto L_0x0299;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:189:0x0292, code lost:
            com.oppo.camera.gl.q.j(r0).a(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:190:0x0299, code lost:
            r2 = new java.lang.StringBuilder();
            r16 = r3;
            r2.append("guardedRun, OutputSurfaceDraw swap start tid: ");
            r18 = r4;
            r2.append(getId());
            com.oppo.camera.d.a("GLSurfaceView", r2.toString());
            r1.u.e();
            com.oppo.camera.d.a("GLSurfaceView", "guardedRun, OutputSurfaceDraw swap end tid: " + getId());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:191:0x02d7, code lost:
            r16 = r3;
            r18 = r4;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:192:0x02e1, code lost:
            if (com.oppo.camera.gl.q.h.d(r1.u) == null) goto L_0x02e8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:193:0x02e3, code lost:
            com.oppo.camera.gl.q.h.e(r1.u);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:194:0x02e8, code lost:
            if (r15 == false) goto L_0x02ed;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:195:0x02ea, code lost:
            r4 = true;
            r15 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:196:0x02ed, code lost:
            r4 = r18;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:197:0x02ef, code lost:
            r3 = r16;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:91:0x0145, code lost:
            if (r12 == null) goto L_0x0152;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:93:?, code lost:
            r12.run();
            r12 = null;
            r19 = r6;
            r6 = r0;
            r0 = r19;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:94:0x0152, code lost:
            if (r14 == false) goto L_0x018a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:96:0x015a, code lost:
            if (r1.u.b() == false) goto L_0x0171;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:97:0x015c, code lost:
            r2 = com.oppo.camera.gl.q.j();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:98:0x0160, code lost:
            monitor-enter(r2);
         */
        private void k() throws InterruptedException {
            Runnable runnable;
            Runnable runnable2;
            boolean z;
            boolean z2;
            this.u = new h(this.v);
            this.h = false;
            this.i = false;
            this.p = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            int i2 = 0;
            int i3 = 0;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            Runnable runnable3 = null;
            GL10 gl10 = null;
            Runnable runnable4 = null;
            loop0:
            while (true) {
                try {
                    synchronized (q.f2181a) {
                        while (!this.f2189a) {
                            if (!this.r.isEmpty()) {
                                runnable4 = this.r.remove(0);
                                runnable2 = runnable;
                                z = false;
                            } else {
                                if (this.d != this.c) {
                                    z2 = this.c;
                                    this.d = this.c;
                                    q.f2181a.notifyAll();
                                } else {
                                    z2 = false;
                                }
                                if (this.k) {
                                    i();
                                    j();
                                    this.k = false;
                                    z5 = true;
                                }
                                if (z3) {
                                    i();
                                    j();
                                    z3 = false;
                                }
                                if (z2 && this.i) {
                                    i();
                                }
                                if (z2 && this.h) {
                                    q qVar = (q) this.v.get();
                                    if (!(qVar == null ? false : qVar.o)) {
                                        j();
                                    }
                                }
                                if (!this.e && !this.g) {
                                    if (this.i) {
                                        i();
                                    }
                                    this.g = true;
                                    this.f = false;
                                    q.f2181a.notifyAll();
                                }
                                if (this.e && this.g) {
                                    this.g = false;
                                    q.f2181a.notifyAll();
                                }
                                if (z4) {
                                    this.p = false;
                                    this.q = true;
                                    q.f2181a.notifyAll();
                                    z4 = false;
                                }
                                if (this.t != null) {
                                    runnable2 = this.t;
                                    this.t = null;
                                } else {
                                    runnable2 = runnable;
                                }
                                if (l()) {
                                    if (!this.h) {
                                        if (z5) {
                                            z5 = false;
                                        } else {
                                            try {
                                                this.u.a();
                                                this.h = true;
                                                q.f2181a.notifyAll();
                                                z8 = true;
                                            } catch (RuntimeException e2) {
                                                q.f2181a.b(this);
                                                throw e2;
                                            }
                                        }
                                    }
                                    if (this.h && !this.i) {
                                        this.i = true;
                                        z6 = true;
                                        z7 = true;
                                        z9 = true;
                                    }
                                    if (this.i) {
                                        if (this.s) {
                                            i2 = this.l;
                                            i3 = this.m;
                                            this.p = true;
                                            this.s = false;
                                            z = false;
                                            z7 = true;
                                            z9 = true;
                                        } else {
                                            z = false;
                                        }
                                        this.o = z;
                                        q.f2181a.notifyAll();
                                        if (this.p) {
                                            z10 = true;
                                        }
                                    }
                                } else if (runnable2 != null) {
                                    com.oppo.camera.d.d("GLSurfaceView", "guardedRun, Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished.");
                                    runnable2.run();
                                    runnable = null;
                                    q.f2181a.wait();
                                }
                                runnable = runnable2;
                                q.f2181a.wait();
                            }
                        }
                        synchronized (q.f2181a) {
                            i();
                            j();
                        }
                        return;
                    }
                } catch (Throwable th) {
                    synchronized (q.f2181a) {
                        i();
                        j();
                        throw th;
                    }
                }
            }
        }

        private boolean l() {
            return !this.d && this.e && !this.f && this.l > 0 && this.m > 0 && (this.o || this.n == 1);
        }

        public void a(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (q.f2181a) {
                this.n = i2;
                q.f2181a.notifyAll();
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:16|17|18|19|31|25|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0043, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0020, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:18:0x003a */
        public void a(int i2, int i3) {
            synchronized (q.f2181a) {
                this.l = i2;
                this.m = i3;
                this.s = true;
                this.o = true;
                this.q = false;
                if (Thread.currentThread() != this) {
                    q.f2181a.notifyAll();
                    while (!this.f2190b && !this.d && !this.q && a()) {
                        q.f2181a.wait();
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void a(Runnable runnable) {
            synchronized (q.f2181a) {
                if (Thread.currentThread() != this) {
                    this.p = true;
                    this.o = true;
                    this.q = false;
                    this.t = runnable;
                    q.f2181a.notifyAll();
                }
            }
        }

        public boolean a() {
            return this.h && this.i && l();
        }

        public int b() {
            int i2;
            synchronized (q.f2181a) {
                i2 = this.n;
            }
            return i2;
        }

        public void b(Runnable runnable) {
            if (runnable != null) {
                synchronized (q.f2181a) {
                    this.r.add(runnable);
                    q.f2181a.notifyAll();
                }
                return;
            }
            throw new IllegalArgumentException("r must not be null");
        }

        public void c() {
            synchronized (q.f2181a) {
                this.o = true;
                q.f2181a.notifyAll();
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:11|12|13|14|25|20|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0012, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0026 */
        public void d() {
            synchronized (q.f2181a) {
                this.e = true;
                this.j = false;
                q.f2181a.notifyAll();
                while (this.g && !this.j && !this.f2190b) {
                    q.f2181a.wait();
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
            synchronized (q.f2181a) {
                this.e = false;
                q.f2181a.notifyAll();
                while (!this.g && !this.f2190b) {
                    q.f2181a.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:9|10|11|12|22|18|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x000f, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001f */
        public void f() {
            synchronized (q.f2181a) {
                this.c = true;
                q.f2181a.notifyAll();
                while (!this.f2190b && !this.d) {
                    q.f2181a.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(7:11|12|13|14|25|20|5) */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0014, code lost:
            continue;
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0028 */
        public void g() {
            synchronized (q.f2181a) {
                this.c = false;
                this.o = true;
                this.q = false;
                q.f2181a.notifyAll();
                while (!this.f2190b && this.d && !this.q) {
                    q.f2181a.wait();
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
            synchronized (q.f2181a) {
                this.f2189a = true;
                q.f2181a.notifyAll();
                while (!this.f2190b) {
                    q.f2181a.wait();
                    Thread.currentThread().interrupt();
                }
            }
        }

        public void run() {
            setName("OppoGLThread " + getId());
            try {
                k();
            } catch (InterruptedException unused) {
            } catch (Throwable th) {
                q.f2181a.a(this);
                throw th;
            }
            q.f2181a.a(this);
        }
    }

    /* compiled from: OppoGLSurfaceView */
    private static class j {
        private j() {
        }

        public synchronized void a(i iVar) {
            boolean unused = iVar.f2190b = true;
            notifyAll();
        }

        public void b(i iVar) {
            notifyAll();
        }
    }

    /* compiled from: OppoGLSurfaceView */
    public interface k {
        GL a(GL gl);
    }

    /* compiled from: OppoGLSurfaceView */
    static class l extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private StringBuilder f2191a = new StringBuilder();

        l() {
        }

        private void a() {
            if (this.f2191a.length() > 0) {
                com.oppo.camera.d.a("GLSurfaceView", "flushBuilder, mBuilder: " + this.f2191a.toString());
                StringBuilder sb = this.f2191a;
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
                    this.f2191a.append(c);
                }
            }
        }
    }

    /* compiled from: OppoGLSurfaceView */
    public interface m {
        void a(GL10 gl10, int i, int i2);

        void a(GL10 gl10, EGLConfig eGLConfig);

        void b(GL10 gl10);
    }

    /* compiled from: OppoGLSurfaceView */
    private class n extends b {
        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public n(boolean z) {
            super(8, 8, 8, 0, z ? 16 : 0, 0);
        }
    }

    public q(Context context) {
        super(context);
        b();
    }

    public q(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private void b() {
        getHolder().addCallback(this);
    }

    private void e() {
        if (this.f != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    public void a() {
        this.f.c();
    }

    public void a(Runnable runnable) {
        this.f.b(runnable);
    }

    public void c() {
        this.f.g();
    }

    public void d() {
        this.f.f();
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        try {
            if (this.f != null) {
                this.f.h();
            }
        } finally {
            super.finalize();
        }
    }

    public void g() {
        a((Runnable) new Runnable() {
            public void run() {
                q.this.f.u.j();
                if (q.this.c != null) {
                    q.this.c.release();
                    Surface unused = q.this.c = null;
                }
            }
        });
    }

    public int getDebugFlags() {
        return this.m;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.o;
    }

    public int getRenderMode() {
        return this.f.b();
    }

    public void h() {
        this.e = true;
    }

    public void i() {
        this.e = false;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h && this.g != null) {
            i iVar = this.f;
            int b2 = iVar != null ? iVar.b() : 1;
            this.f = new i(this.f2182b);
            if (b2 != 1) {
                this.f.a(b2);
            }
            this.f.start();
        }
        this.h = false;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        i iVar = this.f;
        if (iVar != null) {
            iVar.h();
        }
        this.h = true;
        super.onDetachedFromWindow();
    }

    public void setDebugFlags(int i2) {
        this.m = i2;
    }

    public void setEGLConfigChooser(e eVar) {
        e();
        this.i = eVar;
    }

    public void setEGLConfigChooser(boolean z) {
        setEGLConfigChooser((e) new n(z));
    }

    public void setEGLContextClientVersion(int i2) {
        e();
        this.n = i2;
    }

    public void setEGLContextFactory(f fVar) {
        e();
        this.j = fVar;
    }

    public void setEGLWindowSurfaceFactory(g gVar) {
        e();
        this.k = gVar;
    }

    public void setGLWrapper(k kVar) {
        this.l = kVar;
    }

    public void setOutput(Surface surface) {
        this.c = surface;
    }

    public void setOutputRender(r rVar) {
        this.d = rVar;
    }

    public void setPreserveEGLContextOnPause(boolean z) {
        this.o = z;
    }

    public void setRenderMode(int i2) {
        this.f.a(i2);
    }

    public void setRenderer(m mVar) {
        e();
        if (this.i == null) {
            this.i = new n(true);
        }
        if (this.j == null) {
            this.j = new c();
        }
        if (this.k == null) {
            this.k = new d();
        }
        this.g = mVar;
        this.f = new i(this.f2182b);
        this.f.start();
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        this.f.a(i3, i4);
        com.oppo.camera.d.a("GLSurfaceView", "surfaceChanged, w: " + i3 + ", h: " + i4);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f.d();
        com.oppo.camera.d.a("GLSurfaceView", "surfaceCreated");
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f.e();
        com.oppo.camera.d.a("GLSurfaceView", "surfaceDestroyed");
    }

    @Deprecated
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }

    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        i iVar = this.f;
        if (iVar != null) {
            iVar.a(runnable);
        }
    }
}
