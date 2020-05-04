package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.MultiSelectListPreference;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.d.d;
import java.util.HashSet;
import java.util.Set;

public class ColorMultiSelectListPreference extends MultiSelectListPreference {

    /* renamed from: a  reason: collision with root package name */
    Context f1512a;

    /* renamed from: b  reason: collision with root package name */
    CharSequence f1513b;
    CharSequence c;
    CharSequence d;
    Drawable e;
    private Set<String> f = new HashSet();
    private CharSequence g;

    public ColorMultiSelectListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1512a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorJumpPreference, 0, 0);
        this.e = obtainStyledAttributes.getDrawable(R.styleable.ColorJumpPreference_color_jump_mark);
        this.f1513b = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status1);
        this.c = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status2);
        this.d = obtainStyledAttributes.getText(R.styleable.ColorJumpPreference_color_jump_status3);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, 0, 0);
        this.g = obtainStyledAttributes2.getText(R.styleable.ColorPreference_colorAssignment);
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
            CharSequence charSequence = this.f1513b;
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
            CharSequence o = o();
            if (!TextUtils.isEmpty(o)) {
                textView4.setText(o);
                textView4.setVisibility(0);
                return;
            }
            textView4.setVisibility(8);
        }
    }

    public CharSequence o() {
        return this.g;
    }
}
