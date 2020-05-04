package com.color.support.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.Scroller;
import color.support.v7.appcompat.R;
import com.color.support.d.i;
import com.color.support.d.j;
import com.google.protobuf.nano.MessageNano;
import com.oppo.util.ColorOSHapticFeedbackUtils;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class ColorNumberPicker extends LinearLayout {
    private b A;
    private float B;
    private long C;
    private float D;
    private VelocityTracker E;
    private int F;
    private int G;
    private int H;
    private int I;
    private boolean J;
    /* access modifiers changed from: private */
    public int K;
    /* access modifiers changed from: private */
    public int L;
    private int M;
    /* access modifiers changed from: private */
    public boolean N;
    /* access modifiers changed from: private */
    public boolean O;
    private a P;
    private int Q;
    /* access modifiers changed from: private */
    public AccessibilityManager R;
    private i S;
    private HandlerThread T;
    private Handler U;
    private int V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    private final int f1604a;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private int ak;
    private int al;
    private int am;
    private int an;
    private int ao;
    private int ap;
    private float aq;
    private float ar;
    /* access modifiers changed from: private */
    public String as;
    private boolean at;
    private float au;
    private float av;
    private float aw;

    /* renamed from: b  reason: collision with root package name */
    private final int f1605b;
    private final int c;
    private final int d;
    /* access modifiers changed from: private */
    public final SparseArray<String> e;
    private final Paint f;
    private final Scroller g;
    private final Scroller h;
    private final f i;
    private int j;
    private int k;
    private String[] l;
    private int m;
    private int n;
    /* access modifiers changed from: private */
    public int o;
    private e p;
    private d q;
    private boolean r;
    private boolean s;
    private c t;
    /* access modifiers changed from: private */
    public long u;
    private int[] v;
    private int w;
    private int x;
    private int y;
    private int z;

    class a extends AccessibilityNodeProvider {

        /* renamed from: b  reason: collision with root package name */
        private final Rect f1607b = new Rect();
        private final int[] c = new int[2];
        private int d = MessageNano.UNSET_ENUM_VALUE;

        a() {
        }

        private AccessibilityNodeInfo a(int i, String str, int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
            obtain.setPackageName(ColorNumberPicker.this.getContext().getPackageName());
            obtain.setSource(ColorNumberPicker.this, i);
            obtain.setParent(ColorNumberPicker.this);
            if (!TextUtils.isEmpty(ColorNumberPicker.this.as)) {
                str = str + ColorNumberPicker.this.as;
            }
            obtain.setText(str);
            obtain.setClickable(true);
            obtain.setLongClickable(true);
            obtain.setEnabled(ColorNumberPicker.this.isEnabled());
            Rect rect = this.f1607b;
            rect.set(i2, i3, i4, i5);
            obtain.setBoundsInParent(rect);
            int[] iArr = this.c;
            ColorNumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.d != i) {
                obtain.addAction(64);
            }
            if (this.d == i) {
                obtain.addAction(128);
            }
            if (ColorNumberPicker.this.isEnabled()) {
                obtain.addAction(16);
            }
            return obtain;
        }

        private void a(int i, int i2, String str) {
            if (ColorNumberPicker.this.R.isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
                obtain.setPackageName(ColorNumberPicker.this.getContext().getPackageName());
                obtain.getText().add(str);
                obtain.setEnabled(ColorNumberPicker.this.isEnabled());
                obtain.setSource(ColorNumberPicker.this, i);
                ColorNumberPicker colorNumberPicker = ColorNumberPicker.this;
                colorNumberPicker.requestSendAccessibilityEvent(colorNumberPicker, obtain);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i, int i2) {
            a(i, i2, (String) null);
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            return a(0, (String) ColorNumberPicker.this.e.get(ColorNumberPicker.this.o), ColorNumberPicker.this.getScrollX(), ColorNumberPicker.this.getScrollY(), ColorNumberPicker.this.getScrollX() + (ColorNumberPicker.this.getRight() - ColorNumberPicker.this.getLeft()), ColorNumberPicker.this.getScrollY() + (ColorNumberPicker.this.getBottom() - ColorNumberPicker.this.getTop()));
        }

        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            return TextUtils.isEmpty(str) ? Collections.emptyList() : super.findAccessibilityNodeInfosByText(str, i);
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            if (i != -1) {
                if (i == 0) {
                    if (i2 == 16) {
                        return ColorNumberPicker.this.isEnabled();
                    }
                    if (i2 != 64) {
                        if (i2 != 128 || this.d != i) {
                            return false;
                        }
                        this.d = MessageNano.UNSET_ENUM_VALUE;
                        a(i, STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD);
                        ColorNumberPicker colorNumberPicker = ColorNumberPicker.this;
                        colorNumberPicker.invalidate(0, 0, colorNumberPicker.getRight(), ColorNumberPicker.this.K);
                        return true;
                    } else if (this.d == i) {
                        return false;
                    } else {
                        this.d = i;
                        a(i, STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT);
                        ColorNumberPicker colorNumberPicker2 = ColorNumberPicker.this;
                        colorNumberPicker2.invalidate(0, 0, colorNumberPicker2.getRight(), ColorNumberPicker.this.K);
                        return true;
                    }
                }
            } else if (i2 != 64) {
                if (i2 != 128) {
                    if (i2 != 4096) {
                        if (i2 == 8192) {
                            if (!ColorNumberPicker.this.isEnabled()) {
                                return false;
                            }
                            ColorNumberPicker.this.a(false);
                            return true;
                        }
                    } else if (!ColorNumberPicker.this.isEnabled()) {
                        return false;
                    } else {
                        ColorNumberPicker.this.a(true);
                        return true;
                    }
                } else if (this.d != i) {
                    return false;
                } else {
                    this.d = MessageNano.UNSET_ENUM_VALUE;
                    return true;
                }
            } else if (this.d == i) {
                return false;
            } else {
                this.d = i;
                return true;
            }
            return super.performAction(i, i2, bundle);
        }
    }

    class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1609b;

        b() {
        }

        /* access modifiers changed from: private */
        public void a(boolean z) {
            this.f1609b = z;
        }

        public void run() {
            ColorNumberPicker.this.a(this.f1609b);
            ColorNumberPicker colorNumberPicker = ColorNumberPicker.this;
            colorNumberPicker.postDelayed(this, colorNumberPicker.u);
        }
    }

    public interface c {
        String a(int i);
    }

    public interface d {
        void a(ColorNumberPicker colorNumberPicker, int i);
    }

    public interface e {
        void a(ColorNumberPicker colorNumberPicker, int i, int i2);
    }

    class f implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final int f1611b = 1;
        private final int c = 2;
        private int d;
        private int e;

        f() {
        }

        public void a() {
            this.e = 0;
            this.d = 0;
            ColorNumberPicker.this.removeCallbacks(this);
            if (ColorNumberPicker.this.N) {
                boolean unused = ColorNumberPicker.this.N = false;
                ColorNumberPicker colorNumberPicker = ColorNumberPicker.this;
                colorNumberPicker.invalidate(0, colorNumberPicker.L, ColorNumberPicker.this.getRight(), ColorNumberPicker.this.getBottom());
            }
            boolean unused2 = ColorNumberPicker.this.O = false;
            if (ColorNumberPicker.this.O) {
                ColorNumberPicker colorNumberPicker2 = ColorNumberPicker.this;
                colorNumberPicker2.invalidate(0, 0, colorNumberPicker2.getRight(), ColorNumberPicker.this.K);
            }
        }

        public void a(int i) {
            a();
            this.e = 1;
            this.d = i;
            ColorNumberPicker.this.postDelayed(this, (long) ViewConfiguration.getTapTimeout());
        }

        public void b(int i) {
            a();
            this.e = 2;
            this.d = i;
            ColorNumberPicker.this.post(this);
        }

        public void run() {
            int i = this.e;
            if (i == 1) {
                int i2 = this.d;
                if (i2 == 1) {
                    boolean unused = ColorNumberPicker.this.N = true;
                    ColorNumberPicker colorNumberPicker = ColorNumberPicker.this;
                    colorNumberPicker.invalidate(0, colorNumberPicker.L, ColorNumberPicker.this.getRight(), ColorNumberPicker.this.getBottom());
                } else if (i2 == 2) {
                    boolean unused2 = ColorNumberPicker.this.O = true;
                    ColorNumberPicker colorNumberPicker2 = ColorNumberPicker.this;
                    colorNumberPicker2.invalidate(0, 0, colorNumberPicker2.getRight(), ColorNumberPicker.this.K);
                }
            } else if (i == 2) {
                int i3 = this.d;
                if (i3 == 1) {
                    if (!ColorNumberPicker.this.N) {
                        ColorNumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                    }
                    ColorNumberPicker colorNumberPicker3 = ColorNumberPicker.this;
                    boolean unused3 = colorNumberPicker3.N = !colorNumberPicker3.N;
                    ColorNumberPicker colorNumberPicker4 = ColorNumberPicker.this;
                    colorNumberPicker4.invalidate(0, colorNumberPicker4.L, ColorNumberPicker.this.getRight(), ColorNumberPicker.this.getBottom());
                } else if (i3 == 2) {
                    if (!ColorNumberPicker.this.O) {
                        ColorNumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                    }
                    ColorNumberPicker colorNumberPicker5 = ColorNumberPicker.this;
                    boolean unused4 = colorNumberPicker5.O = !colorNumberPicker5.O;
                    ColorNumberPicker colorNumberPicker6 = ColorNumberPicker.this;
                    colorNumberPicker6.invalidate(0, 0, colorNumberPicker6.getRight(), ColorNumberPicker.this.K);
                }
            }
        }
    }

    private class g extends Handler {
        g(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                ColorNumberPicker.this.c();
                ColorNumberPicker.this.d();
            } else if (i == 1) {
                String str = (String) ColorNumberPicker.this.e.get(((Integer) message.obj).intValue());
                if (!TextUtils.isEmpty(str)) {
                    if (!TextUtils.isEmpty(ColorNumberPicker.this.as)) {
                        str = str + ColorNumberPicker.this.as;
                    }
                    ColorNumberPicker.this.announceForAccessibility(str);
                } else {
                    return;
                }
            }
            super.handleMessage(message);
        }
    }

    public ColorNumberPicker(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorNumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorNumberPickerStyle);
    }

    public ColorNumberPicker(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ColorNumberPicker(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.e = new SparseArray<>();
        this.r = true;
        this.u = 300;
        this.x = MessageNano.UNSET_ENUM_VALUE;
        this.I = 0;
        this.Q = -1;
        this.V = 5;
        this.W = this.V / 2;
        com.color.support.d.d.a(this, false);
        context.setTheme(R.style.ColorNumberPicker);
        this.R = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.S = i.a();
        this.aa = this.S.a(context, R.raw.color_numberpicker_click);
        this.v = new int[this.V];
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorNumberPicker, i2, 0);
        this.f1604a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_internalMinHeight, -1);
        this.f1605b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_internalMaxHeight, -1);
        int i4 = this.f1604a;
        if (i4 != -1) {
            int i5 = this.f1605b;
            if (i5 != -1 && i4 > i5) {
                throw new IllegalArgumentException("minHeight > maxHeight");
            }
        }
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_internalMinWidth, -1);
        this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_internalMaxWidth, -1);
        int i6 = this.c;
        if (i6 != -1) {
            int i7 = this.j;
            if (i7 != -1 && i6 > i7) {
                throw new IllegalArgumentException("minWidth > maxWidth");
            }
        }
        this.am = obtainStyledAttributes.getInteger(R.styleable.ColorNumberPicker_colorPickerAlignPosition, -1);
        this.an = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_focusTextSize, -1);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_startTextSize, -1);
        this.al = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_colorPickerVisualWidth, -1);
        this.ao = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_colorNOPickerPaddingLeft, 0);
        this.ap = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorNumberPicker_colorNOPickerPaddingRight, 0);
        a(obtainStyledAttributes.getColor(R.styleable.ColorNumberPicker_colorNormalTextColor, -1), obtainStyledAttributes.getColor(R.styleable.ColorNumberPicker_colorFocusTextColor, -1));
        obtainStyledAttributes.recycle();
        this.au = getResources().getDimension(R.dimen.color_numberpicker_ignore_bar_width);
        this.av = getResources().getDimension(R.dimen.color_numberpicker_ignore_bar_height);
        this.aw = getResources().getDimension(R.dimen.color_numberpicker_ignore_bar_spacing);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.F = viewConfiguration.getScaledTouchSlop();
        this.G = viewConfiguration.getScaledMinimumFlingVelocity();
        this.H = viewConfiguration.getScaledMaximumFlingVelocity() / 8;
        Paint paint = new Paint();
        paint.setTextSize((float) this.d);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        paint.setTypeface(Typeface.create("sys-sans-en", 0));
        this.aq = fontMetrics.top;
        this.ar = fontMetrics.bottom;
        this.f = paint;
        this.g = new Scroller(getContext(), (Interpolator) null, true);
        this.h = new Scroller(getContext(), new DecelerateInterpolator(2.5f));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.i = new f();
        setWillNotDraw(false);
        setVerticalScrollBarEnabled(false);
    }

    private float a(int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8 = i3;
        int i9 = i4;
        int i10 = i5;
        int i11 = i6;
        int i12 = this.x;
        int i13 = this.W;
        int i14 = this.w;
        int i15 = (i13 * i14) + i12;
        int length = ((this.v.length - 1) * i14) + i12;
        double d2 = (double) i11;
        double d3 = (double) i15;
        if (d2 > d3 - (((double) i14) * 0.5d)) {
            i7 = length;
            if (d2 < d3 + (((double) i14) * 0.5d)) {
                return ((float) i8) - (((((float) (i8 - i2)) * 2.0f) * ((float) Math.abs(i11 - i15))) / ((float) this.w));
            }
        } else {
            i7 = length;
        }
        int i16 = this.w;
        return i11 <= i15 - i16 ? ((float) i9) + ((((((float) (i10 - i9)) * 1.0f) * ((float) (i11 - i12))) / ((float) i16)) / 2.0f) : i11 >= i15 + i16 ? ((float) i9) + ((((((float) (i10 - i9)) * 1.0f) * ((float) (i7 - i11))) / ((float) i16)) / 2.0f) : (float) i10;
    }

    private int a(int i2, int i3, float f2) {
        return i3 - ((int) (((float) ((i3 - i2) * 2)) * f2));
    }

    private int a(int i2, int i3, int i4) {
        return i2 != -1 ? resolveSizeAndState(Math.max(i2, i3), i4, 0) : i3;
    }

    private static String a(int i2) {
        return String.format(Locale.getDefault(), "%d", new Object[]{Integer.valueOf(i2)});
    }

    private void a() {
        boolean z2 = true;
        if (!(this.n - this.m >= this.v.length) || !this.r) {
            z2 = false;
        }
        this.s = z2;
    }

    private void a(int i2, boolean z2) {
        if (this.o == i2) {
            b();
            return;
        }
        int e2 = this.s ? e(i2) : Math.min(Math.max(i2, this.m), this.n);
        int i3 = this.o;
        this.o = e2;
        if (z2) {
            d(i3, e2);
            this.U.sendEmptyMessage(0);
            AccessibilityManager accessibilityManager = this.R;
            if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                Message message = new Message();
                message.what = 1;
                message.obj = Integer.valueOf(e2);
                this.U.sendMessage(message);
            }
        }
        b();
        invalidate();
    }

    /* access modifiers changed from: private */
    public void a(boolean z2) {
        if (!a(this.g)) {
            a(this.h);
        }
        this.z = 0;
        if (z2) {
            this.g.startScroll(0, 0, 0, -this.w, 300);
        } else {
            this.g.startScroll(0, 0, 0, this.w, 300);
        }
        invalidate();
    }

    private void a(boolean z2, long j2) {
        b bVar = this.A;
        if (bVar == null) {
            this.A = new b();
        } else {
            removeCallbacks(bVar);
        }
        this.A.a(z2);
        postDelayed(this.A, j2);
    }

    private void a(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = c(iArr[i2], 1);
        }
        f(iArr[iArr.length - 1]);
    }

    private boolean a(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i2 = this.x - ((this.y + finalY) % this.w);
        if (i2 == 0) {
            return false;
        }
        int abs = Math.abs(i2);
        int i3 = this.w;
        if (abs > i3 / 2) {
            i2 = i2 > 0 ? i2 - i3 : i2 + i3;
        }
        scrollBy(0, finalY + i2);
        return true;
    }

    private int b(int i2) {
        return Math.abs((i2 - this.x) - (this.W * this.w)) / this.w;
    }

    private int b(int i2, int i3) {
        if (i3 == -1) {
            return i2;
        }
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (mode == 0) {
            return View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        if (mode == 1073741824) {
            return i2;
        }
        throw new IllegalArgumentException("Unknown measure mode: " + mode);
    }

    private void b() {
        this.e.clear();
        int[] iArr = this.v;
        int value = getValue();
        for (int i2 = 0; i2 < this.v.length; i2++) {
            int i3 = i2 - this.W;
            int c2 = this.at ? c(value, i3) : i3 + value;
            if (this.s) {
                c2 = e(c2);
            }
            iArr[i2] = c2;
            f(iArr[i2]);
        }
    }

    private void b(Scroller scroller) {
        if (scroller == this.g) {
            i();
            c(0);
            return;
        }
        int i2 = this.I;
    }

    private void b(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = c(iArr[i2], -1);
        }
        f(iArr[0]);
    }

    private int c(int i2, int i3) {
        int i4 = this.n;
        int i5 = this.m;
        if (i4 - i5 <= 0) {
            return -1;
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = i5 - 1;
        }
        int i6 = this.n;
        int i7 = this.m;
        int a2 = j.a((i2 - i7) + i3, (i6 - i7) + 1 + (this.at ? 1 : 0));
        int i8 = this.n;
        int i9 = this.m;
        return a2 < (i8 - i9) + 1 ? i9 + a2 : MessageNano.UNSET_ENUM_VALUE;
    }

    /* access modifiers changed from: private */
    public void c() {
        this.S.a(getContext(), this.aa, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    private void c(int i2) {
        if (this.I != i2) {
            this.I = i2;
            d dVar = this.q;
            if (dVar != null) {
                dVar.a(this, i2);
            }
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        ColorOSHapticFeedbackUtils.performHapticFeedback(this, 302, 0);
    }

    private void d(int i2) {
        this.z = 0;
        if (i2 > 0) {
            this.g.fling(0, 0, 0, i2, 0, 0, 0, Integer.MAX_VALUE);
        } else {
            this.g.fling(0, Integer.MAX_VALUE, 0, i2, 0, 0, 0, Integer.MAX_VALUE);
        }
        invalidate();
    }

    private void d(int i2, int i3) {
        e eVar = this.p;
        if (eVar != null) {
            eVar.a(this, i2, this.o);
        }
    }

    private int e(int i2) {
        return c(i2, 0);
    }

    private void e() {
        b();
        int[] iArr = this.v;
        this.k = (int) ((((float) ((getBottom() - getTop()) - (iArr.length * this.d))) / ((float) iArr.length)) + 0.5f);
        this.w = this.d + this.k;
        this.x = 0;
        this.y = 0;
        this.K = (getHeight() / 2) - (this.w / 2);
        this.L = (getHeight() / 2) + (this.w / 2);
    }

    private void f() {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(((getBottom() - getTop()) - this.d) / 2);
    }

    private void f(int i2) {
        String str;
        SparseArray<String> sparseArray = this.e;
        if (sparseArray.get(i2) == null) {
            int i3 = this.m;
            if (i2 < i3 || i2 > this.n) {
                str = "";
            } else {
                String[] strArr = this.l;
                str = strArr != null ? strArr[i2 - i3] : g(i2);
            }
            sparseArray.put(i2, str);
        }
    }

    private String g(int i2) {
        c cVar = this.t;
        return cVar != null ? cVar.a(i2) : a(i2);
    }

    private void g() {
        b bVar = this.A;
        if (bVar != null) {
            removeCallbacks(bVar);
        }
    }

    private void h() {
        b bVar = this.A;
        if (bVar != null) {
            removeCallbacks(bVar);
        }
        this.i.a();
    }

    private boolean i() {
        int i2 = this.x - this.y;
        if (i2 == 0) {
            return false;
        }
        this.z = 0;
        int abs = Math.abs(i2);
        int i3 = this.w;
        if (abs > i3 / 2) {
            if (i2 > 0) {
                i3 = -i3;
            }
            i2 += i3;
        }
        this.h.startScroll(0, 0, 0, i2, 800);
        invalidate();
        return true;
    }

    private void j() {
        int i2 = this.x;
        int i3 = this.w;
        int i4 = this.W;
        this.ab = (int) (((double) i2) + (((double) i3) * (((double) i4) - 0.5d)));
        this.ac = (int) (((double) i2) + (((double) i3) * (((double) i4) + 0.5d)));
    }

    public void a(int i2, int i3) {
        this.ad = Color.alpha(i2);
        this.ah = Color.alpha(i3);
        this.ae = Color.red(i2);
        this.ai = Color.red(i3);
        this.af = Color.green(i2);
        this.aj = Color.green(i3);
        this.ag = Color.blue(i2);
        this.ak = Color.blue(i3);
    }

    public void computeScroll() {
        Scroller scroller = this.g;
        if (scroller.isFinished()) {
            scroller = this.h;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (this.z == 0) {
            this.z = scroller.getStartY();
        }
        scrollBy(0, currY - this.z);
        this.z = currY;
        if (scroller.isFinished()) {
            b(scroller);
        } else {
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollExtent() {
        return getHeight();
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollOffset() {
        return this.y;
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollRange() {
        return ((this.n - this.m) + 1) * this.w;
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.R.isEnabled()) {
            int actionMasked = motionEvent.getActionMasked();
            a aVar = (a) getAccessibilityNodeProvider();
            if (actionMasked == 7) {
                int i2 = this.M;
                if (!(i2 == 0 || i2 == -1)) {
                    aVar.a(i2, 256);
                    aVar.a(0, 128);
                    this.M = 0;
                    aVar.performAction(0, 64, (Bundle) null);
                }
            } else if (actionMasked == 9) {
                aVar.a(0, 128);
                this.M = 0;
                aVar.performAction(0, 64, (Bundle) null);
            } else if (actionMasked == 10) {
                aVar.a(0, 256);
                this.M = -1;
            }
        }
        return false;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19 || keyCode == 20) {
            int action = keyEvent.getAction();
            if (action == 0) {
                if (!this.s) {
                    if (keyCode == 20) {
                    }
                }
                requestFocus();
                this.Q = keyCode;
                h();
                if (this.g.isFinished()) {
                    a(keyCode == 20);
                }
                return true;
            } else if (action == 1 && this.Q == keyCode) {
                this.Q = -1;
                return true;
            }
        } else if (keyCode == 23 || keyCode == 66) {
            h();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            h();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            h();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (this.P == null) {
            this.P = new a();
        }
        return this.P;
    }

    /* access modifiers changed from: protected */
    public float getBottomFadingEdgeStrength() {
        return 0.9f;
    }

    public String[] getDisplayedValues() {
        return this.l;
    }

    public int getMaxValue() {
        return this.n;
    }

    public int getMinValue() {
        return this.m;
    }

    public float getTextSize() {
        return this.f.getTextSize();
    }

    /* access modifiers changed from: protected */
    public float getTopFadingEdgeStrength() {
        return 0.9f;
    }

    public int getValue() {
        return this.o;
    }

    public boolean getWrapSelectorWheel() {
        return this.s;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.T = new HandlerThread("touchEffect", -16);
        this.T.start();
        this.U = new g(this.T.getLooper());
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
        HandlerThread handlerThread = this.T;
        if (handlerThread != null) {
            handlerThread.quit();
            this.T = null;
        }
        Handler handler = this.U;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 2;
        float right = (float) ((getRight() - getLeft()) / 2);
        int i9 = this.y;
        int i10 = this.al;
        if (i10 != -1 && i10 < getRight() - getLeft()) {
            int i11 = this.am;
            if (i11 != 0) {
                if (i11 == 1) {
                    i7 = this.al / 2;
                } else if (i11 == 2) {
                    int right2 = getRight() - getLeft();
                    int i12 = this.al;
                    i7 = (right2 - i12) + (i12 / 2);
                }
                right = (float) i7;
            }
        }
        int i13 = this.ao;
        if (i13 != 0) {
            right += (float) i13;
        }
        int i14 = this.ap;
        if (i14 != 0) {
            right -= (float) i14;
        }
        float f2 = right;
        int[] iArr = this.v;
        int i15 = 0;
        int i16 = i9;
        while (i15 < iArr.length) {
            int i17 = iArr[i15];
            if (i16 <= this.ab || i16 >= this.ac) {
                i4 = this.ad;
                i3 = this.ae;
                i2 = this.af;
                i5 = this.ag;
            } else {
                float b2 = (float) b(i16);
                i4 = a(this.ad, this.ah, b2);
                i3 = a(this.ae, this.ai, b2);
                i2 = a(this.af, this.aj, b2);
                i5 = a(this.ag, this.ak, b2);
            }
            int argb = Color.argb(i4, i3, i2, i5);
            int i18 = this.d;
            float a2 = a(i18, this.an, i18, i18, i16);
            this.f.setColor(argb);
            this.f.setTextSize(a2);
            if (i17 != Integer.MIN_VALUE) {
                if (i15 == this.W) {
                    Paint.FontMetrics fontMetrics = this.f.getFontMetrics();
                    i6 = ((int) ((((float) ((i16 + i16) + this.w)) - fontMetrics.top) - fontMetrics.bottom)) / i8;
                } else {
                    i6 = ((int) ((((float) ((i16 + i16) + this.w)) - this.aq) - this.ar)) / i8;
                }
                canvas.drawText(this.e.get(i17), f2, (float) i6, this.f);
            } else {
                Canvas canvas2 = canvas;
                float f3 = a2 / ((float) this.an);
                for (float f4 = -0.5f; f4 < 1.0f; f4 += 1.0f) {
                    float f5 = this.au;
                    float f6 = ((this.aw + f5) * f4 * f3) + f2;
                    float f7 = (f5 * f3) / 2.0f;
                    float f8 = (float) i16;
                    int i19 = this.w;
                    float f9 = (this.av * f3) / 2.0f;
                    canvas.drawRect(f6 - f7, ((((float) i19) / 2.0f) + f8) - f9, f7 + f6, f8 + (((float) i19) / 2.0f) + f9, this.f);
                }
            }
            i16 += this.w;
            i15++;
            i8 = 2;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        h();
        float y2 = motionEvent.getY();
        this.B = y2;
        this.D = y2;
        this.C = motionEvent.getEventTime();
        this.J = false;
        float f2 = this.B;
        if (f2 < ((float) this.K)) {
            if (this.I == 0) {
                this.i.a(2);
            }
        } else if (f2 > ((float) this.L) && this.I == 0) {
            this.i.a(1);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.g.isFinished()) {
            this.g.forceFinished(true);
            this.h.forceFinished(true);
            c(0);
        } else if (!this.h.isFinished()) {
            this.g.forceFinished(true);
            this.h.forceFinished(true);
        } else {
            float f3 = this.B;
            if (f3 < ((float) this.K)) {
                a(false, (long) ViewConfiguration.getLongPressTimeout());
            } else if (f3 > ((float) this.L)) {
                a(true, (long) ViewConfiguration.getLongPressTimeout());
            } else {
                this.J = true;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (z2) {
            e();
            f();
        }
        j();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(b(i2, this.j), b(i3, this.f1605b));
        setMeasuredDimension(a(this.c, getMeasuredWidth(), i2) + ((this.ap + this.ao) * 2), a(this.f1604a, getMeasuredHeight(), i3));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (this.E == null) {
            this.E = VelocityTracker.obtain();
        }
        this.E.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            g();
            this.i.a();
            VelocityTracker velocityTracker = this.E;
            velocityTracker.computeCurrentVelocity(1000, (float) this.H);
            int yVelocity = (int) velocityTracker.getYVelocity();
            if (Math.abs(yVelocity) > this.G) {
                d(yVelocity * 2);
                c(2);
            } else {
                int y2 = (int) motionEvent.getY();
                int abs = (int) Math.abs(((float) y2) - this.B);
                long eventTime = motionEvent.getEventTime() - this.C;
                if (abs > this.F || eventTime >= ((long) ViewConfiguration.getTapTimeout())) {
                    i();
                } else if (this.J) {
                    this.J = false;
                    performClick();
                } else {
                    int i2 = (y2 / this.w) - this.W;
                    if (i2 > 0) {
                        a(true);
                        this.i.b(1);
                    } else if (i2 < 0) {
                        a(false);
                        this.i.b(2);
                    }
                    i();
                }
                c(0);
            }
            this.E.recycle();
            this.E = null;
        } else if (actionMasked == 2) {
            float y3 = motionEvent.getY();
            if (this.I == 1) {
                scrollBy(0, (int) (y3 - this.D));
                invalidate();
            } else if (((int) Math.abs(y3 - this.B)) > this.F) {
                h();
                c(1);
            }
            this.D = y3;
        }
        return true;
    }

    public void scrollBy(int i2, int i3) {
        int i4;
        int[] iArr = this.v;
        int i5 = this.y;
        if (!this.s && i3 > 0 && iArr[this.W] <= this.m) {
            this.y = this.x;
        } else if (this.s || i3 >= 0 || iArr[this.W] < this.n) {
            this.y += i3;
            while (true) {
                int i6 = this.y;
                if (i6 - this.x <= this.k) {
                    break;
                }
                this.y = i6 - this.w;
                b(iArr);
                a(iArr[this.W], true);
                if (!this.s && iArr[this.W] <= this.m) {
                    this.y = this.x;
                }
            }
            while (true) {
                i4 = this.y;
                if (i4 - this.x >= (-this.k)) {
                    break;
                }
                this.y = i4 + this.w;
                a(iArr);
                a(iArr[this.W], true);
                if (!this.s && iArr[this.W] >= this.n) {
                    this.y = this.x;
                }
            }
            if (i5 != i4) {
                onScrollChanged(0, i4, 0, i5);
            }
        } else {
            this.y = this.x;
        }
    }

    public void setAlignPosition(int i2) {
        this.am = i2;
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.l != strArr) {
            this.l = strArr;
            b();
        }
    }

    public void setFormatter(c cVar) {
        if (cVar != this.t) {
            this.t = cVar;
            b();
        }
    }

    public void setIgnorable(boolean z2) {
        if (this.at != z2) {
            this.at = z2;
            b();
            invalidate();
        }
    }

    public void setMaxValue(int i2) {
        if (this.n != i2) {
            if (i2 >= 0) {
                this.n = i2;
                int i3 = this.n;
                if (i3 < this.o) {
                    this.o = i3;
                }
                b();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
    }

    public void setMinValue(int i2) {
        if (this.m != i2) {
            if (i2 >= 0) {
                this.m = i2;
                int i3 = this.m;
                if (i3 > this.o) {
                    this.o = i3;
                }
                b();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("minValue must be >= 0");
        }
    }

    public void setOnLongPressUpdateInterval(long j2) {
        this.u = j2;
    }

    public void setOnScrollListener(d dVar) {
        this.q = dVar;
    }

    public void setOnValueChangedListener(e eVar) {
        this.p = eVar;
    }

    public void setPickerFocusColor(int i2) {
        this.ah = Color.alpha(i2);
        this.ai = Color.red(i2);
        this.aj = Color.green(i2);
        this.ak = Color.green(i2);
    }

    public void setPickerNormalColor(int i2) {
        this.ad = Color.alpha(i2);
        this.ae = Color.red(i2);
        this.af = Color.green(i2);
        this.ag = Color.green(i2);
    }

    public void setPickerRowNumber(int i2) {
        this.V = i2;
        this.W = i2 / 2;
        this.v = new int[this.V];
    }

    public void setValue(int i2) {
        a(i2, false);
    }

    public void setWrapSelectorWheel(boolean z2) {
        this.r = z2;
        a();
    }
}
