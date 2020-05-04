package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class ad extends b {
    public ad(Resources resources, Context context) {
        super(resources, p.a("grain"), context);
        this.H = p.a("composite_vertex");
        a(new String[]{"grain_amount", "grain_size"});
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "scale"), this.u.zoom);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
    }
}
