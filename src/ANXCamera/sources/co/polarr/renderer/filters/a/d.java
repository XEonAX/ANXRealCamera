package co.polarr.renderer.filters.a;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.h;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.render.b;
import java.util.Iterator;
import java.util.LinkedList;

public class d extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final LruCache<String, d> f1171a = new LruCache<>(5);

    /* renamed from: b  reason: collision with root package name */
    private final LinkedList<Integer> f1172b = new LinkedList<>();
    private a c;
    private int d = 0;
    private int e = 0;
    private int f;
    private boolean g;
    private boolean h;
    private int[] i = new int[1];

    private d(Context context, a aVar, boolean z) {
        super(context, (Resources) null);
        this.c = aVar;
        this.h = false;
        this.g = !z;
    }

    public static d a(Context context) {
        d dVar;
        synchronized (f1171a) {
            dVar = f1171a.get(Thread.currentThread().getName());
            if (dVar == null) {
                dVar = new d(context, (a) null, false);
                dVar.k();
                f1171a.put(Thread.currentThread().getName(), dVar);
            }
            dVar.a(h.a());
        }
        return dVar;
    }

    public static d h() {
        d dVar;
        synchronized (f1171a) {
            dVar = f1171a.get(Thread.currentThread().getName());
            if (dVar == null) {
                dVar = new d((Context) null, (a) null, false);
                dVar.k();
                f1171a.put(Thread.currentThread().getName(), dVar);
            }
            dVar.a(h.a());
        }
        return dVar;
    }

    public static void i() {
        synchronized (f1171a) {
            f1171a.evictAll();
        }
    }

    private void r() {
        if (!this.g) {
            this.c.k();
            this.c.b(this.d, this.e);
            this.g = true;
        }
    }

    private boolean s() {
        GLES20.glBindFramebuffer(36160, this.i[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.f, 0);
        t();
        return false;
    }

    private void t() {
        GLES20.glBindFramebuffer(36160, 0);
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(int i2, int i3) {
        this.d = i2;
        this.e = i3;
        r();
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (!this.h) {
            super.b();
        }
    }

    public void b(int i2) {
        this.f = i2;
    }

    /* access modifiers changed from: protected */
    public void b_() {
        GLES20.glGenFramebuffers(1, this.i, 0);
        b.c(this.i[0]);
        synchronized (this.f1172b) {
            this.f1172b.add(Integer.valueOf(this.i[0]));
        }
        s();
    }

    public void draw() {
        o();
        this.c.a(l());
        this.c.draw();
        p();
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        q();
        super.finalize();
    }

    public void j() {
        LinkedList<Integer> linkedList = this.f1172b;
        if (linkedList != null) {
            synchronized (linkedList) {
                int[] iArr = new int[this.f1172b.size()];
                Iterator it = this.f1172b.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    iArr[i2] = ((Integer) it.next()).intValue();
                    i2++;
                }
                GLES20.glDeleteFramebuffers(iArr.length, iArr, 0);
            }
        }
    }

    public int m() {
        return this.f;
    }

    public void o() {
        r();
        GLES20.glBindFramebuffer(36160, this.i[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.f, 0);
        GLES20.glViewport(0, 0, this.d, this.e);
    }

    public void p() {
        t();
    }

    public void q() {
        GLES20.glDeleteFramebuffers(1, this.i, 0);
    }
}
