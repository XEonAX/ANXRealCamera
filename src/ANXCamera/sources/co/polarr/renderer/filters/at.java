package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.util.LruCache;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.a.b;

public class at extends b {

    /* renamed from: b  reason: collision with root package name */
    private static LruCache<String, at> f1205b = new LruCache<>(5);

    /* renamed from: a  reason: collision with root package name */
    public Mesh f1206a;

    private at(Resources resources, Context context) {
        super(resources, p.a("mul"), context);
    }

    public static at a(Resources resources, Context context) {
        at atVar = f1205b.get(Thread.currentThread().getName());
        if (atVar == null) {
            atVar = new at(resources, context);
            atVar.k();
            f1205b.put(Thread.currentThread().getName(), atVar);
        }
        atVar.a(context);
        return atVar;
    }

    public static void h() {
        f1205b.evictAll();
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.y >= 0) {
            GLES20.glEnableVertexAttribArray(this.y);
            GLES20.glVertexAttribPointer(this.y, 3, 5126, false, 0, this.f1206a.mVerBuffer);
        }
        if (this.z >= 0) {
            GLES20.glEnableVertexAttribArray(this.z);
            GLES20.glVertexAttribPointer(this.z, 2, 5126, false, 0, this.f1206a.mTexBuffer);
        }
        if (this.A >= 0) {
            GLES20.glEnableVertexAttribArray(this.A);
            GLES20.glVertexAttribPointer(this.A, 2, 5126, false, 0, this.f1206a.mDistortionBuffer);
        }
        if (this.B >= 0) {
            GLES20.glEnableVertexAttribArray(this.B);
            GLES20.glVertexAttribPointer(this.B, 2, 5126, false, 0, this.f1206a.mDeltaBuffer);
        }
        GLES20.glDrawElements(4, this.f1206a.trianglesBuffer.capacity(), 5123, this.f1206a.trianglesBuffer);
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
