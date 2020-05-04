package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class ac extends b {
    private static LruCache<String, ac> c = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1175a = {1.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: b  reason: collision with root package name */
    public float f1176b = 0.0f;

    private ac(Resources resources, Context context) {
        super(resources, p.a("fill"), context);
    }

    public static ac a(Resources resources, Context context) {
        ac acVar = c.get(Thread.currentThread().getName());
        if (acVar == null) {
            acVar = new ac(resources, context);
            acVar.k();
            c.put(Thread.currentThread().getName(), acVar);
        }
        acVar.a(context);
        return acVar;
    }

    public static void x_() {
        c.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "fill_color"), 1, this.f1175a, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "fill_blend"), this.f1176b);
    }
}
