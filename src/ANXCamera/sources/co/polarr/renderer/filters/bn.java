package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bn extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, bn> f1230b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1231a;

    private bn(Resources resources, Context context) {
        super(resources, p.a("unmask"), context);
    }

    public static bn a(Resources resources, Context context) {
        bn bnVar = f1230b.get(Thread.currentThread().getName());
        if (bnVar == null) {
            bnVar = new bn(resources, context);
            bnVar.k();
            f1230b.put(Thread.currentThread().getName(), bnVar);
        }
        bnVar.a(context);
        return bnVar;
    }

    public static void h() {
        f1230b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.f1231a);
        GLES20.glUniform1i(glGetUniformLocation, 0);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
