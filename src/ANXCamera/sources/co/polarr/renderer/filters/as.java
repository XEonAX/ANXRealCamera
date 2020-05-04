package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class as extends b {
    private static LruCache<String, as> d = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1203a;

    /* renamed from: b  reason: collision with root package name */
    public float f1204b;
    public float c;

    private as(Resources resources, Context context) {
        super(resources, p.a("mosaic_sdk"), context);
    }

    public static as a(Resources resources, Context context) {
        as asVar = d.get(Thread.currentThread().getName());
        if (asVar == null) {
            asVar = new as(resources, context);
            asVar.k();
            d.put(Thread.currentThread().getName(), asVar);
        }
        asVar.a(context);
        return asVar;
    }

    public static void h() {
        d.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "mosaic_size"), this.f1203a);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), this.f1204b, this.c);
    }
}
