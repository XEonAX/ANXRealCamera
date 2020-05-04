package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import java.util.Arrays;

public class bo extends b {
    public bo(Resources resources, Context context) {
        super(resources, p.a("vignette"), context);
        this.H = p.a("composite_vertex");
        a(new String[]{"vignette_amount", "vignette_feather", "vignette_highlights", "vignette_roundness", "vignette_size"});
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
    }
}
