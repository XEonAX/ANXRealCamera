package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.widget.ColorRoundImageView;

public class ColorPreference extends Preference {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1514a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1515b;
    private int c;
    private boolean d;
    private float e;
    private int f;
    private int g;
    private CharSequence h;

    public ColorPreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1514a = true;
        a(context, attributeSet, 0, 0);
    }

    public ColorPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1514a = true;
        a(context, attributeSet, i, 0);
    }

    public ColorPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f1514a = true;
        a(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i, i2);
        this.f1514a = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.f1514a);
        this.f1515b = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_hasBorder, false);
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorPreference_preference_icon_radius, 14);
        this.d = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorEnalbeClickSpan, false);
        obtainStyledAttributes.recycle();
        this.e = context.getResources().getDisplayMetrics().density;
        float f2 = this.e;
        this.f = (int) ((14.0f * f2) / 3.0f);
        this.g = (int) ((f2 * 36.0f) / 3.0f);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i, i2);
        this.h = obtainStyledAttributes.getText(R.styleable.ColorPreference_colorAssignment);
        obtainStyledAttributes.recycle();
    }

    public void a(l lVar) {
        super.a(lVar);
        View a2 = lVar.a(16908294);
        if (a2 != null && (a2 instanceof ColorRoundImageView)) {
            if (a2.getHeight() != 0) {
                Drawable drawable = ((ColorRoundImageView) a2).getDrawable();
                if (drawable != null) {
                    this.c = drawable.getIntrinsicHeight() / 6;
                    int i = this.c;
                    int i2 = this.f;
                    if (i < i2) {
                        this.c = i2;
                    } else {
                        int i3 = this.g;
                        if (i > i3) {
                            this.c = i3;
                        }
                    }
                }
            }
            ColorRoundImageView colorRoundImageView = (ColorRoundImageView) a2;
            colorRoundImageView.setHasBorder(this.f1515b);
            colorRoundImageView.setBorderRectRadius(this.c);
        }
        if (this.d) {
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
        TextView textView2 = (TextView) lVar.a(R.id.assignment);
        if (textView2 != null) {
            CharSequence d2 = d();
            if (!TextUtils.isEmpty(d2)) {
                textView2.setText(d2);
                textView2.setVisibility(0);
                return;
            }
            textView2.setVisibility(8);
        }
    }

    public CharSequence d() {
        return this.h;
    }

    public void d(CharSequence charSequence) {
        if (!TextUtils.equals(this.h, charSequence)) {
            this.h = charSequence;
            i();
        }
    }
}
