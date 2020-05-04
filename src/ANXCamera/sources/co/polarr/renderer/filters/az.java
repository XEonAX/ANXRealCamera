package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.a.b;

public class az extends b {
    private static LruCache<String, az> c = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1214a;

    /* renamed from: b  reason: collision with root package name */
    public Mesh f1215b;

    private az(Resources resources, Context context) {
        super(resources, p.a("paint_box_blur"), context);
    }

    public static az a(Resources resources, Context context) {
        az azVar = c.get(Thread.currentThread().getName());
        if (azVar == null) {
            azVar = new az(resources, context);
            azVar.k();
            c.put(Thread.currentThread().getName(), azVar);
        }
        azVar.a(context);
        return azVar;
    }

    public static void h() {
        c.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.x, "delta"), 1, this.f1214a, 0);
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.f1215b.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.f1215b.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.f1215b.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.f1215b.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.f1215b.trianglesBuffer.capacity(), 5123, this.f1215b.trianglesBuffer);
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
