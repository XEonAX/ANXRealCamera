package com.oppo.camera.ui.preview.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.renderscript.Matrix4f;
import android.util.Size;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.c;
import com.oppo.camera.gl.g;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.s;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.ui.preview.a.n;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PreviewEffectProcessImpl */
public class j implements i {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public boolean f2914a = false;

    /* renamed from: b  reason: collision with root package name */
    private int f2915b = 0;
    private int c = 0;
    private float[] d = null;
    private float[] e = null;
    private Context f = null;
    private GLRootView g = null;
    /* access modifiers changed from: private */
    public i.a h = null;
    private SurfaceTexture i = null;
    /* access modifiers changed from: private */
    public p j = null;
    /* access modifiers changed from: private */
    public HashMap<Integer, n> k = null;
    private n.b l = new n.b() {
        public void a() {
            if (j.this.h != null) {
                j.this.h.b();
            }
        }

        public void a(String str) {
            if (j.this.h != null) {
                j.this.h.b(str);
            }
        }

        public Rect[] b() {
            if (j.this.h != null) {
                return j.this.h.a();
            }
            return null;
        }
    };

    public j(Context context) {
        this.f = context;
        this.k = new HashMap<>();
        for (int i2 = 0; i2 < 32; i2++) {
            int m = m() & (1 << i2);
            if (m != 0) {
                n a2 = o.a(context, m);
                if (a2 != null) {
                    a2.a(this.l);
                    this.k.put(Integer.valueOf(m), a2);
                }
            }
        }
        this.j = new p();
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.scale(1.0f, -1.0f, 1.0f);
        matrix4f.translate(0.0f, -1.0f, 0.0f);
        this.e = matrix4f.getArray();
    }

    private void a(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        hVar.a((c) this.k.get(4).h(), fArr, i2, i3, i4, i5);
    }

    private void a(h hVar, g gVar, s sVar, float[] fArr) {
        if (sVar != null) {
            int e2 = sVar.e();
            int f2 = sVar.f();
            hVar.a(sVar);
            hVar.a(0.0f, (float) f2);
            hVar.a(1.0f, -1.0f, 1.0f);
            this.i.getTransformMatrix(this.d);
            if (fArr == null) {
                fArr = this.d;
            }
            hVar.a((c) gVar, fArr, 0, 0, e2, f2);
            hVar.h();
        }
    }

    private boolean a(h hVar, int i2, int i3, float[] fArr) {
        n.a r = this.k.get(16).r();
        r.f2931a = hVar;
        r.d = i2;
        r.e = i3;
        return this.k.get(16).a(r);
    }

    private boolean a(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        this.k.get(1).a(hVar);
        boolean a2 = a(hVar, gVar, fArr, false);
        if (a2) {
            e(hVar, i2, i3, i4, i5, this.d);
        }
        return a2;
    }

    private boolean a(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        this.k.get(4).a(hVar);
        boolean a2 = i(4) ? a(hVar, gVar, fArr, i6) : false;
        if (a2) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a2;
    }

    private boolean a(h hVar, g gVar, boolean z, boolean z2, boolean z3) {
        n.a r = this.k.get(8).r();
        r.f2931a = hVar;
        r.c = this.k.get(8).g();
        if (z2) {
            a(hVar, this.k.get(2).h(), this.k.get(8).g(), (float[]) null);
            return this.k.get(8).a(r);
        } else if (z) {
            a(hVar, this.k.get(1).h(), this.k.get(8).g(), (float[]) null);
            return this.k.get(8).a(r);
        } else if (z3) {
            a(hVar, this.k.get(4).h(), this.k.get(8).g(), (float[]) null);
            return this.k.get(8).a(r);
        } else {
            a(hVar, gVar, this.k.get(8).g(), (float[]) null);
            return this.k.get(8).a(r);
        }
    }

    private boolean a(h hVar, g gVar, boolean z, boolean z2, float[] fArr) {
        n.a r = this.k.get(2).r();
        if (z) {
            r.c = this.k.get(1).h();
            return this.k.get(2).a(r);
        } else if (z2) {
            r.c = this.k.get(4).h();
            return this.k.get(2).a(r);
        } else {
            a(hVar, gVar, this.k.get(2).g(), fArr);
            r.c = this.k.get(2).g();
            return this.k.get(2).a(r);
        }
    }

    private boolean a(h hVar, g gVar, float[] fArr, int i2) {
        a(hVar, gVar, this.k.get(4).g(), fArr);
        n.a r = this.k.get(4).r();
        r.c = this.k.get(4).g();
        r.f = i2;
        return this.k.get(4).a(r);
    }

    private boolean a(h hVar, g gVar, float[] fArr, boolean z) {
        n.a r = this.k.get(1).r();
        r.f2931a = hVar;
        if (z) {
            r.c = this.k.get(4).h();
            return this.k.get(1).a(r);
        }
        a(hVar, gVar, this.k.get(1).g(), fArr);
        r.c = this.k.get(1).g();
        return this.k.get(1).a(r);
    }

    private boolean a(h hVar, s sVar, s sVar2, float[] fArr) {
        int e2 = sVar2.e();
        int f2 = sVar2.f();
        hVar.a(sVar2);
        hVar.a(0.0f, (float) f2);
        hVar.a(1.0f, -1.0f, 1.0f);
        this.i.getTransformMatrix(this.d);
        if (fArr == null) {
            fArr = this.d;
        }
        hVar.a((c) sVar, fArr, 0, 0, e2, f2);
        hVar.h();
        return true;
    }

    private boolean b(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        boolean a2 = a(hVar, i4, i5, fArr);
        if (a2) {
            f(hVar, i2, i3, i4, i5, this.e);
        }
        return a2;
    }

    private boolean b(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        this.k.get(2).a(hVar);
        boolean a2 = a(hVar, gVar, false, false, fArr);
        if (a2) {
            d(hVar, i2, i3, i4, i5, this.d);
        }
        return a2;
    }

    private boolean b(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        h hVar2 = hVar;
        g gVar2 = gVar;
        float[] fArr2 = fArr;
        this.k.get(4).a(hVar);
        this.k.get(1).a(hVar);
        boolean a2 = i(4) ? a(hVar, gVar, fArr2, i6) : false;
        boolean a3 = a(hVar, gVar, fArr2, a2);
        if (a3) {
            e(hVar, i2, i3, i4, i5, this.d);
        } else if (a2) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a3 || a2;
    }

    private void c(int i2, int i3) {
        long currentTimeMillis = System.currentTimeMillis();
        d(i2, i3);
        p();
        o();
        d.a("PreviewEffectProcessImpl", "updateTextureRes, cost time: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    private void c(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        hVar.a((c) this.k.get(8).h(), fArr, i2, i3, i4, i5);
    }

    private boolean c(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        h hVar2 = hVar;
        this.k.get(1).a(hVar);
        this.k.get(8).a(hVar);
        boolean a2 = a(hVar, gVar, fArr, false);
        boolean a3 = a(hVar, gVar, a2, false, false);
        if (a3) {
            c(hVar, i2, i3, i4, i5, fArr);
        } else if (a2) {
            e(hVar, i2, i3, i4, i5, fArr);
        }
        return a3 || a2;
    }

    private boolean c(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        h hVar2 = hVar;
        g gVar2 = gVar;
        float[] fArr2 = fArr;
        this.k.get(4).a(hVar);
        this.k.get(1).a(hVar);
        this.k.get(2).a(hVar);
        boolean a2 = i(4) ? a(hVar, gVar2, fArr2, i6) : false;
        boolean a3 = a(hVar, gVar2, fArr2, a2);
        boolean a4 = a(hVar, gVar, a3, false, fArr);
        if (a4) {
            d(hVar, i2, i3, i4, i5, this.d);
        } else if (a3) {
            e(hVar, i2, i3, i4, i5, this.d);
        } else if (a2) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a4 || a3 || a2;
    }

    private void d(int i2, int i3) {
        for (n next : this.k.values()) {
            if (next.c(j())) {
                next.a(i2, i3);
            }
        }
    }

    private void d(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        hVar.a((c) this.k.get(2).h(), fArr, i2, i3, i4, i5);
    }

    private boolean d(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        h hVar2 = hVar;
        this.k.get(1).a(hVar);
        this.k.get(2).a(hVar);
        this.k.get(8).a(hVar);
        boolean a2 = a(hVar, gVar, fArr, false);
        h hVar3 = hVar;
        g gVar2 = gVar;
        boolean z = a2;
        boolean a3 = a(hVar3, gVar2, z, false, fArr);
        boolean a4 = a(hVar3, gVar2, z, a3, false);
        if (a4) {
            c(hVar, i2, i3, i4, i5, fArr);
        } else if (a3) {
            d(hVar, i2, i3, i4, i5, this.d);
        } else if (a2) {
            e(hVar, i2, i3, i4, i5, fArr);
        }
        return a4 || a3 || a2;
    }

    private boolean d(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        boolean z;
        h hVar2 = hVar;
        this.k.get(4).a(hVar);
        this.k.get(2).a(hVar);
        if (i(4)) {
            g gVar2 = gVar;
            z = a(hVar, gVar, fArr, i6);
        } else {
            g gVar3 = gVar;
            float[] fArr2 = fArr;
            z = false;
        }
        boolean a2 = a(hVar, gVar, false, z, fArr);
        if (a2) {
            d(hVar, i2, i3, i4, i5, this.d);
        } else if (z) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a2 || z;
    }

    private void e(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        hVar.a((c) this.k.get(1).h(), fArr, i2, i3, i4, i5);
    }

    private boolean e(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        h hVar2 = hVar;
        this.k.get(2).a(hVar);
        this.k.get(8).a(hVar);
        h hVar3 = hVar;
        g gVar2 = gVar;
        boolean a2 = a(hVar3, gVar2, false, false, fArr);
        boolean a3 = a(hVar3, gVar2, false, a2, false);
        if (a3) {
            c(hVar, i2, i3, i4, i5, fArr);
        } else if (a2) {
            d(hVar, i2, i3, i4, i5, this.d);
        }
        return a3 || a2;
    }

    private boolean e(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        h hVar2 = hVar;
        this.k.get(4).a(hVar);
        this.k.get(8).a(hVar);
        this.i.updateTexImage();
        this.i.getTransformMatrix(this.d);
        boolean a2 = a(hVar, gVar, fArr, i6);
        boolean a3 = a(hVar, gVar, false, false, a2);
        if (a3) {
            c(hVar, i2, i3, i4, i5, fArr);
        } else if (a2) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a3 || a2;
    }

    private void f(h hVar, int i2, int i3, int i4, int i5, float[] fArr) {
        hVar.a((c) this.k.get(16).h(), fArr, i2, i3, i4, i5);
    }

    private boolean f(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        this.k.get(8).a(hVar);
        boolean a2 = a(hVar, gVar, false, false, false);
        if (a2) {
            c(hVar, i2, i3, i4, i5, fArr);
        }
        return a2;
    }

    private boolean f(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        h hVar2 = hVar;
        this.k.get(4).a(hVar);
        this.k.get(2).a(hVar);
        this.k.get(8).a(hVar);
        this.i.updateTexImage();
        this.i.getTransformMatrix(this.d);
        g gVar2 = gVar;
        boolean a2 = a(hVar, gVar, fArr, i6);
        h hVar3 = hVar;
        g gVar3 = gVar;
        boolean a3 = a(hVar3, gVar3, false, a2, fArr);
        boolean a4 = a(hVar3, gVar3, false, a3, a2);
        if (a4) {
            c(hVar, i2, i3, i4, i5, fArr);
        } else if (a3) {
            d(hVar, i2, i3, i4, i5, this.d);
        } else if (a2) {
            a(hVar, i2, i3, i4, i5, this.d);
        }
        return a4 || a3 || a2;
    }

    private boolean g(h hVar, g gVar, int i2, int i3, int i4, int i5, float[] fArr) {
        h hVar2 = hVar;
        this.k.get(1).a(hVar);
        this.k.get(2).a(hVar);
        float[] fArr2 = fArr;
        boolean a2 = a(hVar, gVar, fArr2, false);
        boolean a3 = a(hVar, gVar, a2, false, fArr2);
        if (a3) {
            d(hVar, i2, i3, i4, i5, this.d);
        } else if (a2) {
            e(hVar, i2, i3, i4, i5, this.d);
        }
        return a3 || a2;
    }

    private boolean i(int i2) {
        if (this.k.get(Integer.valueOf(i2)) != null) {
            return this.k.get(Integer.valueOf(i2)).a(j());
        }
        return false;
    }

    private void j(final int i2) {
        GLRootView gLRootView = this.g;
        if (gLRootView == null || gLRootView.getSurfaceState()) {
            ((Activity) this.f).runOnUiThread(new Runnable() {
                /* JADX WARNING: Code restructure failed: missing block: B:10:0x002b, code lost:
                    if (r2.hasNext() == false) goto L_0x0066;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:11:0x002d, code lost:
                    r3 = (java.util.Map.Entry) r2.next();
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:12:0x003e, code lost:
                    if ((16 & ((java.lang.Integer) r3.getKey()).intValue()) != 0) goto L_0x0025;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:14:0x004c, code lost:
                    if (((com.oppo.camera.ui.preview.a.n) r3.getValue()).c(r3) == false) goto L_0x0025;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:16:0x0054, code lost:
                    if (com.oppo.camera.ui.preview.a.j.d(r6.f2922b) == null) goto L_0x0025;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:17:0x0056, code lost:
                    ((com.oppo.camera.ui.preview.a.n) r3.getValue()).a(com.oppo.camera.ui.preview.a.j.d(r6.f2922b));
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:19:0x0074, code lost:
                    if (com.oppo.camera.ui.preview.a.j.b(r6.f2922b).get(16) == null) goto L_0x00b8;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:21:0x007c, code lost:
                    if (com.oppo.camera.ui.preview.a.j.d(r6.f2922b) == null) goto L_0x00b8;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:23:0x0081, code lost:
                    if ((r3 & 16) == 0) goto L_0x00a5;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:25:0x0089, code lost:
                    if (com.oppo.camera.ui.preview.a.j.e(r6.f2922b) == false) goto L_0x00a5;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:26:0x008b, code lost:
                    ((com.oppo.camera.ui.preview.a.n) com.oppo.camera.ui.preview.a.j.b(r6.f2922b).get(16)).a(com.oppo.camera.ui.preview.a.j.d(r6.f2922b));
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a5, code lost:
                    ((com.oppo.camera.ui.preview.a.n) com.oppo.camera.ui.preview.a.j.b(r6.f2922b).get(16)).f();
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:28:0x00b8, code lost:
                    com.oppo.camera.d.a("PreviewEffectProcessImpl", "onlyCreateEngines, cost time: " + (java.lang.System.currentTimeMillis() - r0));
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:29:0x00d3, code lost:
                    return;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:8:0x0013, code lost:
                    r0 = java.lang.System.currentTimeMillis();
                    r2 = com.oppo.camera.ui.preview.a.j.b(r6.f2922b).entrySet().iterator();
                 */
                public void run() {
                    synchronized (this) {
                        if (!j.this.f2914a) {
                            d.a("PreviewEffectProcessImpl", "onlyCreateEngines, texture has been released");
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public boolean n() {
        return k() && l() && "ANIMOJI".equals(i().getCategoryId());
    }

    private void o() {
        GLRootView gLRootView = this.g;
        if (gLRootView != null) {
            gLRootView.a((Runnable) new Runnable() {
                public void run() {
                    for (n nVar : j.this.k.values()) {
                        if (nVar.c(j.this.j())) {
                            nVar.a(true);
                        }
                    }
                }
            });
        }
    }

    private void p() {
        GLRootView gLRootView = this.g;
        if (gLRootView != null) {
            gLRootView.a((Runnable) new Runnable() {
                public void run() {
                    for (n nVar : j.this.k.values()) {
                        if (nVar.c(j.this.j())) {
                            nVar.k();
                            nVar.j();
                        }
                    }
                }
            });
        }
    }

    public void a() {
        j(j());
    }

    public void a(int i2) {
        for (n d2 : this.k.values()) {
            d2.d(i2);
        }
    }

    public void a(int i2, int i3) {
        j(j());
    }

    public void a(long j2) {
        for (n next : this.k.values()) {
            int j3 = j();
            if (next.c(j3) && next.a(j3)) {
                next.a(j2);
            }
        }
    }

    public void a(SurfaceTexture surfaceTexture) {
        this.i = surfaceTexture;
    }

    public void a(Size size, boolean z) {
        for (n next : this.k.values()) {
            int j2 = j();
            if (next.c(j2) && next.a(j2)) {
                next.a(size, z);
            }
        }
    }

    public void a(GLRootView gLRootView) {
        this.g = gLRootView;
        for (n a2 : this.k.values()) {
            a2.a(gLRootView);
        }
    }

    public void a(StickerItem stickerItem) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.a(stickerItem);
        }
    }

    public void a(i.a aVar) {
        this.h = aVar;
    }

    public void a(String str) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.a(str);
        }
    }

    public void a(boolean z) {
        synchronized (this) {
            this.f2914a = z;
        }
    }

    public void a(float[] fArr) {
        this.d = fArr;
    }

    public void a(int[] iArr) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.a(iArr);
        }
    }

    public boolean a(h hVar, int i2, int i3, int i4, int i5) {
        boolean i6 = i(2);
        boolean i7 = i(4);
        boolean i8 = i(8);
        if (i(16)) {
            f(hVar, i2, i3, i4, i5, this.e);
            return true;
        } else if (i8) {
            c(hVar, i2, i3, i4, i5, this.e);
            return true;
        } else if (i6) {
            d(hVar, i2, i3, i4, i5, this.d);
            return true;
        } else if (!i7) {
            return false;
        } else {
            a(hVar, i2, i3, i4, i5, this.d);
            return true;
        }
    }

    public boolean a(h hVar, g gVar, int i2, int i3, int i4, int i5, int i6) {
        int j2 = j();
        boolean z = false;
        boolean a2 = this.k.get(1).c(j2) ? this.k.get(1).a(j2) : false;
        boolean a3 = this.k.get(2).c(j2) ? this.k.get(2).a(j2) : false;
        boolean a4 = this.k.get(4).c(j2) ? this.k.get(4).a(j2) : false;
        boolean a5 = (this.k.get(8) == null || !this.k.get(8).c(j2)) ? false : this.k.get(8).a(j2);
        boolean a6 = (this.k.get(16) == null || !this.k.get(16).c(j2)) ? false : this.k.get(16).a(j2);
        if (!a2 && !a3 && !a5 && !a6 && !a4) {
            return false;
        }
        if (a6) {
            z = b(hVar, i2, i3, i4, i5, this.e);
        } else if (a2 && !a3 && !a5 && !a4) {
            z = a(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (a2 && !a3 && a5) {
            z = c(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (a2 && a3 && !a5 && !a4) {
            z = g(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (a2 && a3 && a5) {
            z = d(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (a2 && !a3 && !a5 && a4) {
            z = b(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        } else if (a2 && a3 && !a5 && a4) {
            z = c(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        } else if (!a2 && a3 && !a5 && !a4) {
            z = b(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (!a2 && a3 && a5 && !a4) {
            z = e(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (!a2 && !a3 && a5 && !a4) {
            z = f(hVar, gVar, i2, i3, i4, i5, this.e);
        } else if (!a2 && !a3 && !a5 && a4) {
            z = a(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        } else if (!a2 && a3 && !a5 && a4) {
            z = d(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        } else if (!a2 && !a3 && a5 && a4) {
            z = e(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        } else if (!a2 && a3 && a5 && a4) {
            z = f(hVar, gVar, i2, i3, i4, i5, this.e, i6);
        }
        if (!z) {
            hVar.a((c) gVar, this.d, i2, i3, i4, i5);
        }
        return true;
    }

    public boolean a(h hVar, g gVar, s sVar) {
        boolean i2 = i(2);
        boolean i3 = i(4);
        boolean i4 = i(1);
        boolean i5 = i(8);
        if (i(16) && this.k.get(16) != null) {
            a(hVar, this.k.get(16).h(), sVar, this.e);
        } else if (i5 && this.k.get(8) != null) {
            a(hVar, this.k.get(8).h(), sVar, this.e);
        } else if (i2 && this.k.get(2) != null) {
            a(hVar, this.k.get(2).h(), sVar, (float[]) null);
        } else if (i4 && this.k.get(1) != null) {
            a(hVar, this.k.get(1).h(), sVar, (float[]) null);
        } else if (!i3 || this.k.get(4) == null) {
            a(hVar, gVar, sVar, (float[]) null);
        } else {
            a(hVar, this.k.get(4).h(), sVar, (float[]) null);
        }
        return true;
    }

    public boolean a(byte[] bArr, int i2, int i3) {
        int j2 = j() & 16;
        for (n next : this.k.values()) {
            if (next.a(j2)) {
                next.b(bArr, i2, i3);
                return true;
            }
        }
        return false;
    }

    public boolean a(byte[] bArr, int i2, int i3, int i4) {
        for (n next : this.k.values()) {
            if (next.a(i4)) {
                next.a(bArr, i2, i3);
                return true;
            }
        }
        return false;
    }

    public void b() {
        if (this.k.get(8) != null) {
            this.k.get(8).m();
        }
    }

    public void b(int i2) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.b(i2);
        }
    }

    public void b(int i2, int i3) {
        this.f2915b = i2;
        this.c = i3;
        c(i2, i3);
    }

    public void b(boolean z) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.a(z);
        }
    }

    public boolean b(h hVar, int i2, int i3, int i4, int i5) {
        return false;
    }

    public boolean b(StickerItem stickerItem) {
        if (i() == null || stickerItem == null || stickerItem.getStickerUUID() == null) {
            return false;
        }
        return stickerItem.getStickerUUID().equals(i().getStickerUUID());
    }

    public void c() {
        if (this.k.get(8) != null) {
            this.k.get(8).n();
        }
    }

    public void c(int i2) {
        c(this.f2915b, this.c);
        j(i2);
    }

    public void d(final int i2) {
        final int m = m();
        ((Activity) this.f).runOnUiThread(new Runnable() {
            public void run() {
                d.a("PreviewEffectProcessImpl", "destroyEngine, type: " + i2);
                int i = i2;
                int i2 = 23;
                int i3 = 0;
                if (i != 0) {
                    if (i != 1) {
                        i2 = i != 2 ? 0 : CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_ARCSOFT_SINGLE_BOKEH) | true;
                    } else {
                        if (!CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_ARCSOFT_SINGLE_BOKEH)) {
                            i2 = 22;
                        }
                        i3 = 16;
                    }
                }
                for (Map.Entry entry : j.this.k.entrySet()) {
                    if ((((Integer) entry.getKey()).intValue() & i2) != 0 && ((((Integer) entry.getKey()).intValue() & i3) == 0 || (m & i3) != 0)) {
                        ((n) entry.getValue()).f();
                    }
                }
            }
        });
    }

    public boolean d() {
        if (this.k.get(8) != null) {
            if (this.k.get(8).a(j())) {
                this.k.get(8).i();
            } else {
                this.k.get(8).o();
            }
        }
        if (this.k.get(16) == null) {
            return false;
        }
        if (n()) {
            this.k.get(16).a(this.j);
            this.k.get(16).i();
            return false;
        }
        this.k.get(16).f();
        return false;
    }

    public void e(int i2) {
        for (n b2 : this.k.values()) {
            b2.b(i2);
        }
    }

    public boolean e() {
        if (this.k.get(8) == null || !this.k.get(8).a(j())) {
            return this.k.get(16) != null && this.k.get(16).a(j());
        }
        return true;
    }

    public void f() {
        this.k.get(8).d();
    }

    public void f(int i2) {
        for (n e2 : this.k.values()) {
            e2.e(i2);
        }
    }

    public void g() {
        GLRootView gLRootView = this.g;
        if (gLRootView != null) {
            gLRootView.a((Runnable) new Runnable() {
                public void run() {
                    for (n k : j.this.k.values()) {
                        k.k();
                    }
                }
            });
        }
    }

    public void g(int i2) {
        p pVar = this.j;
        if (pVar != null) {
            pVar.a(i2);
        }
    }

    public n h(int i2) {
        return this.k.get(Integer.valueOf(i2));
    }

    public void h() {
        GLRootView gLRootView = this.g;
        if (gLRootView != null) {
            gLRootView.a((Runnable) new Runnable() {
                public void run() {
                    d.a("PreviewEffectProcessImpl", "onDestroy");
                    for (n c : j.this.k.values()) {
                        c.c();
                    }
                }
            });
        }
    }

    public StickerItem i() {
        p pVar = this.j;
        if (pVar != null) {
            return pVar.c();
        }
        return null;
    }

    public int j() {
        i.a aVar = this.h;
        int i2 = 0;
        if (aVar == null) {
            return 0;
        }
        if (aVar.a("pref_camera_blur_mode_key")) {
            i2 = 1;
        }
        if (this.h.a("pref_filter_process_key")) {
            i2 |= 2;
        }
        if (this.h.a("pref_sticker_process_key")) {
            i2 |= 8;
        }
        if (this.h.a("pref_omoji_process_key")) {
            i2 |= 16;
        }
        return this.h.a(CameraFunction.FACE_SLENDER_PROCESS) ? i2 | 4 : i2;
    }

    public boolean k() {
        p pVar = this.j;
        if (pVar != null) {
            return pVar.d();
        }
        return true;
    }

    public boolean l() {
        return i() != null;
    }

    public int m() {
        return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_STICKER) ? 31 : 7;
    }
}
