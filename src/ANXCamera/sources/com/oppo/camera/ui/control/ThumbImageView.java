package com.oppo.camera.ui.control;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.a.a.e;
import com.a.a.f;
import com.a.a.g;
import com.a.a.h;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.ui.j;

public class ThumbImageView extends j {

    /* renamed from: a  reason: collision with root package name */
    public static int f2611a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2612b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    /* access modifiers changed from: private */
    public int h;
    private long i;
    private long j;
    /* access modifiers changed from: private */
    public float k;
    private boolean l;
    private boolean m;
    private boolean n;
    private Bitmap o;
    private Bitmap p;
    private Bitmap q;
    private Rect r;
    private Rect s;
    private Rect t;
    private Rect u;
    private Drawable v;
    /* access modifiers changed from: private */
    public Drawable w;
    private f x;
    private a y;

    private class a extends e {
        private a() {
        }

        public void a(f fVar) {
            int unused = ThumbImageView.this.h = 2;
            float unused2 = ThumbImageView.this.k = (float) fVar.c();
            if (Float.compare(ThumbImageView.this.k, 0.5f) > 0) {
                float unused3 = ThumbImageView.this.k = 0.5f;
                fVar.h();
            }
            ThumbImageView.this.invalidate();
        }

        public void b(f fVar) {
            d.a("ThumbImageView", "ThumbReboundListener, onSpringAtRest, endNewThumbAnimation");
            int unused = ThumbImageView.this.h = 0;
            if (ThumbImageView.this.w != null) {
                ThumbImageView thumbImageView = ThumbImageView.this;
                thumbImageView.setImageDrawable(thumbImageView.w);
            }
        }
    }

    public ThumbImageView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ThumbImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.k = 0.5f;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.f2612b = context.getResources().getDimensionPixelSize(R.dimen.thumbnail_round_corner_radius);
        this.v = context.getResources().getDrawable(R.drawable.thumbnail_bg_normal);
        f2611a = context.getResources().getDimensionPixelSize(R.dimen.thumbnail_width_nomal);
    }

    private void b() {
        d.a("ThumbImageView", "startNewThumbAnimation()");
        this.h = 2;
        this.f = 0;
        int paddingLeft = getPaddingLeft();
        int i2 = paddingLeft * 2;
        int width = getWidth() - i2;
        int height = getHeight() - i2;
        if (this.x == null) {
            c();
        }
        this.u = new Rect(0, 0, width, height);
        int i3 = (width / 2) + paddingLeft;
        int i4 = paddingLeft + (height / 2);
        this.t = new Rect(i3, i4, i3, i4);
        setImageDrawable((Drawable) null);
        this.x.a(0.30000001192092896d).b(0.5d);
    }

    private void c() {
        this.x = com.a.a.j.c().b().a(g.b(2.0d, 40.0d));
        this.x.a((h) new a());
    }

    public void a() {
        Bitmap bitmap = this.o;
        if (bitmap != null) {
            bitmap.recycle();
            this.o = null;
        }
        Bitmap bitmap2 = this.p;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.p = null;
        }
    }

    public void a(int i2, boolean z) {
        int i3 = i2 >= 0 ? i2 % 360 : (i2 % 360) + 360;
        if (i3 != this.d) {
            this.d = i3;
            if (this.h == 0) {
                if (z) {
                    this.e = this.c;
                    this.i = AnimationUtils.currentAnimationTimeMillis();
                    int i4 = this.d - this.c;
                    if (i4 < 0) {
                        i4 += 360;
                    }
                    if (i4 > 180) {
                        i4 -= 360;
                    }
                    this.l = i4 >= 0;
                    this.j = this.i + ((long) ((Math.abs(i4) * 1000) / 270));
                } else {
                    this.c = this.d;
                }
                invalidate();
            }
        }
    }

    public void a(Bitmap bitmap, boolean z, boolean z2) {
        d.a("ThumbImageView", "setBitmap, mAnimationState: " + this.h + ", bitmap: " + bitmap + ", isdefault: " + z2 + ", mbDefaultBitmap: " + this.n);
        boolean z3 = this.n;
        this.m = false;
        this.n = z2;
        if (this.h != 0) {
            this.m = true;
            this.q = bitmap;
            return;
        }
        Bitmap bitmap2 = this.o;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.o = null;
        }
        if (bitmap == null) {
            this.o = this.p;
            this.p = bitmap;
            setImageDrawable((Drawable) null);
            return;
        }
        if (z3 && !this.n) {
            setImageDrawable(this.v);
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int paddingLeft = (layoutParams.width - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (layoutParams.height - getPaddingTop()) - getPaddingBottom();
        if (!(bitmap.getWidth() == paddingLeft && bitmap.getHeight() == paddingTop)) {
            bitmap = ThumbnailUtils.extractThumbnail(bitmap, paddingLeft, paddingTop);
        }
        Bitmap a2 = e.a(bitmap, this.f2612b);
        this.o = this.p;
        this.p = a2;
        this.w = new BitmapDrawable(getContext().getResources(), this.p);
        if (!z || getVisibility() != 0) {
            setImageDrawable(this.w);
        } else {
            b();
        }
    }

    /* access modifiers changed from: protected */
    public int getDegree() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - (paddingLeft * 2);
        int height = getHeight() - (paddingTop * 2);
        if (this.n) {
            Drawable drawable = getDrawable();
            if (drawable == null) {
                d.a("ThumbImageView", "ondraw(), drawable is null 1 ,so return ");
                return;
            }
            Rect bounds = drawable.getBounds();
            int i2 = bounds.right - bounds.left;
            int i3 = bounds.bottom - bounds.top;
            if (i2 == 0 || i3 == 0) {
                d.e("ThumbImageView", "ondraw w and h is zero,so return ");
                return;
            }
            if (this.c != this.d) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                if (currentAnimationTimeMillis < this.j) {
                    int i4 = (int) (currentAnimationTimeMillis - this.i);
                    int i5 = this.e;
                    if (!this.l) {
                        i4 = -i4;
                    }
                    int i6 = i5 + ((i4 * 270) / 1000);
                    this.c = i6 >= 0 ? i6 % 360 : (i6 % 360) + 360;
                    invalidate();
                } else {
                    this.c = this.d;
                }
            }
            int saveCount = canvas.getSaveCount();
            if (getScaleType() == ImageView.ScaleType.FIT_CENTER && (width < i2 || height < i3)) {
                float f2 = (float) width;
                float f3 = (float) height;
                float min = Math.min(f2 / ((float) i2), f3 / ((float) i3));
                canvas.scale(min, min, f2 * 0.5f, f3 * 0.5f);
            }
            float f4 = (float) paddingLeft;
            float f5 = ((float) width) * 0.5f;
            float f6 = ((float) height) * 0.5f;
            canvas.translate(f4 + f5, f4 + f6);
            canvas.rotate((float) (-this.c));
            float f7 = (float) (-paddingLeft);
            canvas.translate(f7 - f5, f7 - f6);
            drawable.draw(canvas);
            canvas.restoreToCount(saveCount);
            return;
        }
        int i7 = this.h;
        if (i7 == 0) {
            Drawable drawable2 = getDrawable();
            if (drawable2 != null) {
                Rect bounds2 = drawable2.getBounds();
                int i8 = bounds2.right - bounds2.left;
                int i9 = bounds2.bottom - bounds2.top;
                if (i8 != 0 && i9 != 0) {
                    if (this.c != this.d) {
                        long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                        if (currentAnimationTimeMillis2 < this.j) {
                            int i10 = (int) (currentAnimationTimeMillis2 - this.i);
                            int i11 = this.e;
                            if (!this.l) {
                                i10 = -i10;
                            }
                            int i12 = i11 + ((i10 * 270) / 1000);
                            this.c = i12 >= 0 ? i12 % 360 : (i12 % 360) + 360;
                            invalidate();
                        } else {
                            this.c = this.d;
                        }
                    }
                    int saveCount2 = canvas.getSaveCount();
                    if (getScaleType() == ImageView.ScaleType.FIT_CENTER && (width < i8 || height < i9)) {
                        float f8 = (float) width;
                        float f9 = (float) height;
                        float min2 = Math.min(f8 / ((float) i8), f9 / ((float) i9));
                        canvas.scale(min2, min2, f8 * 0.5f, f9 * 0.5f);
                    }
                    canvas.translate(((float) paddingLeft) + (((float) width) * 0.5f), ((float) paddingTop) + (((float) height) * 0.5f));
                    canvas.rotate((float) (-this.c));
                    canvas.translate(((float) (-width)) * 0.5f, ((float) (-height)) * 0.5f);
                    canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                    drawable2.draw(canvas);
                    canvas.restoreToCount(saveCount2);
                }
            }
        } else if (i7 == 1) {
            float f10 = ((float) width) * 0.5f;
            float f11 = ((float) height) * 0.5f;
            canvas.translate(((float) paddingLeft) + f10, ((float) paddingTop) + f11);
            canvas.rotate((float) (-this.c));
            canvas.translate(((float) (-paddingLeft)) - f10, ((float) (-paddingTop)) - f11);
            Bitmap bitmap = this.o;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, this.s, this.r, (Paint) null);
            }
            if (this.r.left >= paddingLeft + (width / 2)) {
                this.f++;
                if (this.f > 20) {
                    this.h = 0;
                    if (this.m) {
                        a(this.q, true, false);
                        return;
                    }
                    return;
                }
                invalidate();
                return;
            }
            invalidate();
        } else if (i7 == 2) {
            int i13 = this.f;
            if (i13 < 2) {
                this.f = i13 + 1;
                invalidate();
                return;
            }
            float f12 = (float) width;
            float f13 = f12 * 0.5f;
            float f14 = ((float) height) * 0.5f;
            canvas.translate(((float) paddingLeft) + f13, ((float) paddingTop) + f14);
            canvas.rotate((float) (-this.c));
            canvas.translate(((float) (-paddingLeft)) - f13, ((float) (-paddingTop)) - f14);
            this.g = (int) (f12 * this.k);
            Rect rect = this.t;
            int i14 = paddingLeft + (width / 2);
            int i15 = this.g;
            rect.left = i14 - i15;
            int i16 = paddingTop + (height / 2);
            rect.top = i16 - i15;
            rect.right = i14 + i15;
            rect.bottom = i16 + i15;
            Bitmap bitmap2 = this.p;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.u, rect, (Paint) null);
            }
        }
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return false;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 0) {
            invalidate();
        }
    }
}
