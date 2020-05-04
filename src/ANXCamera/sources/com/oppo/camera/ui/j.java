package com.oppo.camera.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: TwoStateImageView */
public class j extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private final float f2696a = 0.4f;

    public j(Context context) {
        super(context);
    }

    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public j(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(boolean z, boolean z2) {
        super.setEnabled(z);
        if (z) {
            setAlpha(1.0f);
        } else if (z2) {
            setAlpha(0.4f);
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.4f);
        }
    }
}
