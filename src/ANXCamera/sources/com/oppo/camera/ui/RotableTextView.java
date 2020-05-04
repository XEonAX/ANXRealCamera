package com.oppo.camera.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.widget.TextView;

public class RotableTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private int f2536a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2537b = 0;
    private int c = 0;
    private boolean d = false;
    private boolean e = true;
    private long f = 0;
    private long g = 0;

    public RotableTextView(Context context) {
        super(context);
    }

    public RotableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RotableTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RotableTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void a(int i, boolean z) {
        boolean z2 = false;
        if (isShown()) {
            this.e = z;
        } else {
            this.e = false;
        }
        int i2 = i >= 0 ? i % 360 : (i % 360) + 360;
        if (i2 != this.c) {
            this.c = i2;
            if (this.e) {
                this.f2537b = this.f2536a;
                this.f = AnimationUtils.currentAnimationTimeMillis();
                int i3 = this.c - this.f2536a;
                if (i3 < 0) {
                    i3 += 360;
                }
                if (i3 > 180) {
                    i3 -= 360;
                }
                if (i3 >= 0) {
                    z2 = true;
                }
                this.d = z2;
                this.g = this.f + ((long) ((Math.abs(i3) * 1000) / 270));
            } else {
                this.f2536a = this.c;
            }
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2536a != this.c) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.g) {
                int i = (int) (currentAnimationTimeMillis - this.f);
                int i2 = this.f2537b;
                if (!this.d) {
                    i = -i;
                }
                int i3 = i2 + ((i * 270) / 1000);
                this.f2536a = i3 >= 0 ? i3 % 360 : (i3 % 360) + 360;
                invalidate();
            } else {
                this.f2536a = this.c;
            }
        }
        setRotation((float) (-this.f2536a));
    }
}
