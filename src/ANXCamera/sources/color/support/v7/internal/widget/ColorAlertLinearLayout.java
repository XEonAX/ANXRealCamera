package color.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import color.support.v7.appcompat.R;

public class ColorAlertLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1361a;

    /* renamed from: b  reason: collision with root package name */
    private int f1362b;
    private int c;
    private int d;
    private int e;
    /* access modifiers changed from: private */
    public int f;
    private Drawable g;
    private Drawable h;
    /* access modifiers changed from: private */
    public int i;
    /* access modifiers changed from: private */
    public int j;
    /* access modifiers changed from: private */
    public int k;
    /* access modifiers changed from: private */
    public int l;
    private boolean m;

    public ColorAlertLinearLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorAlertLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorAlertLinearLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1362b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.color_alert_dialog_bg_radius);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorAlertLinearLayout, i2, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorAlertLinearLayout_alertCornerRadius, dimensionPixelSize);
        this.g = context.getResources().getDrawable(R.drawable.color_bottom_alert_dialog_bg_with_shadow);
        if (obtainStyledAttributes.hasValue(R.styleable.ColorAlertLinearLayout_alertShadowDrawable)) {
            this.g = obtainStyledAttributes.getDrawable(R.styleable.ColorAlertLinearLayout_alertShadowDrawable);
        }
        this.h = context.getDrawable(R.drawable.color_bottom_alert_dialog_bg_landscape);
        if (obtainStyledAttributes.hasValue(R.styleable.ColorAlertLinearLayout_alertBackgroundDrawable)) {
            this.h = obtainStyledAttributes.getDrawable(R.styleable.ColorAlertLinearLayout_alertBackgroundDrawable);
        }
        obtainStyledAttributes.recycle();
    }

    private void a() {
        AnonymousClass1 r0 = new ViewOutlineProvider() {
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(ColorAlertLinearLayout.this.i, ColorAlertLinearLayout.this.j, ColorAlertLinearLayout.this.k, ColorAlertLinearLayout.this.l, (float) ColorAlertLinearLayout.this.f);
            }
        };
        setClipToOutline(true);
        setOutlineProvider(r0);
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        this.h = this.f1361a ? this.h : getContext().getDrawable(R.drawable.color_bottom_alert_dialog_bg_portrait);
        this.h.setBounds(this.i, this.j, this.k, this.l);
        this.h.draw(canvas);
        canvas.restore();
        super.dispatchDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.i = this.f1362b;
        this.j = this.c;
        this.k = i2 - this.d;
        this.l = i3 - this.e;
        if (this.m) {
            a();
        } else {
            setClipToOutline(false);
        }
    }

    public void setHasShadow(boolean z) {
        this.f1361a = z;
        if (z) {
            setBackground(this.g);
            this.f1362b = getPaddingLeft();
            this.d = getPaddingRight();
            this.c = getPaddingTop();
            this.e = getPaddingBottom();
        } else {
            setBackground((Drawable) null);
            this.f1362b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
        }
        requestLayout();
    }

    public void setNeedClip(boolean z) {
        this.m = z;
    }

    public void setType(int i2) {
        setHasShadow(i2 == 0);
    }
}
