package com.oppo.camera.ui.control;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.d;

public class MainShutterButton extends ShutterButton {

    /* renamed from: b  reason: collision with root package name */
    private static final Interpolator f2596b = new LinearInterpolator();
    private static final Interpolator c = new AccelerateDecelerateInterpolator();
    private static final int d = Color.parseColor("#FFEA3447");
    private int A = 6;
    private int B = 0;
    private int C = 24;
    /* access modifiers changed from: private */
    public float D = 0.0f;
    private float E = 0.0f;
    private float F = 0.0f;
    private float G = 0.0f;
    private float H = 0.0f;
    private String I = null;
    /* access modifiers changed from: private */
    public String J = null;
    private boolean K = false;
    private boolean L = true;
    private boolean M = true;
    private ObjectAnimator N = null;
    private ObjectAnimator O = null;
    private RectF P = null;
    private RectF Q = null;
    /* access modifiers changed from: private */
    public RectF R = null;
    private RectF S = null;
    private RectF T = null;
    private Paint U = null;
    private Paint V = null;
    private Paint W = null;
    private Paint aa = null;
    /* access modifiers changed from: private */
    public Paint ab = null;
    private Paint ac = null;
    private Paint ad = null;
    private Property<MainShutterButton, Float> ae = null;
    private Property<MainShutterButton, Float> af = null;
    private Property<MainShutterButton, Integer> ag = null;
    private ObjectAnimator ah = null;
    /* access modifiers changed from: private */
    public ObjectAnimator ai = null;
    /* access modifiers changed from: private */
    public ObjectAnimator aj = null;
    private ValueAnimator ak = null;
    private ValueAnimator al = null;
    private ValueAnimator am = null;
    private ValueAnimator an = null;
    private ValueAnimator ao = null;
    private ValueAnimator.AnimatorUpdateListener ap = null;
    /* access modifiers changed from: private */
    public int e = 1;
    private int f = 0;
    /* access modifiers changed from: private */
    public int g = 0;
    private int h = 0;
    private int i = 0;
    private int j = 0;
    /* access modifiers changed from: private */
    public int k = 0;
    /* access modifiers changed from: private */
    public int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    /* access modifiers changed from: private */
    public int p = 0;
    private int q = 0;
    /* access modifiers changed from: private */
    public int r = 0;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    private int v = 6;
    private int w = 12;
    private int x = 6;
    private int y = 9;
    private int z = 12;

    public MainShutterButton(Context context) {
        super(context);
    }

    public MainShutterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public MainShutterButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet, i2);
    }

    private void a(int i2, int i3) {
        this.B = i3;
        setButtonTypeAndInvalidate(i2);
    }

    private void a(int i2, String str) {
        this.I = str;
        setButtonTypeAndInvalidate(i2);
    }

    private void a(Canvas canvas) {
        if (!"button_shape_ring_none".equals(this.J)) {
            int i2 = this.e;
            if (!(i2 == 1 || i2 == 2 || i2 == 3 || i2 == 5)) {
                if (i2 != 6) {
                    if (i2 != 9) {
                        return;
                    }
                } else if ("button_shape_dial_still".equals(this.J)) {
                    this.M = false;
                    b(canvas, this.M);
                    return;
                } else if ("button_shape_dial_rotate".equals(this.J)) {
                    ObjectAnimator objectAnimator = this.ai;
                    if (objectAnimator != null && objectAnimator.isRunning()) {
                        this.ai.cancel();
                    }
                    this.M = true;
                    b(canvas, this.M);
                    return;
                } else {
                    return;
                }
            }
            if ("button_shape_dial_still".equals(this.J)) {
                this.M = false;
            } else if ("button_shape_dial_rotate".equals(this.J)) {
                this.M = true;
            }
            b(canvas, this.M);
        }
    }

    private void a(Canvas canvas, boolean z2) {
        if ("button_color_inside_red".equals(this.I)) {
            this.W.setAlpha(255);
            this.ad = this.W;
        } else if ("button_color_inside_grey".equals(this.I)) {
            this.aa.setAlpha(51);
            this.ad = this.aa;
        }
        if (z2) {
            if (isPressed()) {
                Paint paint = this.ad;
                if (paint != null) {
                    paint.setAlpha(51);
                }
                this.ab.setAlpha(128);
            } else {
                this.ab.setAlpha(255);
            }
        }
        if (!"button_color_inside_none".equals(this.I) && this.ad != null) {
            float f2 = (float) ("button_shape_ring_none".equals(this.J) ? this.g : this.h);
            canvas.drawRoundRect("button_shape_ring_none".equals(this.J) ? this.P : this.Q, f2, f2, this.ad);
        }
        RectF rectF = this.R;
        int i2 = this.f;
        canvas.drawRoundRect(rectF, (float) i2, (float) i2, this.ab);
    }

    private void b(Context context, AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MainShutterButton, i2, 0);
        Resources resources = context.getResources();
        try {
            this.f = obtainStyledAttributes.getDimensionPixelSize(18, resources.getDimensionPixelSize(R.dimen.shutter_button_big_circle_radius));
            this.g = obtainStyledAttributes.getDimensionPixelSize(14, resources.getDimensionPixelSize(R.dimen.shutter_button_small_circle_radius));
            this.i = obtainStyledAttributes.getDimensionPixelSize(16, resources.getDimensionPixelSize(R.dimen.shutter_button_inside_rect_length));
            this.j = obtainStyledAttributes.getDimensionPixelSize(15, resources.getDimensionPixelSize(R.dimen.shutter_button_inside_rect_corner_radius));
            this.m = obtainStyledAttributes.getInt(0, resources.getInteger(R.integer.main_btn_default_angleAnimationDurationMillis));
            this.n = obtainStyledAttributes.getInt(22, resources.getInteger(R.integer.main_btn_default_sweepAnimationDuration));
            this.o = obtainStyledAttributes.getInt(17, resources.getInteger(R.integer.main_btn_default_miniSweepAngle));
            this.H = (float) (360 - (this.o * 2));
            this.s = obtainStyledAttributes.getDimensionPixelSize(4, resources.getDimensionPixelSize(R.dimen.shutter_button_big_circle_radius_scaled));
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
        obtainStyledAttributes.recycle();
        this.t = this.f - this.g;
        this.U = new Paint();
        this.U.setAntiAlias(true);
        this.U.setStyle(Paint.Style.STROKE);
        this.U.setStrokeWidth((float) this.t);
        this.U.setColor(-1);
        this.V = new Paint();
        this.V.setAntiAlias(true);
        this.V.setStyle(Paint.Style.FILL);
        this.V.setColor(-1);
        this.V.setAlpha(128);
        this.W = new Paint();
        this.W.setAntiAlias(true);
        this.W.setStyle(Paint.Style.FILL);
        this.W.setColor(d);
        this.aa = new Paint();
        this.aa.setAntiAlias(true);
        this.aa.setStyle(Paint.Style.FILL);
        this.aa.setColor(-1);
        this.aa.setAlpha(51);
        this.ab = new Paint();
        this.ab.setAntiAlias(true);
        this.ab.setStyle(Paint.Style.STROKE);
        this.ab.setStrokeWidth((float) this.t);
        this.ab.setColor(-1);
        this.ac = new Paint();
        this.ac.setAntiAlias(true);
        this.ac.setStyle(Paint.Style.FILL);
        this.ac.setColor(-1);
        l();
    }

    private void b(Canvas canvas, boolean z2) {
        canvas.save();
        canvas.translate(((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f);
        canvas.rotate(180.0f);
        int i2 = 0;
        while (i2 < 60) {
            if (!z2) {
                int i3 = this.h;
                int i4 = this.y;
                canvas.drawLine(0.0f, (float) (i3 + i4), 0.0f, (float) (i3 + i4 + this.v), this.ac);
            } else if (i2 % 5 == 0) {
                int i5 = this.h;
                int i6 = this.A;
                canvas.drawLine(0.0f, (float) (i5 + i6), 0.0f, (float) (i5 + i6 + this.z), this.ac);
            } else {
                int i7 = this.r;
                if (i7 <= 60 || i7 == 0) {
                    int i8 = i2 == this.r ? this.A : this.w;
                    int i9 = i2 == this.r ? this.z : this.v;
                    if (i2 >= this.r) {
                        int i10 = this.h;
                        canvas.drawLine(0.0f, (float) (i10 + i8), 0.0f, (float) (i10 + i8 + i9), this.ac);
                    }
                } else {
                    int i11 = i2 == i7 + -60 ? this.A : this.w;
                    int i12 = i2 == this.r - 60 ? this.z : this.v;
                    int i13 = this.r;
                    if (i2 <= i13 - 60 || i13 == 0) {
                        int i14 = this.h;
                        canvas.drawLine(0.0f, (float) (i14 + i11), 0.0f, (float) (i14 + i11 + i12), this.ac);
                    }
                }
            }
            canvas.rotate(6.0f, 0.0f, 0.0f);
            i2++;
        }
        canvas.restore();
    }

    private void h() {
        if (!j()) {
            this.K = true;
            ObjectAnimator objectAnimator = this.O;
            if (objectAnimator != null) {
                objectAnimator.start();
            }
            ObjectAnimator objectAnimator2 = this.N;
            if (objectAnimator2 != null) {
                objectAnimator2.start();
            }
            invalidate();
        }
    }

    private void i() {
        if (j()) {
            this.K = false;
            ObjectAnimator objectAnimator = this.O;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            ObjectAnimator objectAnimator2 = this.N;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
            }
            invalidate();
        }
    }

    private boolean j() {
        return this.K;
    }

    /* access modifiers changed from: private */
    public void k() {
        this.L = !this.L;
        if (this.L) {
            this.E = (this.E + ((float) (this.o * 2))) % 360.0f;
        }
    }

    private void l() {
        m();
        s();
        t();
    }

    private void m() {
        this.ae = new Property<MainShutterButton, Float>(Float.class, "angle") {
            /* renamed from: a */
            public Float get(MainShutterButton mainShutterButton) {
                return Float.valueOf(mainShutterButton.getCurrentGlobalAngle());
            }

            /* renamed from: a */
            public void set(MainShutterButton mainShutterButton, Float f) {
                mainShutterButton.setCurrentGlobalAngle(f.floatValue());
            }
        };
        this.af = new Property<MainShutterButton, Float>(Float.class, "arc") {
            /* renamed from: a */
            public Float get(MainShutterButton mainShutterButton) {
                return Float.valueOf(mainShutterButton.getCurrentSweepAngle());
            }

            /* renamed from: a */
            public void set(MainShutterButton mainShutterButton, Float f) {
                mainShutterButton.setCurrentSweepAngle(f.floatValue());
            }
        };
        this.O = ObjectAnimator.ofFloat(this, this.ae, new float[]{360.0f});
        this.O.setInterpolator(f2596b);
        this.O.setDuration((long) this.m);
        this.O.setRepeatMode(1);
        this.O.setRepeatCount(-1);
        this.N = ObjectAnimator.ofFloat(this, this.af, new float[]{this.H});
        this.N.setInterpolator(c);
        this.N.setDuration((long) this.n);
        this.N.setRepeatMode(1);
        this.N.setRepeatCount(-1);
        this.N.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
            }

            public void onAnimationRepeat(Animator animator) {
                MainShutterButton.this.k();
            }

            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void n() {
        ObjectAnimator objectAnimator = this.O;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.N;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
    }

    private void o() {
        ValueAnimator valueAnimator = this.ak;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.ak.cancel();
        }
    }

    private void p() {
        ValueAnimator valueAnimator = this.al;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.al.cancel();
        }
        ValueAnimator valueAnimator2 = this.am;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.am.cancel();
        }
    }

    private void q() {
        this.P = null;
        this.R = null;
        this.S = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.aa = null;
    }

    private void r() {
        this.O = null;
        this.N = null;
        this.ae = null;
        this.af = null;
        this.ag = null;
    }

    private void s() {
        Resources resources = getResources();
        this.v = resources.getDimensionPixelSize(R.dimen.shutter_button_line_height);
        this.z = resources.getDimensionPixelSize(R.dimen.shutter_button_long_line_height);
        this.A = resources.getDimensionPixelSize(R.dimen.shutter_button_long_line_padding);
        int i2 = this.A;
        this.C = (i2 * 2) + this.z;
        int i3 = this.g;
        int i4 = this.C;
        this.h = i3 - i4;
        this.x = i2;
        int i5 = this.v;
        this.w = (i4 - i5) - this.x;
        this.y = (i4 - i5) / 2;
        this.ag = new Property<MainShutterButton, Integer>(Integer.class, "dial") {
            /* renamed from: a */
            public Integer get(MainShutterButton mainShutterButton) {
                return Integer.valueOf(mainShutterButton.getDialValue());
            }

            /* renamed from: a */
            public void set(MainShutterButton mainShutterButton, Integer num) {
                mainShutterButton.setDialValue(num.intValue());
            }
        };
        this.ah = ObjectAnimator.ofInt(this, this.ag, new int[]{0, 60});
        this.ah.setInterpolator(new LinearInterpolator());
        this.ah.setDuration(600);
        this.ah.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                int unused = MainShutterButton.this.k = 0;
                d.a("MainShutterButton", "onAnimationEnd, mRingDotPrepareAnimator end, mButtonType: " + MainShutterButton.this.e);
                if (MainShutterButton.this.ai == null) {
                    return;
                }
                if ((2 == MainShutterButton.this.e || 5 == MainShutterButton.this.e) && "button_shape_dial_rotate".equals(MainShutterButton.this.J)) {
                    MainShutterButton.this.ai.setCurrentFraction(0.5f);
                    MainShutterButton.this.ai.start();
                    if (2 != MainShutterButton.this.e) {
                        MainShutterButton.this.setButtonType(2);
                    }
                }
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }
        });
        this.ak = ValueAnimator.ofInt(new int[]{0, 360});
        this.ak.setInterpolator(new LinearInterpolator());
        this.ak.setDuration((long) this.q);
        this.ak.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int unused = MainShutterButton.this.p = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                MainShutterButton.this.invalidate();
            }
        });
        this.ai = ObjectAnimator.ofInt(this, this.ag, new int[]{0, 120});
        this.ai.setRepeatMode(1);
        this.ai.setRepeatCount(-1);
        this.ai.setInterpolator(new LinearInterpolator());
        this.ai.setDuration(12000);
        this.ai.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                MainShutterButton.this.u();
                MainShutterButton.this.aj.start();
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }
        });
        this.aj = ObjectAnimator.ofInt(this, this.ag, new int[]{0, 60});
        this.aj.setInterpolator(new PathInterpolator(0.576f, 0.16f, 0.421f, 0.853f));
        this.aj.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                int unused = MainShutterButton.this.r = 0;
                int unused2 = MainShutterButton.this.l = 0;
                if (6 == MainShutterButton.this.e && "button_shape_dial_rotate".equals(MainShutterButton.this.J)) {
                    MainShutterButton.this.setButtonType(1);
                }
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void setButtonTypeAndInvalidate(int i2) {
        d.a("MainShutterButton", "setButtonTypeAndInvalidate, buttonType: " + i2);
        if (this.e != 4 && j()) {
            this.K = false;
            n();
        }
        o();
        setButtonType(i2);
        int i3 = this.e;
        if (i3 == 3) {
            w();
        } else if (i3 == 4) {
            h();
        } else if (i3 != 5 || !"button_shape_dial_rotate".equals(this.J)) {
            invalidate();
        } else {
            c();
        }
    }

    private void t() {
        this.ap = new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float unused = MainShutterButton.this.D = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float g = MainShutterButton.this.D - ((float) MainShutterButton.this.g);
                if (MainShutterButton.this.R == null) {
                    MainShutterButton mainShutterButton = MainShutterButton.this;
                    float f = g / 2.0f;
                    RectF unused2 = mainShutterButton.R = new RectF((((float) (mainShutterButton.getWidth() / 2)) - MainShutterButton.this.D) + f, (((float) (MainShutterButton.this.getHeight() / 2)) - MainShutterButton.this.D) + f, (((float) (MainShutterButton.this.getWidth() / 2)) + MainShutterButton.this.D) - f, (((float) (MainShutterButton.this.getWidth() / 2)) + MainShutterButton.this.D) - f);
                } else {
                    float f2 = g / 2.0f;
                    MainShutterButton.this.R.set((((float) (MainShutterButton.this.getWidth() / 2)) - MainShutterButton.this.D) + f2, (((float) (MainShutterButton.this.getHeight() / 2)) - MainShutterButton.this.D) + f2, (((float) (MainShutterButton.this.getWidth() / 2)) + MainShutterButton.this.D) - f2, (((float) (MainShutterButton.this.getWidth() / 2)) + MainShutterButton.this.D) - f2);
                }
                MainShutterButton.this.ab.setStrokeWidth(g);
                MainShutterButton.this.invalidate();
            }
        };
        this.al = ValueAnimator.ofFloat(new float[]{(float) this.f, (float) this.s});
        this.al.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f));
        this.al.setDuration(100);
        this.al.addUpdateListener(this.ap);
        this.am = ValueAnimator.ofFloat(new float[]{(float) this.s, (float) this.f});
        this.am.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f));
        this.am.setDuration(100);
        this.am.addUpdateListener(this.ap);
    }

    /* access modifiers changed from: private */
    public void u() {
        this.aj.setIntValues(new int[]{this.r, 120});
        this.aj.setDuration((long) (((120 - this.r) * 800) / 120));
    }

    private void v() {
        this.ah = null;
        this.ai = null;
        this.aj = null;
        this.ak = null;
        this.al = null;
        this.am = null;
        ValueAnimator valueAnimator = this.an;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.an = null;
        }
        ValueAnimator valueAnimator2 = this.ao;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.ao = null;
        }
    }

    private void w() {
        ValueAnimator valueAnimator = this.ak;
        if (valueAnimator != null) {
            valueAnimator.setDuration((long) this.q);
            this.ak.start();
        }
    }

    public void a() {
        q();
        r();
        v();
    }

    public void a(int i2, String str, int i3) {
        d.a("MainShutterButton", "setButtonType, insideRectColor: " + this.B + " => " + i3 + ", inSideColor: " + this.I + " => " + str);
        this.I = str;
        this.B = i3;
        setButtonType(i2);
    }

    /* access modifiers changed from: protected */
    public void a(Context context, AttributeSet attributeSet, int i2) {
        setButtonTypeAndInvalidate(new c(1, "button_color_inside_none", "button_shape_ring_none"));
        b(context, attributeSet, i2);
    }

    public void a(c cVar) {
        c shutterButtonInfo = getShutterButtonInfo();
        if (shutterButtonInfo == null) {
            d.e("MainShutterButton", "switchToModeType, null == currentButtonInfo");
            return;
        }
        d.a("MainShutterButton", "switchToModeType, before shutterButtonType: " + shutterButtonInfo.a() + ", before insideColor: " + shutterButtonInfo.b() + ", before ringShape: " + shutterButtonInfo.c() + " -> after shutterButtonType: " + cVar.a() + ", after insideColor: " + cVar.b() + ", after ringShape: " + cVar.c());
        setButtonTypeAndInvalidate(cVar);
    }

    public void b() {
        ObjectAnimator objectAnimator = this.ai;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.r = 0;
        }
        ObjectAnimator objectAnimator2 = this.ah;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
    }

    public boolean b(c cVar) {
        return cVar.a() == this.e && cVar.b().equals(this.I) && cVar.c().equals(this.J);
    }

    public void c() {
        ObjectAnimator objectAnimator = this.ah;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
    }

    public void d() {
        ValueAnimator valueAnimator = this.ak;
        if (valueAnimator != null) {
            valueAnimator.pause();
        }
    }

    public void e() {
        ValueAnimator valueAnimator = this.ak;
        if (valueAnimator != null) {
            valueAnimator.resume();
        }
    }

    public void f() {
        d.a("MainShutterButton", "pauseFastVideoDialAnimator");
        ObjectAnimator objectAnimator = this.ai;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.ai.pause();
        }
    }

    public void g() {
        d.a("MainShutterButton", "resumeFastVideoDialAnimator");
        ObjectAnimator objectAnimator = this.ai;
        if (objectAnimator != null) {
            objectAnimator.resume();
        }
    }

    public int getButtonType() {
        return this.e;
    }

    public float getCurrentGlobalAngle() {
        return this.F;
    }

    public float getCurrentSweepAngle() {
        return this.G;
    }

    public int getDialValue() {
        return this.r;
    }

    public String getInsideColor() {
        return this.I;
    }

    public String getRingShape() {
        return this.J;
    }

    public c getShutterButtonInfo() {
        return new c(this.e, this.I);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        d.a("MainShutterButton", "onAttachedToWindow, mButtonType: " + this.e);
        if (this.e == 4) {
            h();
        }
        super.onAttachedToWindow();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        d.a("MainShutterButton", " onDetachedFromWindow, mButtonType: " + this.e);
        if (this.e == 4) {
            i();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0429  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x0432  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x027b  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0284  */
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int i5;
        float f2;
        Canvas canvas2 = canvas;
        if (this.P == null) {
            this.P = new RectF((float) ((getWidth() / 2) - this.g), (float) ((getHeight() / 2) - this.g), (float) ((getWidth() / 2) + this.g), (float) ((getHeight() / 2) + this.g));
        }
        if (this.Q == null) {
            this.Q = new RectF((float) ((getWidth() / 2) - this.h), (float) ((getHeight() / 2) - this.h), (float) ((getWidth() / 2) + this.h), (float) ((getHeight() / 2) + this.h));
        }
        if (this.S == null) {
            this.S = new RectF((float) ((getWidth() / 2) - (this.i / 2)), (float) ((getHeight() / 2) - (this.i / 2)), (float) ((getWidth() / 2) + (this.i / 2)), (float) ((getHeight() / 2) + (this.i / 2)));
        }
        if (this.R == null) {
            this.R = new RectF((float) (((getWidth() / 2) - this.f) + (this.t / 2)), (float) (((getHeight() / 2) - this.f) + (this.t / 2)), (float) (((getWidth() / 2) + this.f) - (this.t / 2)), (float) (((getWidth() / 2) + this.f) - (this.t / 2)));
        }
        if (this.T == null) {
            this.T = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        }
        int i6 = this.e;
        if (i6 == 1) {
            a(canvas2, true);
        } else if (i6 == 2) {
            a(canvas2, true);
            int i7 = this.B;
            if (i7 == 0) {
                this.V.setAlpha(255);
                this.ad = this.V;
            } else if (1 == i7) {
                this.W.setAlpha(255);
                this.ad = this.W;
            } else {
                this.V.setAlpha(255);
                this.ad = this.V;
            }
            RectF rectF = this.S;
            int i8 = this.j;
            canvas2.drawRoundRect(rectF, (float) i8, (float) i8, this.ad);
        } else if (i6 == 3) {
            this.ab.setAlpha(128);
            a(canvas2, false);
            this.U.setStrokeWidth((float) this.t);
            canvas.drawArc(this.R, -90.0f, (float) this.p, false, this.U);
            int i9 = this.B;
            if (i9 == 0) {
                this.V.setAlpha(255);
                this.ad = this.V;
            } else if (1 == i9) {
                this.W.setAlpha(255);
                this.ad = this.W;
            } else if (2 == i9) {
                this.V.setAlpha(0);
                this.ad = this.V;
            } else {
                this.V.setAlpha(255);
                this.ad = this.V;
            }
            RectF rectF2 = this.S;
            int i10 = this.j;
            canvas2.drawRoundRect(rectF2, (float) i10, (float) i10, this.ad);
        } else if (i6 == 4) {
            this.ab.setAlpha(128);
            a(canvas2, false);
            float f3 = this.F - this.E;
            float f4 = this.G;
            if (this.L) {
                f2 = ((float) this.o) + f4;
                float f5 = this.H;
                if (f4 == f5) {
                    f2 -= f5;
                }
            } else {
                f3 += f4;
                f2 = (360.0f - f4) - ((float) this.o);
                float f6 = this.H;
                if (f4 == f6) {
                    f3 -= f6;
                    f2 += f6;
                }
            }
            this.U.setStrokeWidth((float) this.t);
            canvas.drawArc(this.R, f3, f2, false, this.U);
        } else {
            String str = "button_color_inside_none";
            if (i6 == 5) {
                this.ab.setAlpha(255);
                RectF rectF3 = this.R;
                int i11 = this.f;
                canvas2.drawRoundRect(rectF3, (float) i11, (float) i11, this.ab);
                if (!str.equals(this.I)) {
                    int i12 = "button_shape_ring_none".equals(this.J) ? this.g : this.h;
                    float f7 = ((float) (i12 - (this.i / 2))) / 8.0f;
                    int i13 = this.k;
                    float f8 = ((float) i12) - (((float) i13) * (((float) (i12 - this.j)) / 8.0f));
                    this.T.set(((float) ((getWidth() / 2) - i12)) + (((float) this.k) * f7), ((float) ((getHeight() / 2) - i12)) + (((float) this.k) * f7), ((float) ((getWidth() / 2) + i12)) - (((float) this.k) * f7), ((float) ((getHeight() / 2) + i12)) - (((float) i13) * f7));
                    if ("button_color_inside_grey".equals(this.I)) {
                        this.aa.setAlpha(51);
                        this.ad = this.aa;
                    } else if ("button_color_inside_red".equals(this.I)) {
                        this.W.setAlpha(255);
                        this.ad = this.W;
                        i4 = 1;
                        canvas2.drawRoundRect(this.T, f8, f8, this.ad);
                        i5 = this.k;
                        if (i5 >= 8) {
                            this.k = i5 + 1;
                            invalidate();
                        } else {
                            this.k = 0;
                            a(2, str, i4);
                        }
                    }
                    i4 = 0;
                    canvas2.drawRoundRect(this.T, f8, f8, this.ad);
                    i5 = this.k;
                    if (i5 >= 8) {
                    }
                } else {
                    return;
                }
            } else if (i6 == 6) {
                RectF rectF4 = this.R;
                int i14 = this.f;
                canvas2.drawRoundRect(rectF4, (float) i14, (float) i14, this.ab);
                int i15 = "button_shape_ring_none".equals(this.J) ? this.g : this.h;
                float f9 = ((float) (i15 - (this.i / 2))) / 8.0f;
                int i16 = i15 / 2;
                int i17 = this.l;
                float f10 = ((float) i15) + (((float) i17) * (((float) (i15 - this.j)) / 8.0f));
                this.T.set(((float) ((getWidth() / 2) - i16)) - (((float) this.l) * f9), ((float) ((getHeight() / 2) - i16)) - (((float) this.l) * f9), ((float) ((getWidth() / 2) + i16)) + (((float) this.l) * f9), ((float) ((getHeight() / 2) + i16)) + (((float) i17) * f9));
                int i18 = this.B;
                if (i18 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                    str = "button_color_inside_grey";
                } else if (1 == i18) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                    str = "button_color_inside_red";
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                canvas2.drawRoundRect(this.T, f10, f10, this.ad);
                int i19 = this.l;
                if (i19 < 8) {
                    this.l = i19 + 1;
                    invalidate();
                } else {
                    this.l = 0;
                    a(1, str);
                }
            } else if (7 == i6) {
                a(canvas2, true);
                int i20 = this.k;
                float f11 = ((float) i20) * (((float) this.i) / 8.0f);
                float f12 = ((float) i20) * (((float) this.j) / 8.0f);
                float f13 = f11 / 2.0f;
                this.T.set(((float) (getWidth() / 2)) - f13, ((float) (getHeight() / 2)) - f13, ((float) (getWidth() / 2)) + f13, ((float) (getHeight() / 2)) + f13);
                int i21 = this.B;
                if (i21 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                } else if (1 == i21) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                canvas2.drawRoundRect(this.T, f12, f12, this.ad);
                int i22 = this.k;
                if (i22 < 8) {
                    this.k = i22 + 1;
                    invalidate();
                } else {
                    this.k = 0;
                    setButtonTypeAndInvalidate(3);
                }
            } else if (8 == i6) {
                RectF rectF5 = this.R;
                int i23 = this.f;
                canvas2.drawRoundRect(rectF5, (float) i23, (float) i23, this.ab);
                int i24 = this.i;
                int i25 = this.l;
                int i26 = this.j;
                float f14 = ((float) i26) - (((float) i25) * (((float) i26) / 8.0f));
                float f15 = (((float) i24) - (((float) i25) * (((float) i24) / 8.0f))) / 2.0f;
                this.T.set(((float) (getWidth() / 2)) - f15, ((float) (getHeight() / 2)) - f15, ((float) (getWidth() / 2)) + f15, ((float) (getHeight() / 2)) + f15);
                if ("button_color_inside_grey".equals(this.I)) {
                    this.aa.setAlpha(51);
                    this.ad = this.aa;
                } else if ("button_color_inside_red".equals(this.I)) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                    i2 = 1;
                    canvas2.drawRoundRect(this.T, f14, f14, this.ad);
                    i3 = this.l;
                    if (i3 >= 8) {
                        this.l = i3 + 1;
                        invalidate();
                    } else {
                        this.l = 0;
                        a(4, i2);
                    }
                }
                i2 = 0;
                canvas2.drawRoundRect(this.T, f14, f14, this.ad);
                i3 = this.l;
                if (i3 >= 8) {
                }
            } else if (9 == i6) {
                a(canvas2, true);
                int i27 = this.B;
                if (i27 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                } else if (1 == i27) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                RectF rectF6 = this.S;
                int i28 = this.j;
                canvas2.drawRoundRect(rectF6, (float) i28, (float) i28, this.ad);
            } else if (10 == i6) {
                this.ab.setAlpha(255);
                RectF rectF7 = this.R;
                int i29 = this.f;
                canvas2.drawRoundRect(rectF7, (float) i29, (float) i29, this.ab);
                int i30 = this.k;
                float f16 = ((float) i30) * (((float) this.i) / 8.0f);
                float f17 = ((float) i30) * (((float) this.j) / 8.0f);
                float f18 = f16 / 2.0f;
                this.T.set(((float) (getWidth() / 2)) - f18, ((float) (getHeight() / 2)) - f18, ((float) (getWidth() / 2)) + f18, ((float) (getHeight() / 2)) + f18);
                int i31 = this.B;
                if (i31 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                } else if (1 == i31) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                canvas2.drawRoundRect(this.T, f17, f17, this.ad);
                int i32 = this.k;
                if (i32 < 8) {
                    this.k = i32 + 1;
                    invalidate();
                } else {
                    this.k = 0;
                    setButtonTypeAndInvalidate(9);
                }
            } else if (11 == i6) {
                a(canvas2, true);
                int i33 = this.i;
                int i34 = this.l;
                int i35 = this.j;
                float f19 = ((float) i35) - (((float) i34) * (((float) i35) / 8.0f));
                float f20 = (((float) i33) - (((float) i34) * (((float) i33) / 8.0f))) / 2.0f;
                this.T.set(((float) (getWidth() / 2)) - f20, ((float) (getHeight() / 2)) - f20, ((float) (getWidth() / 2)) + f20, ((float) (getHeight() / 2)) + f20);
                int i36 = this.B;
                if (i36 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                } else if (1 == i36) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                canvas2.drawRoundRect(this.T, f19, f19, this.ad);
                int i37 = this.l;
                if (i37 < 8) {
                    this.l = i37 + 1;
                    invalidate();
                } else {
                    this.l = 0;
                    setButtonTypeAndInvalidate(1);
                }
            } else if (i6 == 12) {
                this.ab.setAlpha(128);
                RectF rectF8 = this.R;
                int i38 = this.f;
                canvas2.drawRoundRect(rectF8, (float) i38, (float) i38, this.ab);
                this.U.setStrokeWidth((float) this.t);
                canvas.drawArc(this.R, -90.0f, (float) this.u, false, this.U);
                int i39 = this.B;
                if (i39 == 0) {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                } else if (1 == i39) {
                    this.W.setAlpha(255);
                    this.ad = this.W;
                } else {
                    this.V.setAlpha(255);
                    this.ad = this.V;
                }
                RectF rectF9 = this.S;
                int i40 = this.j;
                canvas2.drawRoundRect(rectF9, (float) i40, (float) i40, this.ad);
                if (this.u >= 360) {
                    this.u = 0;
                    setButtonTypeAndInvalidate(11);
                }
            } else if (13 == i6) {
                this.ab.setAlpha(128);
                a(canvas2, false);
                this.B = 2;
                int i41 = this.k;
                if (i41 < 8) {
                    this.k = i41 + 1;
                    invalidate();
                } else {
                    this.k = 0;
                    setButtonTypeAndInvalidate(3);
                }
            }
        }
        a(canvas);
    }

    public void setButtonType(int i2) {
        d.a("MainShutterButton", "setButtonType, type: " + this.e + " => " + i2);
        this.e = i2;
        if (this.e == 12) {
            this.u = 0;
        }
        if (this.l != 0) {
            this.l = 0;
        }
    }

    public void setButtonTypeAndInvalidate(c cVar) {
        d.a("MainShutterButton", "setButtonTypeAndInvalidate, mShutterButtonType: " + cVar.a() + ", mInfoInsideColor: " + cVar.b() + ", mRingShape: " + cVar.c() + ", mInfoInsideRectColor: " + cVar.d());
        if (this.e != 4 && j()) {
            this.K = false;
            n();
        }
        o();
        this.I = cVar.b();
        this.J = cVar.c();
        this.B = cVar.d();
        setButtonType(cVar.a());
        int i2 = this.e;
        if (i2 == 3) {
            w();
        } else if (i2 == 4) {
            h();
        } else if (i2 != 5 || !"button_shape_dial_rotate".equals(this.J)) {
            invalidate();
        } else {
            c();
        }
    }

    public void setCurrentGlobalAngle(float f2) {
        this.F = f2;
        invalidate();
    }

    public void setCurrentSweepAngle(float f2) {
        this.G = f2;
        invalidate();
    }

    public void setDialValue(int i2) {
        this.r = i2;
        invalidate();
    }

    public void setPressed(boolean z2) {
        if (this.am == null || this.al == null) {
            d.a("MainShutterButton", "setPressed, return because Animator is null");
            return;
        }
        boolean z3 = z2 != isPressed();
        super.setPressed(z2);
        if (z3) {
            p();
            if (isPressed()) {
                float f2 = this.D;
                int i2 = this.f;
                if (f2 <= ((float) i2)) {
                    f2 = (float) i2;
                }
                this.al.setFloatValues(new float[]{f2, (float) this.s});
                ValueAnimator valueAnimator = this.am;
                int i3 = this.s;
                valueAnimator.setDuration((long) (((((float) i3) - f2) * 100.0f) / ((float) (i3 - this.f))));
                this.al.start();
            } else {
                float f3 = this.D;
                int i4 = this.f;
                if (f3 <= ((float) i4)) {
                    f3 = (float) i4;
                }
                this.am.setFloatValues(new float[]{f3, (float) this.f});
                ValueAnimator valueAnimator2 = this.am;
                int i5 = this.f;
                valueAnimator2.setDuration((long) (((f3 - ((float) i5)) * 100.0f) / ((float) (this.s - i5))));
                this.am.start();
            }
            invalidate();
        }
    }

    public void setShutterButtonProgress(float f2) {
        if (this.e != 12) {
            d.e("MainShutterButton", "setShutterButtonProgress, button type is error, mButtonType: " + this.e);
            return;
        }
        d.a("MainShutterButton", "setShutterButtonProgress, progress: " + f2);
        this.u = (int) (f2 * 360.0f);
        if (this.u > 360) {
            this.u = 360;
        }
        invalidate();
    }

    public void setShutterButtonTime(int i2) {
        this.q = i2;
    }
}
