package com.color.support.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import color.support.v7.appcompat.R;

class ColorMaxLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f1602a;

    /* renamed from: b  reason: collision with root package name */
    private int f1603b;

    public ColorMaxLinearLayout(Context context) {
        super(context);
    }

    public ColorMaxLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorMaxLinearLayout);
        this.f1602a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorMaxLinearLayout_portraitMaxHeight, 0);
        this.f1603b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorMaxLinearLayout_landscapeMaxHeight, 0);
        obtainStyledAttributes.recycle();
    }

    private int a() {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        return displayMetrics.widthPixels < displayMetrics.heightPixels ? this.f1602a : this.f1603b;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int a2 = a();
        if (measuredHeight > a2) {
            super.onMeasure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(a2, 1073741824));
        }
    }
}
