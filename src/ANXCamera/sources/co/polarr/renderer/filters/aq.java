package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class aq extends b {
    private static LruCache<String, aq> g = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1200a;

    /* renamed from: b  reason: collision with root package name */
    public int f1201b;
    public int c;
    public float[] d;
    public float[] e;
    public float[] f;

    private aq(Resources resources, Context context) {
        super(resources, p.a("maximization"), context);
        this.H = p.a("patchmatch_vertex");
    }

    public static aq a(Resources resources, Context context) {
        aq aqVar = g.get(Thread.currentThread().getName());
        if (aqVar == null) {
            aqVar = new aq(resources, context);
            aqVar.k();
            g.put(Thread.currentThread().getName(), aqVar);
        }
        aqVar.a(context);
        return aqVar;
    }

    public static void h() {
        g.evictAll();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "target");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.f1200a);
        GLES20.glUniform1i(glGetUniformLocation, 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1201b);
        GLES20.glUniform1i(glGetUniformLocation2, 1);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "field");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation3, 2);
        int glGetUniformLocation4 = GLES20.glGetUniformLocation(this.x, "target_size");
        float[] fArr = this.d;
        GLES20.glUniform2f(glGetUniformLocation4, fArr[0], fArr[1]);
        int glGetUniformLocation5 = GLES20.glGetUniformLocation(this.x, "full_size");
        float[] fArr2 = this.e;
        GLES20.glUniform2f(glGetUniformLocation5, fArr2[0], fArr2[1]);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "region"), 1, false, this.f, 0);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
