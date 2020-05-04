package com.color.support.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.preference.l;
import color.support.v7.appcompat.R;

public class ColorSwitchWithDividerPreference extends ColorSwitchPreference {

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f1536b;
    private LinearLayout c;
    /* access modifiers changed from: private */
    public a d;

    public interface a {
        void a();
    }

    public ColorSwitchWithDividerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorSwitchWithDividerPreferenceStyle);
    }

    public ColorSwitchWithDividerPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ColorSwitchWithDividerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
    }

    public void a(l lVar) {
        super.a(lVar);
        this.f1536b = (LinearLayout) lVar.f916a.findViewById(R.id.main_layout);
        LinearLayout linearLayout = this.f1536b;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (ColorSwitchWithDividerPreference.this.d != null) {
                        ColorSwitchWithDividerPreference.this.d.a();
                    }
                }
            });
        }
        this.c = (LinearLayout) lVar.f916a.findViewById(R.id.switch_layout);
        LinearLayout linearLayout2 = this.c;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    ColorSwitchWithDividerPreference.super.g();
                }
            });
        }
    }
}
