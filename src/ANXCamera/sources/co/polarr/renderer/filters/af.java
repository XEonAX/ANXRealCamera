package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class af extends b {
    private static LruCache<String, af> f = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1179a;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1180b;
    public float[] c;
    public float d;
    public float[] e;

    private af(Resources resources, Context context) {
        super(resources, p.a("initialize_field"), context);
        this.H = p.a("patchmatch_vertex");
    }

    public static af a(Resources resources, Context context) {
        af afVar = f.get(Thread.currentThread().getName());
        if (afVar == null) {
            afVar = new af(resources, context);
            afVar.k();
            f.put(Thread.currentThread().getName(), afVar);
        }
        afVar.a(context);
        return afVar;
    }

    public static void z_() {
        f.evictAll();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.f1179a);
        GLES20.glUniform1i(glGetUniformLocation, 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "source_size");
        float[] fArr = this.f1180b;
        GLES20.glUniform2f(glGetUniformLocation2, fArr[0], fArr[1]);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "full_size");
        float[] fArr2 = this.c;
        GLES20.glUniform2f(glGetUniformLocation3, fArr2[0], fArr2[1]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "seed"), this.d);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "region"), 1, false, this.e, 0);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
