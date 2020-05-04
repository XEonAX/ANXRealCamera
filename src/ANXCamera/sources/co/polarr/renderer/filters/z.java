package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class z extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, z> f1269a = new LruCache<>(5);

    public z(Resources resources, Context context) {
        super(resources, p.a("distortion_multitexture"), context);
        this.H = p.a("fringing_vertex");
        a(new String[]{"distortion_amount", "fringing", "distortion_horizontal", "distortion_vertical"});
    }

    public static z a(Resources resources, Context context) {
        z zVar = f1269a.get(Thread.currentThread().getName());
        if (zVar == null) {
            zVar = new z(resources, context);
            zVar.k();
            f1269a.put(Thread.currentThread().getName(), zVar);
        }
        zVar.a(context);
        return zVar;
    }

    public static void v_() {
        f1269a.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        for (int i = 0; i < 4; i++) {
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.u.textures[i]);
        }
        GLES20.glUniform1iv(GLES20.glGetUniformLocation(this.x, "textures[0]"), 4, new int[]{0, 1, 2, 3}, 0);
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
