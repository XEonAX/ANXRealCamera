package com.color.support.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import color.support.v7.appcompat.R;
import com.color.support.d.d;
import java.util.ArrayList;

public class ColorCircleProgressBar extends View {
    private float A;

    /* renamed from: a  reason: collision with root package name */
    private int f1550a;

    /* renamed from: b  reason: collision with root package name */
    private int f1551b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private float o;
    private float p;
    private float q;
    private Context r;
    private a s;
    private AccessibilityManager t;
    private Paint u;
    private ArrayList<b> v;
    private Paint w;
    private int x;
    private int y;
    private RectF z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int mProgress;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = ((Integer) parcel.readValue((ClassLoader) null)).intValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "ColorCircleProgressBar.SavedState { " + Integer.toHexString(System.identityHashCode(this)) + " mProgress = " + this.mProgress + " }";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.mProgress));
        }
    }

    private class a implements Runnable {
        private a() {
        }

        public void run() {
            ColorCircleProgressBar.this.sendAccessibilityEvent(4);
        }
    }

    private class b {
        public b() {
        }
    }

    public ColorCircleProgressBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorCircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorCircleProgressBarStyle);
    }

    public ColorCircleProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 100;
        this.i = 0;
        this.j = 0;
        this.k = -1;
        this.o = 1.0f;
        this.v = new ArrayList<>();
        d.a(this, false);
        this.r = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.colorCircleProgressBar, i2, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.color_loading_view_default_length);
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.colorCircleProgressBar_colorCircleProgressBarWidth, dimensionPixelSize);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.colorCircleProgressBar_colorCircleProgressBarHeight, dimensionPixelSize);
        this.e = obtainStyledAttributes.getInteger(R.styleable.colorCircleProgressBar_colorCircleProgressBarType, 0);
        int color2 = context.getResources().getColor(R.color.color_loading_view_default_color);
        this.f1551b = obtainStyledAttributes.getColor(R.styleable.colorCircleProgressBar_colorCircleProgressBarBgCircleColor, context.getResources().getColor(R.color.color_loading_view_backgroud_circle__default_color));
        this.f1550a = obtainStyledAttributes.getColor(R.styleable.colorCircleProgressBar_colorCircleProgressBarColor, color2);
        this.i = obtainStyledAttributes.getInteger(R.styleable.colorCircleProgressBar_colorCircleProgress, this.i);
        this.h = obtainStyledAttributes.getInteger(R.styleable.colorCircleProgressBar_colorCircleMax, this.h);
        obtainStyledAttributes.recycle();
        this.l = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_strokewidth);
        this.m = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_medium_strokewidth);
        this.n = context.getResources().getDimensionPixelSize(R.dimen.color_circle_loading_large_strokewidth);
        this.f = this.l;
        int i3 = this.e;
        if (1 == i3) {
            this.f = this.m;
        } else if (2 == i3) {
            this.f = this.n;
        }
        this.g = this.f >> 1;
        this.p = (float) (this.c >> 1);
        this.q = (float) (this.d >> 1);
        b();
    }

    private void a(Canvas canvas) {
        this.w.setStrokeWidth((float) this.f);
        int i2 = this.y;
        canvas.drawCircle((float) i2, (float) i2, this.A, this.w);
    }

    private void b() {
        if (Build.VERSION.SDK_INT > 16 && getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        for (int i2 = 0; i2 < 360; i2++) {
            this.v.add(new b());
        }
        d();
        c();
        setProgress(this.i);
        setMax(this.h);
        this.t = (AccessibilityManager) this.r.getSystemService("accessibility");
    }

    private void c() {
        this.u = new Paint(1);
        this.u.setStyle(Paint.Style.FILL_AND_STROKE);
        this.u.setColor(this.f1550a);
        this.u.setStyle(Paint.Style.STROKE);
        this.u.setStrokeWidth((float) this.f);
        this.u.setStrokeCap(Paint.Cap.ROUND);
    }

    private void d() {
        this.w = new Paint(1);
        this.w.setColor(this.f1551b);
        this.w.setStyle(Paint.Style.STROKE);
    }

    private void e() {
        int i2 = this.h;
        if (i2 > 0) {
            this.j = (int) (((float) this.i) / (((float) i2) / 360.0f));
            if (360 - this.j < 2) {
                this.j = 360;
            }
            this.k = this.j;
        } else {
            this.j = 0;
            this.k = 0;
        }
        invalidate();
    }

    private void f() {
        a aVar = this.s;
        if (aVar == null) {
            this.s = new a();
        } else {
            removeCallbacks(aVar);
        }
        postDelayed(this.s, 10);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        AccessibilityManager accessibilityManager = this.t;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && this.t.isTouchExplorationEnabled()) {
            f();
        }
    }

    public int getMax() {
        return this.h;
    }

    public int getProgress() {
        return this.i;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        a aVar = this.s;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        super.onDetachedFromWindow();
    }

    public void onDraw(Canvas canvas) {
        a(canvas);
        canvas.save();
        int i2 = this.y;
        canvas.rotate(-90.0f, (float) i2, (float) i2);
        canvas.drawArc(this.z, 0.0f, (float) this.j, false, this.u);
        canvas.restore();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(this.c, this.d);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(savedState.mProgress);
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mProgress = this.i;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.x = this.f / 2;
        this.y = getWidth() / 2;
        int i6 = this.y;
        this.A = (float) (i6 - this.x);
        float f2 = this.A;
        this.z = new RectF(((float) i6) - f2, ((float) i6) - f2, ((float) i6) + f2, ((float) i6) + f2);
    }

    public void setMax(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 != this.h) {
            this.h = i2;
            if (this.i > i2) {
                this.i = i2;
            }
        }
        e();
    }

    public void setProgress(int i2) {
        Log.i("ColorCircleProgressBar", "setProgress: " + i2);
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.h;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 != this.i) {
            this.i = i2;
        }
        e();
        a();
    }
}
