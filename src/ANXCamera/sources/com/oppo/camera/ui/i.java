package com.oppo.camera.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.oppo.camera.R;

/* compiled from: RotableViewWithText */
public class i extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f2694a;

    /* renamed from: b  reason: collision with root package name */
    private int f2695b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private long g;
    private long h;
    private Bitmap i;
    private String j;
    private Paint k;

    public i(Context context) {
        this(context, (AttributeSet) null);
    }

    public i(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public i(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2694a = 0;
        this.f2695b = 0;
        this.c = 0;
        this.d = 0;
        this.e = false;
        this.f = true;
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.k = null;
        this.k = new Paint();
        this.k.setTextSize(getContext().getResources().getDimension(R.dimen.rotableview_text_size));
        this.k.setColor(getContext().getColor(R.color.camera_white));
        this.k.setTextAlign(Paint.Align.CENTER);
        this.k.setFlags(1);
    }

    public void a(int i2, boolean z) {
        boolean z2 = false;
        if (isShown()) {
            this.f = z;
        } else {
            this.f = false;
        }
        int i3 = i2 >= 0 ? i2 % 360 : (i2 % 360) + 360;
        if (i3 != this.c) {
            this.c = i3;
            if (this.f) {
                this.f2695b = this.f2694a;
                this.g = AnimationUtils.currentAnimationTimeMillis();
                int i4 = this.c - this.f2694a;
                if (i4 < 0) {
                    i4 += 360;
                }
                if (i4 > 180) {
                    i4 -= 360;
                }
                if (i4 >= 0) {
                    z2 = true;
                }
                this.e = z2;
                this.h = this.g + ((long) ((Math.abs(i4) * 1000) / 270));
            } else {
                this.f2694a = this.c;
            }
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.f2694a != this.c) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.h) {
                int i2 = (int) (currentAnimationTimeMillis - this.g);
                int i3 = this.f2695b;
                if (!this.e) {
                    i2 = -i2;
                }
                int i4 = i3 + ((i2 * 270) / 1000);
                this.f2694a = i4 >= 0 ? i4 % 360 : (i4 % 360) + 360;
                invalidate();
            } else {
                this.f2694a = this.c;
            }
        }
        canvas.rotate((float) (-this.f2694a), (float) (getWidth() / 2), (float) (getHeight() / 2));
        boolean isEmpty = TextUtils.isEmpty(this.j);
        int i5 = (int) (this.k.getFontMetrics().bottom - this.k.getFontMetrics().top);
        int i6 = this.d;
        if (!isEmpty) {
            canvas.drawText(this.j, ((float) getWidth()) / 2.0f, (float) (((getHeight() - (this.i.getHeight() + i6)) / 2) + this.i.getHeight() + i6 + (i5 / 2)), this.k);
        }
        if (this.i != null) {
            canvas.drawBitmap(this.i, (float) ((getWidth() - this.i.getWidth()) / 2), (float) (isEmpty ? (getHeight() - this.i.getHeight()) / 2 : (getHeight() - ((this.i.getHeight() + i5) + i6)) / 2), (Paint) null);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setImage(Bitmap bitmap) {
        this.i = bitmap;
    }

    public void setText(String str) {
        this.j = str;
    }

    public void setViewGap(int i2) {
        this.d = i2;
    }
}
