package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.render.f;

public class ah extends b {
    private static LruCache<String, ah> g = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public f f1183a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1184b;
    public float c;
    public float d;
    public float e;
    public float[] f;

    public ah(Resources resources, Context context) {
        super(resources, p.a("layer"), context);
        this.H = p.a("layer_vertex");
    }

    public static void B_() {
        g.evictAll();
    }

    public static ah a(Resources resources, Context context) {
        ah ahVar = g.get(Thread.currentThread().getName());
        if (ahVar == null) {
            ahVar = new ah(resources, context);
            ahVar.k();
            g.put(Thread.currentThread().getName(), ahVar);
        }
        ahVar.a(context);
        return ahVar;
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "layerTexture");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1183a.c);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        if (this.f1184b != null) {
            GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "colorOverlay"), 1, this.f1184b, 0);
        }
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "backgroundMatrix"), 1, false, this.f, 0);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.c);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "blendMode"), this.d);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "blendMix"), this.e);
    }
}
