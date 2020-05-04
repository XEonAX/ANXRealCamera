package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import android.widget.TextView;
import androidx.preference.CheckBoxPreference;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.widget.ColorRoundImageView;

public class ColorMarkPreference extends CheckBoxPreference {

    /* renamed from: b  reason: collision with root package name */
    int f1509b;
    private boolean c;
    private Drawable d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private float j;

    public ColorMarkPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorMarkPreferenceStyle);
    }

    public ColorMarkPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ColorMarkPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.f1509b = 0;
        this.c = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorMarkPreference, i2, 0);
        this.f1509b = obtainStyledAttributes.getInt(R.styleable.ColorMarkPreference_colorMarkStyle, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i2, 0);
        this.c = obtainStyledAttributes2.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.c);
        this.d = obtainStyledAttributes2.getDrawable(R.styleable.ColorPreference_colorDividerDrawable);
        this.e = obtainStyledAttributes2.getBoolean(R.styleable.ColorPreference_hasBorder, false);
        this.g = obtainStyledAttributes2.getDimensionPixelSize(R.styleable.ColorPreference_preference_icon_radius, 14);
        this.f = obtainStyledAttributes2.getBoolean(R.styleable.ColorPreference_colorEnalbeClickSpan, false);
        obtainStyledAttributes2.recycle();
        e(true);
        this.j = context.getResources().getDisplayMetrics().density;
        float f2 = this.j;
        this.h = (int) ((14.0f * f2) / 3.0f);
        this.i = (int) ((f2 * 36.0f) / 3.0f);
    }

    public void a(l lVar) {
        super.a(lVar);
        View a2 = lVar.a(R.id.color_tail_mark);
        if (a2 != null && (a2 instanceof Checkable)) {
            if (this.f1509b == 0) {
                a2.setVisibility(0);
                ((Checkable) a2).setChecked(b());
            } else {
                a2.setVisibility(8);
            }
        }
        View a3 = lVar.a(R.id.color_head_mark);
        if (a3 != null && (a3 instanceof Checkable)) {
            if (this.f1509b == 1) {
                a3.setVisibility(0);
                ((Checkable) a3).setChecked(b());
            } else {
                a3.setVisibility(8);
            }
        }
        View a4 = lVar.a(16908294);
        if (a4 != null && (a4 instanceof ColorRoundImageView)) {
            if (a4.getHeight() != 0) {
                Drawable drawable = ((ColorRoundImageView) a4).getDrawable();
                if (drawable != null) {
                    this.g = drawable.getIntrinsicHeight() / 6;
                    int i2 = this.g;
                    int i3 = this.h;
                    if (i2 < i3) {
                        this.g = i3;
                    } else {
                        int i4 = this.i;
                        if (i2 > i4) {
                            this.g = i4;
                        }
                    }
                }
            }
            ColorRoundImageView colorRoundImageView = (ColorRoundImageView) a4;
            colorRoundImageView.setHasBorder(this.e);
            colorRoundImageView.setBorderRectRadius(this.g);
        }
        if (this.f) {
            final TextView textView = (TextView) lVar.a(16908304);
            if (textView != null) {
                textView.setHighlightColor(J().getResources().getColor(17170445));
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                textView.setOnTouchListener(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        int actionMasked = motionEvent.getActionMasked();
                        int selectionStart = textView.getSelectionStart();
                        int selectionEnd = textView.getSelectionEnd();
                        int offsetForPosition = textView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                        boolean z = selectionStart == selectionEnd || offsetForPosition <= selectionStart || offsetForPosition >= selectionEnd;
                        if (actionMasked != 0) {
                            if (actionMasked == 1 || actionMasked == 3) {
                                textView.setPressed(false);
                                textView.postInvalidateDelayed(70);
                            }
                        } else if (z) {
                            return false;
                        } else {
                            textView.setPressed(true);
                            textView.invalidate();
                        }
                        return false;
                    }
                });
            }
        }
    }
}
