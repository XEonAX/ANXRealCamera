package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.util.LruCache;
import co.polarr.renderer.b.h;
import co.polarr.renderer.entities.Context;

public class b extends co.polarr.renderer.filters.a.b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, b> f1216a = new LruCache<>(5);

    public b(Resources resources, Context context) {
        super(resources, "basic.glsl", context);
    }

    public static b a(Resources resources, Context context) {
        b bVar = f1216a.get(Thread.currentThread().getName());
        if (bVar == null) {
            bVar = new b(resources, context);
            bVar.k();
            f1216a.put(Thread.currentThread().getName(), bVar);
        }
        bVar.a(context);
        bVar.a(h.a());
        return bVar;
    }

    public static void c_() {
        f1216a.evictAll();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    public boolean c() {
        return false;
    }
}
