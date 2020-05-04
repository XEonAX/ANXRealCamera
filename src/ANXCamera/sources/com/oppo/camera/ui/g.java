package com.oppo.camera.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.o.d;
import com.oppo.camera.ui.menu.setting.l;

/* compiled from: OppoSeekLineBar */
public abstract class g extends l {

    /* renamed from: a  reason: collision with root package name */
    protected int f2689a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected int f2690b = 0;
    protected int c = 0;
    protected float d = 0.05f;
    protected boolean e = false;
    protected BaseInterpolator f = null;
    protected BaseInterpolator g = null;
    protected float h = 0.0f;
    protected float i = 0.0f;
    protected float j = 0.0f;
    protected long k = 1400;
    protected Context l = null;
    protected a m = null;
    protected Handler n = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                g.this.K_();
            }
        }
    };
    private PathInterpolator s = new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);

    /* compiled from: OppoSeekLineBar */
    public interface a {
        void a();

        void a(float f);

        void b();

        void b(float f);

        void c(float f);

        void d(float f);
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.l = context;
        Resources resources = this.l.getResources();
        this.f2689a = d.N();
        if (d.S()) {
            this.f2690b = resources.getDimensionPixelSize(R.dimen.seek_line_bar_height_virtual_key);
        } else {
            this.f2690b = resources.getDimensionPixelSize(R.dimen.seek_line_bar_height);
        }
        this.f = getCollapseInterpolator();
        this.g = getExpandInterpolator();
        setStatus(0);
        if (getLayoutDirection() == 1) {
            setRate(1.0f);
        } else {
            setRate(0.0f);
        }
    }

    /* access modifiers changed from: protected */
    public void K_() {
        int i2 = this.c;
        if (3 != i2 && i2 != 0) {
            if (8 == getVisibility() || 4 == getVisibility()) {
                setStatus(0);
                return;
            }
            this.e = false;
            setStatus(3);
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void L_() {
        if (1 != this.c) {
            a aVar = this.m;
            if (aVar != null) {
                aVar.a();
            }
            this.e = false;
            setStatus(1);
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.h = 0.0f;
        setStatus(0);
        setAlpha(1.0f);
    }

    /* access modifiers changed from: protected */
    public void a(float f2) {
        setRate(f2);
        a aVar = this.m;
        if (aVar != null) {
            aVar.b(this.i);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas) {
    }

    public void a(Animation.AnimationListener animationListener) {
        if (this.c != 0) {
            this.n.removeMessages(1);
            this.e = true;
            setStatus(3);
            invalidate();
            return;
        }
        d.a((View) this, 80, 0, (Interpolator) this.s);
    }

    public void b() {
        if (this.c != 0) {
            this.n.removeMessages(1);
            setAlpha(1.0f);
            setVisibility(0);
            this.e = false;
            setStatus(3);
            invalidate();
            return;
        }
        d.a((View) this, 0.0f, 1.0f, 160, (Animation.AnimationListener) null, (Interpolator) this.s);
    }

    /* access modifiers changed from: protected */
    public void b(Canvas canvas) {
        float f2 = this.h;
        if (f2 < 1.0f) {
            this.m.c(this.g.getInterpolation(f2));
            invalidate();
            this.h += this.d;
            return;
        }
        this.m.c(1.0f);
        f(canvas);
        this.h = 1.0f;
        setStatus(2);
    }

    /* access modifiers changed from: protected */
    public void c(Canvas canvas) {
        this.m.d(this.f.getInterpolation(this.h));
        float f2 = this.h;
        if (f2 > 0.0f) {
            if (this.e) {
                setAlpha(this.f.getInterpolation(f2));
            }
            invalidate();
            this.h -= 0.07f;
            return;
        }
        this.h = 0.0f;
        setAlpha(1.0f);
        setStatus(0);
        if (this.e) {
            setVisibility(8);
        } else {
            a(canvas);
        }
        this.e = false;
        a aVar = this.m;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
    }

    /* access modifiers changed from: protected */
    public void e(Canvas canvas) {
    }

    /* access modifiers changed from: protected */
    public void f(Canvas canvas) {
    }

    public long getCollapseDelay() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public BaseInterpolator getCollapseInterpolator() {
        return new PathInterpolator(0.75f, 0.0f, 0.58f, 1.0f);
    }

    /* access modifiers changed from: protected */
    public BaseInterpolator getExpandInterpolator() {
        return new PathInterpolator(0.5f, 1.18f, 0.3f, 1.0f);
    }

    public int getStatus() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2 = this.c;
        if (i2 == 0) {
            a(canvas);
        } else if (i2 == 1) {
            b(canvas);
        } else if (i2 == 2) {
            f(canvas);
        } else if (i2 == 3) {
            c(canvas);
        } else if (i2 == 4) {
            d(canvas);
        } else if (i2 == 5) {
            e(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(this.f2689a, this.f2690b);
    }

    public void setCollapseDelay(long j2) {
        this.k = j2;
    }

    public void setOnSeekBarChangeListener(a aVar) {
        this.m = aVar;
    }

    public void setRate(float f2) {
        com.oppo.camera.d.a("OppoSeekLineBar", "setRate, rate: " + f2);
        float a2 = d.a(f2, 0.0f, 1.0f);
        this.j = this.i;
        this.i = a2;
    }

    public void setStatus(int i2) {
        com.oppo.camera.d.a("OppoSeekLineBar", "setStatus, status: " + i2);
        this.c = i2;
    }
}
