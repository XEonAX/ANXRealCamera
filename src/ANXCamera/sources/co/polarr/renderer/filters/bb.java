package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bb extends b {
    private static LruCache<String, bb> d = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1219a;

    /* renamed from: b  reason: collision with root package name */
    public int f1220b;
    public int c;

    private bb(Resources resources, Context context) {
        super(resources, p.a("paint_split"), context);
    }

    public static bb a(Resources resources, Context context) {
        bb bbVar = d.get(Thread.currentThread().getName());
        if (bbVar == null) {
            bbVar = new bb(resources, context);
            bbVar.k();
            d.put(Thread.currentThread().getName(), bbVar);
        }
        bbVar.a(context);
        return bbVar;
    }

    public static void h() {
        d.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "source");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1219a);
        GLES20.glUniform1i(glGetUniformLocation, 1);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "prePainting");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.f1220b);
        GLES20.glUniform1i(glGetUniformLocation2, 2);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "curBrush");
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation3, 3);
    }
}
