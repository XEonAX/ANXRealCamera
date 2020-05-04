package com.oppo.camera.ui.menu;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.oppo.camera.o.d;

public class OppoTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2702a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2703b;
    private boolean c;
    private String d;
    private String e;
    private int f;
    private int g;
    private int h;

    public OppoTextView(Context context) {
        this(context, (AttributeSet) null);
    }

    public OppoTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OppoTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2702a = false;
        this.f2703b = false;
        this.c = false;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        setTypeface(d.t());
    }

    public void a(int i, boolean z) {
        if (this.h != i) {
            this.h = i;
            setRotation((float) (-this.h));
            if (this.f2703b) {
                if (this.h % 180 == 0) {
                    if (this.c) {
                        setText(this.d);
                    }
                    setEms(getText() != null ? getText().length() : 1);
                } else {
                    if (this.c) {
                        setText(this.e);
                    }
                    setEms(1);
                }
                setRotation((float) (-this.h));
                this.f2702a = true;
            }
        }
    }

    public boolean a() {
        return getVisibility() == 0;
    }

    public int getNoRotateHeight() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return ((int) Math.ceil((double) (fontMetrics.descent - fontMetrics.top))) + 2;
    }

    public int getNoRotateWidth() {
        if (getPaint() == null || getText() == null || getText().length() <= 0) {
            return 0;
        }
        return (int) getPaint().measureText(getText().toString());
    }

    public int getViewHeight() {
        if (this.f == 0 || this.g == 0 || this.f2702a) {
            measure(d.N(), d.M());
            this.f2702a = false;
        }
        if (!this.f2703b || this.h % 180 == 0) {
            return this.h % 180 == 0 ? this.g : this.f;
        }
        int i = this.f;
        int i2 = this.g;
        return i > i2 ? i : i2;
    }

    public int getViewWidth() {
        if (this.f == 0 || this.g == 0 || this.f2702a) {
            measure(d.N(), d.M());
            this.f2702a = false;
        }
        if (!this.f2703b || this.h % 180 == 0) {
            return this.c ? getNoRotateWidth() : this.h % 180 == 0 ? this.f : this.g;
        }
        int i = this.f;
        int i2 = this.g;
        return i > i2 ? i : i2;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        try {
            if (this.f2703b) {
                super.onMeasure(d.N(), d.M());
                this.f = getMeasuredWidth();
                this.g = getMeasuredHeight();
                return;
            }
            super.onMeasure(d.N(), d.M());
            this.f = getMeasuredWidth();
            this.g = getMeasuredHeight();
            setMeasuredDimension(this.f, this.g);
        } catch (Exception unused) {
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            super.onWindowFocusChanged(z);
        }
    }

    public void setOriginalText(String str) {
        this.d = str;
        this.c = true;
        this.e = null;
        String str2 = this.d;
        if (str2 != null) {
            this.e = str2.substring(0, 2);
        }
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        this.f2702a = true;
    }

    public void setVerticalDraw(boolean z) {
        this.f2703b = z;
        if (this.f2703b) {
            setIncludeFontPadding(false);
            setLineSpacing(0.0f, 0.9f);
        }
    }
}
