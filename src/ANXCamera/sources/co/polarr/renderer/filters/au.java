package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class au extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, au> f1207a = new LruCache<>(5);

    private au(Resources resources, Context context) {
        super(resources, p.a("multitexture"), context);
    }

    public static au a(Resources resources, Context context) {
        au auVar = f1207a.get(Thread.currentThread().getName());
        if (auVar == null) {
            auVar = new au(resources, context);
            auVar.k();
            f1207a.put(Thread.currentThread().getName(), auVar);
        }
        auVar.a(context);
        return auVar;
    }

    public static void h() {
        f1207a.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        for (int i = 0; i < 4; i++) {
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.u.textures[i]);
        }
        GLES20.glUniform1iv(GLES20.glGetUniformLocation(this.x, "textures[0]"), 4, new int[]{0, 1, 2, 3}, 0);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
