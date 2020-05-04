package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bh extends b {
    public bh(Resources resources, Context context) {
        super(resources, p.a("sharpen"), context);
        this.H = p.a("sharpen_vertex");
        a(new String[]{"sharpen"});
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "step"), (1.0f / ((float) this.u.imageTexture.d)) * this.u.zoom, (1.0f / ((float) this.u.imageTexture.e)) * this.u.zoom);
    }
}
