package androidx.core.g.b;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* compiled from: PathInterpolatorApi14 */
class a implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f558a;

    /* renamed from: b  reason: collision with root package name */
    private final float[] f559b;

    a(float f, float f2, float f3, float f4) {
        this(a(f, f2, f3, f4));
    }

    a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / 0.002f)) + 1;
        this.f558a = new float[i];
        this.f559b = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((((float) i2) * length) / ((float) (i - 1)), fArr, (float[]) null);
            this.f558a[i2] = fArr[0];
            this.f559b[i2] = fArr[1];
        }
    }

    private static Path a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }

    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f558a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f558a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f558a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f559b[i];
        }
        float[] fArr2 = this.f559b;
        float f3 = fArr2[i];
        return f3 + (((f - fArr[i]) / f2) * (fArr2[length] - f3));
    }
}
