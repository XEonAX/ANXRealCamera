package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.a;

/* compiled from: AppCompatSeekBarHelper */
class u extends q {

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f406a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f407b;
    private ColorStateList c = null;
    private PorterDuff.Mode d = null;
    private boolean e = false;
    private boolean f = false;

    u(SeekBar seekBar) {
        super(seekBar);
        this.f406a = seekBar;
    }

    private void d() {
        if (this.f407b == null) {
            return;
        }
        if (this.e || this.f) {
            this.f407b = a.f(this.f407b.mutate());
            if (this.e) {
                a.a(this.f407b, this.c);
            }
            if (this.f) {
                a.a(this.f407b, this.d);
            }
            if (this.f407b.isStateful()) {
                this.f407b.setState(this.f406a.getDrawableState());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        if (this.f407b != null) {
            int max = this.f406a.getMax();
            int i = 1;
            if (max > 1) {
                int intrinsicWidth = this.f407b.getIntrinsicWidth();
                int intrinsicHeight = this.f407b.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i = intrinsicHeight / 2;
                }
                this.f407b.setBounds(-i2, -i, i2, i);
                float width = ((float) ((this.f406a.getWidth() - this.f406a.getPaddingLeft()) - this.f406a.getPaddingRight())) / ((float) max);
                int save = canvas.save();
                canvas.translate((float) this.f406a.getPaddingLeft(), (float) (this.f406a.getHeight() / 2));
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f407b.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        Drawable drawable2 = this.f407b;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.f407b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f406a);
            a.b(drawable, androidx.core.g.u.f(this.f406a));
            if (drawable.isStateful()) {
                drawable.setState(this.f406a.getDrawableState());
            }
            d();
        }
        this.f406a.invalidate();
    }

    /* access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        au a2 = au.a(this.f406a.getContext(), attributeSet, R.styleable.AppCompatSeekBar, i, 0);
        Drawable b2 = a2.b(R.styleable.AppCompatSeekBar_android_thumb);
        if (b2 != null) {
            this.f406a.setThumb(b2);
        }
        a(a2.a(R.styleable.AppCompatSeekBar_tickMark));
        if (a2.g(R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.d = ac.a(a2.a(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.d);
            this.f = true;
        }
        if (a2.g(R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.c = a2.e(R.styleable.AppCompatSeekBar_tickMarkTint);
            this.e = true;
        }
        a2.b();
        d();
    }

    /* access modifiers changed from: package-private */
    public void b() {
        Drawable drawable = this.f407b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        Drawable drawable = this.f407b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f406a.getDrawableState())) {
            this.f406a.invalidateDrawable(drawable);
        }
    }
}
