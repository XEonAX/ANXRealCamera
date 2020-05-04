package com.color.support.widget;

import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

/* compiled from: SpringOverScroller */
public class k extends OverScroller {

    /* renamed from: a  reason: collision with root package name */
    private b f1711a;

    /* renamed from: b  reason: collision with root package name */
    private b f1712b;
    private Interpolator c;
    private int d;

    /* compiled from: SpringOverScroller */
    static class a implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        private static final float f1713a = (1.0f / a(1.0f));

        /* renamed from: b  reason: collision with root package name */
        private static final float f1714b = (1.0f - (f1713a * a(1.0f)));

        a() {
        }

        private static float a(float f) {
            float f2 = f * 8.0f;
            return f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp((double) (-f2)))) : ((1.0f - ((float) Math.exp((double) (1.0f - f2)))) * 0.63212055f) + 0.36787945f;
        }

        public float getInterpolation(float f) {
            float a2 = f1713a * a(f);
            return a2 > 0.0f ? a2 + f1714b : a2;
        }
    }

    /* compiled from: SpringOverScroller */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private static float f1715a = 1.0f;

        /* renamed from: b  reason: collision with root package name */
        private C0049b f1716b;
        private C0049b c = new C0049b((double) this.h, 0.0d);
        private C0049b d = new C0049b(12.1899995803833d, 16.0d);
        private a e = new a();
        private a f = new a();
        private a g = new a();
        private float h = 1.06f;
        private double i = 100.0d;
        private double j = 0.05d;
        private double k;
        private double l;
        private int m;
        /* access modifiers changed from: private */
        public int n;
        private int o;
        /* access modifiers changed from: private */
        public long p;
        private int q = 1;
        private boolean r = false;
        private boolean s;
        private boolean t;

        /* compiled from: SpringOverScroller */
        static class a {

            /* renamed from: a  reason: collision with root package name */
            double f1717a;

            /* renamed from: b  reason: collision with root package name */
            double f1718b;

            a() {
            }
        }

        /* renamed from: com.color.support.widget.k$b$b  reason: collision with other inner class name */
        /* compiled from: SpringOverScroller */
        static class C0049b {

            /* renamed from: a  reason: collision with root package name */
            double f1719a;

            /* renamed from: b  reason: collision with root package name */
            double f1720b;

            C0049b(double d, double d2) {
                this.f1719a = (double) a((float) d);
                this.f1720b = b((float) d2);
            }

            private float a(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                return 25.0f + ((f - 8.0f) * 3.0f);
            }

            private double b(float f) {
                if (f == 0.0f) {
                    return 0.0d;
                }
                return (double) (((f - 30.0f) * 3.62f) + 194.0f);
            }

            /* access modifiers changed from: package-private */
            public void a(double d) {
                this.f1719a = (double) a((float) d);
            }

            /* access modifiers changed from: package-private */
            public void b(double d) {
                this.f1720b = b((float) d);
            }
        }

        b() {
            a(this.c);
        }

        /* access modifiers changed from: package-private */
        public double a() {
            return this.e.f1717a;
        }

        /* access modifiers changed from: package-private */
        public double a(a aVar) {
            return Math.abs(this.l - aVar.f1717a);
        }

        /* access modifiers changed from: package-private */
        public void a(double d2) {
            if (d2 != this.e.f1718b) {
                this.e.f1718b = d2;
            }
        }

        /* access modifiers changed from: package-private */
        public void a(double d2, boolean z) {
            this.k = d2;
            if (!this.r) {
                this.f.f1717a = 0.0d;
                this.g.f1717a = 0.0d;
            }
            this.e.f1717a = d2;
            if (z) {
                d();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(float f2) {
            a aVar = this.e;
            int i2 = this.m;
            aVar.f1717a = (double) (i2 + Math.round(f2 * ((float) (this.o - i2))));
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3) {
            this.q = 1;
            f1715a = 1.0f;
            this.c.a((double) this.h);
            this.c.b(0.0d);
            a(this.c);
            a((double) i2, true);
            a((double) i3);
        }

        /* access modifiers changed from: package-private */
        public void a(C0049b bVar) {
            if (bVar != null) {
                this.f1716b = bVar;
                return;
            }
            throw new IllegalArgumentException("springConfig is required");
        }

        /* access modifiers changed from: package-private */
        public boolean a(int i2, int i3, int i4) {
            a((double) i2, false);
            if (i2 > i4 || i2 < i3) {
                if (i2 > i4) {
                    b((double) i4);
                } else if (i2 < i3) {
                    b((double) i3);
                }
                this.s = true;
                this.d.a(12.1899995803833d);
                this.d.b(16.0d);
                a(this.d);
                return true;
            }
            a(new C0049b((double) this.h, 0.0d));
            return false;
        }

        /* access modifiers changed from: package-private */
        public double b() {
            return this.e.f1718b;
        }

        /* access modifiers changed from: package-private */
        public void b(double d2) {
            if (this.l != d2) {
                this.k = a();
                this.l = d2;
            }
        }

        /* access modifiers changed from: package-private */
        public void b(int i2, int i3, int i4) {
            this.m = i2;
            this.o = i2 + i3;
            this.n = i4;
            this.p = AnimationUtils.currentAnimationTimeMillis();
            a(this.c);
        }

        /* access modifiers changed from: package-private */
        public double c() {
            return this.l;
        }

        /* access modifiers changed from: package-private */
        public void c(int i2, int i3, int i4) {
            this.e.f1717a = (double) i2;
            a aVar = this.f;
            aVar.f1717a = 0.0d;
            aVar.f1718b = 0.0d;
            a aVar2 = this.g;
            aVar2.f1717a = 0.0d;
            aVar2.f1718b = 0.0d;
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.l = this.e.f1717a;
            this.g.f1717a = this.e.f1717a;
            this.e.f1718b = 0.0d;
            this.s = false;
        }

        /* access modifiers changed from: package-private */
        public boolean e() {
            return Math.abs(this.e.f1718b) <= this.i && (a(this.e) <= this.j || this.f1716b.f1720b == 0.0d);
        }

        /* access modifiers changed from: package-private */
        public boolean f() {
            if (e()) {
                return false;
            }
            double d2 = this.e.f1717a;
            double d3 = this.e.f1718b;
            double d4 = this.g.f1717a;
            double d5 = this.g.f1718b;
            if (this.s) {
                double a2 = a(this.e);
                if (!this.t && a2 < 180.0d) {
                    this.f1716b.f1720b += 100.0d;
                    this.t = true;
                } else if (a2 < 2.0d) {
                    this.e.f1717a = this.l;
                    this.t = false;
                    this.s = false;
                    return false;
                }
            } else if (this.q < 60) {
                f1715a += 0.020000001f;
                this.f1716b.f1719a += 0.020000001415610313d;
            } else {
                float f2 = f1715a;
                f1715a = f2 - ((f2 - 0.6f) / 60.0f);
                this.f1716b.f1719a -= (double) ((f1715a - 0.6f) / 60.0f);
            }
            double d6 = (this.f1716b.f1720b * (this.l - d4)) - (this.f1716b.f1719a * this.f.f1718b);
            double d7 = ((d6 * 0.016d) / 2.0d) + d3;
            double d8 = (this.f1716b.f1720b * (this.l - (((d3 * 0.016d) / 2.0d) + d2))) - (this.f1716b.f1719a * d7);
            double d9 = d3 + ((d8 * 0.016d) / 2.0d);
            double d10 = d6;
            double d11 = (this.f1716b.f1720b * (this.l - (((d7 * 0.016d) / 2.0d) + d2))) - (this.f1716b.f1719a * d9);
            double d12 = (d9 * 0.016d) + d2;
            double d13 = d3 + (d11 * 0.016d);
            double d14 = d2;
            double d15 = (this.f1716b.f1720b * (this.l - d12)) - (this.f1716b.f1719a * d13);
            a aVar = this.g;
            aVar.f1718b = d13;
            aVar.f1717a = d12;
            a aVar2 = this.e;
            aVar2.f1718b = d3 + ((d10 + ((d8 + d11) * 2.0d) + d15) * 0.16699999570846558d * 0.016d);
            aVar2.f1717a = d14 + ((((d7 + d9) * 2.0d) + d3 + d13) * 0.16699999570846558d * 0.016d);
            this.q++;
            return true;
        }
    }

    public k(Context context) {
        this(context, (Interpolator) null);
    }

    public k(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.d = 2;
        this.f1711a = new b();
        this.f1712b = new b();
        if (interpolator == null) {
            this.c = new a();
        } else {
            this.c = interpolator;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        this.d = 1;
        this.f1711a.a(i, i3);
        this.f1712b.a(i2, i4);
    }

    public final boolean a() {
        return this.f1711a.e() && this.f1712b.e() && this.d != 0;
    }

    public void abortAnimation() {
        this.d = 2;
        this.f1711a.d();
        this.f1712b.d();
    }

    public final int b() {
        return (int) Math.round(this.f1711a.a());
    }

    public final int c() {
        return (int) Math.round(this.f1712b.a());
    }

    public boolean computeScrollOffset() {
        if (a()) {
            return false;
        }
        int i = this.d;
        if (i == 0) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.f1711a.p;
            int b2 = this.f1711a.n;
            if (currentAnimationTimeMillis < ((long) b2)) {
                float interpolation = this.c.getInterpolation(((float) currentAnimationTimeMillis) / ((float) b2));
                this.f1711a.a(interpolation);
                this.f1712b.a(interpolation);
            } else {
                this.f1711a.a(1.0f);
                this.f1712b.a(1.0f);
                abortAnimation();
            }
        } else if (i == 1 && !this.f1711a.f() && !this.f1712b.f()) {
            abortAnimation();
        }
        return true;
    }

    public final int d() {
        return (int) this.f1711a.c();
    }

    public final int e() {
        return (int) this.f1712b.c();
    }

    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        a(i, i2, i3, i4);
    }

    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int i11 = i2;
        if (i11 > i8) {
            int i12 = i7;
        } else if (i11 >= i7) {
            fling(i, i2, i3, i4, i5, i6, i7, i8);
            return;
        }
        springBack(i, i2, i5, i6, i7, i8);
    }

    public float getCurrVelocity() {
        double b2 = this.f1711a.b();
        double b3 = this.f1712b.b();
        return (float) ((int) Math.sqrt((b2 * b2) + (b3 * b3)));
    }

    public void notifyHorizontalEdgeReached(int i, int i2, int i3) {
        this.f1711a.c(i, i2, i3);
        springBack(i, 0, 0, 0, 0, 0);
    }

    public void notifyVerticalEdgeReached(int i, int i2, int i3) {
        this.f1712b.c(i, i2, i3);
        springBack(0, i, 0, 0, 0, 0);
    }

    public boolean springBack(int i, int i2, int i3, int i4, int i5, int i6) {
        boolean a2 = this.f1711a.a(i, i3, i4);
        boolean a3 = this.f1712b.a(i2, i5, i6);
        if (a2 || a3) {
            this.d = 1;
        }
        return a2 || a3;
    }

    public void startScroll(int i, int i2, int i3, int i4) {
        startScroll(i, i2, i3, i4, 250);
    }

    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        this.d = 0;
        this.f1711a.b(i, i3, i5);
        this.f1712b.b(i2, i4, i5);
    }
}
