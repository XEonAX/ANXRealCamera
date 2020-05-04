package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.g.u;
import com.sensetime.stmobile.sticker_module_types.STStickerFilterParamType;

/* compiled from: AutoScrollHelper */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();

    /* renamed from: a  reason: collision with root package name */
    final C0019a f614a = new C0019a();

    /* renamed from: b  reason: collision with root package name */
    final View f615b;
    boolean c;
    boolean d;
    boolean e;
    private final Interpolator f = new AccelerateInterpolator();
    private Runnable g;
    private float[] h = {0.0f, 0.0f};
    private float[] i = {Float.MAX_VALUE, Float.MAX_VALUE};
    private int j;
    private int k;
    private float[] l = {0.0f, 0.0f};
    private float[] m = {0.0f, 0.0f};
    private float[] n = {Float.MAX_VALUE, Float.MAX_VALUE};
    private boolean o;
    private boolean p;
    private boolean q;

    /* renamed from: androidx.core.widget.a$a  reason: collision with other inner class name */
    /* compiled from: AutoScrollHelper */
    private static class C0019a {

        /* renamed from: a  reason: collision with root package name */
        private int f616a;

        /* renamed from: b  reason: collision with root package name */
        private int f617b;
        private float c;
        private float d;
        private long e = Long.MIN_VALUE;
        private long f = 0;
        private int g = 0;
        private int h = 0;
        private long i = -1;
        private float j;
        private int k;

        C0019a() {
        }

        private float a(float f2) {
            return (-4.0f * f2 * f2) + (f2 * 4.0f);
        }

        private float a(long j2) {
            if (j2 < this.e) {
                return 0.0f;
            }
            long j3 = this.i;
            if (j3 < 0 || j2 < j3) {
                return a.a(((float) (j2 - this.e)) / ((float) this.f616a), 0.0f, 1.0f) * 0.5f;
            }
            long j4 = j2 - j3;
            float f2 = this.j;
            return (1.0f - f2) + (f2 * a.a(((float) j4) / ((float) this.k), 0.0f, 1.0f));
        }

        public void a() {
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.i = -1;
            this.f = this.e;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }

        public void a(float f2, float f3) {
            this.c = f2;
            this.d = f3;
        }

        public void a(int i2) {
            this.f616a = i2;
        }

        public void b() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (currentAnimationTimeMillis - this.e), 0, this.f617b);
            this.j = a(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public void b(int i2) {
            this.f617b = i2;
        }

        public boolean c() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void d() {
            if (this.f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a2 = a(a(currentAnimationTimeMillis));
                this.f = currentAnimationTimeMillis;
                float f2 = ((float) (currentAnimationTimeMillis - this.f)) * a2;
                this.g = (int) (this.c * f2);
                this.h = (int) (f2 * this.d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int e() {
            float f2 = this.c;
            return (int) (f2 / Math.abs(f2));
        }

        public int f() {
            float f2 = this.d;
            return (int) (f2 / Math.abs(f2));
        }

        public int g() {
            return this.g;
        }

        public int h() {
            return this.h;
        }
    }

    /* compiled from: AutoScrollHelper */
    private class b implements Runnable {
        b() {
        }

        public void run() {
            if (a.this.e) {
                if (a.this.c) {
                    a aVar = a.this;
                    aVar.c = false;
                    aVar.f614a.a();
                }
                C0019a aVar2 = a.this.f614a;
                if (aVar2.c() || !a.this.a()) {
                    a.this.e = false;
                    return;
                }
                if (a.this.d) {
                    a aVar3 = a.this;
                    aVar3.d = false;
                    aVar3.b();
                }
                aVar2.d();
                a.this.a(aVar2.g(), aVar2.h());
                u.a(a.this.f615b, (Runnable) this);
            }
        }
    }

    public a(View view) {
        this.f615b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        float f2 = (float) ((int) ((displayMetrics.density * 1575.0f) + 0.5f));
        a(f2, f2);
        float f3 = (float) ((int) ((displayMetrics.density * 315.0f) + 0.5f));
        b(f3, f3);
        a(1);
        e(Float.MAX_VALUE, Float.MAX_VALUE);
        d(0.2f, 0.2f);
        c(1.0f, 1.0f);
        b(r);
        c(STStickerFilterParamType.ST_STICKER_PARAM_FILTER_FLOAT_STRENGTH);
        d(STStickerFilterParamType.ST_STICKER_PARAM_FILTER_FLOAT_STRENGTH);
    }

    static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    private float a(float f2, float f3, float f4, float f5) {
        float f6;
        float a2 = a(f2 * f3, 0.0f, f4);
        float f7 = f(f3 - f5, a2) - f(f5, a2);
        if (f7 < 0.0f) {
            f6 = -this.f.getInterpolation(-f7);
        } else if (f7 <= 0.0f) {
            return 0.0f;
        } else {
            f6 = this.f.getInterpolation(f7);
        }
        return a(f6, -1.0f, 1.0f);
    }

    private float a(int i2, float f2, float f3, float f4) {
        float a2 = a(this.h[i2], f3, this.i[i2], f2);
        int i3 = (a2 > 0.0f ? 1 : (a2 == 0.0f ? 0 : -1));
        if (i3 == 0) {
            return 0.0f;
        }
        float f5 = this.l[i2];
        float f6 = this.m[i2];
        float f7 = this.n[i2];
        float f8 = f5 * f4;
        return i3 > 0 ? a(a2 * f8, f6, f7) : -a((-a2) * f8, f6, f7);
    }

    static int a(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    private void c() {
        if (this.g == null) {
            this.g = new b();
        }
        this.e = true;
        this.c = true;
        if (!this.o) {
            int i2 = this.k;
            if (i2 > 0) {
                u.a(this.f615b, this.g, (long) i2);
                this.o = true;
            }
        }
        this.g.run();
        this.o = true;
    }

    private void d() {
        if (this.c) {
            this.e = false;
        } else {
            this.f614a.b();
        }
    }

    private float f(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.j;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                return f2 >= 0.0f ? 1.0f - (f2 / f3) : (!this.e || this.j != 1) ? 0.0f : 1.0f;
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
    }

    public a a(float f2, float f3) {
        float[] fArr = this.n;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a a(int i2) {
        this.j = i2;
        return this;
    }

    public a a(boolean z) {
        if (this.p && !z) {
            d();
        }
        this.p = z;
        return this;
    }

    public abstract void a(int i2, int i3);

    /* access modifiers changed from: package-private */
    public boolean a() {
        C0019a aVar = this.f614a;
        int f2 = aVar.f();
        int e2 = aVar.e();
        return (f2 != 0 && f(f2)) || (e2 != 0 && e(e2));
    }

    public a b(float f2, float f3) {
        float[] fArr = this.m;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a b(int i2) {
        this.k = i2;
        return this;
    }

    /* access modifiers changed from: package-private */
    public void b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f615b.onTouchEvent(obtain);
        obtain.recycle();
    }

    public a c(float f2, float f3) {
        float[] fArr = this.l;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a c(int i2) {
        this.f614a.a(i2);
        return this;
    }

    public a d(float f2, float f3) {
        float[] fArr = this.h;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a d(int i2) {
        this.f614a.b(i2);
        return this;
    }

    public a e(float f2, float f3) {
        float[] fArr = this.i;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public abstract boolean e(int i2);

    public abstract boolean f(int i2);

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r0 != 3) goto L_0x0058;
     */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                }
            }
            d();
            return this.q && this.e;
        }
        this.d = true;
        this.o = false;
        this.f614a.a(a(0, motionEvent.getX(), (float) view.getWidth(), (float) this.f615b.getWidth()), a(1, motionEvent.getY(), (float) view.getHeight(), (float) this.f615b.getHeight()));
        if (!this.e && a()) {
            c();
        }
        if (this.q) {
            return false;
        }
    }
}
