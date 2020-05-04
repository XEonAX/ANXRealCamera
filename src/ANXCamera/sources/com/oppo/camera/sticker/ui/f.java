package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.RelativeLayout;
import com.oppo.camera.R;

/* compiled from: StickerCategoryContainer */
public class f extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2466a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f2467b;
    private int c;
    private int d;

    public f(Context context) {
        super(context);
        this.f2466a = false;
        this.f2467b = null;
        this.c = 0;
        this.d = 0;
        this.f2467b = new Paint();
        this.f2467b.setStrokeWidth(1.0f);
        this.f2467b.setColor(getContext().getColor(R.color.camera_white));
        this.f2467b.setAlpha(51);
        this.f2467b.setAntiAlias(true);
        this.c = context.getResources().getDimensionPixelSize(R.dimen.sticker_music_divider_margin_right);
        this.d = context.getResources().getDimensionPixelSize(R.dimen.sticker_music_divider_margin_top);
    }

    public void a(boolean z) {
        this.f2466a = z;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.drawLine(0.0f, (float) getHeight(), (float) getWidth(), (float) getHeight(), this.f2467b);
        if (this.f2466a) {
            canvas.drawLine((float) (getWidth() - this.c), (float) this.d, (float) (getWidth() - this.c), (float) (getHeight() - this.d), this.f2467b);
        }
        canvas.restore();
    }
}
