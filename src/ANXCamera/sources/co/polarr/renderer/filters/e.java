package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class e extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, e> f1238b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1239a;

    private e(Resources resources, Context context) {
        super(resources, p.a("blur_mask"), context);
    }

    public static e a(Resources resources, Context context) {
        e eVar = f1238b.get(Thread.currentThread().getName());
        if (eVar == null) {
            eVar = new e(resources, context);
            eVar.k();
            f1238b.put(Thread.currentThread().getName(), eVar);
        }
        eVar.a(context);
        return eVar;
    }

    public static void f_() {
        f1238b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "delta"), 1, this.f1239a, 0);
    }
}
