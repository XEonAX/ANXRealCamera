package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class u extends b {
    public u(Resources resources, Context context) {
        super(resources, p.a("denoise"), context);
        this.H = p.a("distortion_vertex");
        a(new String[]{"color_denoise", "luminance_denoise"});
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "denoiseMap"), 1);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.x, "dehazeMap"), 2);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
    }

    /* access modifiers changed from: protected */
    public void g() {
        super.g();
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.denoiseTexture.c);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
    }
}
