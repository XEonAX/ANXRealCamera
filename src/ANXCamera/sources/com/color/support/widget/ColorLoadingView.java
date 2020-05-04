package com.color.support.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.g.u;
import color.support.v7.appcompat.R;
import com.color.support.c.a.a;
import com.color.support.d.c;
import com.color.support.d.d;
import java.lang.ref.WeakReference;

public class ColorLoadingView extends View {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1573a = "ColorLoadingView";
    private int A;
    private RectF B;
    private float C;
    private float D;
    private a.C0046a E;

    /* renamed from: b  reason: collision with root package name */
    private float[] f1574b;
    private int c;
    private int d;
    /* access modifiers changed from: private */
    public int e;
    /* access modifiers changed from: private */
    public int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private Paint m;
    private float n;
    private float o;
    private float p;
    private ValueAnimator q;
    private com.color.support.c.a.a r;
    /* access modifiers changed from: private */
    public String s;
    private float t;
    private float u;
    private boolean v;
    private boolean w;
    private Paint x;
    private int y;
    private int z;

    private static class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<ColorLoadingView> f1577a;

        public a(ColorLoadingView colorLoadingView) {
            this.f1577a = new WeakReference<>(colorLoadingView);
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            valueAnimator.getAnimatedFraction();
            ColorLoadingView colorLoadingView = (ColorLoadingView) this.f1577a.get();
            if (colorLoadingView != null) {
                colorLoadingView.invalidate();
            }
        }
    }

    public ColorLoadingView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorLoadingViewStyle);
    }

    public ColorLoadingView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, R.attr.colorLoadingViewStyle, 0);
    }

    public ColorLoadingView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.f1574b = new float[6];
        this.e = 0;
        this.f = 0;
        this.g = 1;
        this.k = 0;
        this.l = 0;
        this.p = 60.0f;
        this.s = null;
        this.t = 0.1f;
        this.u = 0.4f;
        this.v = false;
        this.w = false;
        this.E = new a.C0046a() {

            /* renamed from: b  reason: collision with root package name */
            private int f1576b = -1;

            public int a() {
                return -1;
            }

            public int a(float f, float f2) {
                return (f < 0.0f || f > ((float) ColorLoadingView.this.e) || f2 < 0.0f || f2 > ((float) ColorLoadingView.this.f)) ? -1 : 0;
            }

            public CharSequence a(int i) {
                return ColorLoadingView.this.s != null ? ColorLoadingView.this.s : getClass().getSimpleName();
            }

            public void a(int i, int i2, boolean z) {
            }

            public void a(int i, Rect rect) {
                if (i == 0) {
                    rect.set(0, 0, ColorLoadingView.this.e, ColorLoadingView.this.f);
                }
            }

            public int b() {
                return 1;
            }

            public CharSequence c() {
                return null;
            }

            public int d() {
                return -1;
            }
        };
        d.a(this, false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.colorLoadingView, i2, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.color_loading_view_default_length);
        this.e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.colorLoadingView_colorLoadingViewWidth, dimensionPixelSize);
        this.f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.colorLoadingView_colorLoadingViewHeight, dimensionPixelSize);
        this.g = obtainStyledAttributes.getInteger(R.styleable.colorLoadingView_colorLoadingViewType, 1);
        int a2 = c.a(context, R.attr.colorLoadingViewColor, 0);
        int a3 = c.a(context, R.attr.colorLoadingViewBgCircleColor, 0);
        this.c = obtainStyledAttributes.getColor(R.styleable.colorLoadingView_colorLoadingViewColor, a2);
        this.d = obtainStyledAttributes.getColor(R.styleable.colorLoadingView_colorLoadingViewBgCircleColor, a3);
        obtainStyledAttributes.recycle();
        this.h = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_strokewidth);
        this.i = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_medium_strokewidth);
        this.j = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_large_strokewidth);
        this.k = this.h;
        int i4 = this.g;
        if (1 == i4) {
            this.k = this.i;
            this.t = 0.1f;
            this.u = 0.4f;
        } else if (2 == i4) {
            this.k = this.j;
            this.t = 0.215f;
            this.u = 1.0f;
        }
        this.l = this.k >> 1;
        this.n = (float) (this.e >> 1);
        this.o = (float) (this.f >> 1);
        this.r = new com.color.support.c.a.a(this);
        this.r.a(this.E);
        u.a((View) this, (androidx.core.g.a) this.r);
        u.b((View) this, 1);
        this.s = context.getString(R.string.color_loading_view_access_string);
        a();
        f();
    }

    private void a() {
        this.m = new Paint(1);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(this.c);
        this.m.setStrokeWidth((float) this.k);
        this.m.setStrokeCap(Paint.Cap.ROUND);
    }

    private void a(Canvas canvas) {
        int i2 = this.z;
        canvas.drawCircle((float) i2, (float) i2, this.C, this.x);
    }

    private void b() {
        this.q = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.q.setDuration(480);
        this.q.setInterpolator(new LinearInterpolator());
        this.q.addUpdateListener(new a(this));
        this.q.setRepeatMode(1);
        this.q.setRepeatCount(-1);
        this.q.setInterpolator(new LinearInterpolator());
    }

    private void c() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.q.removeAllListeners();
            this.q.removeAllUpdateListeners();
            this.q = null;
        }
    }

    private void d() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                this.q.cancel();
            }
            this.q.start();
        }
    }

    private void e() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    private void f() {
        this.x = new Paint(1);
        this.x.setColor(this.d);
        this.x.setStyle(Paint.Style.STROKE);
        this.x.setStrokeWidth((float) this.k);
    }

    private void g() {
        this.y = this.k / 2;
        this.z = getWidth() / 2;
        this.A = getHeight() / 2;
        int i2 = this.z;
        this.C = (float) (i2 - this.y);
        float f2 = this.C;
        this.B = new RectF(((float) i2) - f2, ((float) i2) - f2, ((float) i2) + f2, ((float) i2) + f2);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.v) {
            b();
            this.v = true;
        }
        if (!this.w) {
            d();
            this.w = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
        this.v = false;
        this.w = false;
    }

    public void onDraw(Canvas canvas) {
        this.D = (this.D + 6.0f) % 360.0f;
        a(canvas);
        canvas.save();
        canvas.rotate(-90.0f, (float) this.z, (float) this.A);
        if (this.B == null) {
            g();
        }
        RectF rectF = this.B;
        float f2 = this.D;
        canvas.drawArc(rectF, f2 - 30.0f, (2.0f - Math.abs((180.0f - f2) / 180.0f)) * 60.0f, false, this.m);
        canvas.restore();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.B == null) {
            g();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(this.e, this.f);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        g();
    }

    /* access modifiers changed from: protected */
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (view instanceof ColorLoadingView) {
            if (i2 == 0) {
                if (!this.v) {
                    b();
                    this.v = true;
                }
                if (!this.w) {
                    d();
                    this.w = true;
                    return;
                }
                return;
            }
            e();
            this.w = false;
        }
    }
}
