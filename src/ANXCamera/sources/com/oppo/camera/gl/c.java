package com.oppo.camera.gl;

import android.util.Log;
import java.util.WeakHashMap;

/* compiled from: BasicTexture */
public abstract class c implements u {
    private static WeakHashMap<c, Object> h = new WeakHashMap<>();
    private static ThreadLocal i = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    public int f2153a;

    /* renamed from: b  reason: collision with root package name */
    public int f2154b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    protected h g;
    private boolean j;

    protected c() {
        this((h) null, 0, 0);
    }

    protected c(h hVar, int i2, int i3) {
        this.f2153a = -1;
        this.f2154b = -1;
        this.c = -1;
        this.g = null;
        a(hVar);
        this.c = i2;
        this.d = i3;
        synchronized (h) {
            h.put(this, (Object) null);
        }
    }

    public static void a() {
        synchronized (h) {
            for (c m : h.keySet()) {
                m.m();
            }
        }
    }

    public static void b() {
        synchronized (h) {
            for (c next : h.keySet()) {
                next.d = 0;
                next.a((h) null);
            }
        }
    }

    private void o() {
        h hVar = this.g;
        if (!(hVar == null || this.c == -1)) {
            hVar.a(this);
            this.c = -1;
        }
        this.d = 0;
        a((h) null);
    }

    public void a(int i2, int i3) {
        this.f2153a = i2;
        this.f2154b = i3;
        this.e = i2;
        this.f = i3;
        if (this.e > 4096 || this.f > 4096) {
            Log.w("BasicTexture", String.format("texture is too large: %d x %d", new Object[]{Integer.valueOf(this.e), Integer.valueOf(this.f)}), new Exception());
        }
    }

    /* access modifiers changed from: protected */
    public void a(h hVar) {
        this.g = hVar;
    }

    public void a(h hVar, int i2, int i3, int i4, int i5) {
        hVar.a(this, i2, i3, i4, i5);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        this.j = z;
    }

    /* access modifiers changed from: protected */
    public abstract boolean b(h hVar);

    public boolean c() {
        return false;
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.f2153a;
    }

    public int f() {
        return this.f2154b;
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        i.set(c.class);
        l();
        i.set((Object) null);
    }

    public int g() {
        return this.e;
    }

    public int h() {
        return this.f;
    }

    public boolean i() {
        return this.j;
    }

    public abstract int j();

    public boolean k() {
        return this.d == 1;
    }

    public void l() {
        o();
    }

    public void m() {
        o();
    }
}
