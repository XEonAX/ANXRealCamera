package com.color.support.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.CompoundButton;
import android.widget.Switch;
import androidx.core.g.b.b;
import color.support.v7.appcompat.R;
import com.color.support.d.d;
import com.color.support.d.i;
import com.oppo.util.ColorOSHapticFeedbackUtils;

public class ColorSwitch extends CompoundButton {
    private float A;
    private float B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private Paint I;
    private Paint J;
    private Paint K;
    private Drawable L;
    private Drawable M;
    private Drawable N;
    private Drawable O;
    private Drawable P;
    private Drawable Q;
    private AnimatorSet R;
    private AnimatorSet S;
    private AnimatorSet T;
    private AnimatorSet U;
    private i V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    private int f1638a;
    private int aa;
    private boolean ab;
    private boolean ac;
    private a ad;

    /* renamed from: b  reason: collision with root package name */
    private int f1639b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private RectF r;
    private RectF s;
    private int t;
    private int u;
    private float v;
    private float w;
    private float x;
    private int y;
    private float z;

    public interface a {
        void a();
    }

    public ColorSwitch(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorSwitch(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.r = new RectF();
        this.s = new RectF();
        this.v = 1.0f;
        this.w = 1.0f;
        this.C = false;
        this.D = false;
        this.R = new AnimatorSet();
        this.ac = false;
        setSoundEffectsEnabled(false);
        d.a(this, false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorSwitch, i2, R.style.ColorSwitchStyle);
        this.f1638a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSwitch_barWidth, 0);
        this.f1639b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSwitch_barHeight, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSwitch_outerCircleStrokeWidth, 0);
        this.d = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_barUncheckedColor, 0);
        this.c = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_barCheckedColor, 0);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ColorSwitch_outerCircleWidth, 0);
        this.g = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_outerCircleColor, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSwitch_innerCircleWidth, 0);
        this.i = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_innerCircleColor, 0);
        this.p = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSwitch_circlePadding, 0);
        this.L = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_loadingDrawable);
        this.j = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_barUncheckedDisabledColor, 0);
        this.k = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_barCheckedDisabledColor, 0);
        this.l = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_innerCircleUncheckedDisabledColor, 0);
        this.m = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_innerCircleCheckedDisabledColor, 0);
        this.n = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_outerCircleUncheckedDisabledColor, 0);
        this.o = obtainStyledAttributes.getColor(R.styleable.ColorSwitch_outerCircleCheckedDisabledColor, 0);
        this.M = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_themedCheckedDrawable);
        this.N = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_themedUncheckedDrawable);
        this.O = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_themedLoadingCheckedBackground);
        this.P = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_themedLoadingUncheckedBackground);
        this.Q = obtainStyledAttributes.getDrawable(R.styleable.ColorSwitch_themedLoadingDrawable);
        this.u = (this.f1638a - (this.p * 2)) - this.e;
        obtainStyledAttributes.recycle();
        this.q = getContext().getResources().getDimensionPixelSize(R.dimen.color_switch_padding);
        this.H = getContext().getResources().getBoolean(R.bool.color_switch_theme_enable);
        e();
        f();
        this.V = i.a();
        this.W = this.V.a(context, R.raw.color_switch_sound_on);
        this.aa = this.V.a(context, R.raw.color_switch_sound_off);
    }

    private void a(Canvas canvas) {
        canvas.save();
        Drawable l2 = l();
        l2.setAlpha(k());
        int i2 = this.q;
        l2.setBounds(i2, i2, this.f1638a + i2, this.f1639b + i2);
        l().draw(canvas);
        canvas.restore();
    }

    private void a(boolean z2) {
        this.V.a(getContext(), z2 ? this.W : this.aa, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    private void b(Canvas canvas) {
        canvas.save();
        this.I.setColor(this.y);
        if (!isEnabled()) {
            this.I.setColor(isChecked() ? this.k : this.j);
        }
        int i2 = this.f1639b;
        float f2 = ((float) i2) / 2.0f;
        int i3 = this.q;
        canvas.drawRoundRect((float) i3, (float) i3, (float) (this.f1638a + i3), (float) (i2 + i3), f2, f2, this.I);
        canvas.restore();
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0062  */
    private void b(boolean z2) {
        int i2;
        float f2 = 1.0f;
        this.R.setInterpolator(b.a(0.3f, 0.0f, 0.1f, 1.0f));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "circleScaleX", new float[]{1.0f, 1.3f});
        ofFloat.setDuration(133);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "circleScaleX", new float[]{1.3f, 1.0f});
        ofFloat2.setStartDelay(133);
        ofFloat2.setDuration(250);
        int circleTranslation = getCircleTranslation();
        if (o()) {
            if (!z2) {
                i2 = this.u;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "circleTranslation", new int[]{circleTranslation, i2});
                ofInt.setDuration(383);
                float innerCircleAlpha = getInnerCircleAlpha();
                if (z2) {
                    f2 = 0.0f;
                }
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "innerCircleAlpha", new float[]{innerCircleAlpha, f2});
                ofFloat3.setDuration(100);
                ObjectAnimator ofArgb = ObjectAnimator.ofArgb(this, "barColor", new int[]{getBarColor(), z2 ? this.c : this.d});
                ofArgb.setDuration(450);
                this.R.play(ofFloat).with(ofFloat2).with(ofInt).with(ofFloat3).with(ofArgb);
                this.R.start();
            }
        } else if (z2) {
            i2 = this.u;
            ObjectAnimator ofInt2 = ObjectAnimator.ofInt(this, "circleTranslation", new int[]{circleTranslation, i2});
            ofInt2.setDuration(383);
            float innerCircleAlpha2 = getInnerCircleAlpha();
            if (z2) {
            }
            ObjectAnimator ofFloat32 = ObjectAnimator.ofFloat(this, "innerCircleAlpha", new float[]{innerCircleAlpha2, f2});
            ofFloat32.setDuration(100);
            ObjectAnimator ofArgb2 = ObjectAnimator.ofArgb(this, "barColor", new int[]{getBarColor(), z2 ? this.c : this.d});
            ofArgb2.setDuration(450);
            this.R.play(ofFloat).with(ofFloat2).with(ofInt2).with(ofFloat32).with(ofArgb2);
            this.R.start();
        }
        i2 = 0;
        ObjectAnimator ofInt22 = ObjectAnimator.ofInt(this, "circleTranslation", new int[]{circleTranslation, i2});
        ofInt22.setDuration(383);
        float innerCircleAlpha22 = getInnerCircleAlpha();
        if (z2) {
        }
        ObjectAnimator ofFloat322 = ObjectAnimator.ofFloat(this, "innerCircleAlpha", new float[]{innerCircleAlpha22, f2});
        ofFloat322.setDuration(100);
        ObjectAnimator ofArgb22 = ObjectAnimator.ofArgb(this, "barColor", new int[]{getBarColor(), z2 ? this.c : this.d});
        ofArgb22.setDuration(450);
        this.R.play(ofFloat).with(ofFloat2).with(ofInt22).with(ofFloat322).with(ofArgb22);
        this.R.start();
    }

    private void c(Canvas canvas) {
        canvas.save();
        float f2 = this.w;
        canvas.scale(f2, f2, this.r.centerX(), this.r.centerY());
        this.J.setColor(this.g);
        if (!isEnabled()) {
            this.J.setColor(isChecked() ? this.o : this.n);
        }
        float f3 = ((float) this.e) / 2.0f;
        canvas.drawRoundRect(this.r, f3, f3, this.J);
        canvas.restore();
    }

    private void d(Canvas canvas) {
        canvas.save();
        float f2 = this.w;
        canvas.scale(f2, f2, this.r.centerX(), this.r.centerY());
        float f3 = ((float) this.h) / 2.0f;
        this.K.setColor(this.i);
        if (!isEnabled()) {
            this.K.setColor(isChecked() ? this.m : this.l);
        }
        this.K.setAlpha((int) (this.x * 255.0f));
        canvas.drawRoundRect(this.s, f3, f3, this.K);
        canvas.restore();
    }

    private void e() {
        this.I = new Paint(1);
        this.J = new Paint(1);
        this.K = new Paint(1);
    }

    private void e(Canvas canvas) {
        canvas.save();
        float f2 = this.z;
        canvas.scale(f2, f2, this.r.centerX(), this.r.centerY());
        canvas.rotate(this.B, this.r.centerX(), this.r.centerY());
        Drawable drawable = this.L;
        if (drawable != null) {
            drawable.setBounds((int) this.r.left, (int) this.r.top, (int) this.r.right, (int) this.r.bottom);
            this.L.setAlpha((int) (this.A * 255.0f));
            this.L.draw(canvas);
        }
        canvas.restore();
    }

    private void f() {
        g();
        h();
        i();
    }

    private void f(Canvas canvas) {
        if (this.C) {
            int height = (getHeight() - this.e) / 2;
            canvas.save();
            canvas.rotate(this.B, (float) (getWidth() / 2), (float) (getHeight() / 2));
            this.Q.setBounds((getWidth() - this.e) / 2, height, (getWidth() + this.e) / 2, (getHeight() + this.e) / 2);
            this.Q.draw(canvas);
            canvas.restore();
        }
    }

    private void g() {
        Interpolator a2 = b.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.S = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "circleScale", new float[]{1.0f, 0.0f});
        ofFloat.setInterpolator(a2);
        ofFloat.setDuration(433);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "loadingScale", new float[]{0.5f, 1.0f});
        ofFloat2.setInterpolator(a2);
        ofFloat2.setDuration(550);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "loadingAlpha", new float[]{0.0f, 1.0f});
        ofFloat3.setInterpolator(a2);
        ofFloat3.setDuration(550);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this, "loadingRotation", new float[]{0.0f, 360.0f});
        ofFloat4.setRepeatCount(-1);
        ofFloat4.setDuration(800);
        ofFloat4.setInterpolator(new LinearInterpolator());
        this.S.play(ofFloat).with(ofFloat3).with(ofFloat2).with(ofFloat4);
    }

    private void h() {
        Interpolator a2 = b.a(0.3f, 0.0f, 0.1f, 1.0f);
        this.T = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "loadingAlpha", new float[]{1.0f, 0.0f});
        ofFloat.setInterpolator(a2);
        ofFloat.setDuration(100);
        this.T.play(ofFloat);
    }

    private void i() {
        this.U = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "loadingRotation", new float[]{0.0f, 360.0f});
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(800);
        ofFloat.setInterpolator(new LinearInterpolator());
        this.U.play(ofFloat);
    }

    private void j() {
        if (a()) {
            ColorOSHapticFeedbackUtils.performHapticFeedback(this, 302, 0);
            setTactileFeedbackEnabled(false);
        }
    }

    private int k() {
        return (int) ((isEnabled() ? 1.0f : 0.5f) * 255.0f);
    }

    private Drawable l() {
        return c() ? isChecked() ? this.O : this.P : isChecked() ? this.M : this.N;
    }

    private void m() {
        float f2;
        float f3;
        float f4;
        float f5;
        if (isChecked()) {
            if (o()) {
                f3 = (float) (this.p + this.t + this.q);
                f5 = (float) this.e;
                f4 = this.v;
            } else {
                f2 = (float) (((this.f1638a - this.p) - (this.u - this.t)) + this.q);
                f3 = f2 - (((float) this.e) * this.v);
                int i2 = this.f1639b;
                int i3 = this.e;
                float f6 = (((float) (i2 - i3)) / 2.0f) + ((float) this.q);
                this.r.set(f3, f6, f2, ((float) i3) + f6);
            }
        } else if (o()) {
            int i4 = (this.f1638a - this.p) - (this.u - this.t);
            int i5 = this.q;
            float f7 = (float) (i4 + i5);
            float f8 = ((float) i5) + (f7 - (((float) this.e) * this.v));
            f2 = f7;
            f3 = f8;
            int i22 = this.f1639b;
            int i32 = this.e;
            float f62 = (((float) (i22 - i32)) / 2.0f) + ((float) this.q);
            this.r.set(f3, f62, f2, ((float) i32) + f62);
        } else {
            f3 = (float) (this.p + this.t + this.q);
            f5 = (float) this.e;
            f4 = this.v;
        }
        f2 = (f5 * f4) + f3;
        int i222 = this.f1639b;
        int i322 = this.e;
        float f622 = (((float) (i222 - i322)) / 2.0f) + ((float) this.q);
        this.r.set(f3, f622, f2, ((float) i322) + f622);
    }

    private void n() {
        float f2 = this.r.left + ((float) this.f);
        float f3 = this.r.right - ((float) this.f);
        this.s.set(f2, this.r.top + ((float) this.f), f3, this.r.bottom - ((float) this.f));
    }

    private boolean o() {
        return Build.VERSION.SDK_INT > 16 && getLayoutDirection() == 1;
    }

    public boolean a() {
        return this.G;
    }

    public void b() {
        if (!this.C) {
            this.C = true;
            if (this.H) {
                this.U.start();
            } else {
                this.S.start();
            }
            a aVar = this.ad;
            if (aVar != null) {
                aVar.a();
            }
            invalidate();
        }
    }

    public boolean c() {
        return this.C;
    }

    public void d() {
        this.E = true;
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.D && motionEvent.getAction() == 10) {
            b();
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public CharSequence getAccessibilityClassName() {
        return Switch.class.getName();
    }

    public int getBarColor() {
        return this.y;
    }

    public float getCircleScale() {
        return this.w;
    }

    public float getCircleScaleX() {
        return this.v;
    }

    public int getCircleTranslation() {
        return this.t;
    }

    public float getInnerCircleAlpha() {
        return this.x;
    }

    public float getLoadingAlpha() {
        return this.A;
    }

    public float getLoadingRotation() {
        return this.B;
    }

    public float getLoadingScale() {
        return this.z;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        AnimatorSet animatorSet = this.R;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.R.end();
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.F = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.F = false;
        this.E = false;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.H) {
            a(canvas);
            f(canvas);
            return;
        }
        m();
        n();
        b(canvas);
        e(canvas);
        c(canvas);
        d(canvas);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.E = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int i4 = this.f1638a;
        int i5 = this.q;
        setMeasuredDimension(i4 + (i5 * 2), this.f1639b + (i5 * 2));
        if (!this.ac) {
            this.ac = true;
            int i6 = 0;
            if (o()) {
                if (!isChecked()) {
                    i6 = this.u;
                }
                this.t = i6;
            } else {
                if (isChecked()) {
                    i6 = this.u;
                }
                this.t = i6;
            }
            this.x = isChecked() ? 0.0f : 1.0f;
            this.y = isChecked() ? this.c : this.d;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.ab = true;
            this.G = true;
        }
        if (this.D && motionEvent.getAction() == 1 && isEnabled()) {
            b();
            return false;
        } else if (this.C) {
            return false;
        } else {
            return super.onTouchEvent(motionEvent);
        }
    }

    public void setBarColor(int i2) {
        this.y = i2;
        invalidate();
    }

    public void setChecked(boolean z2) {
        if (z2 != isChecked()) {
            super.setChecked(z2);
            if (!this.H) {
                z2 = isChecked();
                AnimatorSet animatorSet = this.R;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.R.end();
                }
                if (!this.E || !this.F) {
                    if (o()) {
                        setCircleTranslation(z2 ? 0 : this.u);
                    } else {
                        setCircleTranslation(z2 ? this.u : 0);
                    }
                    setInnerCircleAlpha(z2 ? 0.0f : 1.0f);
                    setBarColor(z2 ? this.c : this.d);
                } else {
                    b(z2);
                }
            }
            if (this.ab) {
                a(z2);
                this.ab = false;
            }
            j();
            invalidate();
        }
    }

    public void setCircleScale(float f2) {
        this.w = f2;
        invalidate();
    }

    public void setCircleScaleX(float f2) {
        this.v = f2;
        invalidate();
    }

    public void setCircleTranslation(int i2) {
        this.t = i2;
        invalidate();
    }

    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
    }

    public void setInnerCircleAlpha(float f2) {
        this.x = f2;
        invalidate();
    }

    public void setLoadingAlpha(float f2) {
        this.A = f2;
        invalidate();
    }

    public void setLoadingRotation(float f2) {
        this.B = f2;
        invalidate();
    }

    public void setLoadingScale(float f2) {
        this.z = f2;
        invalidate();
    }

    public void setLoadingStyle(boolean z2) {
        this.D = z2;
    }

    public void setOnLoadingStateChangedListener(a aVar) {
        this.ad = aVar;
    }

    public void setShouldPlaySound(boolean z2) {
        this.ab = z2;
    }

    public void setTactileFeedbackEnabled(boolean z2) {
        this.G = z2;
    }

    public void toggle() {
        setChecked(!isChecked());
    }
}
