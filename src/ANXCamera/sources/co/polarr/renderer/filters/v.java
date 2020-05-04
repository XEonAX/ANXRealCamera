package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class v extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, v> f1264b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1265a = new float[15];

    private v(Resources resources, Context context) {
        super(resources, p.a("denoise_nlm1"), context);
        a(new String[]{"delta"});
    }

    public static v a(Resources resources, Context context) {
        v vVar = f1264b.get(Thread.currentThread().getName());
        if (vVar == null) {
            vVar = new v(resources, context);
            vVar.k();
            f1264b.put(Thread.currentThread().getName(), vVar);
        }
        vVar.a(context);
        return vVar;
    }

    public static void s_() {
        f1264b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "textureResolution"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "kernel[0]");
        float[] fArr = this.f1265a;
        GLES20.glUniform1fv(glGetUniformLocation, fArr.length, fArr, 0);
    }
}
