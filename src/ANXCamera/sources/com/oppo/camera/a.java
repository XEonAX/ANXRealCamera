package com.oppo.camera;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.params.MeteringRectangle;
import com.oppo.camera.o.d;

/* compiled from: AEAFHelp */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final MeteringRectangle[] f1816a;

    /* renamed from: com.oppo.camera.a$a  reason: collision with other inner class name */
    /* compiled from: AEAFHelp */
    public enum C0053a {
        FrameAverage,
        CenterWeighted,
        SpotMetering,
        SmartMetering,
        UserMetering,
        SpotMeteringAdv,
        CenterWeightedAdv,
        End
    }

    static {
        MeteringRectangle meteringRectangle = new MeteringRectangle(0, 0, 0, 0, 0);
        f1816a = new MeteringRectangle[]{meteringRectangle};
    }

    private static PointF a(float f, float f2, int i) {
        return i != 0 ? i != 90 ? i != 180 ? i != 270 ? new PointF(f, f2) : new PointF(1.0f - f2, f) : new PointF(1.0f - f, 1.0f - f2) : new PointF(f2, 1.0f - f) : new PointF(f, f2);
    }

    private static Rect a(int i, int i2, int i3, PointF pointF, Rect rect) {
        double d;
        double d2;
        int min = (int) ((((((float) i3) * 1.0f) / ((float) i)) * ((float) Math.min(rect.width(), rect.height()))) / 2.0f);
        if (i > i2) {
            d2 = (double) i;
            d = (double) i2;
        } else {
            d2 = (double) i2;
            d = (double) i;
        }
        double d3 = d2 / d;
        double width = ((double) rect.width()) / ((double) rect.height());
        int width2 = rect.width();
        int height = rect.height();
        if (d3 > width) {
            height = (int) (((double) width2) / d3);
        } else {
            width2 = (int) (((double) height) * d3);
        }
        int width3 = (rect.width() - width2) / 2;
        int height2 = (rect.height() - height) / 2;
        int i4 = (int) (((float) rect.left) + (pointF.x * ((float) width2)) + ((float) width3));
        int i5 = (int) (((float) rect.top) + (pointF.y * ((float) height)) + ((float) height2));
        Rect rect2 = new Rect(rect.left + width3, rect.top + height2, rect.right - width3, rect.bottom - height2);
        return new Rect(d.a(i4 - min, rect2.left, rect2.right), d.a(i5 - min, rect2.top, rect2.bottom), d.a(i4 + min, rect2.left, rect2.right), d.a(i5 + min, rect2.top, rect2.bottom));
    }

    public static MeteringRectangle[] a() {
        return f1816a;
    }

    public static MeteringRectangle[] a(float f, float f2, int i, int i2, int i3, boolean z, int i4, int i5, Rect rect, int i6) {
        if (rect == null) {
            d.e("AEAFHelp", "calculateTapArea, cropRegion is null");
            return null;
        }
        float[] fArr = {f / ((float) i), f2 / ((float) i2)};
        Matrix matrix = new Matrix();
        matrix.setRotate((float) i5, 0.5f, 0.5f);
        matrix.mapPoints(fArr);
        if (z) {
            fArr[0] = 1.0f - fArr[0];
        }
        MeteringRectangle[] meteringRectangleArr = {new MeteringRectangle(a(i, i2, i3, a(fArr[0], fArr[1], i4), rect), i6)};
        d.a("AEAFHelp", "calculateTapArea, meteringRectangle: " + meteringRectangleArr[0].toString());
        return meteringRectangleArr;
    }

    public static int b() {
        return 0;
    }

    public static int c() {
        return 1;
    }

    public static int d() {
        return 1;
    }
}
