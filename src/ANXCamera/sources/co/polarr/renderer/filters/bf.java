package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import com.oppo.camera.statistics.CameraStatisticsUtil;

public class bf extends b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1225a = true;

    public bf(Resources resources, Context context) {
        super(resources, p.a("screen"), context);
        this.H = p.a("screen_vertex");
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "cacheTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, l());
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glBindTexture(3553, this.u.cacheTexture.c);
        float[] fArr = (float[]) c.a("grid_size", this.u.renderStates);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "grid_size"), fArr[0], fArr[1]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "showTexture"), 1.0f);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "cropMatrix"), 1, false, this.u.cropMatrix, 0);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.viewMatrix, 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "img_size");
        float[] b2 = co.polarr.renderer.b.c.b(this.u);
        GLES20.glUniform2f(glGetUniformLocation2, b2[2], b2[3]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, CameraStatisticsUtil.PORTRAIT_ZOOM), this.u.screen.zoom);
    }
}
