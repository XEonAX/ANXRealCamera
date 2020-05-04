package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class w extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, w> f1266b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1267a = new float[15];

    private w(Resources resources, Context context) {
        super(resources, p.a("denoise_nlm2"), context);
        a(new String[]{"delta"});
    }

    public static w a(Resources resources, Context context) {
        w wVar = f1266b.get(Thread.currentThread().getName());
        if (wVar == null) {
            wVar = new w(resources, context);
            wVar.k();
            f1266b.put(Thread.currentThread().getName(), wVar);
        }
        wVar.a(context);
        return wVar;
    }

    public static void t_() {
        f1266b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "textureResolution"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "kernel[0]");
        float[] fArr = this.f1267a;
        GLES20.glUniform1fv(glGetUniformLocation, fArr.length, fArr, 0);
    }
}
