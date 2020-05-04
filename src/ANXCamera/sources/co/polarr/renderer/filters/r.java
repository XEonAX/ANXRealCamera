package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.a.b;

public class r extends b {
    private static LruCache<String, r> c = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public float[] f1260a;

    /* renamed from: b  reason: collision with root package name */
    public Mesh f1261b;

    private r(Resources resources, Context context) {
        super(resources, p.a("darkchannel_1"), context);
    }

    public static r a(Resources resources, Context context) {
        r rVar = c.get(Thread.currentThread().getName());
        if (rVar == null) {
            rVar = new r(resources, context);
            rVar.k();
            c.put(Thread.currentThread().getName(), rVar);
        }
        rVar.a(context);
        return rVar;
    }

    public static void q_() {
        c.evictAll();
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "delta");
        float[] fArr = this.f1260a;
        GLES20.glUniform2fv(glGetUniformLocation, fArr.length / 2, fArr, 0);
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.f1261b.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.f1261b.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.f1261b.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.f1261b.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.f1261b.trianglesBuffer.capacity(), 5123, this.f1261b.trianglesBuffer);
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
