package com.color.support.widget;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.j;
import androidx.core.g.u;
import color.support.v7.appcompat.R;
import com.color.support.widget.b;
import com.google.protobuf.nano.MessageNano;
import java.util.List;

public class ColorEditText extends j {
    private float A;
    private float B;
    private int C;
    private int D;
    private int E;
    private RectF F;
    private ColorStateList G;
    private ColorStateList H;
    private int I;
    private int J;
    private int K;
    private boolean L;
    private boolean M;
    private ValueAnimator N;
    private ValueAnimator O;
    private ValueAnimator P;
    private boolean Q;
    private boolean R;
    private Paint S;
    private Paint T;
    private Paint U;
    /* access modifiers changed from: private */
    public int V;
    /* access modifiers changed from: private */
    public float W;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final b.a f1561a;
    private int aa;
    private int ab;
    private int ac;
    private h ad;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f1562b;
    private Interpolator c;
    private Drawable d;
    private Drawable e;
    private boolean f;
    private boolean g;
    private boolean h;
    private d i;
    private c j;
    private int k;
    private Context l;
    private int m;
    private boolean n;
    private a o;
    /* access modifiers changed from: private */
    public String p;
    private e q;
    private CharSequence r;
    private boolean s;
    private CharSequence t;
    private boolean u;
    private GradientDrawable v;
    private int w;
    private int x;
    private float y;
    private float z;

    public class a extends androidx.customview.a.a implements View.OnClickListener {
        private View d = null;
        private Context e = null;
        private Rect f = null;
        private Rect g = null;

        public a(View view) {
            super(view);
            this.d = view;
            this.e = this.d.getContext();
        }

        private void b() {
            this.f = new Rect();
            this.f.left = ColorEditText.this.getDeleteButtonLeft();
            this.f.right = ColorEditText.this.getWidth();
            Rect rect = this.f;
            rect.top = 0;
            rect.bottom = ColorEditText.this.getHeight();
        }

        private Rect e(int i) {
            if (i != 0) {
                return new Rect();
            }
            if (this.f == null) {
                b();
            }
            return this.f;
        }

        /* access modifiers changed from: protected */
        public int a(float f2, float f3) {
            if (this.f == null) {
                b();
            }
            if (f2 < ((float) this.f.left) || f2 > ((float) this.f.right) || f3 < ((float) this.f.top) || f3 > ((float) this.f.bottom) || !ColorEditText.this.b()) {
                return MessageNano.UNSET_ENUM_VALUE;
            }
            return 0;
        }

        /* access modifiers changed from: protected */
        public void a(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(ColorEditText.this.p);
        }

        /* access modifiers changed from: protected */
        public void a(int i, androidx.core.g.a.d dVar) {
            if (i == 0) {
                dVar.e((CharSequence) ColorEditText.this.p);
                dVar.b((CharSequence) Button.class.getName());
                dVar.a(16);
            }
            dVar.b(e(i));
        }

        /* access modifiers changed from: protected */
        public void a(List<Integer> list) {
            if (ColorEditText.this.b()) {
                list.add(0);
            }
        }

        /* access modifiers changed from: protected */
        public boolean b(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i != 0 || !ColorEditText.this.b()) {
                return true;
            }
            ColorEditText.this.c();
            return true;
        }

        public void onClick(View view) {
        }
    }

    public interface b {
        void a(boolean z);

        void b(boolean z);
    }

    public interface c {
        boolean a();
    }

    public interface d {
        boolean a();
    }

    private class e implements TextWatcher {
        private e() {
        }

        public void afterTextChanged(Editable editable) {
            ColorEditText colorEditText = ColorEditText.this;
            colorEditText.b(colorEditText.hasFocus());
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ColorEditText(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    @SuppressLint({"WrongConstant"})
    public ColorEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        int i4;
        this.f1561a = new b.a(this);
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = null;
        this.j = null;
        this.n = false;
        this.p = null;
        this.q = null;
        this.C = 3;
        this.F = new RectF();
        this.l = context;
        com.color.support.d.d.a(this, false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorEditText, 0, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.ColorEditText_quickDelete, false);
        int color2 = obtainStyledAttributes.getColor(R.styleable.ColorEditText_colorEditTextErrorColor, getResources().getColor(R.color.color_error_color_default));
        obtainStyledAttributes.recycle();
        setFastDeletable(z2);
        this.d = getResources().getDrawable(R.drawable.color_edit_text_delete_icon_normal);
        this.e = getResources().getDrawable(R.drawable.color_edit_text_delete_icon_pressed);
        Drawable drawable = this.d;
        if (drawable != null) {
            i4 = drawable.getIntrinsicWidth();
            i3 = this.d.getIntrinsicHeight();
            this.d.setBounds(0, 0, i4, i3);
        } else {
            i4 = 0;
            i3 = 0;
        }
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, i4, i3);
        }
        this.o = new a(this);
        u.a((View) this, (androidx.core.g.a) this.o);
        u.b((View) this, 1);
        this.p = this.l.getString(R.string.color_slide_delete);
        this.o.a();
        this.ad = new h(this);
        a(context, attributeSet, i2);
        this.ad.a(color2, this.C, this.x, getCornerRadiiAsArray(), this.f1561a);
    }

    private void a(float f2) {
        if (this.f1561a.j() != f2) {
            if (this.N == null) {
                this.N = new ValueAnimator();
                this.N.setInterpolator(this.f1562b);
                this.N.setDuration(200);
                this.N.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ColorEditText.this.f1561a.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.N.setFloatValues(new float[]{this.f1561a.j(), f2});
            this.N.start();
        }
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        this.f1561a.a((Interpolator) new LinearInterpolator());
        this.f1561a.b((Interpolator) new LinearInterpolator());
        this.f1561a.b(8388659);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1562b = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
            this.c = new PathInterpolator(0.0f, 0.0f, 0.1f, 1.0f);
        } else {
            this.f1562b = new LinearInterpolator();
            this.c = new LinearInterpolator();
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorEditText, i2, R.style.Widget_ColorSupport_EditText_HintAnim_Line);
        this.s = obtainStyledAttributes.getBoolean(R.styleable.ColorEditText_colorHintEnabled, false);
        if (Build.VERSION.SDK_INT < 23) {
            this.s = false;
            setPadding(0, 0, 0, 0);
            return;
        }
        setTopHint(obtainStyledAttributes.getText(R.styleable.ColorEditText_android_hint));
        if (this.s) {
            this.M = obtainStyledAttributes.getBoolean(R.styleable.ColorEditText_colorHintAnimationEnabled, true);
        }
        this.aa = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ColorEditText_rectModePaddingTop, 0);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.ColorEditText_cornerRadius, 0.0f);
        this.y = dimension;
        this.z = dimension;
        this.A = dimension;
        this.B = dimension;
        this.J = obtainStyledAttributes.getColor(R.styleable.ColorEditText_colorStrokeColor, com.color.support.d.c.a(context, R.attr.colorPrimaryColor, 0));
        this.C = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ColorEditText_colorStrokeWidth, 0);
        this.D = this.C;
        if (this.s) {
            this.w = context.getResources().getDimensionPixelOffset(R.dimen.color_textinput_label_cutout_padding);
            this.ab = context.getResources().getDimensionPixelOffset(R.dimen.color_textinput_line_padding_top);
            this.ac = context.getResources().getDimensionPixelOffset(R.dimen.color_textinput_line_padding_middle);
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.ColorEditText_colorBackgroundMode, 0);
        setBoxBackgroundMode(i3);
        if (this.x != 0) {
            setBackgroundDrawable((Drawable) null);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.ColorEditText_android_textColorHint)) {
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.ColorEditText_android_textColorHint);
            this.H = colorStateList;
            this.G = colorStateList;
        }
        this.I = obtainStyledAttributes.getColor(R.styleable.ColorEditText_colorDefaultStrokeColor, getResources().getColor(R.color.color_textinput_stroke_color_default));
        this.K = obtainStyledAttributes.getColor(R.styleable.ColorEditText_colorDisabledStrokeColor, getResources().getColor(R.color.color_textinput_stroke_color_disabled));
        a(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorEditText_collapsedTextSize, 0), obtainStyledAttributes.getColorStateList(R.styleable.ColorEditText_colorStrokeColor));
        if (i3 == 2) {
            this.f1561a.a(Typeface.create("sans-serif-medium", 0));
        }
        obtainStyledAttributes.recycle();
        this.T = new Paint();
        this.T.setColor(this.I);
        this.T.setStrokeWidth((float) this.C);
        this.U = new Paint();
        this.U.setColor(this.K);
        this.U.setStrokeWidth((float) this.C);
        this.S = new Paint();
        this.S.setColor(this.J);
        this.S.setStrokeWidth((float) this.C);
        g();
    }

    private void a(RectF rectF) {
        rectF.left -= (float) this.w;
        rectF.top -= (float) this.w;
        rectF.right += (float) this.w;
        rectF.bottom += (float) this.w;
    }

    private void a(boolean z2, boolean z3) {
        boolean isEnabled = isEnabled();
        boolean z4 = !TextUtils.isEmpty(getText());
        ColorStateList colorStateList = this.G;
        if (colorStateList != null) {
            this.f1561a.a(colorStateList);
            this.f1561a.b(this.G);
        }
        if (!isEnabled) {
            this.f1561a.a(ColorStateList.valueOf(this.K));
            this.f1561a.b(ColorStateList.valueOf(this.K));
        } else if (hasFocus()) {
            ColorStateList colorStateList2 = this.H;
            if (colorStateList2 != null) {
                this.f1561a.a(colorStateList2);
            }
        }
        if (z4 || (isEnabled() && hasFocus())) {
            if (z3 || this.L) {
                c(z2);
            }
        } else if (z3 || !this.L) {
            d(z2);
        }
        h hVar = this.ad;
        if (hVar != null) {
            hVar.a(this.f1561a);
        }
    }

    private boolean a(String str) {
        if (str == null) {
            return false;
        }
        return TextUtils.isEmpty(str);
    }

    /* access modifiers changed from: private */
    public void b(boolean z2) {
        if (TextUtils.isEmpty(getText().toString())) {
            setCompoundDrawables((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            this.h = false;
        } else if (z2) {
            Drawable drawable = this.d;
            if (drawable != null && !this.h) {
                setCompoundDrawables((Drawable) null, (Drawable) null, drawable, (Drawable) null);
                this.h = true;
            }
        } else if (this.h) {
            setCompoundDrawables((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            this.h = false;
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        Editable text = getText();
        text.delete(0, text.length());
        setText("");
    }

    private void c(boolean z2) {
        ValueAnimator valueAnimator = this.N;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.N.cancel();
        }
        if (!z2 || !this.M) {
            this.f1561a.b(1.0f);
        } else {
            a(1.0f);
        }
        this.L = false;
        if (l()) {
            m();
        }
    }

    private void d() {
        f();
        h();
    }

    private void d(boolean z2) {
        if (this.v != null) {
            Log.d("ColorEditText", "mBoxBackground: " + this.v.getBounds());
        }
        ValueAnimator valueAnimator = this.N;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.N.cancel();
        }
        if (!z2 || !this.M) {
            this.f1561a.b(0.0f);
        } else {
            a(0.0f);
        }
        if (l() && ((b) this.v).a()) {
            n();
        }
        this.L = true;
    }

    private void e() {
        u.b(this, s() ? getPaddingRight() : getPaddingLeft(), getModePaddingTop(), s() ? getPaddingLeft() : getPaddingRight(), getPaddingBottom());
    }

    private void f() {
        int i2 = this.x;
        if (i2 == 0) {
            this.v = null;
        } else if (i2 == 2 && this.s && !(this.v instanceof b)) {
            this.v = new b();
        } else if (this.v == null) {
            this.v = new GradientDrawable();
        }
    }

    private void g() {
        d();
        this.f1561a.a(getTextSize());
        int gravity = getGravity();
        this.f1561a.b((gravity & -113) | 48);
        this.f1561a.a(gravity);
        if (this.G == null) {
            this.G = getHintTextColors();
        }
        setHint((CharSequence) null);
        if (TextUtils.isEmpty(this.t)) {
            this.r = getHint();
            setTopHint(this.r);
            setHint((CharSequence) null);
        }
        this.u = true;
        a(false, true);
        if (this.s) {
            e();
        }
    }

    private int getBoundsTop() {
        int i2 = this.x;
        if (i2 == 1) {
            return this.ab;
        }
        if (i2 != 2) {
            return 0;
        }
        return (int) (this.f1561a.d() / 2.0f);
    }

    private Drawable getBoxBackground() {
        int i2 = this.x;
        if (i2 == 1 || i2 == 2) {
            return this.v;
        }
        return null;
    }

    private float[] getCornerRadiiAsArray() {
        float f2 = this.z;
        float f3 = this.y;
        float f4 = this.B;
        float f5 = this.A;
        return new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
    }

    private int getModePaddingTop() {
        int e2;
        int i2;
        int i3 = this.x;
        if (i3 == 1) {
            e2 = this.ab + ((int) this.f1561a.e());
            i2 = this.ac;
        } else if (i3 != 2) {
            return 0;
        } else {
            e2 = this.aa;
            i2 = (int) (this.f1561a.d() / 2.0f);
        }
        return e2 + i2;
    }

    private void h() {
        if (this.x != 0 && this.v != null && getRight() != 0) {
            this.v.setBounds(0, getBoundsTop(), getWidth(), getHeight());
            k();
        }
    }

    private int i() {
        int i2 = this.x;
        return i2 != 1 ? i2 != 2 ? getPaddingTop() : getBoxBackground().getBounds().top - getLabelMarginTop() : getBoxBackground().getBounds().top;
    }

    private void j() {
        int i2 = this.x;
        if (i2 == 1) {
            this.C = 0;
        } else if (i2 == 2 && this.J == 0) {
            this.J = this.H.getColorForState(getDrawableState(), this.H.getDefaultColor());
        }
    }

    private void k() {
        if (this.v != null) {
            j();
            int i2 = this.C;
            if (i2 > -1) {
                int i3 = this.E;
                if (i3 != 0) {
                    this.v.setStroke(i2, i3);
                }
            }
            this.v.setCornerRadii(getCornerRadiiAsArray());
            invalidate();
        }
    }

    private boolean l() {
        return Build.VERSION.SDK_INT >= 23 && this.s && !TextUtils.isEmpty(this.t) && (this.v instanceof b);
    }

    private void m() {
        if (l()) {
            RectF rectF = this.F;
            this.f1561a.a(rectF);
            a(rectF);
            ((b) this.v).a(rectF);
        }
    }

    private void n() {
        if (l()) {
            ((b) this.v).c();
        }
    }

    private void o() {
        if (this.x == 1) {
            if (!isEnabled()) {
                this.W = 0.0f;
            } else if (hasFocus()) {
                if (!this.R) {
                    q();
                }
            } else if (this.R) {
                r();
            }
        }
    }

    private void p() {
        if (this.v != null) {
            int i2 = this.x;
            if (i2 != 0 && i2 == 2) {
                if (!isEnabled()) {
                    this.E = this.K;
                } else if (hasFocus()) {
                    this.E = this.J;
                } else {
                    this.E = this.I;
                }
                k();
            }
        }
    }

    private void q() {
        if (this.O == null) {
            this.O = new ValueAnimator();
            this.O.setInterpolator(this.c);
            this.O.setDuration(250);
            this.O.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float unused = ColorEditText.this.W = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    ColorEditText.this.invalidate();
                }
            });
        }
        this.V = 255;
        this.O.setFloatValues(new float[]{0.0f, 1.0f});
        this.O.start();
        this.R = true;
    }

    private void r() {
        if (this.P == null) {
            this.P = new ValueAnimator();
            this.P.setInterpolator(this.c);
            this.P.setDuration(250);
            this.P.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int unused = ColorEditText.this.V = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ColorEditText.this.invalidate();
                }
            });
        }
        this.P.setIntValues(new int[]{255, 0});
        this.P.start();
        this.R = false;
    }

    private boolean s() {
        return getLayoutDirection() == 1;
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.t)) {
            this.t = charSequence;
            this.f1561a.a(charSequence);
            if (!this.L) {
                m();
            }
            h hVar = this.ad;
            if (hVar != null) {
                hVar.b(this.f1561a);
            }
        }
    }

    public void a() {
        this.n = true;
    }

    public void a(int i2, ColorStateList colorStateList) {
        this.f1561a.a(i2, colorStateList);
        this.H = this.f1561a.p();
        a(false);
        this.ad.a(i2, colorStateList);
    }

    public void a(boolean z2) {
        a(z2, false);
    }

    public boolean b() {
        return this.g && !a(getText().toString()) && hasFocus();
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (b()) {
            a aVar = this.o;
            if (aVar != null && aVar.a(motionEvent)) {
                return true;
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
        if (this.n) {
            onStartTemporaryDetach();
        }
    }

    public void draw(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            if (this.s || getText().length() == 0) {
                if (!this.ad.a()) {
                    this.f1561a.a(canvas);
                } else {
                    this.ad.a(canvas, this.f1561a);
                }
            }
            if (this.v != null && this.x == 2) {
                if (getScrollX() != 0) {
                    h();
                }
                if (!this.ad.a()) {
                    this.v.draw(canvas);
                } else {
                    this.ad.a(canvas, this.v, this.E);
                }
            }
            if (this.x == 1) {
                int height = getHeight() - ((int) ((((double) this.D) / 2.0d) + 0.5d));
                this.S.setAlpha(this.V);
                if (!isEnabled()) {
                    float f2 = (float) height;
                    canvas.drawLine(0.0f, f2, (float) getWidth(), f2, this.U);
                } else if (!this.ad.a()) {
                    float f3 = (float) height;
                    float f4 = f3;
                    canvas.drawLine(0.0f, f3, (float) getWidth(), f4, this.T);
                    canvas.drawLine(0.0f, f4, this.W * ((float) getWidth()), f3, this.S);
                } else {
                    this.ad.a(canvas, height, getWidth(), (int) (this.W * ((float) getWidth())), this.T, this.S);
                }
            }
            canvas.restoreToCount(save);
        }
        super.draw(canvas);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004e  */
    public void drawableStateChanged() {
        boolean z2;
        if (Build.VERSION.SDK_INT < 23) {
            super.drawableStateChanged();
        } else if (!this.Q) {
            boolean z3 = true;
            this.Q = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (this.s) {
                if (!u.u(this) || !isEnabled()) {
                    z3 = false;
                }
                a(z3);
            }
            o();
            if (this.s) {
                h();
                p();
                b.a aVar = this.f1561a;
                if (aVar != null) {
                    z2 = aVar.a(drawableState) | false;
                    this.ad.a(drawableState);
                    if (z2) {
                        invalidate();
                    }
                    this.Q = false;
                }
            }
            z2 = false;
            if (z2) {
            }
            this.Q = false;
        }
    }

    public Rect getBackgroundRect() {
        int i2 = this.x;
        if (i2 == 1 || i2 == 2) {
            return getBoxBackground().getBounds();
        }
        return null;
    }

    public int getBoxStrokeColor() {
        return this.J;
    }

    public int getDeleteButtonLeft() {
        Drawable drawable = this.d;
        return ((getRight() - getLeft()) - getPaddingRight()) - (drawable != null ? drawable.getIntrinsicWidth() : 0);
    }

    public CharSequence getHint() {
        if (this.s) {
            return this.t;
        }
        return null;
    }

    public int getLabelMarginTop() {
        if (this.s) {
            return (int) (this.f1561a.d() / 2.0f);
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.ad.a(canvas);
    }

    /* access modifiers changed from: protected */
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        if (this.g) {
            b(z2);
        }
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!this.g || i2 != 67) {
            return super.onKeyDown(i2, keyEvent);
        }
        super.onKeyDown(i2, keyEvent);
        c cVar = this.j;
        if (cVar == null) {
            return true;
        }
        cVar.a();
        return true;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.v != null) {
                h();
            }
            if (this.s) {
                e();
            }
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int width = getWidth() - getCompoundPaddingRight();
            int i6 = i();
            this.f1561a.a(compoundPaddingLeft, getCompoundPaddingTop(), width, getHeight() - getCompoundPaddingBottom());
            this.f1561a.b(compoundPaddingLeft, i6, width, getHeight() - getCompoundPaddingBottom());
            this.f1561a.m();
            if (l() && !this.L) {
                m();
            }
            this.ad.c(this.f1561a);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.g && !TextUtils.isEmpty(getText()) && hasFocus()) {
            int right = ((getRight() - getLeft()) - getPaddingRight()) - this.k;
            if (getWidth() < this.k + getPaddingRight() + getPaddingLeft()) {
                return false;
            }
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z2 = !s() ? x2 > right : x2 < getCompoundPaddingLeft() - getPaddingRight();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action != 2) {
                        if (action == 3 || action == 4) {
                            Drawable drawable = this.d;
                            if (drawable != null) {
                                setCompoundDrawables((Drawable) null, (Drawable) null, drawable, (Drawable) null);
                            }
                        }
                    } else if (!z2 || y2 < 0 || y2 > getHeight()) {
                        Drawable drawable2 = this.d;
                        if (drawable2 != null) {
                            setCompoundDrawables((Drawable) null, (Drawable) null, drawable2, (Drawable) null);
                        }
                    }
                } else if (z2 && this.h && this.f) {
                    Drawable drawable3 = this.d;
                    if (drawable3 != null) {
                        setCompoundDrawables((Drawable) null, (Drawable) null, drawable3, (Drawable) null);
                    }
                    d dVar = this.i;
                    if (dVar == null || !dVar.a()) {
                        c();
                        this.f = false;
                        return true;
                    }
                }
            } else if (z2 && this.h) {
                this.f = true;
                Drawable drawable4 = this.e;
                if (drawable4 != null) {
                    setCompoundDrawables((Drawable) null, (Drawable) null, drawable4, (Drawable) null);
                }
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 != this.x) {
            this.x = i2;
            d();
        }
    }

    public void setBoxStrokeColor(int i2) {
        if (this.J != i2) {
            this.J = i2;
            p();
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        if (drawable3 != null) {
            this.k = drawable3.getBounds().width();
        } else {
            this.k = 0;
        }
    }

    public void setErrorState(boolean z2) {
        this.ad.a(z2);
    }

    public void setFastDeletable(boolean z2) {
        if (this.g != z2) {
            this.g = z2;
            if (this.g) {
                if (this.q == null) {
                    this.q = new e();
                    addTextChangedListener(this.q);
                }
                this.m = this.l.getResources().getDimensionPixelSize(R.dimen.oppo_edit_text_drawable_padding);
                setCompoundDrawablePadding(this.m);
            }
        }
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.s) {
            this.s = z2;
            if (!this.s) {
                this.u = false;
                if (!TextUtils.isEmpty(this.t) && TextUtils.isEmpty(getHint())) {
                    setHint(this.t);
                }
                setHintInternal((CharSequence) null);
                return;
            }
            CharSequence hint = getHint();
            if (!TextUtils.isEmpty(hint)) {
                if (TextUtils.isEmpty(this.t)) {
                    setTopHint(hint);
                }
                setHint((CharSequence) null);
            }
            this.u = true;
        }
    }

    public void setOnTextDeletedListener(d dVar) {
        this.i = dVar;
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        Selection.setSelection(getText(), length());
    }

    public void setTextDeletedListener(c cVar) {
        this.j = cVar;
    }

    public void setTopHint(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 23) {
            setHintInternal(charSequence);
        }
    }

    public void setmHintAnimationEnabled(boolean z2) {
        this.M = z2;
    }
}
