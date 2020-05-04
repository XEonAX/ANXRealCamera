package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Rect;
import android.opengl.GLES20;
import com.arcsoft.libsinglecamerabokeh.jni.SingleCameraBokehJNI;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.i;
import com.oppo.camera.gl.s;
import com.oppo.camera.ui.preview.a.n;

/* compiled from: SingleBokehTexturePreview */
public class k extends n {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final Object f2925a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private int f2926b = 0;
    private int c = 0;
    private int g = 0;
    private n.b h = null;
    private s i = null;
    private s j = null;
    private boolean k = false;
    private boolean l = false;
    /* access modifiers changed from: private */
    public boolean m = false;
    /* access modifiers changed from: private */
    public SingleCameraBokehJNI n;
    /* access modifiers changed from: private */
    public p o = null;
    private boolean p = false;
    private Context q = null;
    private Rect[] r = null;

    public k(Context context) {
        super(context);
        this.q = context;
    }

    private boolean b(int i2, int i3) {
        boolean z = false;
        if (this.m) {
            int release = this.n.release();
            this.m = false;
            d.e("SingleBokehTexturePreview", "initSingleBokeh, release X ret: " + release);
        }
        d.a("SingleBokehTexturePreview", "initSingleBokeh, srcWidth: " + i2 + ", srcHeight: " + i3 + ", outWidth: " + i2 + ", outHeight: " + i3 + ", format: " + 10 + ", mCameraId: " + this.d);
        int init = this.n.init(i2, i3, i2, i3, 10, this.d, (AssetManager) null);
        i.i();
        StringBuilder sb = new StringBuilder();
        sb.append("initSingleBokeh, X ret: ");
        sb.append(init);
        d.a("SingleBokehTexturePreview", sb.toString());
        if (init == 0) {
            z = true;
        }
        this.m = z;
        return this.m;
    }

    public void a(int i2, int i3) {
        d.a("SingleBokehTexturePreview", "setSize, height: " + i2 + ", width: " + i3);
        this.f2926b = i3;
        this.c = i2;
    }

    public void a(h hVar) {
        s sVar = this.j;
        if (sVar != null && !sVar.k()) {
            this.j.c(hVar);
            d.a("SingleBokehTexturePreview", "prepareTextures, mInputBlurTexture.getId: " + this.j.d());
        }
        s sVar2 = this.i;
        if (sVar2 != null && !sVar2.k()) {
            this.i.c(hVar);
            d.a("SingleBokehTexturePreview", "prepareTextures, mOutputBlurTexture.getId: " + this.i.d());
        }
    }

    public void a(n.b bVar) {
        this.h = bVar;
    }

    public void a(p pVar) {
        d.a("SingleBokehTexturePreview", "createEngine,  request: " + pVar);
        synchronized (this.f2925a) {
            if (this.n == null) {
                this.n = new SingleCameraBokehJNI();
                String version = this.n.getVersion();
                d.a("SingleBokehTexturePreview", "createEngine, native version: " + version);
            }
            this.o = pVar;
        }
    }

    public void a(boolean z) {
        d.a("SingleBokehTexturePreview", "setTextureSizeChanged, sizeChanged: " + z);
        synchronized (this.f2925a) {
            this.k = z;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0020, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0028, code lost:
        if (r2.o.d() != false) goto L_0x0032;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002a, code lost:
        com.oppo.camera.d.e("SingleBokehTexturePreview", "canProcess, not open effect");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0031, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0034, code lost:
        if (r2.p != false) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0036, code lost:
        com.oppo.camera.d.e("SingleBokehTexturePreview", "canProcess, texture is not inited");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003d, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x003e, code lost:
        return true;
     */
    public boolean a(int i2) {
        if (!c(i2)) {
            return false;
        }
        synchronized (this.f2925a) {
            if (this.o == null) {
                return false;
            }
            if (this.o.h() <= 0) {
                if (this.l) {
                    this.l = false;
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:55:0x010d, code lost:
        android.opengl.GLES20.glViewport(0, 0, r0.f2931a.d(), r0.f2931a.e());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x011c, code lost:
        if (r2 == -1) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        return false;
     */
    public boolean a(n.a aVar) {
        int i2;
        n.a aVar2 = aVar;
        if (this.o == null || aVar2 == null || aVar2.c == null || this.i == null) {
            return false;
        }
        s sVar = aVar2.c;
        int g2 = sVar.g();
        int h2 = sVar.h();
        synchronized (this.f2925a) {
            if (this.k && this.n != null) {
                b(g2, h2);
                this.k = false;
            }
            if (!this.m) {
                return false;
            }
            GLES20.glViewport(0, 0, g2, h2);
            if (this.h != null) {
                this.r = this.h.b();
            }
            if (this.n == null || this.r == null || this.r.length <= 0) {
                i2 = -1;
            } else {
                int length = this.r.length;
                int[] iArr = new int[(length * 4)];
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    } else if (this.r[i3] == null) {
                        d.e("SingleBokehTexturePreview", "process, faceRects is null");
                        break;
                    } else {
                        iArr[i4] = g2 - this.r[i3].bottom;
                        int i5 = i4 + 1;
                        iArr[i5] = h2 - this.r[i3].right;
                        int i6 = i5 + 1;
                        iArr[i6] = g2 - this.r[i3].top;
                        int i7 = i6 + 1;
                        iArr[i7] = h2 - this.r[i3].left;
                        i4 = i7 + 1;
                        i3++;
                    }
                }
                int[] iArr2 = {10, 11, 12, 13};
                int i8 = this.g;
                int i9 = i8 != 0 ? i8 != 90 ? i8 != 180 ? i8 != 270 ? 0 : 1 : 2 : 4 : 3;
                System.currentTimeMillis();
                if (!this.l && this.o.h() > 0) {
                    this.l = true;
                    this.n.forceUpdateFrame();
                    d.e("SingleBokehTexturePreview", "process, forceUpdateFrame");
                }
                i2 = this.n.process(sVar.d(), new int[]{this.i.d()}, length, iArr, iArr2, DebugUtil.getBokehBlurStrength(), i9);
                i.i();
            }
        }
    }

    public void b(int i2) {
        this.g = i2;
    }

    public boolean b() {
        return false;
    }

    public void c() {
    }

    public void d() {
    }

    public int e() {
        return 1;
    }

    public void f() {
        if (this.o != null && this.e != null) {
            d.a("SingleBokehTexturePreview", "destroyEngine");
            this.e.a((Runnable) new Runnable() {
                public void run() {
                    synchronized (k.this.f2925a) {
                        if (k.this.n != null && k.this.m) {
                            int release = k.this.n.release();
                            boolean unused = k.this.m = false;
                            d.a("SingleBokehTexturePreview", "destroyEngine, X ret: " + release);
                        }
                        SingleCameraBokehJNI unused2 = k.this.n = null;
                        p unused3 = k.this.o = null;
                    }
                }
            });
        }
    }

    public s g() {
        return this.j;
    }

    public s h() {
        return this.i;
    }

    public boolean i() {
        return false;
    }

    public void j() {
        d.a("SingleBokehTexturePreview", "newTextures");
        this.j = new s(this.f2926b, this.c, true);
        this.i = new s(this.f2926b, this.c, true);
        this.p = true;
    }

    public void k() {
        d.a("SingleBokehTexturePreview", "recycleTextures");
        if (this.p) {
            s sVar = this.j;
            if (sVar != null) {
                sVar.l();
                this.j = null;
            }
            s sVar2 = this.i;
            if (sVar2 != null) {
                sVar2.l();
                this.i = null;
            }
            this.p = false;
        }
    }
}
