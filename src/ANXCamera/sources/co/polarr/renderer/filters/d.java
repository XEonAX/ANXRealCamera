package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class d extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, d> f1237a = new LruCache<>(5);

    private d(Resources resources, Context context) {
        super(resources, p.a("blur_composite"), context);
        this.H = p.a("composite_vertex");
    }

    public static d a(Resources resources, Context context) {
        d dVar = f1237a.get(Thread.currentThread().getName());
        if (dVar == null) {
            dVar = new d(resources, context);
            dVar.k();
            f1237a.put(Thread.currentThread().getName(), dVar);
        }
        dVar.a(context);
        return dVar;
    }

    public static void e_() {
        f1237a.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "blurTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.lensBlurTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
    }
}
