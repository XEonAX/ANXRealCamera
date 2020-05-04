package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bk extends b {
    private static LruCache<String, bk> g = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1228a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1229b;
    public float[] c;
    public float[] d;
    public float e;
    public float f;

    public bk(Resources resources, Context context) {
        super(resources, p.a("spot_heal_mask"), context);
        this.H = p.a("composite_vertex");
    }

    public static bk a(Resources resources, Context context) {
        bk bkVar = g.get(Thread.currentThread().getName());
        if (bkVar == null) {
            bkVar = new bk(resources, context);
            bkVar.k();
            g.put(Thread.currentThread().getName(), bkVar);
        }
        bkVar.a(context);
        return bkVar;
    }

    public static void h() {
        g.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, getMatrix(), 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "feather"), this.f1228a);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "size"), 1, this.f1229b, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "position"), 1, this.c, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "sourcePosition"), 1, this.d, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.f);
    }
}
