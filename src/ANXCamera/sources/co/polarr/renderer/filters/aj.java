package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class aj extends b {

    /* renamed from: a  reason: collision with root package name */
    public float f1187a = 0.0f;

    public aj(Resources resources, Context context) {
        super(resources, p.a("lookup_export_filter"), context);
    }

    public boolean c() {
        return !this.u.isLutRender;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "lut_color_space"), this.f1187a);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "img_size"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
    }
}
