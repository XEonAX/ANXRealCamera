package com.oppo.camera.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.oppo.camera.R;
import com.oppo.camera.o.d;

public class RotateMoreItem extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f2540a;

    /* renamed from: b  reason: collision with root package name */
    private int f2541b;
    private int c;
    private boolean d;
    private long e;
    private long f;
    private Bitmap g;
    private String h;
    private TextPaint i;
    private int j;
    private int k;
    private int l;
    private int m;
    private float n;
    private int o;
    private int p;
    private int q;

    public RotateMoreItem(Context context) {
        this(context, (AttributeSet) null);
    }

    public RotateMoreItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RotateMoreItem(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2540a = 0;
        this.f2541b = 0;
        this.c = 0;
        this.d = false;
        this.e = 0;
        this.f = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.n = 0.0f;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RotateMoreItem, i2, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(2, 32);
        this.k = obtainStyledAttributes.getDimensionPixelSize(0, 32);
        this.l = obtainStyledAttributes.getDimensionPixelSize(1, 8);
        this.m = obtainStyledAttributes.getInt(4, 1);
        this.n = obtainStyledAttributes.getDimension(6, 12.0f);
        this.o = obtainStyledAttributes.getColor(3, -1);
        this.p = obtainStyledAttributes.getDimensionPixelSize(5, 70);
        this.q = obtainStyledAttributes.getDimensionPixelSize(7, 14);
        obtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        if (this.i == null) {
            this.i = new TextPaint();
            this.i.setTextSize(this.n);
            this.i.setColor(this.o);
            this.i.setStyle(Paint.Style.FILL);
            this.i.setFlags(1);
            this.i.setTypeface(d.t());
        }
    }

    private Bitmap getRealBitmap() {
        Bitmap bitmap = this.g;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = this.g.getHeight();
        if (width <= 0 || height <= 0) {
            return null;
        }
        float f2 = 1.0f;
        if (width > this.j || height > this.k) {
            f2 = ((float) this.j) / ((float) width);
            float f3 = ((float) this.k) / ((float) height);
            if (f2 >= f3) {
                f2 = f3;
            }
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        return Bitmap.createBitmap(this.g, 0, 0, width, height, matrix, true);
    }

    public void a(int i2, int i3) {
        this.f2540a = i2;
        this.c = i3 >= 0 ? i3 % 360 : (i3 % 360) + 360;
        this.f2541b = this.f2540a;
        this.e = AnimationUtils.currentAnimationTimeMillis();
        int i4 = this.c - this.f2540a;
        if (i4 < 0) {
            i4 += 360;
        }
        if (i4 > 180) {
            i4 -= 360;
        }
        this.d = i4 >= 0;
        this.f = this.e + ((long) ((Math.abs(i4) * 1000) / 270));
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.f2540a != this.c) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.f) {
                int i2 = (int) (currentAnimationTimeMillis - this.e);
                int i3 = this.f2541b;
                if (!this.d) {
                    i2 = -i2;
                }
                int i4 = i3 + ((i2 * 270) / 1000);
                this.f2540a = i4 >= 0 ? i4 % 360 : (i4 % 360) + 360;
                invalidate();
            } else {
                this.f2540a = this.c;
            }
        }
        canvas.rotate((float) (-this.f2540a), ((float) getWidth()) * 0.5f, ((float) getHeight()) * 0.5f);
        Bitmap realBitmap = getRealBitmap();
        if (realBitmap != null) {
            canvas.drawBitmap(realBitmap, ((float) (getWidth() - realBitmap.getWidth())) * 0.5f, ((float) this.q) + (((float) (this.k - realBitmap.getHeight())) * 0.5f), (Paint) null);
        }
        canvas.save();
        if (!TextUtils.isEmpty(this.h)) {
            a();
            String str = this.h;
            StaticLayout build = StaticLayout.Builder.obtain(str, 0, str.length(), this.i, this.p).setMaxLines(this.m).setAlignment(Layout.Alignment.ALIGN_CENTER).setEllipsize(TextUtils.TruncateAt.END).build();
            canvas.translate(((float) (getWidth() - this.p)) * 0.5f, ((float) ((this.q + this.k) + this.l)) - (this.i.getFontMetrics().ascent - this.i.getFontMetrics().top));
            build.draw(canvas);
            canvas.restore();
        }
    }

    public void setImage(Bitmap bitmap) {
        this.g = bitmap;
    }

    public void setText(String str) {
        this.h = str;
    }
}
