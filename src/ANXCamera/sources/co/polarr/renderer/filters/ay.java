package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class ay extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, ay> f1212b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1213a;

    private ay(Resources resources, Context context) {
        super(resources, p.a("paint_blend"), context);
    }

    public static ay a(Resources resources, Context context) {
        ay ayVar = f1212b.get(Thread.currentThread().getName());
        if (ayVar == null) {
            ayVar = new ay(resources, context);
            ayVar.k();
            f1212b.put(Thread.currentThread().getName(), ayVar);
        }
        ayVar.a(context);
        return ayVar;
    }

    public static void h() {
        f1212b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1213a);
        GLES20.glUniform1i(glGetUniformLocation, 1);
    }
}
