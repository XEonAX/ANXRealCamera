package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public final class ao extends b {
    private static LruCache<String, ao> g = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1196a;

    /* renamed from: b  reason: collision with root package name */
    public float f1197b;
    public float c;
    public float d;
    public float e;
    public float f;

    private ao(Resources resources, Context context) {
        super(resources, p.a("mask_luminance"), context);
        this.H = p.a("distortion_vertex");
    }

    public static ao a(Resources resources, Context context) {
        ao aoVar = g.get(Thread.currentThread().getName());
        if (aoVar == null) {
            aoVar = new ao(resources, context);
            aoVar.k();
            g.put(Thread.currentThread().getName(), aoVar);
        }
        aoVar.a(context);
        return aoVar;
    }

    public static void h() {
        g.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "smoothTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "target"), this.f1196a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "range"), this.f1197b);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "smoothness"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "invert"), this.d);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.f);
    }
}
