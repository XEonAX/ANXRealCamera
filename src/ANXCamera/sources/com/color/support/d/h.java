package com.color.support.d;

import android.graphics.Path;
import android.graphics.RectF;

/* compiled from: ColorRoundRectUtil */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static h f1489a;

    /* renamed from: b  reason: collision with root package name */
    private Path f1490b = new Path();

    private h() {
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (f1489a == null) {
                f1489a = new h();
            }
            hVar = f1489a;
        }
        return hVar;
    }

    public Path a(float f, float f2, float f3, float f4, float f5) {
        return a(f, f2, f3, f4, f5, true, true, true, true);
    }

    public Path a(float f, float f2, float f3, float f4, float f5, boolean z, boolean z2, boolean z3, boolean z4) {
        float f6;
        float f7;
        float f8 = f;
        float f9 = f2;
        Path path = this.f1490b;
        if (path != null) {
            path.reset();
        }
        float f10 = f5 < 0.0f ? 0 : f5;
        float f11 = f3 - f8;
        float f12 = f4 - f9;
        float f13 = f11 / 2.0f;
        float f14 = f12 / 2.0f;
        float f15 = 1.0f;
        float min = ((double) (f10 / Math.min(f13, f14))) > 0.5d ? 1.0f - (Math.min(1.0f, ((f10 / Math.min(f13, f14)) - 0.5f) / 0.4f) * 0.13877845f) : 1.0f;
        if (f10 / Math.min(f13, f14) > 0.6f) {
            f15 = 1.0f + (Math.min(1.0f, ((f10 / Math.min(f13, f14)) - 0.6f) / 0.3f) * 0.042454004f);
        }
        float f16 = f15;
        this.f1490b.moveTo(f8 + f13, f9);
        if (!z2) {
            this.f1490b.lineTo(f8 + f11, f9);
            f6 = f13;
        } else {
            float f17 = f10 / 100.0f;
            float f18 = f17 * 128.19f * min;
            this.f1490b.lineTo(Math.max(f13, f11 - f18) + f8, f9);
            float f19 = f8 + f11;
            float f20 = f17 * 83.62f * f16;
            float f21 = f17 * 67.45f;
            float f22 = f17 * 4.64f;
            float f23 = f17 * 51.16f;
            float f24 = f17 * 13.36f;
            f6 = f13;
            this.f1490b.cubicTo(f19 - f20, f2, f19 - f21, f9 + f22, f19 - f23, f9 + f24);
            float f25 = f17 * 34.86f;
            float f26 = f17 * 22.07f;
            this.f1490b.cubicTo(f19 - f25, f9 + f26, f19 - f26, f9 + f25, f19 - f24, f9 + f23);
            this.f1490b.cubicTo(f19 - f22, f9 + f21, f19, f9 + f20, f19, f9 + Math.min(f14, f18));
        }
        if (!z4) {
            this.f1490b.lineTo(f8 + f11, f9 + f12);
            f7 = f6;
        } else {
            float f27 = f8 + f11;
            float f28 = f10 / 100.0f;
            float f29 = f28 * 128.19f * min;
            this.f1490b.lineTo(f27, Math.max(f14, f12 - f29) + f9);
            float f30 = f9 + f12;
            float f31 = f28 * 83.62f * f16;
            float f32 = f28 * 4.64f;
            float f33 = f28 * 67.45f;
            float f34 = f28 * 13.36f;
            float f35 = f28 * 51.16f;
            this.f1490b.cubicTo(f27, f30 - f31, f27 - f32, f30 - f33, f27 - f34, f30 - f35);
            float f36 = f28 * 22.07f;
            float f37 = f28 * 34.86f;
            this.f1490b.cubicTo(f27 - f36, f30 - f37, f27 - f37, f30 - f36, f27 - f35, f30 - f34);
            f7 = f6;
            this.f1490b.cubicTo(f27 - f33, f30 - f32, f27 - f31, f30, f8 + Math.max(f7, f11 - f29), f30);
        }
        if (!z3) {
            this.f1490b.lineTo(f8, f9 + f12);
        } else {
            float f38 = f10 / 100.0f;
            float f39 = f38 * 128.19f * min;
            float f40 = f9 + f12;
            this.f1490b.lineTo(Math.min(f7, f39) + f8, f40);
            float f41 = f38 * 83.62f * f16;
            float f42 = f38 * 67.45f;
            float f43 = f38 * 4.64f;
            float f44 = f38 * 51.16f;
            float f45 = f38 * 13.36f;
            this.f1490b.cubicTo(f8 + f41, f40, f8 + f42, f40 - f43, f8 + f44, f40 - f45);
            float f46 = f38 * 34.86f;
            float f47 = f38 * 22.07f;
            this.f1490b.cubicTo(f8 + f46, f40 - f47, f8 + f47, f40 - f46, f8 + f45, f40 - f44);
            this.f1490b.cubicTo(f8 + f43, f40 - f42, f, f40 - f41, f, f9 + Math.max(f14, f12 - f39));
        }
        if (!z) {
            this.f1490b.lineTo(f8, f9);
        } else {
            float f48 = f10 / 100.0f;
            float f49 = 128.19f * f48 * min;
            this.f1490b.lineTo(f8, Math.min(f14, f49) + f9);
            float f50 = 83.62f * f48 * f16;
            float f51 = 4.64f * f48;
            float f52 = 67.45f * f48;
            float f53 = 13.36f * f48;
            float f54 = 51.16f * f48;
            this.f1490b.cubicTo(f, f9 + f50, f8 + f51, f9 + f52, f8 + f53, f9 + f54);
            float f55 = 22.07f * f48;
            float f56 = f48 * 34.86f;
            this.f1490b.cubicTo(f8 + f55, f9 + f56, f8 + f56, f9 + f55, f8 + f54, f9 + f53);
            this.f1490b.cubicTo(f8 + f52, f9 + f51, f8 + f50, f2, Math.min(f7, f49) + f8, f2);
        }
        this.f1490b.close();
        return this.f1490b;
    }

    public Path a(RectF rectF, float f) {
        return a(rectF.left, rectF.top, rectF.right, rectF.bottom, f);
    }
}
