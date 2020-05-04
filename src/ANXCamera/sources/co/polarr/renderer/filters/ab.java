package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.c;

public class ab extends b {
    private static LruCache<String, ab> c = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public c f1173a;

    /* renamed from: b  reason: collision with root package name */
    public Context.FaceState f1174b;

    public ab(Resources resources, Context context) {
        super(resources, p.a("face"), context);
        this.H = p.a("distortion_vertex");
    }

    public static ab a(Resources resources, Context context) {
        ab abVar = c.get(Thread.currentThread().getName());
        if (abVar == null) {
            abVar = new ab(resources, context);
            abVar.k();
            c.put(Thread.currentThread().getName(), abVar);
        }
        abVar.a(context);
        return abVar;
    }

    public static void w_() {
        c.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "smoothMap");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "faceMask");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.f1173a.c);
        GLES20.glUniform1i(glGetUniformLocation2, 2);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) co.polarr.renderer.c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) co.polarr.renderer.c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) co.polarr.renderer.c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        if (this.f1174b != null) {
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_smoothness"), this.f1174b.skin_smoothness);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_tone"), this.f1174b.skin_tone);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_hue"), this.f1174b.skin_hue);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_saturation"), this.f1174b.skin_saturation);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_shadows"), this.f1174b.skin_shadows);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "skin_highlights"), this.f1174b.skin_highlights);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "teeth_whitening"), this.f1174b.teeth_whitening);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "teeth_brightness"), this.f1174b.teeth_brightness);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "eyes_brightness"), this.f1174b.eyes_brightness);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "eyes_contrast"), this.f1174b.eyes_contrast);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "eyes_clarity"), this.f1174b.eyes_clarity);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lips_brightness"), this.f1174b.lips_brightness);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lips_saturation"), this.f1174b.lips_saturation);
        }
    }
}
