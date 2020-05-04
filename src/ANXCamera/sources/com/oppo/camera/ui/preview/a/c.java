package com.oppo.camera.ui.preview.a;

import android.content.Context;
import com.oppo.camera.d;
import com.oppo.camera.facebeauty.FaceSlender2D;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.s;
import com.oppo.camera.p;
import com.oppo.camera.ui.preview.a.n;
import java.util.concurrent.Callable;

/* compiled from: FaceSlenderTexturePreview */
public class c extends n {

    /* renamed from: a  reason: collision with root package name */
    private s f2889a = null;

    /* renamed from: b  reason: collision with root package name */
    private s f2890b = null;
    /* access modifiers changed from: private */
    public p c = null;
    /* access modifiers changed from: private */
    public FaceSlender2D g = null;
    private boolean h = false;
    private int i = 0;
    private int j = 0;
    private boolean k = false;
    private boolean l = false;

    public c(Context context) {
        super(context);
    }

    private void b(int i2, int i3) {
        d.a("FaceSlenderTexturePreview", "initFaceSlender2D, textureWidth: " + i2 + ", textureHeight: " + i3);
        d.a("initFaceSlender2D");
        FaceSlender2D faceSlender2D = this.g;
        if (faceSlender2D != null) {
            faceSlender2D.destroySlender();
        }
        this.g = new FaceSlender2D();
        this.g.initSlender(i2, i3);
        d.b("initFaceSlender2D");
        d.a("FaceSlenderTexturePreview", "initFaceSlender2D, X");
    }

    public void a(int i2, int i3) {
        d.a("FaceSlenderTexturePreview", "setSize, height: " + i2 + ", width: " + i3);
        this.i = i3;
        this.j = i2;
    }

    public void a(h hVar) {
        s sVar = this.f2889a;
        if (sVar != null && !sVar.k()) {
            this.f2889a.c(hVar);
            d.a("FaceSlenderTexturePreview", "prepareTextures, texture id: " + this.f2889a.d());
        }
        s sVar2 = this.f2890b;
        if (sVar2 != null && !sVar2.k()) {
            this.f2890b.c(hVar);
            d.a("FaceSlenderTexturePreview", "prepareTextures, texture id: " + this.f2890b.d());
        }
    }

    public void a(p pVar) {
        d.a("FaceSlenderTexturePreview", "createEngine");
        this.c = pVar;
    }

    public void a(boolean z) {
        d.a("FaceSlenderTexturePreview", "setTextureSizeChanged, sizeChanged: " + z);
        this.h = z;
    }

    public boolean a(int i2) {
        boolean z = false;
        if (!c(i2)) {
            return false;
        }
        if (this.f2890b == null || this.f2889a == null) {
            d.d("FaceSlenderTexturePreview", "canProcess, mOutputTexture or mInputTexture is null, mOutputTexture: " + this.f2890b + ", mInputTexture: " + this.f2889a);
            return false;
        } else if (!this.k) {
            d.d("FaceSlenderTexturePreview", "canProcess, texture is not inited");
            return false;
        } else {
            p pVar = this.c;
            if (pVar == null || pVar.g() <= 0) {
                d.d("FaceSlenderTexturePreview", "canProcess, mRequest or FD is null");
                return false;
            }
            if (pVar.a() != 0) {
                z = true;
            }
            if (!this.l && z) {
                l();
            }
            this.l = z;
            return z;
        }
    }

    public boolean a(n.a aVar) {
        if (this.c == null || aVar == null || aVar.c == null) {
            d.a("FaceSlenderTexturePreview", "process, mRequest: " + this.c + ", frameInfo: " + aVar);
            return false;
        }
        int[] f = this.c.f();
        if (f == null || f.length <= 0) {
            d.a("FaceSlenderTexturePreview", "process, ffd: " + f);
            return false;
        }
        if (this.h) {
            b(aVar.c.g(), aVar.c.h());
            this.h = false;
        }
        if (2 == aVar.f || this.g == null) {
            return false;
        }
        d.a("FaceSlenderTexturePreview.processSlender");
        this.g.processSlender(aVar.c.d(), new int[]{this.f2890b.d()}, f);
        d.b("FaceSlenderTexturePreview.processSlender");
        return true;
    }

    public boolean b() {
        return false;
    }

    public void c() {
    }

    public void d() {
    }

    public int e() {
        return 4;
    }

    public void f() {
        d.a("FaceSlenderTexturePreview", "destroyEngine");
        if (this.c == null || this.e == null) {
            d.e("FaceSlenderTexturePreview", "destroyEngine, mRootView not initialized yet.");
            return;
        }
        d.a("FaceSlenderTexturePreview", "destroyEngine, status: " + ((Boolean) p.a(this.e, new Callable<Boolean>() {
            /* renamed from: a */
            public Boolean call() throws Exception {
                if (c.this.g != null) {
                    d.a("FaceSlenderTexturePreview", "destroyEngine");
                    c.this.g.destroySlender();
                    i.i();
                    d.a("FaceSlenderTexturePreview", "destroyEngine X");
                    FaceSlender2D unused = c.this.g = null;
                }
                p unused2 = c.this.c = null;
                return true;
            }
        })));
    }

    public s g() {
        return this.f2889a;
    }

    public s h() {
        return this.f2890b;
    }

    public boolean i() {
        return false;
    }

    public void j() {
        d.a("FaceSlenderTexturePreview", "newTextures");
        this.f2889a = new s(this.i, this.j, true);
        this.f2890b = new s(this.i, this.j, true);
        this.k = true;
    }

    public void k() {
        if (this.k) {
            if (this.f2889a != null) {
                d.a("FaceSlenderTexturePreview", "recycleTextures, texture id: " + this.f2889a.d());
                this.f2889a.l();
                this.f2889a = null;
            }
            if (this.f2890b != null) {
                d.a("FaceSlenderTexturePreview", "recycleTextures, texture id: " + this.f2890b.d());
                this.f2890b.l();
                this.f2890b = null;
            }
            this.k = false;
        }
    }

    public int l() {
        FaceSlender2D faceSlender2D = this.g;
        if (faceSlender2D != null) {
            return faceSlender2D.resetSlender();
        }
        return -1;
    }
}
