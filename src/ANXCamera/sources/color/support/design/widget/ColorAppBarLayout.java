package color.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.core.f.c;
import androidx.core.g.ac;
import androidx.core.g.q;
import androidx.core.g.u;
import color.support.v7.appcompat.R;

public class ColorAppBarLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f1307a;

    /* renamed from: b  reason: collision with root package name */
    private int f1308b;
    private int c;
    private boolean d;
    private int e;
    private ac f;
    private boolean g;
    private boolean h;
    private int[] i;
    private int j;

    public static class a extends LinearLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        int f1310a = 1;

        /* renamed from: b  reason: collision with root package name */
        Interpolator f1311b;

        public a(int i, int i2) {
            super(i, i2);
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorAppBarLayout_Layout);
            this.f1310a = obtainStyledAttributes.getInt(R.styleable.ColorAppBarLayout_Layout_colorLayoutScrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R.styleable.ColorAppBarLayout_Layout_colorLayoutScrollInterpolator)) {
                this.f1311b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.ColorAppBarLayout_Layout_colorLayoutScrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public a(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public Interpolator a() {
            return this.f1311b;
        }

        /* access modifiers changed from: package-private */
        public boolean b() {
            int i = this.f1310a;
            return (i & 1) == 1 && (i & 10) != 0;
        }
    }

    public ColorAppBarLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorAppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1307a = -1;
        this.f1308b = -1;
        this.c = -1;
        this.e = 0;
        this.j = -1;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            b.a(this);
            b.a(this, attributeSet, 0, R.style.Widget_Design_ColorAppBarLayout);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorAppBarLayout, 0, R.style.Widget_Design_ColorAppBarLayout);
        if (obtainStyledAttributes.hasValue(R.styleable.ColorAppBarLayout_android_background)) {
            u.a((View) this, obtainStyledAttributes.getDrawable(R.styleable.ColorAppBarLayout_android_background));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.ColorAppBarLayout_colorExpanded)) {
            a(obtainStyledAttributes.getBoolean(R.styleable.ColorAppBarLayout_colorExpanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && obtainStyledAttributes.hasValue(R.styleable.ColorAppBarLayout_colorElevation)) {
            b.a(this, (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorAppBarLayout_colorElevation, 0));
        }
        obtainStyledAttributes.recycle();
        u.a((View) this, (q) new q() {
            public ac a(View view, ac acVar) {
                return ColorAppBarLayout.this.a(acVar);
            }
        });
    }

    private void a(boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = (z ? 1 : 2) | (z2 ? 4 : 0);
        if (z3) {
            i2 = 8;
        }
        this.e = i3 | i2;
        requestLayout();
    }

    private boolean a(boolean z) {
        if (this.g == z) {
            return false;
        }
        this.g = z;
        refreshDrawableState();
        return true;
    }

    private void b() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (((a) getChildAt(i2).getLayoutParams()).b()) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        a(z);
    }

    private void c() {
        this.f1307a = -1;
        this.f1308b = -1;
        this.c = -1;
    }

    /* access modifiers changed from: package-private */
    public ac a(ac acVar) {
        ac acVar2 = u.q(this) ? acVar : null;
        if (!c.a(this.f, acVar2)) {
            this.f = acVar2;
            c();
        }
        return acVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public a generateDefaultLayoutParams() {
        return new a(-1, -2);
    }

    /* renamed from: a */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new a((ViewGroup.MarginLayoutParams) layoutParams) : new a(layoutParams) : new a((LinearLayout.LayoutParams) layoutParams);
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, true);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    /* access modifiers changed from: package-private */
    public int getDownNestedPreScrollRange() {
        int i2 = this.f1308b;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = aVar.f1310a;
            if ((i4 & 5) == 5) {
                int i5 = i3 + aVar.topMargin + aVar.bottomMargin;
                if ((i4 & 8) != 0) {
                    i3 = i5 + u.j(childAt);
                } else {
                    i3 = i5 + (measuredHeight - ((i4 & 2) != 0 ? u.j(childAt) : getTopInset()));
                }
            } else if (i3 > 0) {
                break;
            }
        }
        int max = Math.max(0, i3);
        this.f1308b = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public int getDownNestedScrollRange() {
        int i2 = this.c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + aVar.topMargin + aVar.bottomMargin;
            int i5 = aVar.f1310a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                i4 -= u.j(childAt) + getTopInset();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.c = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int j2 = u.j(this);
        if (j2 == 0) {
            int childCount = getChildCount();
            j2 = childCount >= 1 ? u.j(getChildAt(childCount - 1)) : 0;
            if (j2 == 0) {
                return getHeight() / 3;
            }
        }
        return (j2 * 2) + topInset;
    }

    /* access modifiers changed from: package-private */
    public int getPendingAction() {
        return this.e;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public final int getTopInset() {
        ac acVar = this.f;
        if (acVar != null) {
            return acVar.b();
        }
        return 0;
    }

    public final int getTotalScaleRange() {
        int i2 = this.j;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = aVar.f1310a;
            if ((i5 & 1) != 0) {
                i3 += measuredHeight + aVar.topMargin + aVar.bottomMargin;
                if ((i5 & 2) != 0) {
                    i3 -= u.j(childAt);
                }
            }
        }
        int max = Math.max(0, i3 - getTopInset());
        this.j = max;
        return max;
    }

    public final int getTotalScrollRange() {
        int i2 = this.f1307a;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = aVar.f1310a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + aVar.topMargin + aVar.bottomMargin;
            if ((i5 & 2) != 0) {
                i4 -= u.j(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4 - getTopInset());
        this.f1307a = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        if (this.i == null) {
            this.i = new int[2];
        }
        int[] iArr = this.i;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        iArr[0] = this.g ? R.attr.colorStateCollapsible : -R.attr.colorStateCollapsible;
        iArr[1] = (!this.g || !this.h) ? -R.attr.colorStateCollapsed : R.attr.colorStateCollapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        c();
        int i6 = 0;
        this.d = false;
        int childCount = getChildCount();
        while (true) {
            if (i6 >= childCount) {
                break;
            } else if (((a) getChildAt(i6).getLayoutParams()).a() != null) {
                this.d = true;
                break;
            } else {
                i6++;
            }
        }
        b();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        c();
    }

    public void setExpanded(boolean z) {
        a(z, u.u(this));
    }

    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            b.a(this, f2);
        }
    }
}
