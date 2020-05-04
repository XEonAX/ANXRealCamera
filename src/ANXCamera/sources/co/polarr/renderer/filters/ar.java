package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;

public class ar extends b {

    /* renamed from: a  reason: collision with root package name */
    public String f1202a = "square";

    public ar(Resources resources, Context context) {
        super(resources, p.a("mosaic"), context);
        this.H = p.a("composite_vertex");
        a(new String[]{"mosaic_size"});
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "blurTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.denoiseTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        if (this.u.renderStates.containsKey("mosaic_pattern")) {
            Object obj = this.u.renderStates.get("mosaic_pattern");
            if ((obj instanceof String) && this.u.patterns != null && this.u.patterns.containsKey(obj)) {
                this.f1202a = (String) obj;
            }
        }
        if (!(this.f1202a == null || this.u.patterns == null)) {
            f fVar = this.u.patterns.get(this.f1202a);
            if (fVar != null) {
                int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "patternTexture");
                GLES20.glActiveTexture(33986);
                GLES20.glBindTexture(3553, fVar.c);
                GLES20.glUniform1i(glGetUniformLocation2, 2);
                GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "patternSize"), (float) fVar.d, (float) fVar.e);
            }
        }
        if (this.u.isSDK) {
            int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "mosaic_size");
            Object a2 = c.a("mosaic_size", this.u.renderStates);
            GLES20.glUniform1f(glGetUniformLocation3, a2 != null ? (float) (((double) Float.parseFloat(a2.toString())) * Math.sqrt((double) (((float) (this.u.imageTexture.d * this.u.imageTexture.e)) / 2073600.0f))) : 0.0f);
        }
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
    }
}
