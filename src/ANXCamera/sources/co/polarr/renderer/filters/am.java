package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class am extends b {
    private static LruCache<String, am> k = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float f1192a;

    /* renamed from: b  reason: collision with root package name */
    public float f1193b;
    public float c;
    public float d;
    public float[] e;
    public float[] f;
    public float g;
    public float h;
    public float[] i;
    public float j;

    private am(Resources resources, Context context) {
        super(resources, p.a("mask_color"), context);
        this.H = p.a("distortion_vertex");
    }

    public static am a(Resources resources, Context context) {
        am amVar = k.get(Thread.currentThread().getName());
        if (amVar == null) {
            amVar = new am(resources, context);
            amVar.k();
            k.put(Thread.currentThread().getName(), amVar);
        }
        amVar.a(context);
        return amVar;
    }

    public static void h() {
        k.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "colorMap");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "feather"), this.f1192a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "invert"), this.f1193b);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "useRadius"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "threshold"), this.d);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.g);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "alpha"), this.h);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "position"), 1, this.e, 0);
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "size"), 1, this.f, 0);
        float[] fArr = this.i;
        if (fArr != null && fArr.length == 3) {
            GLES20.glUniform3fv(GLES20.glGetUniformLocation(this.x, "selectedColor"), 1, this.i, 0);
        }
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "useSelectedColor"), this.j);
    }
}
