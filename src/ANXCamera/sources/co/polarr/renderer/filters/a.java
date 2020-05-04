package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.util.LruCache;
import co.polarr.renderer.b.h;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, a> f1163a = new LruCache<>(5);

    /* renamed from: b  reason: collision with root package name */
    private boolean f1164b = true;

    public a(Resources resources, Context context) {
        super(resources, "basic.glsl", context);
    }

    @co.polarr.a.a
    public static a getInstance(Resources resources) {
        a aVar = f1163a.get(Thread.currentThread().getName());
        if (aVar == null) {
            aVar = new a(resources, new Context());
            aVar.k();
            f1163a.put(Thread.currentThread().getName(), aVar);
        }
        aVar.a(h.a());
        aVar.f1164b = true;
        return aVar;
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f1164b) {
            super.b();
        }
    }

    public boolean c() {
        return false;
    }

    @co.polarr.a.a
    public void draw() {
        super.draw();
    }

    @co.polarr.a.a
    public float[] getMatrix() {
        return super.getMatrix();
    }

    @co.polarr.a.a
    public void setInputTextureId(int i) {
        a(i);
    }

    @co.polarr.a.a
    public void setNeedClear(boolean z) {
        this.f1164b = z;
    }
}
