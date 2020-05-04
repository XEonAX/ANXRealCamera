package com.color.support.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import androidx.core.g.b.b;

@TargetApi(12)
public class ColorRotateView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f1620a;

    /* renamed from: b  reason: collision with root package name */
    private long f1621b;
    private boolean c;

    public ColorRotateView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorRotateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorRotateView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.f1620a = b.a(0.133f, 0.0f, 0.3f, 1.0f);
        this.f1621b = 400;
        this.c = false;
        animate().setDuration(this.f1621b).setInterpolator(this.f1620a);
    }

    public void setExpanded(boolean z) {
        if (this.c != z) {
            this.c = z;
            setRotation(z ? 180.0f : 0.0f);
        }
    }
}
