package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public final class an extends b {
    private static LruCache<String, an> g = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1194a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1195b;
    public float c;
    public float d;
    public float e;
    public float f;

    private an(Resources resources, Context context) {
        super(resources, p.a("mask_gradient"), context);
        this.H = p.a("composite_vertex");
    }

    public static an a(Resources resources, Context context) {
        an anVar = g.get(Thread.currentThread().getName());
        if (anVar == null) {
            anVar = new an(resources, context);
            anVar.k();
            g.put(Thread.currentThread().getName(), anVar);
        }
        anVar.a(context);
        return anVar;
    }

    public static void h() {
        g.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "invert"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "reflect"), this.d);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.f);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "endPoint"), 1, this.f1195b, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "startPoint"), 1, this.f1194a, 0);
    }
}
