package com.oppo.camera.ui.menu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.oppo.camera.R;
import com.oppo.camera.ui.d;

/* compiled from: RotationOptionItemView */
public class h extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2753a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2754b = true;
    private boolean c = false;
    private Context d = null;
    private Bitmap e = null;
    private String f = null;
    private Paint g = null;
    private String h = null;
    private String i = null;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    private int r = 0;
    private long s = 0;
    private long t = 0;
    private d u = null;

    public h(Context context, d dVar, boolean z) {
        super(context);
        this.d = context;
        this.u = dVar;
        this.c = z;
        if (this.c) {
            this.p = this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_layout_height);
            this.o = this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_layout_height);
        } else {
            this.p = this.d.getResources().getDimensionPixelSize(R.dimen.menu_indicator_layout_height);
            this.o = this.d.getResources().getDimensionPixelSize(R.dimen.menu_indicator_layout_width);
        }
        this.i = this.d.getResources().getString(R.string.camera_sub_setting_menu_description_setting_title);
        this.r = this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_text_length);
    }

    private void b() {
        if (this.g == null) {
            this.g = new Paint();
            this.g.setTextSize(this.d.getResources().getDimension(R.dimen.rotableview_text_size));
            this.g.setColor(this.d.getResources().getColor(R.color.oppo_submenu_text_color));
            this.g.setTextAlign(Paint.Align.CENTER);
            this.g.setFlags(1);
        }
    }

    private void c() {
        if (!TextUtils.isEmpty(this.f)) {
            this.g.setTextSize(this.d.getResources().getDimension(R.dimen.rotableview_text_size));
            int measureText = (int) this.g.measureText(this.f);
            if (this.l % 180 != 0 && measureText >= com.oppo.camera.o.d.H()) {
                this.g.setTextSize(this.d.getResources().getDimension(R.dimen.rotableview_text_size_small));
            }
        }
    }

    public void a() {
        this.d = null;
        Bitmap bitmap = this.e;
        if (bitmap != null) {
            bitmap.recycle();
            this.e = null;
        }
        this.g = null;
        this.f = null;
    }

    public void a(int i2, boolean z) {
        boolean z2 = false;
        if (isShown()) {
            this.f2754b = z;
        } else {
            this.f2754b = false;
        }
        int i3 = i2 >= 0 ? i2 % 360 : (i2 % 360) + 360;
        if (i3 != this.l) {
            this.l = i3;
            c();
            if (this.f2754b) {
                this.k = this.j;
                this.s = AnimationUtils.currentAnimationTimeMillis();
                int i4 = this.l - this.j;
                if (i4 < 0) {
                    i4 += 360;
                }
                if (i4 > 180) {
                    i4 -= 360;
                }
                if (i4 >= 0) {
                    z2 = true;
                }
                this.f2753a = z2;
                this.t = this.s + ((long) ((Math.abs(i4) * 1000) / 360));
            } else {
                this.j = this.l;
            }
            invalidate();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        d dVar = this.u;
        if (dVar != null && dVar.d()) {
            int actionMasked = motionEvent.getActionMasked();
            if (!(actionMasked == 3 || actionMasked == 2)) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(3);
                super.dispatchTouchEvent(obtain);
                return false;
            }
        }
        if (motionEvent.getActionMasked() == 3 && isEnabled()) {
            setAlpha(1.0f);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getViewHeight() {
        Bitmap bitmap = this.e;
        int i2 = 0;
        if (bitmap != null) {
            i2 = 0 + bitmap.getHeight();
        }
        if (!TextUtils.isEmpty(this.f)) {
            i2 = (int) (((float) i2) + (this.g.getFontMetrics().bottom - this.g.getFontMetrics().top));
        }
        int i3 = this.p;
        return i2 > i3 ? i2 : i3;
    }

    public int getViewWidth() {
        Bitmap bitmap = this.e;
        int i2 = 0;
        if (bitmap != null) {
            i2 = 0 + bitmap.getWidth();
        }
        if (!TextUtils.isEmpty(this.f)) {
            int measureText = (int) this.g.measureText(this.f);
            if (i2 <= measureText) {
                i2 = measureText;
            }
        }
        if (this.c) {
            int i3 = this.r;
            return i2 > i3 ? i3 : this.o;
        }
        int i4 = this.o;
        return i2 > i4 ? i2 : i4;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        String str = this.h;
        int i4 = 0;
        if (str != null && str.equals(this.i) && Build.VERSION.SDK_INT > 21) {
            Drawable drawable = getDrawable();
            this.e = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.e);
            drawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
            drawable.draw(canvas2);
        }
        if (this.c) {
            this.n = this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_layout_height);
        } else {
            this.n = com.oppo.camera.o.d.D();
        }
        if (this.j != this.l) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.t) {
                int i5 = (int) (currentAnimationTimeMillis - this.s);
                int i6 = this.k;
                if (!this.f2753a) {
                    i5 = -i5;
                }
                int i7 = i6 + ((i5 * 360) / 1000);
                this.j = i7 >= 0 ? i7 % 360 : (i7 % 360) + 360;
                invalidate();
            } else {
                this.j = this.l;
            }
        }
        int dimensionPixelSize = this.d.getResources().getDimensionPixelSize(R.dimen.setting_menu_move_down_y);
        if (com.oppo.camera.o.d.U() && !this.c) {
            i3 = this.d.getResources().getDimensionPixelSize(R.dimen.ear_screen_menu_offset);
            i2 = 0;
        } else if (this.c) {
            i3 = 0;
            i2 = 0;
        } else {
            i2 = dimensionPixelSize;
            i3 = 0;
        }
        canvas.rotate((float) (-this.j), (float) (this.m / 2), (float) ((this.n / 2) + i3 + i2));
        boolean isEmpty = TextUtils.isEmpty(this.f);
        if (this.c) {
            Bitmap bitmap = this.e;
            if (bitmap != null && !isEmpty) {
                int dimensionPixelSize2 = this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_layout_top);
                canvas.drawBitmap(this.e, (float) ((this.m - bitmap.getWidth()) / 2), (float) (dimensionPixelSize2 + i3), (Paint) null);
                int height = dimensionPixelSize2 + this.e.getHeight() + this.d.getResources().getDimensionPixelSize(R.dimen.sub_menu_layout_offset);
                float measureText = this.g.measureText(this.f);
                String str2 = this.f;
                if (((float) this.r) < measureText) {
                    str2 = TextUtils.ellipsize(str2, new TextPaint(this.g), (float) this.r, TextUtils.TruncateAt.END).toString();
                }
                canvas.drawText(str2, (float) ((int) (((float) this.m) / 2.0f)), (float) (height + i3), this.g);
                return;
            }
        }
        Bitmap bitmap2 = this.e;
        if (bitmap2 != null) {
            int width = (this.m - bitmap2.getWidth()) / 2;
            if (isEmpty) {
                i4 = (this.n - this.e.getHeight()) / 2;
            }
            canvas.drawBitmap(this.e, (float) width, (float) (i4 + i3 + i2), (Paint) null);
        }
        if (!isEmpty) {
            canvas.drawText(this.f, ((float) this.m) / 2.0f, ((((float) this.n) / 2.0f) - ((this.g.descent() + this.g.ascent()) / 2.0f)) + ((float) i3), this.g);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        this.m = i4 - i2;
        this.n = i5 - i3;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                setAlpha(0.3f);
            } else if (action == 1 || (action != 2 && action == 3)) {
                setAlpha(1.0f);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setClickable(z);
        setAlpha(z ? 1.0f : 0.5f);
    }

    public void setImageIcon(Bitmap bitmap) {
        this.e = bitmap;
        invalidate();
    }

    public void setItemText(String str) {
        if (!TextUtils.equals(this.f, str)) {
            this.f = str;
            b();
            c();
        }
    }

    public void setMenuName(String str) {
        this.h = str;
    }

    public void setSelectState(boolean z) {
        if (this.g == null) {
            b();
        }
        this.g.setColor(z ? this.d.getResources().getColor(R.color.menu_item_text_color_selected) : this.d.getResources().getColor(R.color.oppo_submenu_text_color));
        invalidate();
    }

    public void setSizeRatioType(int i2) {
        this.q = i2;
    }
}
