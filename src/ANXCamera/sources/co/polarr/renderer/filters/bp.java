package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.a.a;
import co.polarr.renderer.b.h;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import java.util.Arrays;

public class bp extends b {

    /* renamed from: a  reason: collision with root package name */
    public static float f1232a;

    /* renamed from: b  reason: collision with root package name */
    public static float f1233b;
    public static float c;
    public static float d;
    public static float e;
    public static float f;
    private static LruCache<String, bp> g = new LruCache<>(5);
    private boolean h = true;

    public bp(Resources resources, Context context) {
        super(resources, "vignette.glsl", context);
        a(new String[]{"vignette_amount", "vignette_feather", "vignette_highlights", "vignette_roundness", "vignette_size"});
    }

    @a
    public static bp getInstance(Resources resources) {
        bp bpVar = g.get(Thread.currentThread().getName());
        if (bpVar == null) {
            bpVar = new bp(resources, new Context());
            bpVar.k();
            g.put(Thread.currentThread().getName(), bpVar);
        }
        bpVar.a(h.a());
        bpVar.h = true;
        return bpVar;
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.h) {
            super.b();
        }
    }

    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "crop");
        float[] fArr = (float[]) c.a("crop", this.u.renderStates);
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        copyOf[1] = (1.0f - copyOf[3]) - copyOf[1];
        GLES20.glUniform4fv(glGetUniformLocation, 1, copyOf, 0);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "rotationMatrix"), 1, false, this.u.rotation90MatrixInv, 0);
        float[] a2 = co.polarr.renderer.b.c.a(this.u);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), a2[0], a2[1]);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_amount"), f1232a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_feather"), f1233b);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_highlights"), c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_roundness"), e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_size"), f);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "vignette_exposure"), d);
    }

    @a
    public void draw() {
        super.draw();
    }

    @a
    public float[] getMatrix() {
        return super.getMatrix();
    }

    @a
    public void setInputTextureId(int i) {
        a(i);
    }

    @a
    public void setNeedClear(boolean z) {
        this.h = z;
    }
}
