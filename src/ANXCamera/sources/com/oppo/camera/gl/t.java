package com.oppo.camera.gl;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.o.d;
import com.oppo.camera.ui.menu.levelcontrol.f;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.ui.preview.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: SurfaceTextureScreenNail */
public abstract class t implements SurfaceTexture.OnFrameAvailableListener {
    /* access modifiers changed from: protected */

    /* renamed from: a  reason: collision with root package name */
    public final Object f2192a = new Object();

    /* renamed from: b  reason: collision with root package name */
    protected ArrayList<g> f2193b = null;
    protected s c = null;
    protected n d = null;
    /* access modifiers changed from: protected */
    public p e = null;
    protected Handler f = new Handler();
    /* access modifiers changed from: protected */
    public e.a g = null;
    protected HashMap<String, a> h = new HashMap<>();
    protected i i = null;
    protected GLRootView j = null;
    protected int k;
    protected int l;
    protected Object m = new Object();
    protected long n = 0;
    protected int o = 0;
    private final Object p = new Object();
    private SurfaceTexture q = null;
    private float[] r = new float[16];
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private int v = -1;
    private int w = -1;
    private float x = 0.0f;
    private int y = 0;
    private int z = 0;

    /* compiled from: SurfaceTextureScreenNail */
    public static class a {
        public static String f = "capture_blur";
        public static String g = "capture_thumbnail";
        public boolean h = false;
        public boolean i = false;

        public void a(Bitmap bitmap) {
        }

        public void a(Bitmap bitmap, long j) {
        }

        public boolean a() {
            return false;
        }

        public int b() {
            return 0;
        }
    }

    private static void a(SurfaceTexture surfaceTexture) {
        surfaceTexture.setOnFrameAvailableListener((SurfaceTexture.OnFrameAvailableListener) null);
        surfaceTexture.release();
    }

    private void a(String str, h hVar) {
        HashMap<String, a> hashMap;
        long j2;
        if (!this.c.k()) {
            this.c.c(hVar);
        }
        synchronized (this.p) {
            hashMap = this.h;
        }
        a aVar = hashMap.get(str);
        long currentTimeMillis = System.currentTimeMillis();
        int g2 = this.c.g();
        int h2 = this.c.h();
        long j3 = 0;
        Bitmap bitmap = null;
        if (a.f.equals(str)) {
            a(hVar, this.f2193b.get(0), this.c, (float[]) null);
            bitmap = d.b(this.c.d(), g2, h2);
        } else if (a.g.equals(str)) {
            this.i.a(hVar, this.f2193b.get(0), this.c);
            this.e.a(g2, h2, aVar.b(), aVar.a());
            aVar.a(this.e.a(this.c.d(), g2, h2));
            bitmap = d.b(this.c.d(), g2, h2);
            synchronized (this.m) {
                j2 = aVar.h ? this.n : 0;
                this.n = 0;
            }
            j3 = j2;
        } else if (d.a()) {
            this.i.a(hVar, this.f2193b.get(0), this.c);
            d.a(this.c.d(), this.c.g(), this.c.h(), DebugUtil.DUMP_DIR_PREVIEW);
        }
        if (!(aVar == null || bitmap == null)) {
            aVar.a(bitmap, j3);
            synchronized (this.p) {
                this.h.remove(str);
            }
        }
        com.oppo.camera.d.a("SurfaceTextureScreenNail", "capturePreview, dump bitmap use time: " + (System.currentTimeMillis() - currentTimeMillis) + ", timeStamp: " + j3);
    }

    private boolean h() {
        HashMap<String, a> hashMap;
        boolean z2;
        boolean z3;
        long timestamp = this.q.getTimestamp();
        synchronized (this.p) {
            hashMap = this.h;
        }
        if (hashMap.containsKey(a.g)) {
            a aVar = hashMap.get(a.g);
            synchronized (this.m) {
                com.oppo.camera.d.e("SurfaceTextureScreenNail", "needCapturePreview, previewTimestamp: " + timestamp + ", mCaptureTimestamp: " + this.n + ", timeStampMatched: " + z3 + ", size: " + hashMap.size());
            }
            if (!aVar.h || z3) {
                z2 = true;
                return this.c == null && (!d.a() || hashMap.containsKey(a.f) || z2);
            }
        }
        z2 = false;
        if (this.c == null) {
        }
    }

    public void a() {
        com.oppo.camera.d.a("SurfaceTextureScreenNail", "acquireSurfaceTexture");
        if (this.f2193b == null) {
            g gVar = new g(36197);
            g gVar2 = new g(36197);
            g gVar3 = new g(36197);
            this.f2193b = new ArrayList<>();
            this.f2193b.add(gVar);
            this.f2193b.add(gVar2);
            this.f2193b.add(gVar3);
        }
        Iterator<g> it = this.f2193b.iterator();
        while (it.hasNext()) {
            it.next().a(this.k, this.l);
        }
        this.c = new s(this.k, this.l, true);
        this.q = new SurfaceTexture(this.f2193b.get(2).d());
        this.q.setOnFrameAvailableListener(this, this.f);
        i iVar = this.i;
        if (iVar != null) {
            iVar.a(this.q);
            this.i.a(true);
        }
        try {
            this.q.detachFromGLContext();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        synchronized (this) {
            this.s = true;
        }
    }

    public void a(int i2) {
        synchronized (this) {
            this.o = i2;
        }
    }

    public void a(int i2, int i3) {
        com.oppo.camera.d.a("SurfaceTextureScreenNail", "setSize(), height: " + i3 + ", width: " + i2);
        this.k = i2;
        this.l = i3;
        synchronized (this.f2192a) {
            if (this.c != null) {
                this.c.l();
                this.c = null;
            }
            this.c = new s(this.k, this.l, true);
        }
        i iVar = this.i;
        if (iVar != null) {
            iVar.b(i2, i3);
        }
    }

    public void a(GLRootView gLRootView) {
        this.j = gLRootView;
        i iVar = this.i;
        if (iVar != null) {
            iVar.a(this.j);
        }
    }

    public void a(h hVar, int i2, int i3, int i4, int i5, int i6) {
        synchronized (this) {
            if (this.s) {
                this.q.attachToGLContext(this.f2193b.get(0).d());
                hVar.a(2);
                this.y = hVar.d();
                this.z = hVar.e();
                hVar.a(i4, i5);
                int i7 = (i4 / 2) + i2;
                int i8 = (i5 / 2) + i3;
                hVar.a((float) i7, (float) i8);
                if (this.u) {
                    if (this.x - 0.0f < 0.001f) {
                        this.x = CameraConfig.getConfigFloatValue(ConfigDataBase.KEY_VIDEO_EIS_PREVIEW_SCALE);
                    }
                    hVar.a(this.x, -this.x, 1.0f);
                } else {
                    hVar.a(1.0f, -1.0f, 1.0f);
                }
                if (i6 == 1) {
                    hVar.a(-1.0f, 1.0f, 1.0f);
                } else if (i6 == 2) {
                    hVar.a(1.0f, -1.0f, 1.0f);
                }
                hVar.a((float) (-i7), (float) (-i8));
                this.q.updateTexImage();
                this.q.getTransformMatrix(this.r);
                if (!this.i.a(hVar, i2, i3, i4, i5)) {
                    hVar.a((c) this.f2193b.get(0), this.r, i2, i3, i4, i5);
                }
                hVar.a(this.y, this.z);
                hVar.f();
                this.q.detachFromGLContext();
            }
        }
    }

    public void a(h hVar, g gVar, s sVar, float[] fArr) {
        if (sVar != null) {
            int e2 = sVar.e();
            int f2 = sVar.f();
            hVar.a(sVar);
            hVar.a(0.0f, (float) f2);
            hVar.a(1.0f, -1.0f, 1.0f);
            this.q.getTransformMatrix(this.r);
            if (fArr == null) {
                fArr = this.r;
            }
            hVar.a((c) gVar, fArr, 0, 0, e2, f2);
            hVar.h();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:58:0x014c, code lost:
        return;
     */
    public void a(h hVar, f fVar, int i2, int i3, int i4, int i5) {
        HashMap<String, a> hashMap;
        h hVar2 = hVar;
        f fVar2 = fVar;
        synchronized (this) {
            if (fVar2 != null) {
                try {
                    this.q.attachToGLContext(this.f2193b.get(1).d());
                    fVar.b(this.f2193b.get(1).d());
                    this.q.detachFromGLContext();
                } catch (Throwable th) {
                    throw th;
                }
            } else if (hVar2 != null) {
                if (this.s) {
                    com.oppo.camera.d.a("Surfacetexture.draw");
                    this.q.attachToGLContext(this.f2193b.get(0).d());
                    hVar.a(2);
                    int i6 = i2 + (i4 / 2);
                    int i7 = i3 + (i5 / 2);
                    hVar.a((float) i6, (float) i7);
                    if (this.u) {
                        if (this.x - 0.0f < 0.001f) {
                            this.x = CameraConfig.getConfigFloatValue(ConfigDataBase.KEY_VIDEO_EIS_PREVIEW_SCALE);
                        }
                        hVar.a(this.x, -this.x, 1.0f);
                    } else {
                        hVar.a(1.0f, -1.0f, 1.0f);
                    }
                    hVar.a((float) (-i6), (float) (-i7));
                    this.q.updateTexImage();
                    this.q.getTransformMatrix(this.r);
                    this.i.a(this.r);
                    boolean h2 = h();
                    synchronized (this.p) {
                        hashMap = this.h;
                    }
                    if (!this.i.a(hVar, this.f2193b.get(0), i2, i3, i4, i5, this.o)) {
                        if (h2 && hashMap.containsKey(a.g)) {
                            a(a.g, hVar);
                        }
                        hVar.a((c) this.f2193b.get(0), this.r, i2, i3, i4, i5);
                    } else if (h2 && hashMap.containsKey(a.g)) {
                        a(a.g, hVar);
                    }
                    a(0);
                    if (h2) {
                        if (d.a()) {
                            a((String) null, hVar);
                        } else if (hashMap.containsKey(a.f)) {
                            a(a.f, hVar);
                        }
                    }
                    hVar.f();
                    this.i.b(hVar, i2, i3, i4, i5);
                    if (this.v >= 0 && this.w >= 0 && this.t) {
                        this.g.J();
                    }
                    this.q.detachFromGLContext();
                    com.oppo.camera.d.b("Surfacetexture.draw");
                }
            }
        }
    }

    public void a(a aVar, boolean z2, boolean z3, String str) {
        synchronized (this) {
            com.oppo.camera.d.a("SurfaceTextureScreenNail", "setCaptureOnePreviewCallback, cb: " + aVar + ", isEffect: " + z2 + ", needCheckTimestamp: " + z3 + ", type: " + str);
            aVar.h = z3;
            aVar.i = z2;
            synchronized (this.p) {
                this.h.put(str, aVar);
            }
            if (a.f.equals(str)) {
                a(1);
                this.g.J();
            }
        }
    }

    public void a(i iVar) {
        this.i = iVar;
    }

    public void a(String str) {
        synchronized (this.p) {
            if (this.h != null && this.h.containsKey(str)) {
                this.h.remove(str);
            }
        }
        synchronized (this.m) {
            if (a.g.equals(str)) {
                this.n = 0;
            }
        }
    }

    public void a(boolean z2) {
        synchronized (this) {
            this.u = z2;
        }
    }

    public SurfaceTexture b() {
        return this.q;
    }

    public void c() {
        com.oppo.camera.d.a("SurfaceTextureScreenNail", "releaseSurfaceTexture");
        synchronized (this) {
            this.s = false;
        }
        i iVar = this.i;
        if (iVar != null) {
            iVar.a(false);
            this.i.g();
        }
        s sVar = this.c;
        if (sVar != null) {
            sVar.l();
            this.c = null;
        }
        ArrayList<g> arrayList = this.f2193b;
        if (arrayList != null) {
            Iterator<g> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            this.f2193b = null;
        }
        SurfaceTexture surfaceTexture = this.q;
        if (surfaceTexture != null) {
            a(surfaceTexture);
            this.q = null;
            i iVar2 = this.i;
            if (iVar2 != null) {
                iVar2.a((SurfaceTexture) null);
            }
        }
    }

    public void d() {
        ArrayList<g> arrayList = this.f2193b;
        if (arrayList != null) {
            Iterator<g> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a(this.k, this.l);
            }
        }
    }

    public int e() {
        return this.k;
    }

    public int f() {
        return this.l;
    }

    public boolean g() {
        i iVar = this.i;
        if (iVar != null) {
            return iVar.e();
        }
        return false;
    }
}
