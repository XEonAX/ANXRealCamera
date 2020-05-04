package com.color.support.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import color.support.v7.appcompat.R;
import com.color.support.d.e;

public class ColorHintRedDot extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f1567a;

    /* renamed from: b  reason: collision with root package name */
    private int f1568b;
    private e c;
    private RectF d;

    public ColorHintRedDot(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorHintRedDot(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorHintRedDotStyle);
    }

    public ColorHintRedDot(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1567a = 0;
        this.f1568b = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorHintRedDot, i, 0);
        this.f1567a = obtainStyledAttributes.getInteger(R.styleable.ColorHintRedDot_colorHintRedPointMode, 0);
        this.f1568b = obtainStyledAttributes.getInteger(R.styleable.ColorHintRedDot_colorHintRedPointNum, 0);
        obtainStyledAttributes.recycle();
        e eVar = new e(context, attributeSet, R.styleable.ColorHintRedDot, i, 0);
        this.c = eVar;
        this.d = new RectF();
    }

    public int getPointMode() {
        return this.f1567a;
    }

    public int getPointNumber() {
        return this.f1568b;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        RectF rectF = this.d;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.right = (float) getWidth();
        this.d.bottom = (float) getHeight();
        this.c.a(canvas, this.f1567a, this.f1568b, this.d);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(this.c.a(this.f1567a, this.f1568b), this.c.a(this.f1567a));
    }

    public void setPointMode(int i) {
        this.f1567a = i;
        requestLayout();
    }

    public void setPointNumber(int i) {
        this.f1568b = i;
        requestLayout();
    }
}
