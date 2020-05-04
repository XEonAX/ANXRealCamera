package com.color.support.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import color.support.v7.appcompat.R;
import color.support.v7.widget.e;
import com.color.support.widget.j;
import com.google.protobuf.nano.MessageNano;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SecurityKeyboardView extends View implements View.OnClickListener {
    private static final int[] aI = {16842909, 1, 16842913, 2, 16842908, 4, 16842910, 8, 16842919, 16, 16843518, 32, 16843547, 64, 16843623, 128, 16843624, 256, 16843625, 512};
    private static int[][][] aJ;
    private static int[][] aK;
    private static int aL = R.styleable.ViewDrawableStates.length;
    private static final int at = ViewConfiguration.getLongPressTimeout();
    private static int au = 12;
    private static final int[] c = {-5};
    private static final int[] d = {16843324};
    private j.a[] A;
    /* access modifiers changed from: private */
    public b B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private int H;
    private int I;
    private int J;
    private int K;
    /* access modifiers changed from: private */
    public int L;
    /* access modifiers changed from: private */
    public int M;
    private boolean N;
    private Paint O;
    private Rect P;
    private long Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private int V;
    /* access modifiers changed from: private */
    public int W;

    /* renamed from: a  reason: collision with root package name */
    Handler f1664a;
    private StringBuilder aA;
    private boolean aB;
    private Rect aC;
    private Bitmap aD;
    private boolean aE;
    private Canvas aF;
    private AccessibilityManager aG;
    private AudioManager aH;
    private int aM;
    private int aN;
    private ColorStateList aO;
    private ColorStateList aP;
    private Drawable aQ;
    private Drawable aR;
    /* access modifiers changed from: private */
    public Typeface aS;
    private c aT;
    private int aU;
    private int aV;
    private int aW;
    private int aX;
    private boolean aY;
    private int aZ;
    private long aa;
    private long ab;
    private int[] ac;
    private GestureDetector ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private boolean ai;
    private j.a aj;
    private Rect ak;
    /* access modifiers changed from: private */
    public boolean al;
    /* access modifiers changed from: private */
    public d am;
    /* access modifiers changed from: private */
    public int an;
    /* access modifiers changed from: private */
    public boolean ao;
    private int ap;
    private float aq;
    private float ar;
    private Drawable as;
    private int[] av;
    private int aw;
    private int ax;
    private long ay;
    private boolean az;

    /* renamed from: b  reason: collision with root package name */
    protected List<Integer> f1665b;
    private boolean ba;
    private float bb;
    private int bc;
    private int bd;
    private String[] be;
    private int bf;
    private ColorStateList bg;
    /* access modifiers changed from: private */
    public int bh;
    private int bi;
    private int bj;
    private ArrayList<a> bk;
    private ArrayList<Drawable> bl;
    private Drawable bm;
    private List<int[]> bn;
    private j e;
    private int f;
    private int g;
    private int h;
    private int i;
    private float j;
    private int k;
    private float l;
    /* access modifiers changed from: private */
    public TextView m;
    private e n;
    private int o;
    private int p;
    private int q;
    private final int[] r;
    private PopupWindow s;
    private View t;
    private SecurityKeyboardView u;
    private boolean v;
    private View w;
    private int x;
    private int y;
    private Map<j.a, View> z;

    private class a {

        /* renamed from: a  reason: collision with root package name */
        public String f1670a = null;

        /* renamed from: b  reason: collision with root package name */
        public Drawable f1671b = null;
        private int d = 0;
        private int e = 0;
        private float f = 0.0f;
        private float g = 0.0f;
        /* access modifiers changed from: private */
        public TextPaint h = new TextPaint(1);

        public a(Drawable drawable, String str) {
            this.h.setAntiAlias(true);
            this.h.setTextSize((float) SecurityKeyboardView.this.bh);
            this.h.setTypeface(SecurityKeyboardView.this.aS);
            this.f1670a = str;
            this.f1671b = drawable;
        }

        public float a() {
            return this.f;
        }

        public void a(float f2) {
            this.f = f2;
        }

        public float b() {
            return this.g;
        }

        public void b(float f2) {
            this.g = f2;
        }

        public String c() {
            String str = this.f1670a;
            if (str != null) {
                return str;
            }
            return null;
        }

        public Drawable d() {
            Drawable drawable = this.f1671b;
            if (drawable != null) {
                return drawable;
            }
            return null;
        }
    }

    public interface b {
        void a();

        void a(int i);

        void a(int i, int[] iArr);

        void a(CharSequence charSequence);

        void b();

        void b(int i);

        void c();

        void d();
    }

    public interface c {
        void a(String str, int i);
    }

    private static class d {

        /* renamed from: a  reason: collision with root package name */
        final float[] f1672a;

        /* renamed from: b  reason: collision with root package name */
        final float[] f1673b;
        final long[] c;
        float d;
        float e;

        private d() {
            this.f1672a = new float[4];
            this.f1673b = new float[4];
            this.c = new long[4];
        }

        private void a(float f, float f2, long j) {
            long[] jArr = this.c;
            int i = -1;
            int i2 = 0;
            while (i2 < 4 && jArr[i2] != 0) {
                if (jArr[i2] < j - 200) {
                    i = i2;
                }
                i2++;
            }
            if (i2 == 4 && i < 0) {
                i = 0;
            }
            if (i == i2) {
                i--;
            }
            float[] fArr = this.f1672a;
            float[] fArr2 = this.f1673b;
            if (i >= 0) {
                int i3 = i + 1;
                int i4 = (4 - i) - 1;
                System.arraycopy(fArr, i3, fArr, 0, i4);
                System.arraycopy(fArr2, i3, fArr2, 0, i4);
                System.arraycopy(jArr, i3, jArr, 0, i4);
                i2 -= i3;
            }
            fArr[i2] = f;
            fArr2[i2] = f2;
            jArr[i2] = j;
            int i5 = i2 + 1;
            if (i5 < 4) {
                jArr[i5] = 0;
            }
        }

        public void a() {
            this.c[0] = 0;
        }

        public void a(int i) {
            a(i, Float.MAX_VALUE);
        }

        public void a(int i, float f) {
            float[] fArr;
            float f2 = f;
            float[] fArr2 = this.f1672a;
            float[] fArr3 = this.f1673b;
            long[] jArr = this.c;
            int i2 = 0;
            float f3 = fArr2[0];
            float f4 = fArr3[0];
            long j = jArr[0];
            while (i2 < 4 && jArr[i2] != 0) {
                i2++;
            }
            int i3 = 1;
            float f5 = 0.0f;
            float f6 = 0.0f;
            while (i3 < i2) {
                int i4 = (int) (jArr[i3] - j);
                if (i4 == 0) {
                    int i5 = i;
                    fArr = fArr2;
                } else {
                    float f7 = (float) i4;
                    fArr = fArr2;
                    float f8 = (float) i;
                    float f9 = ((fArr2[i3] - f3) / f7) * f8;
                    if (f5 != 0.0f) {
                        f9 = (f5 + f9) * 0.5f;
                    }
                    float f10 = ((fArr3[i3] - f4) / f7) * f8;
                    f6 = f6 == 0.0f ? f10 : (f6 + f10) * 0.5f;
                    f5 = f9;
                }
                i3++;
                fArr2 = fArr;
            }
            this.e = f5 < 0.0f ? Math.max(f5, -f2) : Math.min(f5, f2);
            this.d = f6 < 0.0f ? Math.max(f6, -f2) : Math.min(f6, f2);
        }

        public void a(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime();
            int historySize = motionEvent.getHistorySize();
            for (int i = 0; i < historySize; i++) {
                a(motionEvent.getHistoricalX(i), motionEvent.getHistoricalY(i), motionEvent.getHistoricalEventTime(i));
            }
            a(motionEvent.getX(), motionEvent.getY(), eventTime);
        }

        public float b() {
            return this.e;
        }

        public float c() {
            return this.d;
        }
    }

    static {
        int[] iArr = aI;
        int length = iArr.length / 2;
        if (length == aL) {
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < aL; i2++) {
                int i3 = R.styleable.ViewDrawableStates[i2];
                int i4 = 0;
                while (true) {
                    int[] iArr3 = aI;
                    if (i4 >= iArr3.length) {
                        break;
                    }
                    if (iArr3[i4] == i3) {
                        int i5 = i2 * 2;
                        iArr2[i5] = i3;
                        iArr2[i5 + 1] = iArr3[i4 + 1];
                    }
                    i4 += 2;
                }
            }
            int i6 = 1 << length;
            aJ = new int[i6][][];
            aK = new int[i6][];
            for (int i7 = 0; i7 < aK.length; i7++) {
                aK[i7] = new int[Integer.bitCount(i7)];
                int i8 = 0;
                for (int i9 = 0; i9 < iArr2.length; i9 += 2) {
                    if ((iArr2[i9 + 1] & i7) != 0) {
                        aK[i7][i8] = iArr2[i9];
                        i8++;
                    }
                }
            }
            return;
        }
        throw new IllegalStateException("VIEW_STATE_IDS array length does not match ViewDrawableStates style array");
    }

    public SecurityKeyboardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SecurityKeyboardView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, R.style.SecurityKeyboardView);
    }

    public SecurityKeyboardView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f = -1;
        this.r = new int[2];
        this.E = false;
        this.F = true;
        this.G = true;
        this.V = -1;
        this.W = -1;
        this.ac = new int[12];
        this.ag = -1;
        this.ak = new Rect(0, 0, 0, 0);
        this.am = new d();
        this.ap = 1;
        this.av = new int[au];
        this.aA = new StringBuilder(1);
        this.aC = new Rect();
        this.f1665b = new ArrayList();
        this.aN = 0;
        this.aQ = null;
        this.aR = null;
        this.aS = null;
        this.aU = 0;
        this.aV = 0;
        this.aW = 0;
        this.aX = 0;
        this.aY = true;
        this.aZ = -1;
        this.ba = false;
        this.bb = -1.0f;
        this.bc = -1;
        this.bd = -1;
        this.be = null;
        this.bh = -1;
        this.bi = 2;
        this.bj = -1;
        this.bk = new ArrayList<>();
        this.bl = new ArrayList<>();
        this.bn = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SecurityKeyboardView, i2, R.style.SecurityKeyboardView);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.as = obtainStyledAttributes.getDrawable(R.styleable.SecurityKeyboardView_colorKeyBackground);
        this.C = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.SecurityKeyboardView_colorVerticalCorrection, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SecurityKeyboardView_colorKeyPreviewLayout, 0);
        this.p = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.SecurityKeyboardView_colorKeyPreviewOffset, 0);
        this.q = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SecurityKeyboardView_colorKeyPreviewHeight, 80);
        this.aM = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SecurityKeyboardView_colorKeyPreviewWidth, 80);
        this.h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SecurityKeyboardView_colorKeyTextSize, 18);
        this.i = obtainStyledAttributes.getColor(R.styleable.SecurityKeyboardView_colorKeyTextColor, -16777216);
        this.g = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SecurityKeyboardView_colorLabelTextSize, 14);
        this.ah = obtainStyledAttributes.getResourceId(R.styleable.SecurityKeyboardView_colorPopupLayout, 0);
        this.k = obtainStyledAttributes.getColor(R.styleable.SecurityKeyboardView_colorShadowColor, 0);
        this.j = obtainStyledAttributes.getFloat(R.styleable.SecurityKeyboardView_colorShadowRadius, 0.0f);
        this.aN = obtainStyledAttributes.getInt(R.styleable.SecurityKeyboardView_colorKeyBoardType, 0);
        this.aO = obtainStyledAttributes.getColorStateList(R.styleable.SecurityKeyboardView_colorTextColor);
        this.aP = obtainStyledAttributes.getColorStateList(R.styleable.SecurityKeyboardView_colorGoTextColor);
        this.aQ = obtainStyledAttributes.getDrawable(R.styleable.SecurityKeyboardView_colorSpecialKeyBg);
        this.aR = obtainStyledAttributes.getDrawable(R.styleable.SecurityKeyboardView_colorEndKeyBg);
        this.bg = obtainStyledAttributes.getColorStateList(R.styleable.SecurityKeyboardView_colorItemSymbolsColor);
        this.bm = obtainStyledAttributes.getDrawable(R.styleable.SecurityKeyboardView_colorSpecialItemBg);
        this.l = 0.5f;
        this.n = new e(context);
        if (resourceId != 0) {
            this.m = (TextView) layoutInflater.inflate(resourceId, (ViewGroup) null);
            this.o = (int) this.m.getTextSize();
            this.n.setContentView(this.m);
            this.n.setBackgroundDrawable((Drawable) null);
        } else {
            this.F = false;
        }
        this.n.setTouchable(false);
        this.n.a((e.b) new e.b() {
            public void a(WindowManager.LayoutParams layoutParams) {
                layoutParams.flags |= 8192;
                layoutParams.setTitle("ColorSecurityPopupWindow");
            }
        });
        this.s = new PopupWindow(context);
        this.s.setBackgroundDrawable((Drawable) null);
        this.w = this;
        this.O = new Paint();
        this.O.setAntiAlias(true);
        this.O.setTextSize((float) 0);
        this.O.setTextAlign(Paint.Align.CENTER);
        this.O.setAlpha(255);
        this.P = new Rect(0, 0, 0, 0);
        this.z = new HashMap();
        Drawable drawable = this.as;
        if (drawable != null) {
            drawable.getPadding(this.P);
        }
        this.an = (int) (getResources().getDisplayMetrics().density * 500.0f);
        this.ao = true;
        this.aG = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.aH = (AudioManager) context.getSystemService("audio");
        o();
        setKeyboardType(1);
        obtainStyledAttributes.recycle();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0039, code lost:
        if (r6 >= r0.D) goto L_0x003d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0046  */
    private int a(int i2, int i3, int[] iArr) {
        int i4;
        boolean z2;
        int[] iArr2;
        j.a[] aVarArr;
        int i5;
        int i6 = i2;
        int i7 = i3;
        int[] iArr3 = iArr;
        j.a[] aVarArr2 = this.A;
        Arrays.fill(this.av, Integer.MAX_VALUE);
        int[] a2 = this.e.a(i6, i7);
        int length = a2.length;
        int i8 = this.D + 1;
        int i9 = 0;
        int i10 = -1;
        int i11 = -1;
        while (i9 < length) {
            j.a aVar = aVarArr2[a2[i9]];
            boolean a3 = aVar.a(i6, i7);
            if (a3) {
                i10 = a2[i9];
            }
            if (this.N) {
                i5 = aVar.b(i6, i7);
            } else {
                i5 = 0;
            }
            if (!a3) {
                i4 = i5;
                z2 = false;
                if (z2) {
                    int length2 = aVar.f1707a.length;
                    if (i4 < i8) {
                        i11 = a2[i9];
                        i8 = i4;
                    }
                    if (iArr3 != null) {
                        int i12 = 0;
                        while (true) {
                            int[] iArr4 = this.av;
                            aVarArr = aVarArr2;
                            if (i12 >= iArr4.length) {
                                break;
                            } else if (iArr4[i12] > i4) {
                                int i13 = i12 + length2;
                                iArr2 = a2;
                                System.arraycopy(iArr4, i12, iArr4, i13, (iArr4.length - i12) - length2);
                                System.arraycopy(iArr3, i12, iArr3, i13, (iArr3.length - i12) - length2);
                                for (int i14 = 0; i14 < length2; i14++) {
                                    int i15 = i12 + i14;
                                    iArr3[i15] = aVar.f1707a[i14];
                                    this.av[i15] = i4;
                                }
                            } else {
                                int[] iArr5 = a2;
                                i12++;
                                aVarArr2 = aVarArr;
                            }
                        }
                        i9++;
                        aVarArr2 = aVarArr;
                        a2 = iArr2;
                    }
                }
                aVarArr = aVarArr2;
                iArr2 = a2;
                i9++;
                aVarArr2 = aVarArr;
                a2 = iArr2;
            }
            i4 = i5;
            z2 = true;
            if (z2) {
            }
            aVarArr = aVarArr2;
            iArr2 = a2;
            i9++;
            aVarArr2 = aVarArr;
            a2 = iArr2;
        }
        int i16 = i10 == -1 ? i11 : i10;
        if (!i() || i6 > this.bc || ((float) i7) > ((float) (this.bd + this.C)) - this.bb) {
            return i16;
        }
        return -1;
    }

    private CharSequence a(CharSequence charSequence) {
        return (!this.e.d() || charSequence == null || charSequence.length() >= 3 || !Character.isLowerCase(charSequence.charAt(0))) ? charSequence : charSequence.toString().toUpperCase();
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3, int i4, long j2) {
        if (i2 != -1) {
            j.a[] aVarArr = this.A;
            if (i2 < aVarArr.length) {
                j.a aVar = aVarArr[i2];
                if (aVar.m != null) {
                    this.B.a(aVar.m);
                    this.B.b(-1);
                } else {
                    int i5 = aVar.f1707a[0];
                    int[] iArr = new int[au];
                    Arrays.fill(iArr, -1);
                    a(i3, i4, iArr);
                    if (this.az) {
                        if (this.ax != -1) {
                            this.B.a(-5, c);
                            a(i5, aVar);
                        } else {
                            this.ax = 0;
                        }
                        i5 = aVar.f1707a[this.ax];
                    }
                    a(i5, aVar);
                    this.B.a(i5, iArr);
                    this.B.b(i5);
                }
                this.aw = i2;
                this.ay = j2;
            }
        }
    }

    private void a(int i2, int i3, j.a aVar) {
        AccessibilityManager accessibilityManager = this.aG;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            onInitializeAccessibilityEvent(obtain);
            String str = null;
            String charSequence = aVar.f1708b == null ? null : a(aVar.f1708b).toString();
            if (i3 != -6) {
                if (i3 == -5) {
                    str = getContext().getString(R.string.keyboardview_keycode_delete);
                } else if (i3 != -2) {
                    str = i3 != -1 ? i3 != 10 ? String.valueOf((char) i3) : getContext().getString(R.string.keyboardview_keycode_enter) : !a() ? getContext().getString(R.string.color_keyboardview_keycode_shift) : getContext().getString(R.string.color_keyboard_view_keycode_low_shift);
                } else if (charSequence != null && charSequence.equals("ABC")) {
                    str = getContext().getString(R.string.color_keyboardview_keycode_letters);
                } else if (charSequence != null && charSequence.equals("?#+=")) {
                    str = getContext().getString(R.string.color_keyboardview_keycode_symbol);
                }
            } else if (charSequence != null && charSequence.equals("ABC")) {
                str = getContext().getString(R.string.color_keyboardview_keycode_letters);
            } else if (charSequence != null && charSequence.equals("123")) {
                str = getContext().getString(R.string.color_keyboardview_keycode_number);
            }
            if (i3 == -5 || i3 == -2 || i3 == -1 || i3 == 10 || i3 == -6) {
                announceForAccessibility(str);
                return;
            }
            obtain.getText().add(str);
            this.aG.sendAccessibilityEvent(obtain);
        }
    }

    private void a(int i2, j.a aVar) {
        c cVar = this.aT;
        if (cVar != null && i2 != -1 && i2 != -2 && i2 != -6) {
            if (i2 == 10) {
                cVar.a("", 2);
            } else if (i2 == 32) {
                cVar.a(" ", 0);
            } else if (i2 == -5) {
                cVar.a("", 1);
            } else {
                String charSequence = aVar.f1708b == null ? null : a(aVar.f1708b).toString();
                if (charSequence != null) {
                    this.aT.a(charSequence, 0);
                }
            }
        }
    }

    private void a(int i2, boolean z2) {
        int intValue = this.f1665b.get(i2).intValue();
        this.f1665b.set(i2, Integer.valueOf(z2 ? intValue | STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR : intValue & -16385));
    }

    private void a(long j2, int i2) {
        if (i2 != -1) {
            j.a aVar = this.A[i2];
            if (aVar.f1707a.length > 1) {
                this.az = true;
                if (j2 >= this.ay + 800 || i2 != this.aw) {
                    this.ax = -1;
                } else {
                    this.ax = (this.ax + 1) % aVar.f1707a.length;
                }
            } else if (j2 > this.ay + 800 || i2 != this.aw) {
                o();
            }
        }
    }

    private void a(Canvas canvas, int i2) {
        float length = (((float) this.bd) - (((float) (r1.length - 1)) * this.bb)) / ((float) this.be.length);
        for (int i3 = 0; i3 < this.be.length; i3++) {
            Drawable d2 = this.bk.get(i3).d();
            if (d2 != null) {
                int paddingLeft = getPaddingLeft() + i2;
                float f2 = (float) i3;
                float f3 = length * f2;
                int paddingTop = (int) (((float) getPaddingTop()) + f3 + (this.bb * f2));
                float paddingTop2 = ((float) getPaddingTop()) + f3 + (f2 * this.bb);
                d2.setBounds(paddingLeft, paddingTop, this.bc + paddingLeft, (int) (((float) paddingTop) + length));
                d2.draw(canvas);
                this.bk.get(i3).b(paddingTop2 + length);
                this.bk.get(i3).a(paddingTop2);
            }
        }
        for (int i4 = 0; i4 < this.be.length; i4++) {
            TextPaint a2 = this.bk.get(i4).h;
            Paint.FontMetricsInt fontMetricsInt = a2.getFontMetricsInt();
            String str = this.be[i4];
            if (str != null) {
                canvas.drawText(this.be[i4], (float) (getPaddingLeft() + ((this.bc - ((int) a2.measureText(str))) / 2) + i2), (float) ((int) ((((((float) (getPaddingTop() + this.bi)) + (((float) i4) * (this.bb + length))) + (length / 2.0f)) - ((float) ((fontMetricsInt.descent - fontMetricsInt.ascent) / 2))) - ((float) fontMetricsInt.ascent))), a2);
            }
        }
    }

    private void a(j jVar) {
        if (jVar != null) {
            j.a[] aVarArr = this.A;
            if (aVarArr != null) {
                int i2 = 0;
                for (j.a aVar : aVarArr) {
                    i2 += Math.min(aVar.e, aVar.f) + aVar.g;
                }
                if (i2 >= 0 && r0 != 0) {
                    this.D = (int) ((((float) i2) * 1.4f) / ((float) r0));
                    int i3 = this.D;
                    this.D = i3 * i3;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean a(MotionEvent motionEvent) {
        if (this.ah == 0) {
            return false;
        }
        int i2 = this.V;
        if (i2 >= 0) {
            j.a[] aVarArr = this.A;
            if (i2 < aVarArr.length) {
                boolean a2 = a(aVarArr[i2]);
                if (a2) {
                    this.ai = true;
                    c(-1);
                }
                return a2;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x022e  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x013f  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x014e  */
    private boolean a(MotionEvent motionEvent, boolean z2) {
        int i2;
        int i3;
        int i4;
        boolean z3;
        int i5;
        int i6;
        MotionEvent motionEvent2 = motionEvent;
        int x2 = ((int) motionEvent.getX()) - getPaddingLeft();
        int y2 = ((int) motionEvent.getY()) - getPaddingTop();
        int i7 = this.C;
        if (y2 >= (-i7)) {
            y2 += i7;
        }
        int action = motionEvent.getAction();
        long eventTime = motionEvent.getEventTime();
        int a2 = a(x2, y2, (int[]) null);
        boolean z4 = true;
        if (!h()) {
            j.a[] aVarArr = this.A;
            if (a2 != aVarArr.length - 1) {
                if (this.ba) {
                    int i8 = this.aZ;
                    if (i8 != -1 && i8 == aVarArr.length - 1) {
                        if (aVarArr[i8].k) {
                            j.a aVar = this.A[this.aZ];
                            if (this.f != -1) {
                                z4 = false;
                            }
                            aVar.a(z4);
                            this.f = -1;
                            this.ba = false;
                        }
                        a(this.aZ);
                    }
                }
                return false;
            }
        }
        this.al = z2;
        if (action == 0) {
            this.am.a();
        }
        this.am.a(motionEvent2);
        if (this.ai && action != 0 && action != 3) {
            return true;
        }
        if (this.ad.onTouchEvent(motionEvent2)) {
            c(-1);
            this.f1664a.removeMessages(3);
            this.f1664a.removeMessages(4);
            return true;
        } else if (this.v && action != 3) {
            return true;
        } else {
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            int d2 = d(x3, y3);
            int i9 = y3;
            if (action == 0) {
                this.ai = false;
                this.L = x2;
                this.M = y2;
                this.T = x2;
                this.U = y2;
                this.aa = 0;
                this.ab = 0;
                this.S = -1;
                this.V = a2;
                this.W = a2;
                this.Q = motionEvent.getEventTime();
                this.R = this.Q;
                a(eventTime, a2);
                this.B.a(a2 != -1 ? this.A[a2].f1707a[0] : 0);
                int i10 = this.V;
                if (i10 != -1) {
                    this.aZ = i10;
                }
                if (this.V == this.A.length - 1) {
                    this.ba = true;
                }
                int i11 = this.V;
                if (i11 >= 0 && this.A[i11].r) {
                    this.ag = this.V;
                    this.f1664a.sendMessageDelayed(this.f1664a.obtainMessage(3), 400);
                    l();
                    if (this.ai) {
                        this.ag = -1;
                    }
                }
                if (this.V != -1) {
                    this.f1664a.sendMessageDelayed(this.f1664a.obtainMessage(4, motionEvent2), (long) at);
                }
                c(a2);
                if (i() && -1 != d2 && d2 < this.be.length) {
                    this.bj = d2;
                    a(d2, true);
                    Drawable d3 = this.bk.get(d2).d();
                    String c2 = this.bk.get(d2).c();
                    a(d2, d3);
                    invalidate();
                    if (!(c2 == null || this.bg == null)) {
                        int[] b2 = b(d2);
                        ColorStateList colorStateList = this.bg;
                        this.bk.get(d2).h.setColor(colorStateList.getColorForState(b2, colorStateList.getDefaultColor()));
                        invalidate();
                    }
                }
            } else if (action == 1) {
                int i12 = i9;
                m();
                if (a2 == this.V) {
                    this.ab += eventTime - this.R;
                } else {
                    o();
                    this.S = this.V;
                    this.aa = (this.ab + eventTime) - this.R;
                    this.V = a2;
                    this.ab = 0;
                }
                long j2 = this.ab;
                if (j2 >= this.aa || j2 >= 70) {
                    i4 = -1;
                } else {
                    int i13 = this.S;
                    i4 = -1;
                    if (i13 != -1) {
                        this.V = i13;
                        i3 = this.T;
                        i2 = this.U;
                        c(i4);
                        Arrays.fill(this.ac, i4);
                        if (this.ag == i4 && !this.v && !this.ai) {
                            a(this.V, i3, i2, eventTime);
                        }
                        a(a2);
                        this.ag = -1;
                        if (this.V == this.A.length - 1) {
                            this.ba = false;
                        }
                        if (i()) {
                            int d4 = d(x3, i12);
                            if (-1 != d4 && d4 < this.be.length) {
                                setItemRestore(d4);
                                this.B.a(this.be[d4].charAt(0), (int[]) null);
                                this.B.b(this.be[d4].charAt(0));
                                c cVar = this.aT;
                                if (cVar != null) {
                                    cVar.a(this.be[d4], 0);
                                }
                            }
                        }
                        x2 = i3;
                        y2 = i2;
                    }
                }
                i3 = x2;
                i2 = y2;
                c(i4);
                Arrays.fill(this.ac, i4);
                a(this.V, i3, i2, eventTime);
                a(a2);
                this.ag = -1;
                if (this.V == this.A.length - 1) {
                }
                if (i()) {
                }
                x2 = i3;
                y2 = i2;
            } else if (action == 2) {
                if (a2 != -1) {
                    int i14 = this.V;
                    if (i14 == -1) {
                        this.V = a2;
                        this.ab = eventTime - this.Q;
                    } else if (a2 == i14) {
                        this.ab += eventTime - this.R;
                        z3 = true;
                        if (z3) {
                            this.f1664a.removeMessages(4);
                            i5 = -1;
                            if (a2 != -1) {
                                this.f1664a.sendMessageDelayed(this.f1664a.obtainMessage(4, motionEvent2), (long) at);
                            }
                        } else {
                            i5 = -1;
                        }
                        i6 = this.V;
                        if (i6 != i5) {
                            this.aZ = i6;
                        }
                        c(this.V);
                        this.R = eventTime;
                        if (i()) {
                            if (!(d2 == this.bj || i5 == d2 || d2 >= this.be.length)) {
                                a(d2, true);
                                Drawable d5 = this.bk.get(d2).d();
                                String c3 = this.bk.get(d2).c();
                                a(d2, d5);
                                invalidate();
                                if (!(c3 == null || this.bg == null)) {
                                    int[] b3 = b(d2);
                                    ColorStateList colorStateList2 = this.bg;
                                    this.bk.get(d2).h.setColor(colorStateList2.getColorForState(b3, colorStateList2.getDefaultColor()));
                                    invalidate();
                                }
                            }
                            int i15 = this.bj;
                            if (!(-1 == i15 || d2 == i15 || i15 >= this.be.length)) {
                                setItemRestore(i15);
                            }
                            this.bj = d2;
                        }
                    } else if (this.ag == -1) {
                        o();
                        this.S = this.V;
                        this.T = this.J;
                        this.U = this.K;
                        this.aa = (this.ab + eventTime) - this.R;
                        this.V = a2;
                        this.ab = 0;
                    }
                }
                z3 = false;
                if (z3) {
                }
                i6 = this.V;
                if (i6 != i5) {
                }
                c(this.V);
                this.R = eventTime;
                if (i()) {
                }
            } else if (action == 3) {
                m();
                n();
                this.ai = true;
                c(-1);
                a(this.V);
                if (i()) {
                    int d6 = d(x3, i9);
                    if (-1 != d6 && d6 < this.be.length) {
                        setItemRestore(d6);
                    }
                }
            }
            this.J = x2;
            this.K = y2;
            return true;
        }
    }

    private CharSequence b(j.a aVar) {
        if (!this.az) {
            return a(aVar.f1708b);
        }
        int i2 = 0;
        this.aA.setLength(0);
        StringBuilder sb = this.aA;
        int[] iArr = aVar.f1707a;
        int i3 = this.ax;
        if (i3 >= 0) {
            i2 = i3;
        }
        sb.append((char) iArr[i2]);
        return a((CharSequence) this.aA);
    }

    private void c(int i2) {
        int i3 = this.f;
        e eVar = this.n;
        this.f = i2;
        j.a[] aVarArr = this.A;
        int i4 = this.f;
        if (i3 != i4) {
            if (i3 != -1 && aVarArr.length > i3) {
                j.a aVar = aVarArr[i3];
                aVar.a(i4 == -1);
                a(i3);
                int i5 = aVar.f1707a[0];
                c(256, i5);
                c(STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD, i5);
            }
            int i6 = this.f;
            if (i6 != -1 && aVarArr.length > i6) {
                j.a aVar2 = aVarArr[i6];
                aVar2.a();
                a(this.f);
                int i7 = aVar2.f1707a[0];
                a(128, i7, aVar2);
                a((int) STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT, i7, aVar2);
            }
        }
        boolean e2 = e(this.f);
        if (i3 != this.f && this.F && e2) {
            this.f1664a.removeMessages(1);
            if (eVar.isShowing() && i2 == -1) {
                Handler handler = this.f1664a;
                handler.sendMessageDelayed(handler.obtainMessage(2), 75);
            }
            if (i2 == -1) {
                return;
            }
            if (!eVar.isShowing() || this.m.getVisibility() != 0) {
                Handler handler2 = this.f1664a;
                handler2.sendMessageDelayed(handler2.obtainMessage(1, i2, 0), 0);
                return;
            }
            d(i2);
        }
    }

    private void c(int i2, int i3) {
        String str;
        AccessibilityManager accessibilityManager = this.aG;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            onInitializeAccessibilityEvent(obtain);
            if (i3 != 10) {
                switch (i3) {
                    case -6:
                        str = getContext().getString(R.string.keyboardview_keycode_alt);
                        break;
                    case -5:
                        str = getContext().getString(R.string.keyboardview_keycode_delete);
                        break;
                    case -4:
                        str = getContext().getString(R.string.keyboardview_keycode_done);
                        break;
                    case -3:
                        str = getContext().getString(R.string.keyboardview_keycode_cancel);
                        break;
                    case -2:
                        str = getContext().getString(R.string.keyboardview_keycode_mode_change);
                        break;
                    case -1:
                        str = getContext().getString(R.string.keyboardview_keycode_shift);
                        break;
                    default:
                        str = String.valueOf((char) i3);
                        break;
                }
            } else {
                str = getContext().getString(R.string.keyboardview_keycode_enter);
            }
            obtain.getText().add(str);
            this.aG.sendAccessibilityEvent(obtain);
        }
    }

    private int d(int i2, int i3) {
        if (i()) {
            String[] strArr = this.be;
            if (strArr != null) {
                int length = strArr.length;
                if (length <= 0) {
                    return -1;
                }
                for (int i4 = 0; i4 < length; i4++) {
                    if (i2 >= getPaddingLeft() && i2 <= this.bc + getPaddingLeft()) {
                        float f2 = (float) i3;
                        if (f2 >= this.bk.get(i4).a() && f2 <= this.bk.get(i4).b()) {
                            return i4;
                        }
                    }
                }
            }
        }
        return -1;
    }

    /* access modifiers changed from: private */
    public void d(int i2) {
        e eVar = this.n;
        j.a[] aVarArr = this.A;
        if (i2 >= 0 && i2 < aVarArr.length) {
            j.a aVar = aVarArr[i2];
            if (aVar.c != null) {
                this.m.setCompoundDrawables((Drawable) null, (Drawable) null, (Drawable) null, aVar.d != null ? aVar.d : aVar.c);
                this.m.setText((CharSequence) null);
            } else {
                this.m.setCompoundDrawables((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                this.m.setText(b(aVar));
                if (aVar.f1708b.length() <= 1 || aVar.f1707a.length >= 2) {
                    this.m.setTextSize(0, (float) this.o);
                    this.m.setTypeface(this.aS);
                } else {
                    this.m.setTextSize(0, (float) this.h);
                    this.m.setTypeface(Typeface.DEFAULT_BOLD);
                }
            }
            this.m.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int i3 = this.aM;
            int i4 = this.q;
            ViewGroup.LayoutParams layoutParams = this.m.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = i3;
                layoutParams.height = i4;
            }
            if (!this.E) {
                this.H = ((aVar.i + (aVar.e / 2)) - (this.aM / 2)) + getPaddingLeft();
                this.I = (aVar.j - i4) + this.p;
            } else {
                this.H = 160 - (this.m.getMeasuredWidth() / 2);
                this.I = -this.m.getMeasuredHeight();
            }
            this.f1664a.removeMessages(2);
            getLocationInWindow(this.r);
            int[] iArr = this.r;
            iArr[0] = iArr[0] + this.x;
            iArr[1] = iArr[1] + this.y;
            this.m.getBackground().setState(aVar.q != 0 ? d : EMPTY_STATE_SET);
            int i5 = this.H;
            int[] iArr2 = this.r;
            this.H = i5 + iArr2[0];
            this.I += iArr2[1];
            getLocationOnScreen(iArr2);
            if (this.I + this.r[1] < 0) {
                if (aVar.i + aVar.e <= getWidth() / 2) {
                    this.H += (int) (((double) aVar.e) * 2.5d);
                } else {
                    this.H -= (int) (((double) aVar.e) * 2.5d);
                }
                this.I += i4;
            }
            if (eVar.isShowing()) {
                eVar.update(this.H, this.I, i3, i4);
            } else {
                eVar.setWidth(i3);
                eVar.setHeight(i4);
                eVar.showAtLocation(this.w, 0, this.H, this.I);
            }
            this.m.setVisibility(0);
        }
    }

    private boolean e(int i2) {
        Handler handler = this.f1664a;
        if (handler == null) {
            return false;
        }
        if (i2 == -1) {
            handler.sendMessageDelayed(handler.obtainMessage(2), 75);
            return false;
        }
        int i3 = this.A[i2].f1707a[0];
        if (this.A[i2].f1708b != null && i3 != -1 && i3 != -5 && i3 != -2 && i3 != 10 && i3 != 32 && i3 != -6) {
            return true;
        }
        Handler handler2 = this.f1664a;
        handler2.sendMessageDelayed(handler2.obtainMessage(2), 75);
        return false;
    }

    private void j() {
        if (this.ad == null) {
            this.ad = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
                public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    if (SecurityKeyboardView.this.al) {
                        return false;
                    }
                    float abs = Math.abs(f);
                    float abs2 = Math.abs(f2);
                    float x = motionEvent2.getX() - motionEvent.getX();
                    float y = motionEvent2.getY() - motionEvent.getY();
                    int width = SecurityKeyboardView.this.getWidth() / 2;
                    int height = SecurityKeyboardView.this.getHeight() / 2;
                    SecurityKeyboardView.this.am.a(1000);
                    float b2 = SecurityKeyboardView.this.am.b();
                    float c = SecurityKeyboardView.this.am.c();
                    boolean z = true;
                    if (f <= ((float) SecurityKeyboardView.this.an) || abs2 >= abs || x <= ((float) width)) {
                        if (f >= ((float) (-SecurityKeyboardView.this.an)) || abs2 >= abs || x >= ((float) (-width))) {
                            if (f2 >= ((float) (-SecurityKeyboardView.this.an)) || abs >= abs2 || y >= ((float) (-height))) {
                                if (f2 <= ((float) SecurityKeyboardView.this.an) || abs >= abs2 / 2.0f || y <= ((float) height)) {
                                    z = false;
                                } else if (!SecurityKeyboardView.this.ao || c >= f2 / 4.0f) {
                                    SecurityKeyboardView.this.f();
                                    return true;
                                }
                            } else if (!SecurityKeyboardView.this.ao || c <= f2 / 4.0f) {
                                SecurityKeyboardView.this.e();
                                return true;
                            }
                        } else if (!SecurityKeyboardView.this.ao || b2 <= f / 4.0f) {
                            SecurityKeyboardView.this.d();
                            return true;
                        }
                    } else if (!SecurityKeyboardView.this.ao || b2 >= f / 4.0f) {
                        SecurityKeyboardView.this.c();
                        return true;
                    }
                    if (z) {
                        SecurityKeyboardView securityKeyboardView = SecurityKeyboardView.this;
                        securityKeyboardView.a(securityKeyboardView.W, SecurityKeyboardView.this.L, SecurityKeyboardView.this.M, motionEvent.getEventTime());
                    }
                    return false;
                }
            });
            this.ad.setIsLongpressEnabled(false);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:117:0x01fe  */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0209  */
    private void k() {
        int i2;
        boolean z2;
        int i3;
        Drawable drawable;
        Typeface typeface;
        int i4;
        boolean z3 = true;
        int i5 = 0;
        if (this.aD == null || this.aE) {
            Bitmap bitmap = this.aD;
            if (bitmap == null || (this.aE && !(bitmap.getWidth() == getWidth() && this.aD.getHeight() == getHeight()))) {
                this.aD = Bitmap.createBitmap(Math.max(1, getWidth()), Math.max(1, getHeight()), Bitmap.Config.ARGB_8888);
                this.aF = new Canvas(this.aD);
            }
            b();
            this.aE = false;
        }
        if (this.e != null) {
            this.aF.save();
            Canvas canvas = this.aF;
            canvas.clipRect(this.aC);
            Paint paint = this.O;
            Drawable drawable2 = this.as;
            Rect rect = this.ak;
            Rect rect2 = this.P;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            j.a[] aVarArr = this.A;
            j.a aVar = this.aj;
            paint.setColor(this.i);
            if (aVar == null || !canvas.getClipBounds(rect) || (aVar.i + paddingLeft) - 1 > rect.left || (aVar.j + paddingTop) - 1 > rect.top || aVar.i + aVar.e + paddingLeft + 1 < rect.right || aVar.j + aVar.f + paddingTop + 1 < rect.bottom) {
                z3 = false;
            }
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            int length = aVarArr.length;
            int i6 = 0;
            while (i6 < length) {
                j.a aVar2 = aVarArr[i6];
                if (!z3 || aVar == aVar2) {
                    int[] b2 = aVar2.b();
                    if (this.aQ == null || !(aVar2.f1707a[i5] == -1 || aVar2.f1707a[i5] == -5 || aVar2.f1707a[i5] == 32 || aVar2.f1707a[i5] == -2 || aVar2.f1707a[i5] == -6 || (i() && (i6 == length - 2 || i6 == length - 6 || i6 == length - 10)))) {
                        if (this.aR != null) {
                            i3 = 10;
                            if (aVar2.f1707a[i5] == 10) {
                                drawable = this.aR;
                                i2 = length;
                            }
                        } else {
                            i3 = 10;
                        }
                        drawable = this.as;
                        i2 = length;
                    } else {
                        drawable = this.aQ;
                        i2 = length;
                        i3 = 10;
                    }
                    paint.setColor(aVar2.f1707a[i5] == i3 ? this.aP.getColorForState(b2, i5) : this.aO.getColorForState(b2, i5));
                    if (drawable != null) {
                        drawable.setState(b2);
                    }
                    String charSequence = aVar2.f1708b == null ? null : a(aVar2.f1708b).toString();
                    if (drawable != null) {
                        Rect bounds = drawable.getBounds();
                        if (!(aVar2.e == bounds.right && aVar2.f == bounds.bottom)) {
                            drawable.setBounds(0, 0, aVar2.e, aVar2.f);
                        }
                    }
                    canvas.translate((float) (aVar2.i + paddingLeft), (float) (aVar2.j + paddingTop));
                    if (drawable != null) {
                        drawable.draw(canvas);
                    }
                    if (charSequence != null) {
                        if (Character.isLowerCase(charSequence.charAt(0))) {
                            i4 = 32;
                            if (aVar2.f1707a[0] != 32) {
                                paint.setTextSize((float) this.aU);
                                paint.setFakeBoldText(false);
                                typeface = this.aS;
                                if (typeface != null) {
                                    paint.setTypeface(typeface);
                                }
                                if (aVar2.f1707a[0] == 10) {
                                    paint.setTypeface(this.aS);
                                }
                                Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
                                canvas.drawText(charSequence, (float) ((((aVar2.e - rect2.left) - rect2.right) / 2) + rect2.left), (float) ((((aVar2.f - (fontMetricsInt.bottom - fontMetricsInt.top)) / 2) - fontMetricsInt.top) + ((rect2.bottom - rect2.top) / 2)), paint);
                            }
                        } else {
                            i4 = 32;
                        }
                        if (aVar2.f1707a[0] == i4) {
                            paint.setTextSize((float) this.aW);
                            paint.setFakeBoldText(false);
                        } else if (aVar2.f1707a[0] == -2 || aVar2.f1707a[0] == 10 || aVar2.f1707a[0] == -1 || aVar2.f1707a[0] == -6) {
                            paint.setTextSize((float) this.aX);
                            if (aVar2.f1707a[0] == 10 || aVar2.f1707a[0] == -2 || aVar2.f1707a[0] == -6) {
                                paint.setFakeBoldText(false);
                            } else {
                                paint.setFakeBoldText(false);
                            }
                        } else {
                            paint.setTextSize((float) this.aV);
                            if (Character.isDigit(charSequence.charAt(0))) {
                                paint.setFakeBoldText(false);
                            } else {
                                paint.setFakeBoldText(false);
                            }
                        }
                        typeface = this.aS;
                        if (typeface != null) {
                        }
                        if (aVar2.f1707a[0] == 10) {
                        }
                        Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                        canvas.drawText(charSequence, (float) ((((aVar2.e - rect2.left) - rect2.right) / 2) + rect2.left), (float) ((((aVar2.f - (fontMetricsInt2.bottom - fontMetricsInt2.top)) / 2) - fontMetricsInt2.top) + ((rect2.bottom - rect2.top) / 2)), paint);
                    } else if (aVar2.c != null) {
                        int intrinsicWidth = ((((aVar2.e - rect2.left) - rect2.right) - aVar2.c.getIntrinsicWidth()) / 2) + rect2.left;
                        int intrinsicHeight = ((((aVar2.f - rect2.top) - rect2.bottom) - aVar2.c.getIntrinsicHeight()) / 2) + rect2.top;
                        canvas.translate((float) intrinsicWidth, (float) intrinsicHeight);
                        z2 = z3;
                        aVar2.c.setBounds(0, 0, aVar2.c.getIntrinsicWidth(), aVar2.c.getIntrinsicHeight());
                        aVar2.c.draw(canvas);
                        canvas.translate((float) (-intrinsicWidth), (float) (-intrinsicHeight));
                        canvas.translate((float) ((-aVar2.i) - paddingLeft), (float) ((-aVar2.j) - paddingTop));
                    }
                    z2 = z3;
                    canvas.translate((float) ((-aVar2.i) - paddingLeft), (float) ((-aVar2.j) - paddingTop));
                } else {
                    i2 = length;
                    z2 = z3;
                }
                i6++;
                z3 = z2;
                length = i2;
                i5 = 0;
            }
            this.aj = null;
            if (this.v) {
                paint.setColor(((int) (this.l * 255.0f)) << 24);
                canvas.drawRect(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), paint);
            }
            this.aF.restore();
            this.aB = false;
            this.aC.setEmpty();
        }
    }

    /* access modifiers changed from: private */
    public boolean l() {
        j.a aVar = this.A[this.ag];
        a(this.V, aVar.i, aVar.j, this.ay);
        return true;
    }

    private void m() {
        Handler handler = this.f1664a;
        if (handler != null) {
            handler.removeMessages(3);
            this.f1664a.removeMessages(4);
            this.f1664a.removeMessages(1);
        }
    }

    /* access modifiers changed from: private */
    public void n() {
        if (this.s.isShowing()) {
            this.s.dismiss();
            this.v = false;
            b();
        }
    }

    private void o() {
        this.aw = -1;
        this.ax = 0;
        this.ay = -1;
        this.az = false;
    }

    private void p() {
        int length = this.be.length;
        if (length >= 0) {
            for (int i2 = 0; i2 < length; i2++) {
                this.bl.add(this.bm.getConstantState().newDrawable());
                this.bk.add(new a(this.bl.get(i2), this.be[i2]));
            }
            for (int i3 = 0; i3 < length; i3++) {
                int[][][] iArr = aJ;
                int[][] iArr2 = aK;
                iArr[i3] = new int[iArr2.length][];
                System.arraycopy(iArr2, 0, iArr[i3], 0, iArr2.length);
            }
            this.bn.clear();
            this.f1665b.clear();
            for (int i4 = 0; i4 < length; i4++) {
                this.bn.add(new int[aL]);
                this.f1665b.add(new Integer(0));
                a(i4, this.bk.get(i4).d());
                ColorStateList colorStateList = this.bg;
                if (colorStateList != null) {
                    this.bk.get(i4).h.setColor(colorStateList.getColorForState(b(i4), this.bg.getDefaultColor()));
                }
            }
        }
    }

    private void setItemRestore(int i2) {
        a(i2, false);
        Drawable d2 = this.bk.get(i2).d();
        String c2 = this.bk.get(i2).c();
        a(i2, d2);
        if (c2 != null && this.bg != null) {
            int[] b2 = b(i2);
            ColorStateList colorStateList = this.bg;
            this.bk.get(i2).h.setColor(colorStateList.getColorForState(b2, colorStateList.getDefaultColor()));
            invalidate();
        }
    }

    public void a(int i2) {
        j.a[] aVarArr = this.A;
        if (aVarArr != null && i2 >= 0 && i2 < aVarArr.length) {
            j.a aVar = aVarArr[i2];
            this.aj = aVar;
            this.aC.union(aVar.i + getPaddingLeft(), aVar.j + getPaddingTop(), aVar.i + aVar.e + getPaddingLeft(), aVar.j + aVar.f + getPaddingTop());
            k();
            invalidate(aVar.i + getPaddingLeft(), aVar.j + getPaddingTop(), aVar.i + aVar.e + getPaddingLeft(), aVar.j + aVar.f + getPaddingTop());
        }
    }

    public void a(int i2, int i3) {
        this.x = i2;
        this.y = i3;
        if (this.n.isShowing()) {
            this.n.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void a(int i2, Drawable drawable) {
        this.f1665b.set(i2, Integer.valueOf(this.f1665b.get(i2).intValue() | 1024));
        b(i2, drawable);
    }

    public boolean a() {
        j jVar = this.e;
        if (jVar != null) {
            return jVar.d();
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean a(j.a aVar) {
        int i2 = aVar.q;
        if (i2 == 0) {
            return false;
        }
        this.t = this.z.get(aVar);
        View view = this.t;
        if (view == null) {
            this.t = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.ah, (ViewGroup) null);
            this.u = (SecurityKeyboardView) this.t.findViewById(16908326);
            View findViewById = this.t.findViewById(16908327);
            if (findViewById != null) {
                findViewById.setOnClickListener(this);
            }
            this.u.setOnKeyboardActionListener(new b() {
                public void a() {
                }

                public void a(int i) {
                    SecurityKeyboardView.this.B.a(i);
                }

                public void a(int i, int[] iArr) {
                    SecurityKeyboardView.this.B.a(i, iArr);
                    SecurityKeyboardView.this.n();
                }

                public void a(CharSequence charSequence) {
                    SecurityKeyboardView.this.B.a(charSequence);
                    SecurityKeyboardView.this.n();
                }

                public void b() {
                }

                public void b(int i) {
                    SecurityKeyboardView.this.B.b(i);
                }

                public void c() {
                }

                public void d() {
                }
            });
            this.u.setKeyboard(aVar.n != null ? new j(getContext(), i2, aVar.n, -1, getPaddingRight() + getPaddingLeft()) : new j(getContext(), i2));
            this.u.setPopupParent(this);
            this.t.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), MessageNano.UNSET_ENUM_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), MessageNano.UNSET_ENUM_VALUE));
            this.z.put(aVar, this.t);
        } else {
            this.u = (SecurityKeyboardView) view.findViewById(16908326);
        }
        getLocationInWindow(this.r);
        this.ae = aVar.i + getPaddingLeft();
        this.af = aVar.j + getPaddingTop();
        this.ae = (this.ae + aVar.e) - this.t.getMeasuredWidth();
        this.af -= this.t.getMeasuredHeight();
        int paddingRight = this.ae + this.t.getPaddingRight() + this.r[0];
        int paddingBottom = this.af + this.t.getPaddingBottom() + this.r[1];
        this.u.a(paddingRight < 0 ? 0 : paddingRight, paddingBottom);
        this.u.a(a());
        this.s.setContentView(this.t);
        this.s.setWidth(this.t.getMeasuredWidth());
        this.s.setHeight(this.t.getMeasuredHeight());
        this.s.showAtLocation(this, 0, paddingRight, paddingBottom);
        this.v = true;
        b();
        return true;
    }

    public boolean a(boolean z2) {
        j jVar = this.e;
        if (jVar == null || !jVar.a(z2)) {
            return false;
        }
        b();
        return true;
    }

    public void b() {
        this.aC.union(0, 0, getWidth(), getHeight());
        this.aB = true;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void b(int i2, Drawable drawable) {
        int[] b2 = b(i2);
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(b2);
        }
    }

    /* access modifiers changed from: protected */
    public int[] b(int i2) {
        int intValue = this.f1665b.get(i2).intValue();
        if ((intValue & 1024) != 0) {
            this.bn.set(i2, b(i2, 0));
            this.f1665b.set(i2, Integer.valueOf(intValue & -1025));
        }
        return this.bn.get(i2);
    }

    /* access modifiers changed from: protected */
    public int[] b(int i2, int i3) {
        int intValue = this.f1665b.get(i2).intValue();
        char c2 = (this.f1665b.get(i2).intValue() & STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR) != 0 ? (char) 16 : 0;
        if ((intValue & 32) == 0) {
            c2 |= 8;
        }
        if (hasWindowFocus()) {
            c2 |= 1;
        }
        int[] iArr = aJ[i2][c2];
        if (i3 == 0) {
            return iArr;
        }
        if (iArr == null) {
            return new int[i3];
        }
        int[] iArr2 = new int[(iArr.length + i3)];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* access modifiers changed from: protected */
    public void c() {
        this.B.b();
    }

    /* access modifiers changed from: protected */
    public void d() {
        this.B.a();
    }

    /* access modifiers changed from: protected */
    public void e() {
        this.B.c();
    }

    /* access modifiers changed from: protected */
    public void f() {
        this.B.d();
    }

    public void g() {
        if (this.n.isShowing()) {
            this.n.dismiss();
        }
        this.aZ = -1;
        m();
        n();
        this.aD = null;
        this.aF = null;
        this.z.clear();
    }

    public j getKeyboard() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public b getOnKeyboardActionListener() {
        return this.B;
    }

    public boolean h() {
        return this.aY;
    }

    public boolean i() {
        return this.e.e() == 3;
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"HandlerLeak"})
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        j();
        if (this.f1664a == null) {
            this.f1664a = new Handler() {
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i == 1) {
                        SecurityKeyboardView.this.d(message.arg1);
                    } else if (i == 2) {
                        SecurityKeyboardView.this.m.setVisibility(4);
                    } else if (i != 3) {
                        if (i == 4) {
                            boolean unused = SecurityKeyboardView.this.a((MotionEvent) message.obj);
                        }
                    } else if (SecurityKeyboardView.this.l()) {
                        sendMessageDelayed(Message.obtain(this, 3), 50);
                    }
                }
            };
        }
    }

    public void onClick(View view) {
        n();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.aB || this.aD == null || this.aE) {
            k();
        }
        canvas.drawBitmap(this.aD, 0.0f, 0.0f, (Paint) null);
        if (i()) {
            a(canvas, this.bf);
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        AccessibilityManager accessibilityManager = this.aG;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled() && motionEvent.getPointerCount() == 1) {
            int action = motionEvent.getAction();
            if (action == 7) {
                motionEvent.setAction(2);
            } else if (action == 9) {
                motionEvent.setAction(0);
            } else if (action == 10) {
                motionEvent.setAction(1);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    public void onMeasure(int i2, int i3) {
        if (this.e == null) {
            setMeasuredDimension(getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        } else {
            setMeasuredDimension(View.MeasureSpec.getSize(i2), this.e.b() + getPaddingTop() + getPaddingBottom());
        }
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        j jVar = this.e;
        this.aD = null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        long eventTime = motionEvent.getEventTime();
        boolean z2 = true;
        if (pointerCount != this.ap) {
            if (pointerCount == 1) {
                MotionEvent obtain = MotionEvent.obtain(eventTime, eventTime, 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                boolean a2 = a(obtain, false);
                obtain.recycle();
                z2 = action == 1 ? a(motionEvent, true) : a2;
            } else {
                MotionEvent obtain2 = MotionEvent.obtain(eventTime, eventTime, 1, this.aq, this.ar, motionEvent.getMetaState());
                z2 = a(obtain2, true);
                obtain2.recycle();
            }
        } else if (pointerCount == 1) {
            z2 = a(motionEvent, false);
            this.aq = motionEvent.getX();
            this.ar = motionEvent.getY();
        }
        this.ap = pointerCount;
        return z2;
    }

    public void setKeyboard(j jVar) {
        if (this.e != null) {
            c(-1);
        }
        m();
        this.e = jVar;
        List<j.a> a2 = this.e.a();
        this.A = (j.a[]) a2.toArray(new j.a[a2.size()]);
        requestLayout();
        this.aE = true;
        b();
        a(jVar);
        this.z.clear();
        this.ai = true;
    }

    public void setKeyboardType(int i2) {
        this.aS = Typeface.DEFAULT;
        this.aU = getResources().getDimensionPixelOffset(R.dimen.color_security_keyboard_lower_letter_text_size);
        this.aW = getResources().getDimensionPixelOffset(R.dimen.color_security_keyboard_space_label_text_size);
        this.aV = getResources().getDimensionPixelOffset(R.dimen.color_security_keyboard_lower_letter_text_size);
        this.aX = getResources().getDimensionPixelOffset(R.dimen.color_security_keyboard_end_label_text_size);
        this.bh = getResources().getDimensionPixelOffset(R.dimen.color_security_numeric_keyboard_special_text_size);
        this.bb = getResources().getDimension(R.dimen.oppo_password_numeric_keyboard_line_width);
        this.be = getResources().getStringArray(R.array.color_security_numeric_keyboard_special_symbol);
        this.bf = getResources().getDimensionPixelOffset(R.dimen.color_security_numeric_keyboard_special_symbol_offset);
        this.bc = getResources().getDimensionPixelSize(R.dimen.color_security_password_numeric_delete_dimen_keyWidth);
        this.bd = getResources().getDimensionPixelSize(R.dimen.color_security_password_numeric_special_height);
        this.bc = (int) (((float) this.bc) * j.a(getContext()));
        p();
    }

    public void setKeyboardViewEnabled(boolean z2) {
        this.aY = z2;
    }

    public void setOnKeyboardActionListener(b bVar) {
        this.B = bVar;
    }

    public void setOnKeyboardCharListener(c cVar) {
        this.aT = cVar;
    }

    public void setPopupParent(View view) {
        this.w = view;
    }

    public void setPreviewEnabled(boolean z2) {
        this.F = z2;
    }

    public void setProximityCorrectionEnabled(boolean z2) {
        this.N = z2;
    }

    public void setVerticalCorrection(int i2) {
    }
}
