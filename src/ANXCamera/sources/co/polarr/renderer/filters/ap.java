package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public final class ap extends b {
    private static LruCache<String, ap> h = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1198a;

    /* renamed from: b  reason: collision with root package name */
    public float f1199b;
    public float c;
    public float[] d;
    public float[] e;
    public float f;
    public float g;

    private ap(Resources resources, Context context) {
        super(resources, p.a("mask_radial"), context);
        this.H = p.a("composite_vertex");
    }

    public static ap a(Resources resources, Context context) {
        ap apVar = h.get(Thread.currentThread().getName());
        if (apVar == null) {
            apVar = new ap(resources, context);
            apVar.k();
            h.put(Thread.currentThread().getName(), apVar);
        }
        apVar.a(context);
        return apVar;
    }

    public static void h() {
        h.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "feather"), this.f1198a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "invert"), this.f1199b);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "angle"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.f);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.g);
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "position");
        if (this.u.isSDK) {
            float[] fArr = this.d;
            GLES20.glUniform2f(glGetUniformLocation, fArr[0], -fArr[1]);
        } else {
            GLES20.glUniform2fv(glGetUniformLocation, 1, this.d, 0);
        }
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "size"), 1, this.e, 0);
    }
}
