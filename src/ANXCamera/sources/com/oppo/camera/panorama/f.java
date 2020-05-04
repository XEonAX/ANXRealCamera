package com.oppo.camera.panorama;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import com.oppo.camera.R;
import com.oppo.camera.d;

/* compiled from: PanoramaProgressBar */
public class f extends View {

    /* renamed from: a  reason: collision with root package name */
    private static int f2313a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static int f2314b = 0;
    private static int c = 0;
    private static int d = 0;
    private static int e = 6;
    private static int f = 120;
    private static int g = 120;
    private static int h = 0;
    private static int i = 36;
    private static int j = 36;
    private static int k;
    private Drawable A = null;
    private Drawable B = null;
    private Drawable C = null;
    private Rect D = new Rect();
    private Rect E = new Rect();
    private Rect F = new Rect();
    private Rect G = new Rect();
    private Resources H = null;
    private Paint I = null;
    private Path J = null;
    private Paint K = null;
    private Bitmap l = null;
    private boolean m = false;
    private boolean n = false;
    private int o = 1;
    private int p = 0;
    private int q = 0;
    private int r = 0;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private int w = 0;
    private int x = 0;
    private int y = 0;
    private int z = 4;

    public f(Context context) {
        super(context);
        this.H = context.getResources();
        this.C = this.H.getDrawable(R.drawable.panrama_progress_bar_bg);
        this.A = this.H.getDrawable(R.drawable.arrow_left);
        this.B = this.H.getDrawable(R.drawable.arrow_right);
        f = this.H.getDimensionPixelSize(R.dimen.panorama_arrow_width);
        g = this.H.getDimensionPixelSize(R.dimen.panorama_arrow_height);
        e = this.H.getDimensionPixelSize(R.dimen.panorama_line_width);
        i = this.H.getDimensionPixelSize(R.dimen.panorama_progressbar_margin_left);
        j = this.H.getDimensionPixelSize(R.dimen.panorama_arrow_margin_left);
        this.z = this.H.getDimensionPixelSize(R.dimen.panorama_rear_camera_aperture_margin_top);
        k = this.H.getColor(R.color.color_white_with_50_percent_transparency);
    }

    private void f() {
        if (!this.m) {
            this.m = true;
            this.w = 0;
            this.x = 0;
            invalidate();
        }
    }

    public float a(float f2) {
        return ((float) (Math.cos(((double) (f2 + 1.0f)) * 3.141592653589793d) * 0.5d)) + 0.5f;
    }

    public void a(int i2, int i3, int i4, int i5) {
        f2313a = i2;
        f2314b = i3;
        c = i4;
        d = i5;
        Rect rect = this.E;
        int i6 = c;
        int i7 = d;
        rect.set(i6, i7, f2313a + i6, f2314b + i7);
        this.I = new Paint();
        this.I.setStyle(Paint.Style.STROKE);
        this.I.setAntiAlias(true);
        this.I.setStrokeWidth((float) e);
        this.I.setColor(k);
        this.J = new Path();
        this.J.moveTo((float) c, (float) (d + (this.E.height() / 2)));
        this.J.lineTo((float) this.E.right, (float) (d + (this.E.height() / 2)));
        this.K = new Paint();
    }

    public void a(Bitmap bitmap, int i2, int i3) {
        this.l = bitmap;
        this.u = i3;
        this.t = Math.abs(i2) + this.v;
        invalidate();
    }

    public boolean a() {
        return this.o == 1;
    }

    /* access modifiers changed from: protected */
    public boolean a(MotionEvent motionEvent) {
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        Rect rect = this.E;
        if (rect == null || !rect.contains(x2, y2) || this.t != this.v) {
            return false;
        }
        f();
        return true;
    }

    public void b() {
        int i2 = this.o;
        if (i2 == 1) {
            this.p = c + i;
            int i3 = this.p;
            this.r = this.t + i3;
            this.q = d;
            this.s = this.q + f2314b;
            int i4 = this.r;
            if (i3 >= i4) {
                this.p = i4;
            }
            Rect rect = this.F;
            int i5 = this.p;
            int i6 = this.q;
            int i7 = this.z;
            rect.set(i5, i6 + i7, this.r, this.s - i7);
            Rect rect2 = this.E;
            int i8 = c;
            rect2.set(i8, this.q, f2313a + i8, this.s);
            this.D.set(c, this.q + ((this.E.height() - e) / 2), this.E.right, this.s - ((this.E.height() - e) / 2));
            if (this.m) {
                this.x++;
                this.w = (int) (((float) h) * a(((float) this.x) / 30.0f));
                if (this.x == 30) {
                    this.w = h;
                }
                if (this.n) {
                    this.G.set(this.r + j, this.q + ((this.E.height() - g) / 2) + this.u, this.r + j + (this.w - (h - f)), (this.s - ((this.E.height() - g) / 2)) + this.u);
                    if (this.G.right - this.G.left >= f) {
                        Rect rect3 = this.G;
                        rect3.right = rect3.left + f;
                        this.w = 0;
                        this.x = 0;
                        return;
                    }
                    return;
                }
                this.G.set(this.r + j + this.w, this.q + ((this.E.height() - g) / 2) + this.u, this.r + j + f + this.w, (this.s - ((this.E.height() - g) / 2)) + this.u);
                int i9 = this.G.right;
                int i10 = c;
                int i11 = f2313a;
                int i12 = i;
                int i13 = j;
                int i14 = this.v;
                if (i9 > (((i10 + i11) - i12) - i13) - i14) {
                    this.G.right = (((i10 + i11) - i12) - i13) - i14;
                }
                if (this.G.left >= this.G.right || this.x == 30) {
                    setContentDescription(getContext().getString(R.string.camera_description_arrow_right_to_left));
                    Rect rect4 = this.G;
                    rect4.left = rect4.right;
                    this.o = 2;
                    this.n = true;
                    return;
                }
                return;
            }
            int i15 = this.r;
            int i16 = j;
            int i17 = f;
            int i18 = i15 + i16 + i17;
            int i19 = c;
            int i20 = f2313a;
            if (i18 >= (i19 + i20) - i16) {
                this.G.set(((i19 + i20) - i17) - i16, this.q + ((this.E.height() - g) / 2) + this.u, (c + f2313a) - j, (this.s - ((this.E.height() - g) / 2)) + this.u);
            } else {
                this.G.set(i15 + i16, this.q + ((this.E.height() - g) / 2) + this.u, this.r + j + f, (this.s - ((this.E.height() - g) / 2)) + this.u);
            }
        } else if (i2 == 2) {
            int i21 = c;
            this.r = (f2313a + i21) - i;
            this.p = this.r - this.t;
            this.q = d;
            this.s = this.q + f2314b;
            if (this.p <= i21) {
                this.p = i21;
            }
            Rect rect5 = this.F;
            int i22 = this.p;
            int i23 = this.q;
            int i24 = this.z;
            rect5.set(i22, i23 + i24, this.r, this.s - i24);
            Rect rect6 = this.E;
            int i25 = c;
            rect6.set(i25, this.q, f2313a + i25, this.s);
            this.D.set(c, this.q + ((this.E.height() - e) / 2), this.E.right, this.s - ((this.E.height() - e) / 2));
            if (this.m) {
                this.x++;
                this.w = (int) (((float) h) * a(((float) this.x) / 30.0f));
                if (this.x == 30) {
                    this.w = h;
                }
                if (this.n) {
                    this.G.set((this.p - j) - (this.w - (h - f)), this.q + ((this.E.height() - g) / 2) + this.u, this.p - j, (this.s - ((this.E.height() - g) / 2)) + this.u);
                    if (this.G.right - this.G.left >= f) {
                        Rect rect7 = this.G;
                        rect7.left = rect7.right - f;
                        this.w = 0;
                        this.x = 0;
                        return;
                    }
                    return;
                }
                this.G.set(((this.p - j) - f) - this.w, this.q + ((this.E.height() - g) / 2) + this.u, (this.p - j) - this.w, (this.s - ((this.E.height() - g) / 2)) + this.u);
                int i26 = this.G.left;
                int i27 = c;
                int i28 = i;
                int i29 = j;
                int i30 = this.v;
                if (i26 < i27 + i28 + i29 + i30) {
                    this.G.left = i27 + i28 + i29 + i30;
                }
                if (this.G.left >= this.G.right || this.x == 30) {
                    setContentDescription(getContext().getString(R.string.camera_description_arrow_left_to_right));
                    Rect rect8 = this.G;
                    rect8.right = rect8.left;
                    this.o = 1;
                    this.n = true;
                    return;
                }
                return;
            }
            int i31 = this.p;
            int i32 = c;
            int i33 = j;
            int i34 = f;
            if (i31 <= i + i32 + i33 + i34) {
                this.G.set(i32 + i33, this.q + ((this.E.height() - g) / 2) + this.u, c + j + f, (this.s - ((this.E.height() - g) / 2)) + this.u);
            } else {
                this.G.set((i31 - i33) - i34, this.q + ((this.E.height() - g) / 2) + this.u, this.p - j, (this.s - ((this.E.height() - g) / 2)) + this.u);
            }
        }
    }

    public void c() {
        Bitmap bitmap = this.l;
        if (bitmap != null) {
            bitmap.recycle();
            this.l = null;
        }
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.F.setEmpty();
        this.m = false;
        this.w = 0;
        this.x = 0;
    }

    public void d() {
        Bitmap bitmap = this.l;
        if (bitmap != null) {
            bitmap.recycle();
            this.l = null;
        }
    }

    public boolean e() {
        return this.m;
    }

    public int getFrameSize() {
        return this.v;
    }

    public void onDraw(Canvas canvas) {
        b();
        setDisplay(canvas);
        if (this.m) {
            invalidate();
        }
    }

    public void setDisplay(Canvas canvas) {
        this.C.setBounds(this.E);
        this.C.draw(canvas);
        canvas.drawPath(this.J, this.I);
        Bitmap bitmap = this.l;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, (float) this.F.left, (float) this.F.top, this.K);
            canvas.save();
            canvas.restore();
        }
        int i2 = this.o;
        if (i2 == 1) {
            this.B.setBounds(this.G);
            this.B.draw(canvas);
        } else if (i2 == 2) {
            this.A.setBounds(this.G);
            this.A.draw(canvas);
        }
        if (this.n && this.w == 0) {
            this.m = false;
            this.n = false;
            d.a("PanoramaProgressBar", "setDisplay, animate end");
        }
        this.K.reset();
        if (this.m) {
            if (this.n) {
                this.y--;
            } else {
                this.y++;
            }
            int i3 = this.y;
            if (i3 >= 10) {
                this.y = 10;
                this.K.setAlpha(0);
            } else if (i3 <= 0) {
                this.y = 0;
                this.K.setAlpha(255);
            } else {
                this.K.setAlpha((int) ((((float) (10 - i3)) / 10.0f) * 255.0f));
            }
        }
    }

    public void setFrameSize(int i2) {
        this.v = i2;
        if (h == 0) {
            h = (f2313a - ((this.v + (i * 2)) * 2)) + f;
        }
    }

    public void setVisibility(int i2) {
        if (i2 == 0) {
            this.l = null;
        }
        super.setVisibility(i2);
    }
}
