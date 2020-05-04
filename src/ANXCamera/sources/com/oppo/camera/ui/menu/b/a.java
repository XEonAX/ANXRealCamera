package com.oppo.camera.ui.menu.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import com.oppo.camera.R;
import com.oppo.camera.d;

/* compiled from: HeadlineBackground */
public class a extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f2722a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2723b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private Paint g = null;
    private float h = 1.0f;

    public a(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.c = context.getResources().getDimensionPixelSize(R.dimen.head_line_background_radius);
        this.d = context.getResources().getDimensionPixelSize(R.dimen.head_line_check_line_width);
        this.f = context.getResources().getDimensionPixelSize(R.dimen.head_line_background_padding);
        this.g = new Paint();
        this.g.setAntiAlias(true);
        this.g.setColor(-13541);
        d.a("HeadlineBackground", "initialize, mBackgroundRadius: " + this.c);
    }

    public void a(int i, int i2) {
        d.a("HeadlineBackground", "updateView, width: " + i + ", height: " + i2);
        this.f2722a = i;
        this.f2723b = i2;
        this.e = this.f2722a - this.f;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.drawColor(0);
        if (this.f2722a <= 0 || this.f2723b <= 0 || this.g == null || getWidth() <= 0 || getHeight() <= 0) {
            d.e("HeadlineBackground", "onDraw, mBackgroundWidth: " + this.f2722a + ", mBackgroundHeight: " + this.f2723b + ", mPaint: " + this.g + ", getWidth: " + getWidth() + ", getHeight: " + getHeight());
            return;
        }
        d.a("HeadlineBackground", "onDraw: " + this.h);
        Paint paint = this.g;
        float f2 = this.h;
        paint.setColor(Color.argb((int) (f2 * 255.0f), (int) (255.0f * f2), (int) (203.0f * f2), (int) (f2 * 27.0f)));
        canvas.drawRect((float) (((getWidth() / 2) - (this.f2722a / 2)) + this.f), (float) (((getHeight() / 2) + (this.f2723b / 2)) - (this.d / 2)), (float) (((getWidth() / 2) + (this.f2722a / 2)) - this.f), (float) ((getHeight() / 2) + (this.f2723b / 2) + (this.d / 2)), this.g);
        super.onDraw(canvas);
    }

    public void setAlpha(float f2) {
        d.a("HeadlineBackground", "setAlpha, alpha: " + f2);
        this.h = f2;
        postInvalidate();
    }

    public void setVisibility(int i) {
        d.a("HeadlineBackground", "setVisibility, visibility: " + i);
        if (i != 0) {
            this.h = 0.0f;
        }
        super.setVisibility(i);
    }
}
