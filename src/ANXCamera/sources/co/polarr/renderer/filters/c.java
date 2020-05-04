package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import com.oppo.camera.statistics.CameraStatisticsUtil;

public class c extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, c> f1235b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1236a;

    private c(Resources resources, Context context) {
        super(resources, p.a(CameraStatisticsUtil.PORTRAIT_BLUR), context);
        a(new String[]{CameraStatisticsUtil.PORTRAIT_BLUR});
    }

    public static c a(Resources resources, Context context) {
        c cVar = f1235b.get(Thread.currentThread().getName());
        if (cVar == null) {
            cVar = new c(resources, context);
            cVar.k();
            f1235b.put(Thread.currentThread().getName(), cVar);
        }
        cVar.a(context);
        return cVar;
    }

    public static void d_() {
        f1235b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "delta");
        float[] fArr = this.f1236a;
        GLES20.glUniform2fv(glGetUniformLocation, fArr.length / 2, fArr, 0);
    }
}
