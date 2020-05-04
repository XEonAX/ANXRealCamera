package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class al extends b {
    private static LruCache<String, al> e = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1190a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1191b;
    public float c;
    public float d;

    private al(Resources resources, Context context) {
        super(resources, p.a("mask_brush"), context);
        this.H = p.a("composite_vertex");
    }

    public static al a(Resources resources, Context context) {
        al alVar = e.get(Thread.currentThread().getName());
        if (alVar == null) {
            alVar = new al(resources, context);
            alVar.k();
            e.put(Thread.currentThread().getName(), alVar);
        }
        alVar.a(context);
        return alVar;
    }

    public static void h() {
        e.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "brushTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.paintTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "invert"), this.f1190a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.d);
        if (this.f1191b != null) {
            GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "channel"), 1, this.f1191b, 0);
        }
    }
}
