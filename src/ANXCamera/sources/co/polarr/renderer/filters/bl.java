package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;

public class bl extends bj {
    private static LruCache<String, bl> h = new LruCache<>(5);

    public bl(Resources resources, Context context) {
        super(resources, p.a("spot_heal_multitexture"), context);
        this.H = p.a("spot_heal_vertex");
    }

    public static bl b(Resources resources, Context context) {
        bl blVar = h.get(Thread.currentThread().getName());
        if (blVar == null) {
            blVar = new bl(resources, context);
            blVar.k();
            h.put(Thread.currentThread().getName(), blVar);
        }
        blVar.a(context);
        return blVar;
    }

    public static void j() {
        h.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "smoothTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.dehazeTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "retouchTexture");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.u.retouchTexture.c);
        GLES20.glUniform1i(glGetUniformLocation2, 2);
        GLES20.glUniform1iv(GLES20.glGetUniformLocation(this.x, "textures[0]"), 4, new int[]{3, 4, 5, 6}, 0);
        for (int i = 1; i <= 4; i++) {
            GLES20.glActiveTexture(33984 + i + 2);
            GLES20.glBindTexture(3553, this.u.textures[i - 1]);
        }
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        i();
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
