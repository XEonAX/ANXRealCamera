package com.oppo.camera.ui.preview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.oppo.camera.o.d;

/* compiled from: GuideLineView */
public class j extends View {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Paint f2976a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2977b = false;
    private Point c = null;
    private Point d = null;
    private Point e = null;
    private Point f = null;
    private Point g = null;
    private Point h = null;
    private Point i = null;
    private Point j = null;
    private a k = null;
    private a l = null;

    /* compiled from: GuideLineView */
    private class a extends Animation {

        /* renamed from: b  reason: collision with root package name */
        private int f2981b = 0;
        private int c = 0;

        public a() {
            setDuration(310);
        }

        public void a(int i, int i2) {
            this.f2981b = i;
            this.c = i2;
            start();
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float f, Transformation transformation) {
            int i = this.f2981b;
            j.this.f2976a.setAlpha(i + ((int) (((float) (this.c - i)) * f)));
            j.this.invalidate();
        }
    }

    public j(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.f2976a = new Paint();
        this.f2976a.setColor(Color.parseColor("#80ffffff"));
        this.f2976a.setStrokeWidth((float) d.a(1.0f));
        this.k = new a();
        this.k.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation animation) {
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
                j.this.setVisibility(0);
            }
        });
        this.l = new a();
        this.l.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                j.this.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
    }

    private void c() {
        if (this.c == null) {
            this.c = new Point(0, 0);
        }
        if (this.d == null) {
            this.d = new Point(0, 0);
        }
        if (this.e == null) {
            this.e = new Point(0, 0);
        }
        if (this.f == null) {
            this.f = new Point(0, 0);
        }
        if (this.g == null) {
            this.g = new Point(0, 0);
        }
        if (this.h == null) {
            this.h = new Point(0, 0);
        }
        if (this.i == null) {
            this.i = new Point(0, 0);
        }
        if (this.j == null) {
            this.j = new Point(0, 0);
        }
    }

    public void a() {
        if (this.f2977b) {
            this.f2977b = false;
            clearAnimation();
            setAnimation(this.l);
            this.l.a(128, 0);
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (!this.f2977b) {
            this.f2977b = true;
            setVisibility(0);
            if (this.k != null) {
                clearAnimation();
                setAnimation(this.k);
                this.k.a(0, 128);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        c();
        if (this.f2977b) {
            int i2 = height / 3;
            int i3 = i2 + 0;
            this.c.set(0, i3);
            int i4 = width + 0;
            this.d.set(i4, i3);
            int i5 = (i2 * 2) + 0;
            this.e.set(0, i5);
            this.f.set(i4, i5);
            int i6 = width / 3;
            int i7 = i6 + 0;
            this.g.set(i7, 0);
            int i8 = height + 0;
            this.h.set(i7, i8);
            int i9 = (i6 * 2) + 0;
            this.i.set(i9, 0);
            this.j.set(i9, i8);
            Canvas canvas2 = canvas;
            canvas2.drawLine((float) this.c.x, (float) this.c.y, (float) this.d.x, (float) this.d.y, this.f2976a);
            canvas2.drawLine((float) this.e.x, (float) this.e.y, (float) this.f.x, (float) this.f.y, this.f2976a);
            canvas2.drawLine((float) this.g.x, (float) this.g.y, (float) this.h.x, (float) this.h.y, this.f2976a);
            canvas2.drawLine((float) this.i.x, (float) this.i.y, (float) this.j.x, (float) this.j.y, this.f2976a);
        }
    }
}
