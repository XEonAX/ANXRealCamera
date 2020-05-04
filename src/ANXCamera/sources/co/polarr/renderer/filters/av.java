package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class av extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, av> f1208a = new LruCache<>(5);

    private av(Resources resources, Context context) {
        super(resources, p.a("out"), context);
        this.H = p.a("distortion_vertex");
    }

    public static av a(Resources resources, Context context) {
        av avVar = f1208a.get(Thread.currentThread().getName());
        if (avVar == null) {
            avVar = new av(resources, context);
            avVar.k();
            f1208a.put(Thread.currentThread().getName(), avVar);
        }
        avVar.a(context);
        return avVar;
    }

    public static void h() {
        f1208a.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "original");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.u.imageTexture.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "viewMatrix"), 1, false, this.u.matrix, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_amount"), ((Float) c.a("distortion_amount", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_horizontal"), ((Float) c.a("distortion_horizontal", this.u.renderStates)).floatValue());
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "distortion_vertical"), ((Float) c.a("distortion_vertical", this.u.renderStates)).floatValue());
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
    }
}
