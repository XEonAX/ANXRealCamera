package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bd extends b {
    private static LruCache<String, bd> i = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1223a;

    /* renamed from: b  reason: collision with root package name */
    public int f1224b;
    public int c;
    public float[] d;
    public float[] e;
    public float[] f;
    public float g;
    public float[] h;

    private bd(Resources resources, Context context) {
        super(resources, p.a("random_search"), context);
        this.H = p.a("patchmatch_vertex");
    }

    public static bd a(Resources resources, Context context) {
        bd bdVar = i.get(Thread.currentThread().getName());
        if (bdVar == null) {
            bdVar = new bd(resources, context);
            bdVar.k();
            i.put(Thread.currentThread().getName(), bdVar);
        }
        bdVar.a(context);
        return bdVar;
    }

    public static void h() {
        i.evictAll();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "target");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.f1223a);
        GLES20.glUniform1i(glGetUniformLocation, 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1224b);
        GLES20.glUniform1i(glGetUniformLocation2, 1);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "field");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation3, 2);
        int glGetUniformLocation4 = GLES20.glGetUniformLocation(this.x, "source_size");
        float[] fArr = this.d;
        GLES20.glUniform2f(glGetUniformLocation4, fArr[0], fArr[1]);
        int glGetUniformLocation5 = GLES20.glGetUniformLocation(this.x, "target_size");
        float[] fArr2 = this.e;
        GLES20.glUniform2f(glGetUniformLocation5, fArr2[0], fArr2[1]);
        int glGetUniformLocation6 = GLES20.glGetUniformLocation(this.x, "full_size");
        float[] fArr3 = this.f;
        GLES20.glUniform2f(glGetUniformLocation6, fArr3[0], fArr3[1]);
        GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "seed"), this.g);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.x, "region"), 1, false, this.h, 0);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
