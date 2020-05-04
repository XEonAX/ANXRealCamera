package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.g.u;
import androidx.core.graphics.drawable.a;
import androidx.core.widget.i;

public class SwitchCompat extends CompoundButton {
    private static final int[] O = {16842912};
    private static final Property<SwitchCompat, Float> c = new Property<SwitchCompat, Float>(Float.class, "thumbPos") {
        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f287a);
        }

        /* renamed from: a */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    };
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private final TextPaint H;
    private ColorStateList I;
    private Layout J;
    private Layout K;
    private TransformationMethod L;
    private final w M;
    private final Rect N;

    /* renamed from: a  reason: collision with root package name */
    float f287a;

    /* renamed from: b  reason: collision with root package name */
    ObjectAnimator f288b;
    private Drawable d;
    private ColorStateList e;
    private PorterDuff.Mode f;
    private boolean g;
    private boolean h;
    private Drawable i;
    private ColorStateList j;
    private PorterDuff.Mode k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private CharSequence r;
    private CharSequence s;
    private boolean t;
    private int u;
    private int v;
    private float w;
    private float x;
    private VelocityTracker y;
    private int z;

    public SwitchCompat(Context context) {
        this(context, (AttributeSet) null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = false;
        this.j = null;
        this.k = null;
        this.l = false;
        this.m = false;
        this.y = VelocityTracker.obtain();
        this.N = new Rect();
        this.H = new TextPaint(1);
        Resources resources = getResources();
        this.H.density = resources.getDisplayMetrics().density;
        au a2 = au.a(context, attributeSet, R.styleable.SwitchCompat, i2, 0);
        this.d = a2.a(R.styleable.SwitchCompat_android_thumb);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.i = a2.a(R.styleable.SwitchCompat_track);
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.r = a2.c(R.styleable.SwitchCompat_android_textOn);
        this.s = a2.c(R.styleable.SwitchCompat_android_textOff);
        this.t = a2.a(R.styleable.SwitchCompat_showText, true);
        this.n = a2.e(R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.o = a2.e(R.styleable.SwitchCompat_switchMinWidth, 0);
        this.p = a2.e(R.styleable.SwitchCompat_switchPadding, 0);
        this.q = a2.a(R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList e2 = a2.e(R.styleable.SwitchCompat_thumbTint);
        if (e2 != null) {
            this.e = e2;
            this.g = true;
        }
        PorterDuff.Mode a3 = ac.a(a2.a(R.styleable.SwitchCompat_thumbTintMode, -1), (PorterDuff.Mode) null);
        if (this.f != a3) {
            this.f = a3;
            this.h = true;
        }
        if (this.g || this.h) {
            b();
        }
        ColorStateList e3 = a2.e(R.styleable.SwitchCompat_trackTint);
        if (e3 != null) {
            this.j = e3;
            this.l = true;
        }
        PorterDuff.Mode a4 = ac.a(a2.a(R.styleable.SwitchCompat_trackTintMode, -1), (PorterDuff.Mode) null);
        if (this.k != a4) {
            this.k = a4;
            this.m = true;
        }
        if (this.l || this.m) {
            a();
        }
        int g2 = a2.g(R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (g2 != 0) {
            a(context, g2);
        }
        this.M = new w(this);
        this.M.a(attributeSet, i2);
        a2.b();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.v = viewConfiguration.getScaledTouchSlop();
        this.z = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private static float a(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    private Layout a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.L;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        TextPaint textPaint = this.H;
        StaticLayout staticLayout = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil((double) Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        return staticLayout;
    }

    private void a() {
        if (this.i == null) {
            return;
        }
        if (this.l || this.m) {
            this.i = a.f(this.i).mutate();
            if (this.l) {
                a.a(this.i, this.j);
            }
            if (this.m) {
                a.a(this.i, this.k);
            }
            if (this.i.isStateful()) {
                this.i.setState(getDrawableState());
            }
        }
    }

    private void a(int i2, int i3) {
        a(i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i3);
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private void a(boolean z2) {
        this.f288b = ObjectAnimator.ofFloat(this, c, new float[]{z2 ? 1.0f : 0.0f});
        this.f288b.setDuration(250);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f288b.setAutoCancel(true);
        }
        this.f288b.start();
    }

    private boolean a(float f2, float f3) {
        if (this.d == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.d.getPadding(this.N);
        int i2 = this.E;
        int i3 = this.v;
        int i4 = i2 - i3;
        int i5 = (this.D + thumbOffset) - i3;
        int i6 = this.C + i5 + this.N.left + this.N.right;
        int i7 = this.v;
        return f2 > ((float) i5) && f2 < ((float) (i6 + i7)) && f3 > ((float) i4) && f3 < ((float) (this.G + i7));
    }

    private void b() {
        if (this.d == null) {
            return;
        }
        if (this.g || this.h) {
            this.d = a.f(this.d).mutate();
            if (this.g) {
                a.a(this.d, this.e);
            }
            if (this.h) {
                a.a(this.d, this.f);
            }
            if (this.d.isStateful()) {
                this.d.setState(getDrawableState());
            }
        }
    }

    private void b(MotionEvent motionEvent) {
        boolean z2;
        this.u = 0;
        boolean z3 = true;
        boolean z4 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z4) {
            this.y.computeCurrentVelocity(1000);
            float xVelocity = this.y.getXVelocity();
            if (Math.abs(xVelocity) > ((float) this.z)) {
                if (!ba.a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z3 = false;
                }
                z2 = z3;
            } else {
                z2 = getTargetCheckedState();
            }
        } else {
            z2 = isChecked;
        }
        if (z2 != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z2);
        a(motionEvent);
    }

    private void c() {
        ObjectAnimator objectAnimator = this.f288b;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private boolean getTargetCheckedState() {
        return this.f287a > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((ba.a(this) ? 1.0f - this.f287a : this.f287a) * ((float) getThumbScrollRange())) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.i;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.N;
        drawable.getPadding(rect);
        Drawable drawable2 = this.d;
        Rect a2 = drawable2 != null ? ac.a(drawable2) : ac.f303a;
        return ((((this.A - this.C) - rect.left) - rect.right) - a2.left) - a2.right;
    }

    public void a(Context context, int i2) {
        au a2 = au.a(context, i2, R.styleable.TextAppearance);
        ColorStateList e2 = a2.e(R.styleable.TextAppearance_android_textColor);
        if (e2 != null) {
            this.I = e2;
        } else {
            this.I = getTextColors();
        }
        int e3 = a2.e(R.styleable.TextAppearance_android_textSize, 0);
        if (e3 != 0) {
            float f2 = (float) e3;
            if (f2 != this.H.getTextSize()) {
                this.H.setTextSize(f2);
                requestLayout();
            }
        }
        a(a2.a(R.styleable.TextAppearance_android_typeface, -1), a2.a(R.styleable.TextAppearance_android_textStyle, -1));
        if (a2.a(R.styleable.TextAppearance_textAllCaps, false)) {
            this.L = new androidx.appcompat.c.a(getContext());
        } else {
            this.L = null;
        }
        a2.b();
    }

    public void a(Typeface typeface, int i2) {
        float f2 = 0.0f;
        boolean z2 = false;
        if (i2 > 0) {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setSwitchTypeface(defaultFromStyle);
            int i3 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i2;
            TextPaint textPaint = this.H;
            if ((i3 & 1) != 0) {
                z2 = true;
            }
            textPaint.setFakeBoldText(z2);
            TextPaint textPaint2 = this.H;
            if ((i3 & 2) != 0) {
                f2 = -0.25f;
            }
            textPaint2.setTextSkewX(f2);
            return;
        }
        this.H.setFakeBoldText(false);
        this.H.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void draw(Canvas canvas) {
        int i2;
        int i3;
        Rect rect = this.N;
        int i4 = this.D;
        int i5 = this.E;
        int i6 = this.F;
        int i7 = this.G;
        int thumbOffset = getThumbOffset() + i4;
        Drawable drawable = this.d;
        Rect a2 = drawable != null ? ac.a(drawable) : ac.f303a;
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            thumbOffset += rect.left;
            if (a2 != null) {
                if (a2.left > rect.left) {
                    i4 += a2.left - rect.left;
                }
                i2 = a2.top > rect.top ? (a2.top - rect.top) + i5 : i5;
                if (a2.right > rect.right) {
                    i6 -= a2.right - rect.right;
                }
                if (a2.bottom > rect.bottom) {
                    i3 = i7 - (a2.bottom - rect.bottom);
                    this.i.setBounds(i4, i2, i6, i3);
                }
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.i.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.d;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i8 = thumbOffset - rect.left;
            int i9 = thumbOffset + this.C + rect.right;
            this.d.setBounds(i8, i5, i9, i7);
            Drawable background = getBackground();
            if (background != null) {
                a.a(background, i8, i5, i9, i7);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            a.a(drawable, f2, f3);
        }
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            a.a(drawable2, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.d;
        boolean z2 = false;
        if (drawable != null && drawable.isStateful()) {
            z2 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.i;
        if (drawable2 != null && drawable2.isStateful()) {
            z2 |= drawable2.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    public int getCompoundPaddingLeft() {
        if (!ba.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.p : compoundPaddingLeft;
    }

    public int getCompoundPaddingRight() {
        if (ba.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.p : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.t;
    }

    public boolean getSplitTrack() {
        return this.q;
    }

    public int getSwitchMinWidth() {
        return this.o;
    }

    public int getSwitchPadding() {
        return this.p;
    }

    public CharSequence getTextOff() {
        return this.s;
    }

    public CharSequence getTextOn() {
        return this.r;
    }

    public Drawable getThumbDrawable() {
        return this.d;
    }

    public int getThumbTextPadding() {
        return this.n;
    }

    public ColorStateList getThumbTintList() {
        return this.e;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f;
    }

    public Drawable getTrackDrawable() {
        return this.i;
    }

    public ColorStateList getTrackTintList() {
        return this.j;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.k;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f288b;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.f288b.end();
            this.f288b = null;
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, O);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        super.onDraw(canvas);
        Rect rect = this.N;
        Drawable drawable = this.i;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i3 = this.E;
        int i4 = this.G;
        int i5 = i3 + rect.top;
        int i6 = i4 - rect.bottom;
        Drawable drawable2 = this.d;
        if (drawable != null) {
            if (!this.q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect a2 = ac.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a2.left;
                rect.right -= a2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.J : this.K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.I;
            if (colorStateList != null) {
                this.H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.H.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i2 = bounds.left + bounds.right;
            } else {
                i2 = getWidth();
            }
            canvas.translate((float) ((i2 / 2) - (layout.getWidth() / 2)), (float) (((i5 + i6) / 2) - (layout.getHeight() / 2)));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.r : this.s;
        if (!TextUtils.isEmpty(charSequence)) {
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        super.onLayout(z2, i2, i3, i4, i5);
        int i12 = 0;
        if (this.d != null) {
            Rect rect = this.N;
            Drawable drawable = this.i;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a2 = ac.a(this.d);
            i6 = Math.max(0, a2.left - rect.left);
            i12 = Math.max(0, a2.right - rect.right);
        } else {
            i6 = 0;
        }
        if (ba.a(this)) {
            i8 = getPaddingLeft() + i6;
            i7 = ((this.A + i8) - i6) - i12;
        } else {
            i7 = (getWidth() - getPaddingRight()) - i12;
            i8 = (i7 - this.A) + i6 + i12;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i11 = this.B;
            i10 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i11 / 2);
        } else if (gravity != 80) {
            i10 = getPaddingTop();
            i11 = this.B;
        } else {
            i9 = getHeight() - getPaddingBottom();
            i10 = i9 - this.B;
            this.D = i8;
            this.E = i10;
            this.G = i9;
            this.F = i7;
        }
        i9 = i11 + i10;
        this.D = i8;
        this.E = i10;
        this.G = i9;
        this.F = i7;
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        if (this.t) {
            if (this.J == null) {
                this.J = a(this.r);
            }
            if (this.K == null) {
                this.K = a(this.s);
            }
        }
        Rect rect = this.N;
        Drawable drawable = this.d;
        int i6 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i5 = (this.d.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.d.getIntrinsicHeight();
        } else {
            i5 = 0;
            i4 = 0;
        }
        this.C = Math.max(this.t ? Math.max(this.J.getWidth(), this.K.getWidth()) + (this.n * 2) : 0, i5);
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.i.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.d;
        if (drawable3 != null) {
            Rect a2 = ac.a(drawable3);
            i7 = Math.max(i7, a2.left);
            i8 = Math.max(i8, a2.right);
        }
        int max = Math.max(this.o, (this.C * 2) + i7 + i8);
        int max2 = Math.max(i6, i4);
        this.A = max;
        this.B = max2;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.r : this.s;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0012, code lost:
        if (r0 != 3) goto L_0x00b9;
     */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.y.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.u;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            float x2 = motionEvent.getX();
                            float y2 = motionEvent.getY();
                            if (Math.abs(x2 - this.w) > ((float) this.v) || Math.abs(y2 - this.x) > ((float) this.v)) {
                                this.u = 2;
                                getParent().requestDisallowInterceptTouchEvent(true);
                                this.w = x2;
                                this.x = y2;
                                return true;
                            }
                        } else if (i2 == 2) {
                            float x3 = motionEvent.getX();
                            int thumbScrollRange = getThumbScrollRange();
                            float f2 = x3 - this.w;
                            float f3 = thumbScrollRange != 0 ? f2 / ((float) thumbScrollRange) : f2 > 0.0f ? 1.0f : -1.0f;
                            if (ba.a(this)) {
                                f3 = -f3;
                            }
                            float a2 = a(this.f287a + f3, 0.0f, 1.0f);
                            if (a2 != this.f287a) {
                                this.w = x3;
                                setThumbPosition(a2);
                            }
                            return true;
                        }
                    }
                }
            }
            if (this.u == 2) {
                b(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.u = 0;
            this.y.clear();
        } else {
            float x4 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (isEnabled() && a(x4, y3)) {
                this.u = 1;
                this.w = x4;
                this.x = y3;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean isChecked = isChecked();
        if (getWindowToken() == null || !u.u(this)) {
            c();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        a(isChecked);
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i.a((TextView) this, callback));
    }

    public void setShowText(boolean z2) {
        if (this.t != z2) {
            this.t = z2;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z2) {
        this.q = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.o = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.p = i2;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.H.getTypeface() != null && !this.H.getTypeface().equals(typeface)) || (this.H.getTypeface() == null && typeface != null)) {
            this.H.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setTextOff(CharSequence charSequence) {
        this.s = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.r = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void setThumbPosition(float f2) {
        this.f287a = f2;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(androidx.appcompat.a.a.a.b(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.n = i2;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.e = colorStateList;
        this.g = true;
        b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f = mode;
        this.h = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.i;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.i = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(androidx.appcompat.a.a.a.b(getContext(), i2));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.l = true;
        a();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.m = true;
        a();
    }

    public void toggle() {
        setChecked(!isChecked());
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.d || drawable == this.i;
    }
}
