package com.oppo.camera.ui.menu.levelcontrol;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import co.polarr.renderer.PolarrRender;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.d;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: GLProducerRender */
public class f implements l.m {

    /* renamed from: a  reason: collision with root package name */
    private Context f2792a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public c f2793b = null;
    private i c = null;
    private e d = null;
    private ArrayList<k> e = null;
    private ArrayList<k> f = null;
    private k g = null;
    private k h = null;
    private a i = null;
    private b j = null;
    private Interpolator k = new PathInterpolator(0.0f, 0.1f, 0.1f, 1.0f);
    private float[] l = {0.0f, 0.0f, 0.0f, 0.0f};
    private float m = 0.0f;
    private float n = 0.0f;
    private float o = 0.0f;
    private int p = 26;
    private int q = 0;
    private int r = 4;
    private boolean s = false;
    private int t = 0;

    /* compiled from: GLProducerRender */
    public interface a {
        void a();

        void a(f fVar);
    }

    /* compiled from: GLProducerRender */
    public interface b {
        void a(float f);

        void b(float f);
    }

    public f(Context context) {
        this.f2792a = context;
    }

    private boolean a(int i2, float f2) {
        float a2 = (((float) g.a()) / 2.0f) + g.g();
        float f3 = f2 + a2;
        float c2 = c(i2);
        return c2 >= f2 - a2 && c2 <= f3;
    }

    private void b(e eVar) {
        float f2;
        float f3;
        float f4;
        d.a("GLProducerRender", "updateElementsParam, glModelParam: " + eVar.toString());
        g.e(eVar.i());
        g.b(eVar.j());
        g.c(eVar.k());
        i iVar = this.c;
        int i2 = 0;
        if (!(iVar == null || this.f == null)) {
            iVar.a();
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                if (this.f.get(i3).d() != 0) {
                    f4 = 0.0f;
                    f3 = 0.0f;
                    f2 = 0.0f;
                } else {
                    float a2 = g.a(eVar.l());
                    f2 = (-a2) / 2.0f;
                    f4 = a2;
                    f3 = f4;
                }
                this.c.a(f4, f3, 10.0f, g.p(), f2);
            }
        }
        c cVar = this.f2793b;
        if (cVar != null) {
            cVar.a();
            if (eVar.n()) {
                this.f2793b.a(1.0f, g.b(), g.i(), g.j(), g.a(0), (g.g() * ((float) (eVar.a().size() - 1))) + g.e(), false, eVar);
                while (i2 < eVar.d()) {
                    this.f2793b.a(1.0f, g.b(), g.i(), g.j(), g.a(i2), g.e(), true, eVar);
                    i2++;
                }
            } else {
                while (i2 < eVar.d()) {
                    this.f2793b.a(1.0f, g.b(), g.i(), g.j(), g.a(i2), g.e(), false, eVar);
                    i2++;
                }
            }
        }
        h.a(g.k(), g.l(), g.m(), g.n(), 10.0f, 100.0f);
        this.d = eVar;
    }

    private float c(int i2) {
        return ((float) (-i2)) * g.g();
    }

    public void a() {
        this.o = 0.0f;
        this.q = 0;
    }

    public void a(float f2, float f3, int i2, Interpolator interpolator, b bVar) {
        this.m = f2;
        this.n = f2 + f3;
        this.o = f3;
        if (i2 <= 0) {
            d.a("GLProducerRender", "startYAngleAnim, durationFrame must > 0!");
            i2 = 1;
        }
        this.p = i2;
        if (interpolator != null) {
            this.k = interpolator;
        }
        if (bVar != null) {
            this.j = bVar;
        }
    }

    public void a(int i2) {
        this.t = i2;
    }

    public void a(int i2, int i3) {
        d.a("GLProducerRender", "notifyPreviewSizeChanged, Size: " + i2 + "x" + i3);
        e eVar = this.d;
        if (eVar != null && eVar.n()) {
            if (this.d.e() != i2 || this.d.f() != i3) {
                this.d.b(i2);
                this.d.c(i3);
                com.oppo.camera.ui.preview.a.d.a(this.d, i3, i2);
                a(this.d, true);
                this.r = 0;
            }
        }
    }

    public void a(int i2, Bitmap bitmap) {
        if (this.f == null) {
            this.f = new ArrayList<>();
        }
        Iterator<k> it = this.f.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            k next = it.next();
            if (next.d() == i2) {
                next.b();
                this.f.remove(next);
                break;
            }
        }
        k kVar = new k(0);
        if (!kVar.h()) {
            kVar.a(bitmap);
        }
        this.f.add(kVar);
        d.a("GLProducerRender", "createRingTexture, length: " + this.f.size() + ", type: " + i2);
    }

    public void a(int i2, String str) {
        e eVar = this.d;
        if (eVar != null && eVar.a() != null && i2 < this.d.a().size() && this.d.a().get(i2) != null) {
            this.d.a().get(i2).filterId = str;
        }
    }

    public void a(l lVar) {
        if (lVar != null) {
            lVar.a((Runnable) new Runnable() {
                public void run() {
                    if (f.this.f2793b != null) {
                        f.this.f2793b.c();
                    }
                    f.this.g();
                }
            });
        }
    }

    public void a(e eVar, boolean z) {
        d.a("GLProducerRender", "createTextures, glModelParam: " + eVar.toString());
        this.t = eVar.g();
        a(0, eVar.c());
        c cVar = this.f2793b;
        if (cVar != null) {
            cVar.a(eVar.m());
        }
        if (eVar.n()) {
            int width = eVar.a().get(0).rect.width();
            int i2 = eVar.a().get(eVar.a().size() - 1).rect.bottom - eVar.a().get(0).rect.top;
            k kVar = this.g;
            if (kVar == null) {
                this.g = new k(width, i2, -1);
                if (!this.g.h()) {
                    this.g.a();
                }
                if (this.s) {
                    b(eVar);
                    return;
                }
                return;
            }
            if (!(width == kVar.e() && i2 == this.g.f())) {
                this.g.b();
                this.g = new k(width, i2, -1);
                if (!this.g.h()) {
                    this.g.a();
                }
            }
            if (z) {
                b(eVar);
            }
        } else if (eVar.b() != null) {
            if (this.e == null) {
                a(eVar.b());
                if (this.s) {
                    b(eVar);
                    return;
                }
                return;
            }
            a(eVar.b());
            if (z) {
                b(eVar);
            }
        }
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    public void a(List<Bitmap> list) {
        d.a("GLProducerRender", "createCylinderSideTexs, bitmaps: " + list);
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        if (this.e.size() > 0) {
            Iterator<k> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e.clear();
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            k kVar = new k();
            if (!kVar.h()) {
                kVar.a(list.get(i2));
            }
            this.e.add(kVar);
        }
    }

    public void a(GL10 gl10) {
        e eVar = this.d;
        if (eVar == null || eVar.d() <= 0) {
            d.e("GLProducerRender", "onDrawFrame, vertex not ready");
            return;
        }
        e eVar2 = this.d;
        if (eVar2 == null || !eVar2.n() || this.r >= 4) {
            i.i();
            float[] fArr = this.l;
            GLES20.glClearColor(fArr[1], fArr[2], fArr[3], fArr[0]);
            GLES20.glClear(16640);
            GLES20.glDisable(3042);
            h.b();
            h.a(0.0f, 0.0f, -10.0f);
            i.i();
            h.b();
            if (Float.compare(this.o, 0.0f) != 0) {
                float f2 = this.o;
                Interpolator interpolator = this.k;
                int i2 = this.q;
                this.q = i2 + 1;
                float interpolation = f2 * interpolator.getInterpolation(((float) i2) / ((float) this.p));
                float interpolation2 = this.o * this.k.getInterpolation(((float) this.q) / ((float) this.p));
                this.m += interpolation2 - interpolation;
                b bVar = this.j;
                if (bVar != null) {
                    bVar.a(this.m);
                } else {
                    d.e("GLProducerRender", "onDrawFrame, mScrollAnimListener == null !");
                }
                if ((Float.compare(this.o, 0.0f) > 0 && Float.compare(interpolation2, this.o) >= 0) || (Float.compare(this.o, 0.0f) < 0 && Float.compare(interpolation2, this.o) <= 0)) {
                    this.m = this.n;
                    this.o = 0.0f;
                    this.q = 0;
                    b bVar2 = this.j;
                    if (bVar2 != null) {
                        bVar2.b(this.m);
                    } else {
                        d.e("GLProducerRender", "onDrawFrame, mScrollAnimListener == null !");
                    }
                }
            }
            h.a(this.m, 0.0f, 1.0f, 0.0f);
            i.i();
            e eVar3 = this.d;
            if (eVar3 == null || !eVar3.n()) {
                if (this.e != null) {
                    for (int i3 = 0; i3 < this.e.size(); i3++) {
                        if (a(i3, this.m) && i3 < this.f2793b.b()) {
                            i.i();
                            h.b();
                            i.i();
                            h.a(0.0f, ((-g.i()) / 2.0f) * 1.0f, 0.0f);
                            this.f2793b.b(this.e.get(i3).c(), i3);
                            h.c();
                            i.i();
                        }
                    }
                }
            } else if (this.s && this.g != null) {
                this.i.a(this);
            }
            h.c();
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 1);
            i.i();
            if (!(this.c == null || this.f == null)) {
                for (int i4 = 0; i4 < this.f.size(); i4++) {
                    if (this.f.get(i4).c() != -1) {
                        h.b();
                        h.a(0.0f, ((-g.i()) / 2.0f) * 1.0f, 0.0f);
                        this.c.a(this.f.get(i4).c(), i4);
                        h.c();
                    } else {
                        d.e("GLProducerRender", "onDrawFrame, mRingTexs[" + i4 + "] not init.");
                    }
                }
            }
            h.c();
            i.i();
            return;
        }
        d.a("GLProducerRender", "onDrawFrame, mDisableFrameId: " + this.r);
        this.r = this.r + 1;
    }

    public void a(GL10 gl10, int i2, int i3) {
        long currentTimeMillis = System.currentTimeMillis();
        GLES20.glViewport(0, 0, i2, i3);
        i.i();
        this.f2793b.a(i2, i3);
        g.d((float) i3);
        e eVar = this.d;
        if (eVar != null) {
            b(eVar);
        } else {
            d.a("GLProducerRender", "onSurfaceChanged, mGLModelParam has not init.");
        }
        h.a(0.0f, 0.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        h.b(0.0f, 6.0f, 10.0f);
        this.s = true;
        d.a("GLProducerRender", "onSurfaceChanged, cost: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public void a(GL10 gl10, EGLConfig eGLConfig) {
        long currentTimeMillis = System.currentTimeMillis();
        GLES20.glEnable(2929);
        GLES20.glEnable(2884);
        i.i();
        h.a();
        this.i.a();
        this.f2793b = new c(this.f2792a);
        this.c = new i(this.f2792a);
        d.a("GLProducerRender", "onSurfaceCreated, cost: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public void a(float[] fArr) {
        this.l = fArr;
    }

    public boolean a(e eVar) {
        e eVar2 = this.d;
        return eVar2 != null && eVar2.a(eVar);
    }

    public float b() {
        return this.m;
    }

    public void b(int i2) {
        e eVar = this.d;
        if (eVar == null || eVar.d() <= 0) {
            d.e("GLProducerRender", "onDrawFrame, vertex not ready");
            return;
        }
        int i3 = 0;
        if (!this.f2793b.d() || this.g == null) {
            while (i3 < this.d.d()) {
                i3++;
                this.f2793b.d(i2, i3);
            }
            d.a("GLProducerRender", "onDrawFrame, drawOesTexture.");
            return;
        }
        if (Float.compare(this.o, 0.0f) == 0) {
            this.f2793b.a(i2, this.g.c(), this.d.a());
        }
        this.f2793b.c(this.g.c(), 0);
    }

    public boolean c() {
        c cVar = this.f2793b;
        if (cVar != null) {
            return cVar.d();
        }
        return false;
    }

    public void d() {
        c cVar = this.f2793b;
        if (cVar != null) {
            cVar.a(this.f2792a);
        }
    }

    public int e() {
        e eVar = this.d;
        if (eVar != null) {
            return eVar.d();
        }
        return 0;
    }

    public boolean f() {
        e eVar = this.d;
        if (eVar != null) {
            return eVar.n();
        }
        return false;
    }

    public void g() {
        d.a("GLProducerRender", "releaseResource");
        ArrayList<k> arrayList = this.e;
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<k> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e.clear();
            this.e = null;
        }
        ArrayList<k> arrayList2 = this.f;
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator<k> it2 = this.f.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
            this.f.clear();
            this.f = null;
        }
        k kVar = this.g;
        if (kVar != null) {
            PolarrRender.clearTextureHelper(kVar.c(), this.g.e(), this.g.f());
            this.g.b();
            this.g = null;
        }
        k kVar2 = this.h;
        if (kVar2 != null) {
            kVar2.b();
            this.h = null;
        }
    }
}
