package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class ba extends b {

    /* renamed from: a  reason: collision with root package name */
    public float f1217a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    public float f1218b = 1.0f;
    public int c = 0;
    public float[] d = {1.0f, 0.0f, 0.0f, 0.0f};

    public ba(Resources resources, Context context) {
        super(resources, p.a("paint_overlay"), context);
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "overlay");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "overlayMask"), 1, this.d, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.f1217a);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "overlayMix"), this.f1218b);
    }

    public void draw() {
        n();
        d();
        g();
        e();
    }
}
