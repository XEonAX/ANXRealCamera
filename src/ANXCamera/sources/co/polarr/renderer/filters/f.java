package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.a.b;

public class f extends b {
    private static LruCache<String, f> c = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1240a;

    /* renamed from: b  reason: collision with root package name */
    public Mesh f1241b;

    private f(Resources resources, Context context) {
        super(resources, p.a("box_blur"), context);
    }

    public static f a(Resources resources, Context context) {
        f fVar = c.get(Thread.currentThread().getName());
        if (fVar == null) {
            fVar = new f(resources, context);
            fVar.k();
            c.put(Thread.currentThread().getName(), fVar);
        }
        fVar.a(context);
        return fVar;
    }

    public static void g_() {
        c.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform4fv(GLES20.glGetUniformLocation(this.x, "delta"), 1, this.f1240a, 0);
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.f1241b.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.f1241b.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.f1241b.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.f1241b.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.f1241b.trianglesBuffer.capacity(), 5123, this.f1241b.trianglesBuffer);
        if (this.y >= 0) {
            GLES20.glDisableVertexAttribArray(this.y);
        }
        if (this.z >= 0) {
            GLES20.glDisableVertexAttribArray(this.z);
        }
        if (this.A >= 0) {
            GLES20.glDisableVertexAttribArray(this.A);
        }
        if (this.B >= 0) {
            GLES20.glDisableVertexAttribArray(this.B);
        }
    }
}
