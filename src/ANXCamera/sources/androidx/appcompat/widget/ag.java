package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.R;
import androidx.core.g.c;
import androidx.core.g.u;
import com.google.protobuf.nano.MessageNano;

/* compiled from: LinearLayoutCompat */
public class ag extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f313a;

    /* renamed from: b  reason: collision with root package name */
    private int f314b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private int[] i;
    private int[] j;
    private Drawable k;
    private int l;
    private int m;
    private int n;
    private int o;

    /* compiled from: LinearLayoutCompat */
    public static class a extends ViewGroup.MarginLayoutParams {
        public float g;
        public int h;

        public a(int i, int i2) {
            super(i, i2);
            this.h = -1;
            this.g = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.g = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.h = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.h = -1;
        }
    }

    public ag(Context context) {
        this(context, (AttributeSet) null);
    }

    public ag(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ag(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f313a = true;
        this.f314b = -1;
        this.c = 0;
        this.e = 8388659;
        au a2 = au.a(context, attributeSet, R.styleable.LinearLayoutCompat, i2, 0);
        int a3 = a2.a(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (a3 >= 0) {
            setOrientation(a3);
        }
        int a4 = a2.a(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (a4 >= 0) {
            setGravity(a4);
        }
        boolean a5 = a2.a(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!a5) {
            setBaselineAligned(a5);
        }
        this.g = a2.a(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f314b = a2.a(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.h = a2.a(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a2.a(R.styleable.LinearLayoutCompat_divider));
        this.n = a2.a(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.o = a2.e(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        a2.b();
    }

    private void a(View view, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i4 + i2, i5 + i3);
    }

    private void c(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View b2 = b(i4);
            if (b2.getVisibility() != 8) {
                a aVar = (a) b2.getLayoutParams();
                if (aVar.width == -1) {
                    int i5 = aVar.height;
                    aVar.height = b2.getMeasuredHeight();
                    measureChildWithMargins(b2, makeMeasureSpec, 0, i3, 0);
                    aVar.height = i5;
                }
            }
        }
    }

    private void d(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View b2 = b(i4);
            if (b2.getVisibility() != 8) {
                a aVar = (a) b2.getLayoutParams();
                if (aVar.height == -1) {
                    int i5 = aVar.width;
                    aVar.width = b2.getMeasuredWidth();
                    measureChildWithMargins(b2, i3, 0, makeMeasureSpec, 0);
                    aVar.width = i5;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public int a(View view) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public int a(View view, int i2) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0335  */
    public void a(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        float f2;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        View view;
        int i20;
        boolean z2;
        int i21;
        int i22;
        int i23;
        int i24 = i2;
        int i25 = i3;
        this.f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i26 = this.f314b;
        boolean z3 = this.h;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        boolean z4 = false;
        boolean z5 = false;
        float f3 = 0.0f;
        boolean z6 = true;
        while (true) {
            int i33 = 8;
            int i34 = i30;
            if (i32 < virtualChildCount) {
                View b2 = b(i32);
                if (b2 == null) {
                    this.f += d(i32);
                    i13 = virtualChildCount;
                    i30 = i34;
                } else {
                    int i35 = i27;
                    if (b2.getVisibility() == 8) {
                        i32 += a(b2, i32);
                        i13 = virtualChildCount;
                        i30 = i34;
                        i27 = i35;
                    } else {
                        if (c(i32)) {
                            this.f += this.m;
                        }
                        a aVar = (a) b2.getLayoutParams();
                        float f4 = f3 + aVar.g;
                        if (mode2 == 1073741824 && aVar.height == 0 && aVar.g > 0.0f) {
                            int i36 = this.f;
                            this.f = Math.max(i36, aVar.topMargin + i36 + aVar.bottomMargin);
                            i20 = i29;
                            view = b2;
                            i15 = i31;
                            i23 = virtualChildCount;
                            z4 = true;
                            i19 = i35;
                            i16 = i28;
                            i18 = i32;
                            int i37 = i34;
                            i14 = mode2;
                            i17 = i37;
                        } else {
                            int i38 = i28;
                            if (aVar.height != 0 || aVar.g <= 0.0f) {
                                i22 = MessageNano.UNSET_ENUM_VALUE;
                            } else {
                                aVar.height = -2;
                                i22 = 0;
                            }
                            i19 = i35;
                            i16 = i38;
                            int i39 = i29;
                            View view2 = b2;
                            i23 = virtualChildCount;
                            int i40 = i34;
                            i14 = mode2;
                            i17 = i40;
                            i15 = i31;
                            i18 = i32;
                            a(b2, i32, i2, 0, i3, f4 == 0.0f ? this.f : 0);
                            int i41 = i22;
                            if (i41 != Integer.MIN_VALUE) {
                                aVar.height = i41;
                            }
                            int measuredHeight = view2.getMeasuredHeight();
                            int i42 = this.f;
                            view = view2;
                            this.f = Math.max(i42, i42 + measuredHeight + aVar.topMargin + aVar.bottomMargin + b(view));
                            i20 = z3 ? Math.max(measuredHeight, i39) : i39;
                        }
                        if (i26 >= 0 && i26 == i18 + 1) {
                            this.c = this.f;
                        }
                        if (i18 >= i26 || aVar.g <= 0.0f) {
                            if (mode == 1073741824 || aVar.width != -1) {
                                z2 = false;
                            } else {
                                z2 = true;
                                z5 = true;
                            }
                            int i43 = aVar.leftMargin + aVar.rightMargin;
                            int measuredWidth = view.getMeasuredWidth() + i43;
                            int max = Math.max(i16, measuredWidth);
                            int combineMeasuredStates = View.combineMeasuredStates(i19, view.getMeasuredState());
                            boolean z7 = z6 && aVar.width == -1;
                            if (aVar.g > 0.0f) {
                                if (!z2) {
                                    i43 = measuredWidth;
                                }
                                i17 = Math.max(i17, i43);
                                i21 = i15;
                            } else {
                                if (!z2) {
                                    i43 = measuredWidth;
                                }
                                i21 = Math.max(i15, i43);
                            }
                            i29 = i20;
                            z6 = z7;
                            i30 = i17;
                            f3 = f4;
                            int i44 = max;
                            i31 = i21;
                            i27 = combineMeasuredStates;
                            i32 = a(view, i18) + i18;
                            i28 = i44;
                            i32++;
                            int i45 = i2;
                            int i46 = i3;
                            mode2 = i14;
                            virtualChildCount = i13;
                        } else {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                    }
                }
                i14 = mode2;
                i32++;
                int i452 = i2;
                int i462 = i3;
                mode2 = i14;
                virtualChildCount = i13;
            } else {
                int i47 = i27;
                int i48 = i29;
                int i49 = i31;
                int i50 = virtualChildCount;
                int i51 = i28;
                int i52 = i34;
                int i53 = mode2;
                int i54 = i52;
                if (this.f > 0) {
                    i4 = i50;
                    if (c(i4)) {
                        this.f += this.m;
                    }
                } else {
                    i4 = i50;
                }
                if (z3) {
                    i5 = i53;
                    if (i5 == Integer.MIN_VALUE || i5 == 0) {
                        this.f = 0;
                        int i55 = 0;
                        while (i55 < i4) {
                            View b3 = b(i55);
                            if (b3 == null) {
                                this.f += d(i55);
                            } else if (b3.getVisibility() == i33) {
                                i55 += a(b3, i55);
                            } else {
                                a aVar2 = (a) b3.getLayoutParams();
                                int i56 = this.f;
                                this.f = Math.max(i56, i56 + i48 + aVar2.topMargin + aVar2.bottomMargin + b(b3));
                            }
                            i55++;
                            i33 = 8;
                        }
                    }
                } else {
                    i5 = i53;
                }
                this.f += getPaddingTop() + getPaddingBottom();
                int i57 = i3;
                int i58 = i48;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f, getSuggestedMinimumHeight()), i57, 0);
                int i59 = (16777215 & resolveSizeAndState) - this.f;
                if (z4 || (i59 != 0 && f3 > 0.0f)) {
                    float f5 = this.g;
                    if (f5 > 0.0f) {
                        f3 = f5;
                    }
                    this.f = 0;
                    float f6 = f3;
                    int i60 = 0;
                    int i61 = i47;
                    int i62 = i49;
                    i7 = i61;
                    while (i60 < i4) {
                        View b4 = b(i60);
                        if (b4.getVisibility() == 8) {
                            f2 = f6;
                            int i63 = i2;
                        } else {
                            a aVar3 = (a) b4.getLayoutParams();
                            float f7 = aVar3.g;
                            if (f7 > 0.0f) {
                                int i64 = (int) ((((float) i59) * f7) / f6);
                                i9 = i59 - i64;
                                f2 = f6 - f7;
                                int childMeasureSpec = getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + aVar3.leftMargin + aVar3.rightMargin, aVar3.width);
                                if (aVar3.height == 0) {
                                    i12 = 1073741824;
                                    if (i5 == 1073741824) {
                                        if (i64 <= 0) {
                                            i64 = 0;
                                        }
                                        b4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i64, 1073741824));
                                        i7 = View.combineMeasuredStates(i7, b4.getMeasuredState() & -256);
                                    }
                                } else {
                                    i12 = 1073741824;
                                }
                                int measuredHeight2 = b4.getMeasuredHeight() + i64;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                b4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i12));
                                i7 = View.combineMeasuredStates(i7, b4.getMeasuredState() & -256);
                            } else {
                                float f8 = f6;
                                int i65 = i2;
                                i9 = i59;
                                f2 = f8;
                            }
                            int i66 = aVar3.leftMargin + aVar3.rightMargin;
                            int measuredWidth2 = b4.getMeasuredWidth() + i66;
                            i51 = Math.max(i51, measuredWidth2);
                            if (mode != 1073741824) {
                                i10 = i7;
                                i11 = -1;
                                if (aVar3.width == -1) {
                                    z = true;
                                    if (!z) {
                                        i66 = measuredWidth2;
                                    }
                                    i62 = Math.max(i62, i66);
                                    boolean z8 = !z6 && aVar3.width == i11;
                                    int i67 = this.f;
                                    this.f = Math.max(i67, b4.getMeasuredHeight() + i67 + aVar3.topMargin + aVar3.bottomMargin + b(b4));
                                    z6 = z8;
                                    i59 = i9;
                                    i7 = i10;
                                }
                            } else {
                                i10 = i7;
                                i11 = -1;
                            }
                            z = false;
                            if (!z) {
                            }
                            i62 = Math.max(i62, i66);
                            if (!z6) {
                            }
                            int i672 = this.f;
                            this.f = Math.max(i672, b4.getMeasuredHeight() + i672 + aVar3.topMargin + aVar3.bottomMargin + b(b4));
                            z6 = z8;
                            i59 = i9;
                            i7 = i10;
                        }
                        i60++;
                        f6 = f2;
                    }
                    i6 = i2;
                    this.f += getPaddingTop() + getPaddingBottom();
                    i8 = i62;
                } else {
                    i8 = Math.max(i49, i54);
                    if (z3 && i5 != 1073741824) {
                        for (int i68 = 0; i68 < i4; i68++) {
                            View b5 = b(i68);
                            if (!(b5 == null || b5.getVisibility() == 8 || ((a) b5.getLayoutParams()).g <= 0.0f)) {
                                b5.measure(View.MeasureSpec.makeMeasureSpec(b5.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i58, 1073741824));
                            }
                        }
                    }
                    i6 = i2;
                    i7 = i47;
                }
                if (z6 || mode == 1073741824) {
                    i8 = i51;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i8 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i6, i7), resolveSizeAndState);
                if (z5) {
                    c(i4, i57);
                    return;
                }
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int paddingLeft = getPaddingLeft();
        int i10 = i4 - i2;
        int paddingRight = i10 - getPaddingRight();
        int paddingRight2 = (i10 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i11 = this.e;
        int i12 = i11 & 112;
        int i13 = i11 & 8388615;
        int paddingTop = i12 != 16 ? i12 != 80 ? getPaddingTop() : ((getPaddingTop() + i5) - i3) - this.f : getPaddingTop() + (((i5 - i3) - this.f) / 2);
        int i14 = 0;
        while (i14 < virtualChildCount) {
            View b2 = b(i14);
            if (b2 == null) {
                paddingTop += d(i14);
            } else if (b2.getVisibility() != 8) {
                int measuredWidth = b2.getMeasuredWidth();
                int measuredHeight = b2.getMeasuredHeight();
                a aVar = (a) b2.getLayoutParams();
                int i15 = aVar.h;
                if (i15 < 0) {
                    i15 = i13;
                }
                int a2 = c.a(i15, u.f(this)) & 7;
                if (a2 == 1) {
                    i8 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + aVar.leftMargin;
                    i7 = aVar.rightMargin;
                    i9 = i8 - i7;
                } else if (a2 != 5) {
                    i9 = aVar.leftMargin + paddingLeft;
                } else {
                    i8 = paddingRight - measuredWidth;
                    i7 = aVar.rightMargin;
                    i9 = i8 - i7;
                }
                int i16 = i9;
                if (c(i14)) {
                    paddingTop += this.m;
                }
                int i17 = paddingTop + aVar.topMargin;
                a(b2, i16, i17 + a(b2), measuredWidth, measuredHeight);
                i14 += a(b2, i14);
                paddingTop = i17 + measuredHeight + aVar.bottomMargin + b(b2);
                i6 = 1;
                i14 += i6;
            }
            i6 = 1;
            i14 += i6;
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View b2 = b(i2);
            if (!(b2 == null || b2.getVisibility() == 8 || !c(i2))) {
                a(canvas, (b2.getTop() - ((a) b2.getLayoutParams()).topMargin) - this.m);
            }
        }
        if (c(virtualChildCount)) {
            View b3 = b(virtualChildCount - 1);
            a(canvas, b3 == null ? (getHeight() - getPaddingBottom()) - this.m : b3.getBottom() + ((a) b3.getLayoutParams()).bottomMargin);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Canvas canvas, int i2) {
        this.k.setBounds(getPaddingLeft() + this.o, i2, (getWidth() - getPaddingRight()) - this.o, this.m + i2);
        this.k.draw(canvas);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        measureChildWithMargins(view, i3, i4, i5, i6);
    }

    /* access modifiers changed from: package-private */
    public int b(View view) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public View b(int i2) {
        return getChildAt(i2);
    }

    /* renamed from: b */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:183:0x044f  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x018d  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01d0  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x01db  */
    public void b(int i2, int i3) {
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        float f2;
        int i11;
        boolean z;
        int i12;
        int i13;
        boolean z2;
        boolean z3;
        int i14;
        View view;
        int i15;
        boolean z4;
        char c2;
        int i16;
        int i17 = i2;
        int i18 = i3;
        this.f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (this.i == null || this.j == null) {
            this.i = new int[4];
            this.j = new int[4];
        }
        int[] iArr2 = this.i;
        int[] iArr3 = this.j;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.f313a;
        boolean z6 = this.h;
        int i19 = 1073741824;
        boolean z7 = mode == 1073741824;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        boolean z8 = false;
        int i25 = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f3 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (i20 >= virtualChildCount) {
                break;
            }
            View b2 = b(i20);
            if (b2 == null) {
                this.f += d(i20);
            } else if (b2.getVisibility() == 8) {
                i20 += a(b2, i20);
            } else {
                if (c(i20)) {
                    this.f += this.l;
                }
                a aVar = (a) b2.getLayoutParams();
                float f4 = f3 + aVar.g;
                if (mode == i19 && aVar.width == 0 && aVar.g > 0.0f) {
                    if (z7) {
                        this.f += aVar.leftMargin + aVar.rightMargin;
                    } else {
                        int i26 = this.f;
                        this.f = Math.max(i26, aVar.leftMargin + i26 + aVar.rightMargin);
                    }
                    if (z5) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        b2.measure(makeMeasureSpec, makeMeasureSpec);
                        i14 = i20;
                        z3 = z6;
                        z2 = z5;
                        view = b2;
                    } else {
                        i14 = i20;
                        z3 = z6;
                        z2 = z5;
                        view = b2;
                        z8 = true;
                        i15 = 1073741824;
                        if (mode2 == i15 && aVar.height == -1) {
                            z4 = true;
                            z9 = true;
                        } else {
                            z4 = false;
                        }
                        int i27 = aVar.topMargin + aVar.bottomMargin;
                        int measuredHeight = view.getMeasuredHeight() + i27;
                        int combineMeasuredStates = View.combineMeasuredStates(i25, view.getMeasuredState());
                        if (z2) {
                            int baseline = view.getBaseline();
                            if (baseline != -1) {
                                int i28 = ((((aVar.h < 0 ? this.e : aVar.h) & 112) >> 4) & -2) >> 1;
                                iArr2[i28] = Math.max(iArr2[i28], baseline);
                                iArr[i28] = Math.max(iArr[i28], measuredHeight - baseline);
                            }
                        }
                        int max = Math.max(i22, measuredHeight);
                        boolean z11 = !z10 && aVar.height == -1;
                        if (aVar.g <= 0.0f) {
                            if (!z4) {
                                i27 = measuredHeight;
                            }
                            i24 = Math.max(i24, i27);
                        } else {
                            int i29 = i24;
                            if (z4) {
                                measuredHeight = i27;
                            }
                            i23 = Math.max(i23, measuredHeight);
                            i24 = i29;
                        }
                        int i30 = i14;
                        i22 = max;
                        i25 = combineMeasuredStates;
                        z10 = z11;
                        i20 = a(view, i30) + i30;
                        f3 = f4;
                        i20++;
                        int i31 = i3;
                        iArr3 = iArr;
                        z6 = z3;
                        z5 = z2;
                        i19 = 1073741824;
                    }
                } else {
                    if (aVar.width != 0 || aVar.g <= 0.0f) {
                        c2 = 65534;
                        i16 = MessageNano.UNSET_ENUM_VALUE;
                    } else {
                        c2 = 65534;
                        aVar.width = -2;
                        i16 = 0;
                    }
                    i14 = i20;
                    z3 = z6;
                    z2 = z5;
                    char c3 = c2;
                    View view2 = b2;
                    a(b2, i14, i2, f4 == 0.0f ? this.f : 0, i3, 0);
                    int i32 = i16;
                    if (i32 != Integer.MIN_VALUE) {
                        aVar.width = i32;
                    }
                    int measuredWidth = view2.getMeasuredWidth();
                    if (z7) {
                        view = view2;
                        this.f += aVar.leftMargin + measuredWidth + aVar.rightMargin + b(view);
                    } else {
                        view = view2;
                        int i33 = this.f;
                        this.f = Math.max(i33, i33 + measuredWidth + aVar.leftMargin + aVar.rightMargin + b(view));
                    }
                    if (z3) {
                        i21 = Math.max(measuredWidth, i21);
                    }
                }
                i15 = 1073741824;
                if (mode2 == i15) {
                }
                z4 = false;
                int i272 = aVar.topMargin + aVar.bottomMargin;
                int measuredHeight2 = view.getMeasuredHeight() + i272;
                int combineMeasuredStates2 = View.combineMeasuredStates(i25, view.getMeasuredState());
                if (z2) {
                }
                int max2 = Math.max(i22, measuredHeight2);
                if (!z10) {
                }
                if (aVar.g <= 0.0f) {
                }
                int i302 = i14;
                i22 = max2;
                i25 = combineMeasuredStates2;
                z10 = z11;
                i20 = a(view, i302) + i302;
                f3 = f4;
                i20++;
                int i312 = i3;
                iArr3 = iArr;
                z6 = z3;
                z5 = z2;
                i19 = 1073741824;
            }
            z3 = z6;
            z2 = z5;
            i20++;
            int i3122 = i3;
            iArr3 = iArr;
            z6 = z3;
            z5 = z2;
            i19 = 1073741824;
        }
        boolean z12 = z6;
        boolean z13 = z5;
        int i34 = i22;
        int i35 = i23;
        int i36 = i24;
        int i37 = i25;
        if (this.f > 0 && c(virtualChildCount)) {
            this.f += this.l;
        }
        if (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            i4 = i37;
        } else {
            i4 = i37;
            i34 = Math.max(i34, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z12 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f = 0;
            int i38 = 0;
            while (i38 < virtualChildCount) {
                View b3 = b(i38);
                if (b3 == null) {
                    this.f += d(i38);
                } else if (b3.getVisibility() == 8) {
                    i38 += a(b3, i38);
                } else {
                    a aVar2 = (a) b3.getLayoutParams();
                    if (z7) {
                        this.f += aVar2.leftMargin + i21 + aVar2.rightMargin + b(b3);
                    } else {
                        int i39 = this.f;
                        i13 = i34;
                        this.f = Math.max(i39, i39 + i21 + aVar2.leftMargin + aVar2.rightMargin + b(b3));
                        i38++;
                        i34 = i13;
                    }
                }
                i13 = i34;
                i38++;
                i34 = i13;
            }
        }
        int i40 = i34;
        this.f += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f, getSuggestedMinimumWidth()), i17, 0);
        int i41 = (16777215 & resolveSizeAndState) - this.f;
        if (z8 || (i41 != 0 && f3 > 0.0f)) {
            float f5 = this.g;
            if (f5 > 0.0f) {
                f3 = f5;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.f = 0;
            int i42 = i35;
            int i43 = -1;
            int i44 = i4;
            float f6 = f3;
            int i45 = 0;
            while (i45 < virtualChildCount) {
                View b4 = b(i45);
                if (b4 == null || b4.getVisibility() == 8) {
                    i10 = i41;
                    i9 = virtualChildCount;
                    int i46 = i3;
                } else {
                    a aVar3 = (a) b4.getLayoutParams();
                    float f7 = aVar3.g;
                    if (f7 > 0.0f) {
                        int i47 = (int) ((((float) i41) * f7) / f6);
                        float f8 = f6 - f7;
                        int i48 = i41 - i47;
                        i9 = virtualChildCount;
                        int childMeasureSpec = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + aVar3.topMargin + aVar3.bottomMargin, aVar3.height);
                        if (aVar3.width == 0) {
                            i12 = 1073741824;
                            if (mode == 1073741824) {
                                if (i47 <= 0) {
                                    i47 = 0;
                                }
                                b4.measure(View.MeasureSpec.makeMeasureSpec(i47, 1073741824), childMeasureSpec);
                                i44 = View.combineMeasuredStates(i44, b4.getMeasuredState() & -16777216);
                                f6 = f8;
                                i10 = i48;
                            }
                        } else {
                            i12 = 1073741824;
                        }
                        int measuredWidth2 = b4.getMeasuredWidth() + i47;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        b4.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i12), childMeasureSpec);
                        i44 = View.combineMeasuredStates(i44, b4.getMeasuredState() & -16777216);
                        f6 = f8;
                        i10 = i48;
                    } else {
                        i10 = i41;
                        i9 = virtualChildCount;
                        int i49 = i3;
                    }
                    if (z7) {
                        this.f += b4.getMeasuredWidth() + aVar3.leftMargin + aVar3.rightMargin + b(b4);
                        f2 = f6;
                    } else {
                        int i50 = this.f;
                        f2 = f6;
                        this.f = Math.max(i50, b4.getMeasuredWidth() + i50 + aVar3.leftMargin + aVar3.rightMargin + b(b4));
                    }
                    boolean z14 = mode2 != 1073741824 && aVar3.height == -1;
                    int i51 = aVar3.topMargin + aVar3.bottomMargin;
                    int measuredHeight3 = b4.getMeasuredHeight() + i51;
                    i43 = Math.max(i43, measuredHeight3);
                    if (!z14) {
                        i51 = measuredHeight3;
                    }
                    int max3 = Math.max(i42, i51);
                    if (z10) {
                        i11 = -1;
                        if (aVar3.height == -1) {
                            z = true;
                            if (z13) {
                                int baseline2 = b4.getBaseline();
                                if (baseline2 != i11) {
                                    int i52 = ((((aVar3.h < 0 ? this.e : aVar3.h) & 112) >> 4) & -2) >> 1;
                                    iArr2[i52] = Math.max(iArr2[i52], baseline2);
                                    iArr[i52] = Math.max(iArr[i52], measuredHeight3 - baseline2);
                                    i42 = max3;
                                    z10 = z;
                                    f6 = f2;
                                }
                            }
                            i42 = max3;
                            z10 = z;
                            f6 = f2;
                        }
                    } else {
                        i11 = -1;
                    }
                    z = false;
                    if (z13) {
                    }
                    i42 = max3;
                    z10 = z;
                    f6 = f2;
                }
                i45++;
                int i53 = i2;
                i41 = i10;
                virtualChildCount = i9;
            }
            i6 = i3;
            i5 = virtualChildCount;
            this.f += getPaddingLeft() + getPaddingRight();
            i7 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i43 : Math.max(i43, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i4 = i44;
            i8 = i42;
        } else {
            i8 = Math.max(i35, i36);
            if (z12 && mode != 1073741824) {
                for (int i54 = 0; i54 < virtualChildCount; i54++) {
                    View b5 = b(i54);
                    if (!(b5 == null || b5.getVisibility() == 8 || ((a) b5.getLayoutParams()).g <= 0.0f)) {
                        b5.measure(View.MeasureSpec.makeMeasureSpec(i21, 1073741824), View.MeasureSpec.makeMeasureSpec(b5.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i6 = i3;
            i5 = virtualChildCount;
            i7 = i40;
        }
        if (z10 || mode2 == 1073741824) {
            i8 = i7;
        }
        setMeasuredDimension(resolveSizeAndState | (i4 & -16777216), View.resolveSizeAndState(Math.max(i8 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, i4 << 16));
        if (z9) {
            d(i5, i2);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0105  */
    public void b(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        boolean z;
        int i9;
        int i10;
        int i11;
        boolean z2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean a2 = ba.a(this);
        int paddingTop = getPaddingTop();
        int i17 = i5 - i3;
        int paddingBottom = i17 - getPaddingBottom();
        int paddingBottom2 = (i17 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i18 = this.e;
        int i19 = i18 & 112;
        boolean z3 = this.f313a;
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        int a3 = c.a(8388615 & i18, u.f(this));
        boolean z4 = true;
        int paddingLeft = a3 != 1 ? a3 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i4) - i2) - this.f : getPaddingLeft() + (((i4 - i2) - this.f) / 2);
        if (a2) {
            i7 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i7 = 0;
            i6 = 1;
        }
        int i20 = 0;
        while (i20 < virtualChildCount) {
            int i21 = i7 + (i6 * i20);
            View b2 = b(i21);
            if (b2 == null) {
                paddingLeft += d(i21);
                z2 = z4;
                i8 = paddingTop;
                i11 = virtualChildCount;
                i9 = i19;
            } else if (b2.getVisibility() != 8) {
                int measuredWidth = b2.getMeasuredWidth();
                int measuredHeight = b2.getMeasuredHeight();
                a aVar = (a) b2.getLayoutParams();
                if (z3) {
                    i12 = i20;
                    i10 = virtualChildCount;
                    if (aVar.height != -1) {
                        i13 = b2.getBaseline();
                        i14 = aVar.h;
                        if (i14 < 0) {
                            i14 = i19;
                        }
                        i15 = i14 & 112;
                        i9 = i19;
                        if (i15 != 16) {
                            z = true;
                            i16 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + aVar.topMargin) - aVar.bottomMargin;
                        } else if (i15 != 48) {
                            if (i15 != 80) {
                                i16 = paddingTop;
                            } else {
                                int i22 = (paddingBottom - measuredHeight) - aVar.bottomMargin;
                                if (i13 != -1) {
                                    i22 -= iArr2[2] - (b2.getMeasuredHeight() - i13);
                                }
                                i16 = i22;
                            }
                            z = true;
                        } else {
                            int i23 = aVar.topMargin + paddingTop;
                            if (i13 != -1) {
                                z = true;
                                i23 += iArr[1] - i13;
                            } else {
                                z = true;
                            }
                            i16 = i23;
                        }
                        if (c(i21)) {
                            paddingLeft += this.l;
                        }
                        int i24 = aVar.leftMargin + paddingLeft;
                        View view = b2;
                        i8 = paddingTop;
                        a(view, i24 + a(b2), i16, measuredWidth, measuredHeight);
                        int i25 = measuredWidth + aVar.rightMargin;
                        View view2 = view;
                        i20 = i12 + a(view2, i21);
                        paddingLeft = i24 + i25 + b(view2);
                        i20++;
                        virtualChildCount = i10;
                        i19 = i9;
                        z4 = z;
                        paddingTop = i8;
                    }
                } else {
                    i12 = i20;
                    i10 = virtualChildCount;
                }
                i13 = -1;
                i14 = aVar.h;
                if (i14 < 0) {
                }
                i15 = i14 & 112;
                i9 = i19;
                if (i15 != 16) {
                }
                if (c(i21)) {
                }
                int i242 = aVar.leftMargin + paddingLeft;
                View view3 = b2;
                i8 = paddingTop;
                a(view3, i242 + a(b2), i16, measuredWidth, measuredHeight);
                int i252 = measuredWidth + aVar.rightMargin;
                View view22 = view3;
                i20 = i12 + a(view22, i21);
                paddingLeft = i242 + i252 + b(view22);
                i20++;
                virtualChildCount = i10;
                i19 = i9;
                z4 = z;
                paddingTop = i8;
            } else {
                int i26 = i20;
                i8 = paddingTop;
                i11 = virtualChildCount;
                i9 = i19;
                z2 = true;
            }
            i20++;
            virtualChildCount = i10;
            i19 = i9;
            z4 = z;
            paddingTop = i8;
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int virtualChildCount = getVirtualChildCount();
        boolean a2 = ba.a(this);
        for (int i5 = 0; i5 < virtualChildCount; i5++) {
            View b2 = b(i5);
            if (!(b2 == null || b2.getVisibility() == 8 || !c(i5))) {
                a aVar = (a) b2.getLayoutParams();
                b(canvas, a2 ? b2.getRight() + aVar.rightMargin : (b2.getLeft() - aVar.leftMargin) - this.l);
            }
        }
        if (c(virtualChildCount)) {
            View b3 = b(virtualChildCount - 1);
            if (b3 != null) {
                a aVar2 = (a) b3.getLayoutParams();
                if (a2) {
                    i4 = b3.getLeft() - aVar2.leftMargin;
                    i3 = this.l;
                } else {
                    i2 = b3.getRight() + aVar2.rightMargin;
                    b(canvas, i2);
                }
            } else if (a2) {
                i2 = getPaddingLeft();
                b(canvas, i2);
            } else {
                i4 = getWidth() - getPaddingRight();
                i3 = this.l;
            }
            i2 = i4 - i3;
            b(canvas, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Canvas canvas, int i2) {
        this.k.setBounds(i2, getPaddingTop() + this.o, this.l + i2, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    /* access modifiers changed from: protected */
    public boolean c(int i2) {
        if (i2 == 0) {
            return (this.n & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    /* access modifiers changed from: package-private */
    public int d(int i2) {
        return 0;
    }

    public int getBaseline() {
        if (this.f314b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f314b;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i3 = this.c;
                if (this.d == 1) {
                    int i4 = this.e & 112;
                    if (i4 != 48) {
                        if (i4 == 16) {
                            i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
                        } else if (i4 == 80) {
                            i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
                        }
                    }
                }
                return i3 + ((a) childAt.getLayoutParams()).topMargin + baseline;
            } else if (this.f314b == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.f314b;
    }

    public Drawable getDividerDrawable() {
        return this.k;
    }

    public int getDividerPadding() {
        return this.o;
    }

    public int getDividerWidth() {
        return this.l;
    }

    public int getGravity() {
        return this.e;
    }

    public int getOrientation() {
        return this.d;
    }

    public int getShowDividers() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    /* renamed from: j */
    public a generateDefaultLayoutParams() {
        int i2 = this.d;
        if (i2 == 0) {
            return new a(-2, -2);
        }
        if (i2 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.k != null) {
            if (this.d == 1) {
                a(canvas);
            } else {
                b(canvas);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        if (this.d == 1) {
            a(i2, i3, i4, i5);
        } else {
            b(i2, i3, i4, i5);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.d == 1) {
            a(i2, i3);
        } else {
            b(i2, i3);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.f313a = z;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 < 0 || i2 >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f314b = i2;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.k) {
            this.k = drawable;
            boolean z = false;
            if (drawable != null) {
                this.l = drawable.getIntrinsicWidth();
                this.m = drawable.getIntrinsicHeight();
            } else {
                this.l = 0;
                this.m = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i2) {
        this.o = i2;
    }

    public void setGravity(int i2) {
        if (this.e != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.e = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.e;
        if ((8388615 & i4) != i3) {
            this.e = i3 | (-8388616 & i4);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.h = z;
    }

    public void setOrientation(int i2) {
        if (this.d != i2) {
            this.d = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.n) {
            requestLayout();
        }
        this.n = i2;
    }

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.e;
        if ((i4 & 112) != i3) {
            this.e = i3 | (i4 & -113);
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.g = Math.max(0.0f, f2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
