package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.EditTextPreference;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.d.d;

public class ColorEditTextPreference extends EditTextPreference {

    /* renamed from: a  reason: collision with root package name */
    private Context f1495a;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence f1496b;
    private CharSequence c;
    private CharSequence d;
    private Drawable e;
    private boolean f;
    private Drawable g;
    private CharSequence h;

    public ColorEditTextPreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorEditTextPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = true;
        this.f1495a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorJumpPreference, 0, 0);
        this.e = obtainStyledAttributes.getDrawable(R.styleable.ColorJumpPreference_color_jump_mark);
        this.f1496b = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status1);
        this.c = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status2);
        this.d = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status3);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, 0, 0);
        this.f = obtainStyledAttributes2.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.f);
        this.g = obtainStyledAttributes2.getDrawable(R.styleable.ColorPreference_colorDividerDrawable);
        this.h = obtainStyledAttributes2.getText(R.styleable.ColorPreference_colorAssignment);
        obtainStyledAttributes2.recycle();
    }

    public void a(l lVar) {
        super.a(lVar);
        View a2 = lVar.a(R.id.color_preference_widget_jump);
        if (a2 != null) {
            d.a(a2, false);
            Drawable drawable = this.e;
            if (drawable != null) {
                a2.setBackgroundDrawable(drawable);
                a2.setVisibility(0);
            } else {
                a2.setVisibility(8);
            }
        }
        TextView textView = (TextView) lVar.a(R.id.color_statusText1);
        if (textView != null) {
            CharSequence charSequence = this.f1496b;
            if (!TextUtils.isEmpty(charSequence)) {
                textView.setText(charSequence);
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        TextView textView2 = (TextView) lVar.a(R.id.color_statusText2);
        if (textView2 != null) {
            CharSequence charSequence2 = this.c;
            if (!TextUtils.isEmpty(charSequence2)) {
                textView2.setText(charSequence2);
                textView2.setVisibility(0);
            } else {
                textView2.setVisibility(8);
            }
        }
        TextView textView3 = (TextView) lVar.a(R.id.color_statusText3);
        if (textView3 != null) {
            CharSequence charSequence3 = this.d;
            if (!TextUtils.isEmpty(charSequence3)) {
                textView3.setText(charSequence3);
                textView3.setVisibility(0);
            } else {
                textView3.setVisibility(8);
            }
        }
        TextView textView4 = (TextView) lVar.a(R.id.assignment);
        if (textView4 != null) {
            CharSequence m = m();
            if (!TextUtils.isEmpty(m)) {
                textView4.setText(m);
                textView4.setVisibility(0);
                return;
            }
            textView4.setVisibility(8);
        }
    }

    public void c(CharSequence charSequence) {
        if (!TextUtils.equals(this.h, charSequence)) {
            this.h = charSequence;
            i();
        }
    }

    public CharSequence m() {
        return this.h;
    }
}
