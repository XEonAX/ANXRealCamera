package com.color.support.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.Layout;
import android.text.TextWatcher;
import android.text.method.TransformationMethod;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import color.support.v7.appcompat.R;
import com.color.support.widget.ColorEditText;
import com.color.support.widget.b;
import java.util.ArrayList;

/* compiled from: ErrorEditTextHelper */
class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Rect f1694a = new Rect();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final EditText f1695b;
    private final b.a c = new b.a(this.f1695b);
    private ColorStateList d;
    private int e;
    private int f;
    private int g;
    private b h;
    private ColorStateList i;
    private ColorStateList j;
    private Paint k;
    private Paint l;
    private AnimatorSet m;
    private boolean n;
    private ArrayList<ColorEditText.b> o;
    private boolean p;
    /* access modifiers changed from: private */
    public boolean q;
    /* access modifiers changed from: private */
    public float r;
    /* access modifiers changed from: private */
    public float s;
    /* access modifiers changed from: private */
    public float t;
    /* access modifiers changed from: private */
    public float u;
    /* access modifiers changed from: private */
    public float v;

    /* compiled from: ErrorEditTextHelper */
    private static class a implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        static final int f1701a = com.color.support.d.a.a(c);

        /* renamed from: b  reason: collision with root package name */
        private static final float[] f1702b = {0.0f, -1.0f, 0.5f, -0.5f, 0.0f};
        private static final int[] c = {83, 133, 117, 117};
        private static final float[] d = new float[(c.length + 1)];
        private final Interpolator e;

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr = c;
                if (i < iArr.length) {
                    i2 += iArr[i];
                    i++;
                    d[i] = ((float) i2) / ((float) f1701a);
                } else {
                    return;
                }
            }
        }

        private a() {
            this.e = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
        }

        public float getInterpolation(float f) {
            int i = 1;
            while (true) {
                float[] fArr = d;
                if (i >= fArr.length) {
                    return 0.0f;
                }
                if (f <= fArr[i]) {
                    int i2 = i - 1;
                    float interpolation = this.e.getInterpolation((f - fArr[i2]) / (fArr[i] - fArr[i2]));
                    float[] fArr2 = f1702b;
                    return (fArr2[i2] * (1.0f - interpolation)) + (fArr2[i] * interpolation);
                }
                i++;
            }
        }
    }

    h(EditText editText) {
        this.f1695b = editText;
        this.c.a((Interpolator) new LinearInterpolator());
        this.c.b((Interpolator) new LinearInterpolator());
        this.c.b(8388659);
    }

    private int a(float f2) {
        return Color.argb((int) (f2 * 255.0f), Color.red(this.f), Color.green(this.f), Color.blue(this.f));
    }

    private int a(int i2, int i3, float f2) {
        if (f2 <= 0.0f) {
            return i2;
        }
        if (f2 >= 1.0f) {
            return i3;
        }
        float f3 = 1.0f - f2;
        int alpha = (int) ((((float) Color.alpha(i2)) * f3) + (((float) Color.alpha(i3)) * f2));
        int red = (int) ((((float) Color.red(i2)) * f3) + (((float) Color.red(i3)) * f2));
        int green = (int) ((((float) Color.green(i2)) * f3) + (((float) Color.green(i3)) * f2));
        int blue = (int) ((((float) Color.blue(i2)) * f3) + (((float) Color.blue(i3)) * f2));
        if (alpha > 255) {
            alpha = 255;
        }
        if (red > 255) {
            red = 255;
        }
        if (green > 255) {
            green = 255;
        }
        if (blue > 255) {
            blue = 255;
        }
        return Color.argb(alpha, red, green, blue);
    }

    private void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    /* access modifiers changed from: private */
    public void a(boolean z, boolean z2, boolean z3) {
        if (this.n != z) {
            this.n = z;
            b(z);
            if (z2) {
                b(z, z3);
            } else {
                c(z, z3);
            }
        }
    }

    private Layout.Alignment b() {
        switch (this.f1695b.getTextAlignment()) {
            case 1:
                int gravity = this.f1695b.getGravity() & 8388615;
                return gravity != 1 ? gravity != 3 ? gravity != 5 ? gravity != 8388611 ? gravity != 8388613 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : h() ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : h() ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
            case 2:
                return Layout.Alignment.ALIGN_NORMAL;
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 4:
                return Layout.Alignment.ALIGN_CENTER;
            case 5:
                return Layout.Alignment.ALIGN_NORMAL;
            case 6:
                return Layout.Alignment.ALIGN_OPPOSITE;
            default:
                return Layout.Alignment.ALIGN_NORMAL;
        }
    }

    private void b(boolean z) {
        if (this.o != null) {
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                this.o.get(i2).a(z);
            }
        }
    }

    private void b(boolean z, boolean z2) {
        if (z) {
            g();
            this.f1695b.setTextColor(0);
            this.f1695b.setHighlightColor(0);
            this.r = 0.0f;
            this.s = 0.0f;
            this.t = 0.0f;
            this.p = true;
            this.q = this.f1695b.isFocused();
            this.m.start();
            return;
        }
        g();
        b(false, false, z2);
    }

    /* access modifiers changed from: private */
    public void b(boolean z, boolean z2, boolean z3) {
        this.p = false;
        if (z) {
            if (z2) {
                this.f1695b.setTextColor(this.d);
            }
            this.f1695b.setHighlightColor(a(0.3f));
            if (z3) {
                EditText editText = this.f1695b;
                editText.setSelection(0, editText.getText().length());
                return;
            }
            return;
        }
        this.f1695b.setTextColor(this.d);
        this.f1695b.setHighlightColor(this.e);
    }

    /* access modifiers changed from: private */
    public CharSequence c() {
        return !d() ? this.f1695b.getText() : e();
    }

    /* access modifiers changed from: private */
    public void c(boolean z) {
        if (this.o != null) {
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                this.o.get(i2).b(z);
            }
        }
    }

    private void c(boolean z, boolean z2) {
        if (z) {
            this.r = 1.0f;
            this.s = 0.0f;
            this.t = 0.0f;
            b(true, false, z2);
            return;
        }
        b(false, false, z2);
    }

    private boolean d() {
        return (this.f1695b.getInputType() & 128) == 128 || (this.f1695b.getInputType() & 16) == 16;
    }

    private CharSequence e() {
        TransformationMethod transformationMethod = this.f1695b.getTransformationMethod();
        return transformationMethod != null ? transformationMethod.getTransformation(this.f1695b.getText(), this.f1695b) : this.f1695b.getText();
    }

    private void f() {
        float dimension = this.f1695b.getResources().getDimension(R.dimen.color_edit_text_shake_amplitude);
        PathInterpolator pathInterpolator = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setInterpolator(pathInterpolator);
        ofFloat.setDuration(217);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float unused = h.this.r = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, dimension});
        ofFloat2.setInterpolator(new a());
        ofFloat2.setDuration((long) a.f1701a);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (h.this.q) {
                    float unused = h.this.s = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                }
                h.this.f1695b.invalidate();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(new float[]{0.0f, 0.3f});
        ofFloat3.setInterpolator(pathInterpolator);
        ofFloat3.setDuration(133);
        ofFloat3.setStartDelay(80);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (h.this.q) {
                    float unused = h.this.t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                }
            }
        });
        this.m = new AnimatorSet();
        this.m.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
        this.m.addListener(new Animator.AnimatorListener() {
            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                h.this.b(true, true, true);
                h.this.c(true);
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
                h.this.f1695b.setSelection(h.this.f1695b.length());
                if (h.this.v <= 0.0f) {
                    h hVar = h.this;
                    float unused = hVar.v = (float) hVar.f1695b.getHeight();
                }
            }
        });
    }

    private void g() {
        if (this.m.isStarted()) {
            this.m.cancel();
        }
    }

    private boolean h() {
        return this.f1695b.getLayoutDirection() == 1;
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, int i4, float[] fArr, b.a aVar) {
        this.d = this.f1695b.getTextColors();
        this.e = this.f1695b.getHighlightColor();
        this.f = i2;
        this.g = i3;
        if (i4 == 2) {
            this.c.a(Typeface.create("sans-serif-medium", 0));
        }
        this.c.a(aVar.k());
        this.c.b(aVar.g());
        this.c.a(aVar.f());
        this.h = new b();
        this.h.setCornerRadii(fArr);
        this.k = new Paint();
        this.k.setStrokeWidth((float) this.g);
        this.l = new Paint();
        f();
        this.f1695b.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
                h.this.a(false, false, false);
                CharSequence c = h.this.c();
                int length = c.length();
                h hVar = h.this;
                float unused = hVar.u = hVar.f1695b.getPaint().measureText(c, 0, length);
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (h.this.v <= 0.0f) {
                    h hVar = h.this;
                    float unused = hVar.v = (float) hVar.f1695b.getHeight();
                }
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        b(aVar);
        a(aVar);
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, ColorStateList colorStateList) {
        this.c.a(i2, colorStateList);
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        float f2;
        float f3;
        if (this.p && this.n) {
            int save = canvas.save();
            if (!h()) {
                canvas.translate(this.s, 0.0f);
            } else {
                canvas.translate(-this.s, 0.0f);
            }
            int compoundPaddingStart = this.f1695b.getCompoundPaddingStart();
            int compoundPaddingEnd = this.f1695b.getCompoundPaddingEnd();
            int width = this.f1695b.getWidth();
            int i2 = width - compoundPaddingEnd;
            int i3 = i2 - compoundPaddingStart;
            float x = ((float) i2) + this.f1695b.getX() + ((float) this.f1695b.getScrollX());
            float f4 = (float) i3;
            float scrollX = (this.u - ((float) this.f1695b.getScrollX())) - f4;
            this.f1695b.getLineBounds(0, f1694a);
            int save2 = canvas.save();
            if (!h()) {
                canvas.translate((float) compoundPaddingStart, (float) f1694a.top);
            } else {
                canvas.translate((float) compoundPaddingEnd, (float) f1694a.top);
            }
            int save3 = canvas.save();
            if (((float) this.f1695b.getBottom()) == this.v && this.u > f4) {
                if (!h()) {
                    canvas.translate(-scrollX, 0.0f);
                    canvas.clipRect((float) this.f1695b.getScrollX(), 0.0f, x, this.v);
                } else {
                    canvas.clipRect((float) (this.f1695b.getScrollX() + i3), 0.0f, (float) this.f1695b.getScrollX(), this.v);
                }
            }
            Layout layout = this.f1695b.getLayout();
            layout.getPaint().setColor(this.d.getDefaultColor());
            layout.draw(canvas);
            canvas.restoreToCount(save3);
            canvas.restoreToCount(save2);
            Layout.Alignment b2 = b();
            this.l.setColor(a(this.t));
            if ((b2 != Layout.Alignment.ALIGN_NORMAL || h()) && ((b2 != Layout.Alignment.ALIGN_OPPOSITE || !h()) && ((b2 != Layout.Alignment.ALIGN_NORMAL || !h()) && (b2 != Layout.Alignment.ALIGN_OPPOSITE || h())))) {
                float f5 = this.u;
                float f6 = (((float) ((compoundPaddingStart + width) - compoundPaddingEnd)) / 2.0f) - (f5 / 2.0f);
                f3 = f6;
                f2 = f6 + f5;
            } else {
                f3 = (float) compoundPaddingStart;
                f2 = f3;
            }
            canvas.drawRect(f3, (float) f1694a.top, f2, (float) f1694a.bottom, this.l);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas, int i2, int i3, int i4, Paint paint, Paint paint2) {
        this.k.setColor(a(paint.getColor(), this.f, this.r));
        float f2 = (float) i2;
        Canvas canvas2 = canvas;
        float f3 = f2;
        float f4 = f2;
        canvas2.drawLine(0.0f, f3, (float) i3, f4, this.k);
        this.k.setColor(a(paint2.getColor(), this.f, this.r));
        canvas2.drawLine(0.0f, f3, (float) i4, f4, this.k);
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas, GradientDrawable gradientDrawable, int i2) {
        this.h.setBounds(gradientDrawable.getBounds());
        if (gradientDrawable instanceof b) {
            this.h.a(((b) gradientDrawable).b());
        }
        this.h.setStroke(this.g, a(i2, this.f, this.r));
        this.h.draw(canvas);
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas, b.a aVar) {
        this.c.a(ColorStateList.valueOf(a(this.i.getDefaultColor(), this.f, this.r)));
        this.c.b(ColorStateList.valueOf(a(this.j.getDefaultColor(), this.f, this.r)));
        this.c.b(aVar.h());
        this.c.a(canvas);
    }

    /* access modifiers changed from: package-private */
    public void a(b.a aVar) {
        this.i = aVar.p();
        this.j = aVar.o();
        this.c.a(this.i);
        this.c.b(this.j);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        a(z, true);
    }

    /* access modifiers changed from: package-private */
    public void a(int[] iArr) {
        this.c.a(iArr);
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public void b(b.a aVar) {
        this.c.a(aVar.n());
    }

    /* access modifiers changed from: package-private */
    public void c(b.a aVar) {
        Rect a2 = aVar.a();
        Rect b2 = aVar.b();
        this.c.a(a2.left, a2.top, a2.right, a2.bottom);
        this.c.b(b2.left, b2.top, b2.right, b2.bottom);
        this.c.m();
    }
}
