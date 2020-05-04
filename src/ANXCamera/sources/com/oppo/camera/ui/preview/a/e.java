package com.oppo.camera.ui.preview.a;

import android.content.Context;
import co.polarr.renderer.FilterPackageUtil;
import co.polarr.renderer.PolarrRender;
import com.oppo.camera.d;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.s;
import com.oppo.camera.ui.preview.a.n;
import com.oppo.camera.ui.preview.a.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;

/* compiled from: FilterTexturePreview */
public class e extends n implements p.a {

    /* renamed from: a  reason: collision with root package name */
    private int f2894a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2895b = 0;
    private ArrayList<s> c = new ArrayList<>();
    private Context g = null;
    /* access modifiers changed from: private */
    public p h = null;
    /* access modifiers changed from: private */
    public PolarrRender i = null;
    private boolean j = false;
    private boolean k = false;
    private String l = FilterPackageUtil.F_DEFAULT;
    private boolean m = false;
    private String n = "";

    public e(Context context) {
        super(context);
        this.g = context;
    }

    private void a(Context context, int i2, int i3) {
        d.a("FilterTexturePreview", "initPolarrRender");
        d.a("initPolarrRender");
        PolarrRender polarrRender = this.i;
        if (polarrRender != null) {
            polarrRender.release();
        }
        this.i = new PolarrRender();
        this.i.initRender(context.getResources(), i2, i3, true, 0);
        d.b("initPolarrRender");
        d.a("FilterTexturePreview", "initPolarrRender X");
    }

    public void a(int i2, int i3) {
        d.a("FilterTexturePreview", "setSize, height: " + i2 + ", width: " + i3);
        this.f2894a = i3;
        this.f2895b = i2;
    }

    public void a(h hVar) {
        Iterator<s> it = this.c.iterator();
        while (it.hasNext()) {
            s next = it.next();
            if (next != null && !next.k()) {
                next.c(hVar);
                d.a("FilterTexturePreview", "prepareTextures, texture.getId: " + next.d());
            }
        }
    }

    public void a(p pVar) {
        d.a("FilterTexturePreview", "createEngine");
        this.h = pVar;
        p pVar2 = this.h;
        if (pVar2 != null) {
            pVar2.a((p.a) this);
        }
    }

    public void a(String str) {
        this.n = str;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public boolean a(int i2) {
        if (this.h == null || FilterPackageUtil.F_DEFAULT.equals(this.n) || !this.m) {
            d.a("FilterTexturePreview", "canProcess, mRequest not ready or not open effect or filterIndex is 0");
            return false;
        } else if (!c(i2)) {
            return false;
        } else {
            ArrayList<s> arrayList = this.c;
            if (arrayList == null || arrayList.size() < 2) {
                d.a("FilterTexturePreview", "canProcess, mFilterTextures has not init!");
                return false;
            } else if (this.k) {
                return true;
            } else {
                d.e("FilterTexturePreview", "canProcess, texture is not inited");
                return false;
            }
        }
    }

    public boolean a(n.a aVar) {
        if (this.h == null || aVar == null || aVar.c == null) {
            return false;
        }
        String str = this.n;
        boolean b2 = this.h.b();
        if (FilterPackageUtil.F_DEFAULT.equals(str)) {
            return false;
        }
        if (this.j || this.i == null) {
            a(this.g, h().g(), h().h());
        }
        d.a("Filter.process");
        this.i.setOutputTexture(this.c.get(1).d());
        this.i.setInputTexture(aVar.c.d());
        if (this.j || !str.equals(this.l)) {
            if (b2) {
                PolarrRender.setupVignetteParams(-0.7f, 0.44f, 0.83f, 0.25f, -0.74f, 0.98f);
            }
            this.i.fastUpdateFilter(str);
            this.l = str;
        }
        this.i.updateInputTexture();
        if (b2) {
            this.i.drawFrameWithVignette();
        } else {
            this.i.drawFrame();
        }
        this.j = false;
        d.b("Filter.process");
        return true;
    }

    public void b(boolean z) {
        this.m = z;
    }

    public boolean b() {
        return false;
    }

    public void c() {
    }

    public void d() {
    }

    public int e() {
        return 2;
    }

    public void f() {
        d.a("FilterTexturePreview", "destroyEngine");
        if (this.h == null || this.e == null) {
            d.a("FilterTexturePreview", "destroyEngine, mRootView not initialized yet.");
            return;
        }
        d.a("FilterTexturePreview", "destroyEngine, status: " + ((Boolean) com.oppo.camera.p.a(this.e, new Callable<Boolean>() {
            /* renamed from: a */
            public Boolean call() throws Exception {
                if (e.this.i != null) {
                    d.a("FilterTexturePreview", "destroyEngine");
                    e.this.i.release();
                    i.i();
                    d.a("FilterTexturePreview", "destroyEngine X");
                    PolarrRender unused = e.this.i = null;
                }
                e.this.h.i();
                p unused2 = e.this.h = null;
                return true;
            }
        })));
    }

    public s g() {
        ArrayList<s> arrayList = this.c;
        if (arrayList == null || arrayList.size() != 2) {
            return null;
        }
        return this.c.get(0);
    }

    public s h() {
        ArrayList<s> arrayList = this.c;
        if (arrayList == null || arrayList.size() != 2) {
            return null;
        }
        return this.c.get(1);
    }

    public boolean i() {
        return false;
    }

    public void j() {
        d.a("FilterTexturePreview", "newTextures");
        for (int i2 = 0; i2 < 2; i2++) {
            this.c.add(new s(this.f2894a, this.f2895b, true));
        }
        this.k = true;
    }

    public void k() {
        d.a("FilterTexturePreview", "recycleTextures");
        if (this.k) {
            ArrayList<s> arrayList = this.c;
            if (arrayList != null) {
                Iterator<s> it = arrayList.iterator();
                while (it.hasNext()) {
                    s next = it.next();
                    d.a("FilterTexturePreview", "recycleTextures, texture id: " + next.d());
                    next.l();
                }
                this.c.clear();
            }
            this.k = false;
        }
    }
}
