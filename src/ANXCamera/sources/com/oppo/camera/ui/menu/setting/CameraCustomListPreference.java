package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.color.support.preference.ColorListPreference;
import com.oppo.camera.R;

public class CameraCustomListPreference extends ColorListPreference {
    private CharSequence[] f;

    public CameraCustomListPreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public CameraCustomListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = null;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CameraCustomListPreference, 0, 0);
        this.f = obtainStyledAttributes.getTextArray(0);
        obtainStyledAttributes.recycle();
    }

    public CharSequence[] T() {
        return this.f;
    }
}
