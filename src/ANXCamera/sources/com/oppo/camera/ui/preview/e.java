package com.oppo.camera.ui.preview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import com.oppo.camera.gl.c;
import com.oppo.camera.gl.d;
import com.oppo.camera.gl.g;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.p;
import com.oppo.camera.gl.s;
import com.oppo.camera.gl.t;
import com.oppo.camera.ui.menu.levelcontrol.f;

/* compiled from: CameraScreenNail */
public class e extends t {
    private Context A;
    private l B;
    private b C;
    private s D;
    private s E;
    private d F;
    /* access modifiers changed from: private */
    public b G;
    private int H;
    private final float[] p = new float[16];
    private int q;
    private float r;
    private float s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* compiled from: CameraScreenNail */
    public interface a {
        void J();

        void K();

        void L();
    }

    /* compiled from: CameraScreenNail */
    public interface b {
        int a(int i);

        void a();

        void b();

        void c();

        void d();
    }

    public e(Context context, a aVar, boolean z2) {
        boolean z3 = false;
        this.q = 0;
        this.r = 0.0f;
        this.s = 0.0f;
        this.u = false;
        this.w = false;
        this.x = true;
        this.y = false;
        this.z = false;
        this.A = null;
        this.B = new l();
        this.C = null;
        this.G = null;
        this.H = 0;
        synchronized (this.f2192a) {
            this.A = context;
            this.g = aVar;
            this.C = new k();
            this.u = !z2 ? true : z3;
        }
    }

    private void a(h hVar) {
        a(hVar, (g) this.f2193b.get(0), this.D, (float[]) null);
    }

    public void a() {
        synchronized (this.f2192a) {
            this.v = false;
            super.a();
            this.D = new s(e(), f(), true);
            this.E = new s(e(), f(), true);
        }
    }

    public void a(int i, int i2) {
        super.a(i, i2);
    }

    public void a(Bitmap bitmap, int i) {
        com.oppo.camera.d.a("CameraScreenNail", "setGaussianBlurBitmap");
        this.H = i;
        if (bitmap == null || bitmap.isRecycled()) {
            b(0);
            this.G.d();
            return;
        }
        this.F = new d(bitmap);
        synchronized (this.f2192a) {
            this.g.J();
            b(5);
        }
    }

    public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        synchronized (this.m) {
            this.n = j;
            com.oppo.camera.d.b("CameraScreenNail", "onCaptureStarted: mCaptureTimestamp: " + this.n);
        }
    }

    public void a(h hVar, int i, int i2, int i3, int i4) {
        super.a(hVar, (f) null, i, i2, i3, i4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x008b, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x01b3, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x01b5, code lost:
        return;
     */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x010e  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x016f  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0175  */
    public void a(h hVar, f fVar, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        boolean z3;
        h hVar2 = hVar;
        int i6 = i3;
        int i7 = i4;
        synchronized (this.f2192a) {
            if (!this.t) {
                this.t = true;
            }
            if (b() != null) {
                if (this.v) {
                    if (fVar != null) {
                        super.a(hVar, fVar, i, i2, i3, i4);
                    } else if (hVar2 != null) {
                        if (11 == this.q) {
                            this.r += this.s;
                            hVar.c();
                            if (((double) this.r) <= 1.0d) {
                                hVar2.a(0.3f);
                                super.a(hVar, fVar, i, i2, i3, i4);
                                hVar.f();
                                return;
                            }
                            this.r = 1.0f;
                            hVar2.a(this.r);
                            super.a(hVar, fVar, i, i2, i3, i4);
                            k();
                            hVar.f();
                        } else if (this.q == 12) {
                            hVar.c();
                            hVar2.a(0.3f);
                            super.a(hVar, fVar, i, i2, i3, i4);
                            hVar.f();
                        } else if (this.q == 0) {
                            super.a(hVar, fVar, i, i2, i3, i4);
                            if (!this.w) {
                                this.w = true;
                                com.oppo.camera.d.e("CameraScreenNail", "CameraTest First Frame Draw");
                            }
                        } else {
                            int i8 = this.q;
                            if (i8 != 1) {
                                if (i8 != 2) {
                                    if (i8 == 5) {
                                        a(hVar);
                                        this.C.a(i6, i7);
                                        this.g.K();
                                        b(6);
                                    } else if (!(i8 == 6 || i8 == 7)) {
                                        if (i8 != 8) {
                                            int i9 = i;
                                            z2 = false;
                                            i5 = 3;
                                            int i10 = i2;
                                        } else {
                                            z2 = false;
                                            this.C.a(this.G.a(this.H));
                                            this.C.a(this.A, this.G);
                                            ((Activity) this.A).runOnUiThread(new Runnable() {
                                                public void run() {
                                                    e.this.G.a();
                                                }
                                            });
                                            this.z = z2;
                                            b(9);
                                            this.u = this.u ? true : z2;
                                            int i11 = i;
                                            int i12 = i2;
                                        }
                                    }
                                    if (!this.y) {
                                        z2 = false;
                                        this.C.b(hVar, i, i2, i3, i4, this.D);
                                        super.a(hVar, fVar, i, i2, i3, i4);
                                        b(8);
                                        this.C.a(this.G.a(this.H));
                                        this.C.a(this.A, this.G);
                                        ((Activity) this.A).runOnUiThread(new Runnable() {
                                            public void run() {
                                                e.this.G.a();
                                            }
                                        });
                                        this.z = z2;
                                        b(9);
                                        this.u = this.u ? true : z2;
                                        int i112 = i;
                                        int i122 = i2;
                                    } else {
                                        return;
                                    }
                                } else {
                                    z2 = false;
                                    a(hVar);
                                    this.B.a(i, i2, i6, i7);
                                    b(4);
                                }
                                i5 = 3;
                            } else {
                                int i13 = i;
                                z2 = false;
                                int i14 = i2;
                                a(hVar);
                                i5 = 3;
                                b(3);
                            }
                            if (this.q == i5 || this.q == 4 || this.q == 9) {
                                if (this.q != 3) {
                                    if (this.q == 4) {
                                        z3 = this.B.a(hVar2, this, this.D);
                                    } else if (this.F != null) {
                                        z3 = this.C.a(hVar, i, i2, i3, i4, this.F);
                                    }
                                    if (!z3) {
                                        this.g.J();
                                    } else {
                                        if (this.q == 9) {
                                            if (this.z) {
                                                ((Activity) this.A).runOnUiThread(new Runnable() {
                                                    public void run() {
                                                        e.this.G.c();
                                                    }
                                                });
                                                b(z2 ? 1 : 0);
                                            }
                                            if (this.F != null) {
                                                hVar2.a(this.C.a());
                                                hVar.a((c) this.F, i, i2, i3, i4);
                                                this.g.J();
                                                return;
                                            }
                                        }
                                        super.a(hVar, fVar, i, i2, i3, i4);
                                    }
                                }
                                z3 = z2;
                                if (!z3) {
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void a(b bVar) {
        this.G = bVar;
    }

    public void b(int i) {
        synchronized (this.f2192a) {
            com.oppo.camera.d.a("CameraScreenNail", "setAnimState, state: " + this.q + "->" + i);
            this.q = i;
        }
    }

    public void b(int i, int i2) {
        if (this.i != null) {
            this.i.a(i, i2);
        }
    }

    public void b(boolean z2) {
        synchronized (this.f2192a) {
            if (!this.x && z2) {
                this.x = z2;
                if (this.x && this.t) {
                    this.g.J();
                }
            }
            this.x = z2;
        }
    }

    public void c() {
        synchronized (this.f2192a) {
            super.c();
            b(0);
        }
    }

    public void c(int i, int i2) {
        synchronized (this.f2192a) {
            this.C.b(i, i2);
        }
    }

    public void h() {
        synchronized (this.f2192a) {
            this.w = false;
        }
    }

    public void i() {
        this.i.h();
        this.j.a((Runnable) new Runnable() {
            public void run() {
                if (e.this.e != null) {
                    e.this.e.a();
                }
            }
        });
    }

    public void j() {
        if (this.i != null) {
            this.i.a();
        }
        this.e = new p();
    }

    public void k() {
        com.oppo.camera.d.a("CameraScreenNail", "animateOpenEnd");
        this.r = 0.0f;
        synchronized (this.f2192a) {
            b(0);
        }
    }

    public void l() {
        synchronized (this.f2192a) {
            this.z = true;
        }
    }

    public void m() {
        com.oppo.camera.d.a("CameraScreenNail", "forceRequestRender");
        Context context = this.A;
        if (context != null) {
            ((Activity) context).runOnUiThread(new Runnable() {
                public void run() {
                    e.super.a(2);
                    synchronized (e.this.f2192a) {
                        e.this.g.J();
                    }
                }
            });
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003f, code lost:
        com.oppo.camera.d.b("CameraScreenNail.onFrameAvailable");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0044, code lost:
        return;
     */
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        com.oppo.camera.d.a("CameraScreenNail.onFrameAvailable");
        synchronized (this.f2192a) {
            if (b() != surfaceTexture) {
                com.oppo.camera.d.e("CameraScreenNail", "****************GOT U HERE!");
                com.oppo.camera.d.b("CameraScreenNail.onFrameAvailable");
                return;
            }
            if (!this.v) {
                this.v = true;
                com.oppo.camera.d.e("CameraScreenNail", "CameraTest First Frame available");
            }
            if (this.t) {
                int i = this.q;
                this.g.L();
                if (this.x) {
                    this.g.J();
                }
            }
        }
    }
}
