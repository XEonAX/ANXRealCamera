package com.oppo.camera.ui.beauty3d;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class OppoCircleProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f2544a = null;

    /* renamed from: b  reason: collision with root package name */
    private Paint f2545b = null;
    private RectF c = null;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int[] g = new int[2];
    private int h = 0;
    private int i = 0;
    private int j = 0;
    private LinearGradient k = null;
    private Point l = null;

    public OppoCircleProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.shapeCircleProgress);
        this.e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        d.a("OppoCircleProgressView", "OppoCircleProgressView, mDiameter: " + this.e + ", mRingWidth: " + this.f);
        this.g[0] = obtainStyledAttributes.getColor(3, 0);
        this.g[1] = obtainStyledAttributes.getColor(1, 0);
        this.h = context.getColor(R.color.beauty3d_progress_background);
        obtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        this.f2544a = new Paint();
        this.f2545b = new Paint();
        this.c = new RectF();
        this.f2544a.setAntiAlias(true);
        this.f2544a.setStrokeWidth((float) this.f);
        this.f2544a.setStyle(Paint.Style.STROKE);
        this.f2544a.setStrokeCap(Paint.Cap.ROUND);
        this.f2544a.setColor(0);
        this.f2545b.setAntiAlias(true);
        this.f2545b.setStrokeWidth((float) this.f);
        this.f2545b.setStyle(Paint.Style.STROKE);
        this.f2545b.setStrokeCap(Paint.Cap.ROUND);
        this.f2545b.setColor(this.h);
        this.f2544a.setColor(getResources().getColor(R.color.beauty3d_progress_start));
    }

    public void a(int i2) {
        if (i2 >= 100) {
            i2 = 100;
        }
        d.a("OppoCircleProgressView", "progressInvalidate, progressValue: " + i2);
        this.d = i2;
        postInvalidate();
    }

    public Point getCenterPoint() {
        if (this.l == null) {
            this.l = new Point(this.i, this.j);
        }
        return this.l;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2 = this.e;
        int i3 = this.f;
        int i4 = (i2 / 2) + i3;
        int i5 = (i2 / 2) + i3;
        canvas.rotate(-90.0f, (float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
        RectF rectF = this.c;
        int i6 = this.i;
        int i7 = this.j;
        rectF.set((float) (i6 - i4), (float) (i7 - i5), (float) (i6 + i4), (float) (i7 + i5));
        canvas.drawArc(this.c, 0.0f, 360.0f, false, this.f2545b);
        this.f2544a.setShader(this.k);
        canvas.drawArc(this.c, 0.0f, (((float) this.d) / 100.0f) * 360.0f, false, this.f2544a);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.i = (i4 - i2) / 2;
        this.j = (i5 - i3) / 2;
        d.a("OppoCircleProgressView", "onLayout, mCenterX: " + this.i + ", mCenterY: " + this.j);
        int i6 = (this.e / 2) + this.f;
        int i7 = this.i;
        int i8 = this.j;
        float f2 = (float) (i8 + i6);
        LinearGradient linearGradient = new LinearGradient((float) (i7 + i6), (float) i8, (float) i7, f2, this.g, (float[]) null, Shader.TileMode.CLAMP);
        this.k = linearGradient;
        super.onLayout(z, i2, i3, i4, i5);
    }
}
