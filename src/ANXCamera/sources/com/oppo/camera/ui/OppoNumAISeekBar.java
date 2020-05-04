package com.oppo.camera.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.oppo.camera.R;

public class OppoNumAISeekBar extends OppoNumSeekBar {
    private int r;
    private int s;
    private int t;
    private Bitmap u;
    private Bitmap v;
    private Bitmap w;

    public OppoNumAISeekBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public OppoNumAISeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OppoNumAISeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = null;
        this.v = null;
        this.w = null;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OppoNumSeekBar, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(18, R.drawable.face_beauty_ai);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, R.drawable.face_beauty_ai_cursor);
        int resourceId3 = obtainStyledAttributes.getResourceId(18, R.drawable.face_beauty_ai_none);
        this.j = obtainStyledAttributes.getColor(33, context.getColor(R.color.face_beauty_seekbar_track_color));
        this.i = obtainStyledAttributes.getColor(11, context.getColor(R.color.camera_white));
        this.r = obtainStyledAttributes.getDimensionPixelSize(2, getResources().getDimensionPixelSize(R.dimen.face_beauty_seekbar_cursor_height));
        this.s = obtainStyledAttributes.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.face_beauty_seekbar_cursor_margin));
        this.t = obtainStyledAttributes.getDimensionPixelSize(4, getResources().getDimensionPixelSize(R.dimen.face_beauty_seekbar_cursor_rect_height));
        this.d = obtainStyledAttributes.getDimensionPixelSize(27, getResources().getDimensionPixelSize(R.dimen.num_seekbar_ai_thumb_shadow_radius));
        this.c = obtainStyledAttributes.getDimensionPixelSize(24, getResources().getDimensionPixelSize(R.dimen.num_seekbar_ai_thumb_radius));
        this.m = obtainStyledAttributes.getDimensionPixelSize(25, getResources().getDimensionPixelSize(R.dimen.num_seekbar_ai_thumb_radius_on_dragging));
        obtainStyledAttributes.recycle();
        this.u = BitmapFactory.decodeResource(getResources(), resourceId);
        this.v = BitmapFactory.decodeResource(getResources(), resourceId3);
        this.w = BitmapFactory.decodeResource(getResources(), resourceId2);
        Bitmap bitmap = this.w;
        if (bitmap != null) {
            this.r = bitmap.getHeight();
        }
        this.f = 22.0f;
    }

    private void a(Canvas canvas) {
        Bitmap bitmap = this.w;
        if (bitmap != null && !bitmap.isRecycled()) {
            canvas.drawBitmap(this.w, this.l - (((float) this.w.getWidth()) / 2.0f), (float) (getPaddingTop() + 5), this.q);
        }
    }

    /* access modifiers changed from: protected */
    public float a(Paint paint, float f, Rect rect) {
        return (float) (getPaddingTop() + (this.t / 2) + (rect.height() / 2) + 8);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float f2) {
        super.a(canvas, f, f2);
        Bitmap bitmap = this.u;
        if (bitmap != null && !bitmap.isRecycled()) {
            if (getProgress() == 0) {
                Bitmap bitmap2 = this.v;
                canvas.drawBitmap(bitmap2, f - (((float) bitmap2.getWidth()) / 2.0f), f2 - (((float) this.v.getHeight()) / 2.0f), this.q);
                return;
            }
            Bitmap bitmap3 = this.u;
            canvas.drawBitmap(bitmap3, f - (((float) bitmap3.getWidth()) / 2.0f), f2 - (((float) this.u.getHeight()) / 2.0f), this.q);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float f2, float f3) {
        if (this.g != this.k) {
            super.a(canvas, f, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public int getYTop() {
        return getPaddingTop() + this.r + this.s + this.d + 1;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.n || this.o) {
            a(canvas);
        }
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(resolveSize(getSuggestedMinimumWidth(), i), getPaddingTop() + getPaddingBottom() + this.r + this.s + this.m + this.d);
    }
}
