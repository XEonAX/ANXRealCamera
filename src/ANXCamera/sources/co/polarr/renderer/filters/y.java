package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class y extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, y> f1268a = new LruCache<>(5);

    public y(Resources resources, Context context) {
        super(resources, p.a("distortion"), context);
        this.H = p.a("fringing_vertex");
        a(new String[]{"distortion_amount", "fringing", "distortion_horizontal", "distortion_vertical"});
    }

    public static y a(Resources resources, Context context) {
        y yVar = f1268a.get(Thread.currentThread().getName());
        if (yVar == null) {
            yVar = new y(resources, context);
            yVar.k();
            f1268a.put(Thread.currentThread().getName(), yVar);
        }
        yVar.a(context);
        return yVar;
    }

    public static void u_() {
        f1268a.evictAll();
    }

    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2f(GLES20.glGetUniformLocation(this.x, "imgSize"), (float) this.u.imageTexture.d, (float) this.u.imageTexture.e);
    }
}
