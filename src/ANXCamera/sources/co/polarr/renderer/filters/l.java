package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class l extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, l> f1250b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1251a;

    private l(Resources resources, Context context) {
        super(resources, p.a("combine_mask"), context);
    }

    public static l a(Resources resources, Context context) {
        l lVar = f1250b.get(Thread.currentThread().getName());
        if (lVar == null) {
            lVar = new l(resources, context);
            lVar.k();
            f1250b.put(Thread.currentThread().getName(), lVar);
        }
        lVar.a(context);
        return lVar;
    }

    public static void l_() {
        f1250b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "mask");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1251a);
        GLES20.glUniform1i(glGetUniformLocation, 1);
    }
}
