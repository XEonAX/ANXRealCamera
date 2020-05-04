package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class ax extends b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1210a;

    /* renamed from: b  reason: collision with root package name */
    public float f1211b = 1.0f;

    public ax(Resources resources, Context context) {
        super(resources, p.a("overlay"), context);
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "overlayMask"), 1, this.u.overlayMask, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.f1211b);
    }

    public void draw() {
        n();
        d();
        g();
        e();
    }
}
