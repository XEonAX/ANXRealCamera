package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bj extends b {
    private static LruCache<String, bj> h = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1226a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1227b;
    public float[] c;
    public float[] d;
    public float e;
    public float f;
    public float g;

    public bj(Resources resources, Context context) {
        super(resources, p.a("spot_heal"), context);
        this.H = p.a("spot_heal_vertex");
    }

    protected bj(Resources resources, String str, Context context) {
        super(resources, str, context);
    }

    public static bj a(Resources resources, Context context) {
        bj bjVar = h.get(Thread.currentThread().getName());
        if (bjVar == null) {
            bjVar = new bj(resources, context);
            bjVar.k();
            h.put(Thread.currentThread().getName(), bjVar);
        }
        bjVar.a(context);
        return bjVar;
    }

    public static void h() {
        h.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "smoothTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "originalTexture");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.u.imageTexture.c);
        GLES20.glUniform1i(glGetUniformLocation2, 2);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "retouchTexture");
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.u.retouchTexture.c);
        GLES20.glUniform1i(glGetUniformLocation3, 3);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        i();
    }

    /* access modifiers changed from: protected */
    public void i() {
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "feather"), this.f1226a);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "size"), 1, this.f1227b, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "position"), 1, this.c, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "sourcePosition"), 1, this.d, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.f);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "angle"), this.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "mode"), this.g);
    }
}
