package co.polarr.renderer.filters;

import android.content.res.Resources;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.LruCache;
import co.polarr.renderer.b.c;
import co.polarr.renderer.b.h;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bq extends b {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<String, bq> f1234a = new LruCache<>(5);

    private bq(Resources resources, Context context) {
        super(resources, p.a("watermark"), context);
        a(new String[]{"opacity"});
    }

    public static bq a(Resources resources, Context context) {
        bq bqVar = f1234a.get(Thread.currentThread().getName());
        if (bqVar == null) {
            bqVar = new bq(resources, context);
            bqVar.k();
            f1234a.put(Thread.currentThread().getName(), bqVar);
        }
        bqVar.a(context);
        return bqVar;
    }

    public static void h() {
        f1234a.evictAll();
    }

    private void i() {
        float[] b2 = c.b(this.u);
        float f = (float) this.u.watermarkTexture.d;
        float f2 = (float) this.u.watermarkTexture.e;
        float f3 = b2[2];
        float f4 = b2[3];
        float[] a2 = c.a(this.u);
        if (this.u.cropMode) {
            f3 = a2[0];
            f4 = a2[1];
        }
        float f5 = f / f3;
        float f6 = f2 / f4;
        float[] fArr = this.u.watermarkOptions.position;
        float f7 = this.u.watermarkOptions.scale;
        float f8 = this.u.watermarkOptions.rotation;
        float max = Math.max(f5, f6);
        float f9 = (f5 / max) * f7;
        float f10 = (f6 / max) * f7;
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = a2[0] / 2.0f;
        float f14 = a2[1] / 2.0f;
        float[] fArr2 = {((b2[0] - f13) * this.u.cropScale) + f13, ((b2[1] - f14) * this.u.cropScale) + f14, b2[2] * this.u.cropScale, b2[3] * this.u.cropScale};
        float f15 = fArr2[0];
        float f16 = fArr2[1];
        float f17 = (-(((a2[0] - fArr2[2]) / 2.0f) - f15)) / fArr2[2];
        float f18 = (-(((a2[1] - fArr2[3]) / 2.0f) - f16)) / fArr2[3];
        float f19 = fArr2[2] / a2[0];
        float f20 = fArr2[3] / a2[1];
        float[] a3 = h.a();
        Matrix.multiplyMM(a3, 0, a3, 0, this.u.viewMatrix, 0);
        Matrix.scaleM(a3, 0, this.u.viewMatrix, 0, f19, f20, 1.0f);
        Matrix.translateM(a3, 0, f17 * 2.0f, f18 * 2.0f, 0.0f);
        Matrix.translateM(a3, 0, f11 - (f9 * f11), f12 - (f10 * f12), 0.0f);
        Matrix.scaleM(a3, 0, 1.0f / f3, 1.0f / f4, 1.0f);
        Matrix.rotateM(a3, 0, f8, 0.0f, 0.0f, 1.0f);
        Matrix.scaleM(a3, 0, f3, f4, 1.0f);
        Matrix.scaleM(a3, 0, f9, f10, 1.0f);
        a(a3);
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void d() {
        if (this.u.watermarkTexture == null) {
            return;
        }
        if (this.u.watermarkOptions.enabled || this.u.watermarkOptions.preview) {
            i();
            super.d();
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, "texture");
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.u.watermarkTexture.c);
            GLES20.glUniform1i(glGetUniformLocation, 0);
            GLES20.glUniform1f(GLES20.glGetUniformLocation(this.x, "opacity"), this.u.watermarkOptions.opacity);
        }
    }

    /* access modifiers changed from: protected */
    public void g() {
    }
}
