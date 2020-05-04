package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.util.LruCache;
import co.polarr.a.a;
import co.polarr.renderer.b.h;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class Basic extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, Basic> f1161a = new LruCache<>(5);

    /* renamed from: b  reason: collision with root package name */
    private boolean f1162b = true;

    public Basic(Resources resources, Context context) {
        super(resources, "basic.glsl", context);
    }

    public static Basic a(Resources resources, Context context) {
        Basic basic = f1161a.get(Thread.currentThread().getName());
        if (basic == null) {
            basic = new Basic(resources, context);
            basic.k();
            f1161a.put(Thread.currentThread().getName(), basic);
        }
        basic.a(context);
        basic.a(h.a());
        basic.f1162b = true;
        return basic;
    }

    public static void a_() {
        f1161a.evictAll();
    }

    @a
    public static Basic getInstance(Resources resources) {
        Basic basic = f1161a.get(Thread.currentThread().getName());
        if (basic == null) {
            basic = new Basic(resources, new Context());
            basic.k();
            f1161a.put(Thread.currentThread().getName(), basic);
        }
        basic.a(h.a());
        basic.f1162b = true;
        return basic;
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f1162b) {
            super.b();
        }
    }

    public boolean c() {
        return false;
    }

    @a
    public void draw() {
        super.draw();
    }

    @a
    public float[] getMatrix() {
        return super.getMatrix();
    }

    @a
    public void setInputTextureId(int i) {
        a(i);
    }

    @a
    public void setNeedClear(boolean z) {
        this.f1162b = z;
    }
}
