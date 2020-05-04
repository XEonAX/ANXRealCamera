package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.a.b;

public class k extends b {
    private static LruCache<String, k> e = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public int f1248a;

    /* renamed from: b  reason: collision with root package name */
    public int f1249b;
    public int c;
    public Mesh d;

    private k(Resources resources, Context context) {
        super(resources, p.a("combine"), context);
    }

    public static k a(Resources resources, Context context) {
        k kVar = e.get(Thread.currentThread().getName());
        if (kVar == null) {
            kVar = new k(resources, context);
            kVar.k();
            e.put(Thread.currentThread().getName(), kVar);
        }
        kVar.a(context);
        return kVar;
    }

    public static void k_() {
        e.evictAll();
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.d.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.d.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.d.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.d.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.d.trianglesBuffer.capacity(), 5123, this.d.trianglesBuffer);
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

    /* access modifiers changed from: protected */
    public void g() {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "a");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.f1248a);
        GLES20.glUniform1i(glGetUniformLocation, 0);
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.x, "b");
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.f1249b);
        GLES20.glUniform1i(glGetUniformLocation2, 1);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.x, "I");
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.c);
        GLES20.glUniform1i(glGetUniformLocation3, 2);
    }
}
