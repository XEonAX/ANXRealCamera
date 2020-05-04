package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ag;
import com.google.protobuf.nano.MessageNano;

public class ActionMenuView extends ag implements g.b, n {

    /* renamed from: a  reason: collision with root package name */
    g.a f233a;

    /* renamed from: b  reason: collision with root package name */
    e f234b;
    private g c;
    private Context d;
    private int e;
    private boolean f;
    private ActionMenuPresenter g;
    private m.a h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    public interface a {
        boolean c();

        boolean d();
    }

    private static class b implements m.a {
        b() {
        }

        public void a(g gVar, boolean z) {
        }

        public boolean a(g gVar) {
            return false;
        }
    }

    public static class c extends ag.a {
        @ViewDebug.ExportedProperty

        /* renamed from: a  reason: collision with root package name */
        public boolean f235a;
        @ViewDebug.ExportedProperty

        /* renamed from: b  reason: collision with root package name */
        public int f236b;
        @ViewDebug.ExportedProperty
        public int c;
        @ViewDebug.ExportedProperty
        public boolean d;
        @ViewDebug.ExportedProperty
        public boolean e;
        boolean f;

        public c(int i, int i2) {
            super(i, i2);
            this.f235a = false;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f235a = cVar.f235a;
        }
    }

    private class d implements g.a {
        d() {
        }

        public void a(g gVar) {
            if (ActionMenuView.this.f233a != null) {
                ActionMenuView.this.f233a.a(gVar);
            }
        }

        public boolean a(g gVar, MenuItem menuItem) {
            return ActionMenuView.this.f234b != null && ActionMenuView.this.f234b.a(menuItem);
        }
    }

    public interface e {
        boolean a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.k = (int) (56.0f * f2);
        this.l = (int) (f2 * 4.0f);
        this.d = context;
        this.e = 0;
    }

    static int a(View view, int i2, int i3, int i4, int i5) {
        c cVar = (c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4) - i5, View.MeasureSpec.getMode(i4));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.b();
        int i6 = 2;
        if (i3 <= 0 || (z2 && i3 < 2)) {
            i6 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i3 * i2, MessageNano.UNSET_ENUM_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i7 = measuredWidth / i2;
            if (measuredWidth % i2 != 0) {
                i7++;
            }
            if (!z2 || i7 >= 2) {
                i6 = i7;
            }
        }
        if (cVar.f235a || !z2) {
            z = false;
        }
        cVar.d = z;
        cVar.f236b = i6;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i6, 1073741824), makeMeasureSpec);
        return i6;
    }

    /* JADX WARNING: Removed duplicated region for block: B:134:0x023d A[LOOP:5: B:134:0x023d->B:138:0x025b, LOOP_START, PHI: r13 
  PHI: (r13v3 int) = (r13v2 int), (r13v4 int) binds: [B:133:0x023b, B:138:0x025b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0260  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0263  */
    private void c(int i2, int i3) {
        int i4;
        boolean z;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z3;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i3, paddingTop, -2);
        int i11 = size - paddingLeft;
        int i12 = this.k;
        int i13 = i11 / i12;
        int i14 = i11 % i12;
        if (i13 == 0) {
            setMeasuredDimension(i11, 0);
            return;
        }
        int i15 = i12 + (i14 / i13);
        int childCount = getChildCount();
        int i16 = i13;
        int i17 = 0;
        int i18 = 0;
        boolean z4 = false;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        long j2 = 0;
        while (i17 < childCount) {
            View childAt = getChildAt(i17);
            int i22 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z5 = childAt instanceof ActionMenuItemView;
                int i23 = i19 + 1;
                if (z5) {
                    int i24 = this.l;
                    i10 = i23;
                    z3 = false;
                    childAt.setPadding(i24, 0, i24, 0);
                } else {
                    i10 = i23;
                    z3 = false;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f = z3;
                cVar.c = z3 ? 1 : 0;
                cVar.f236b = z3;
                cVar.d = z3;
                cVar.leftMargin = z3;
                cVar.rightMargin = z3;
                cVar.e = z5 && ((ActionMenuItemView) childAt).b();
                int a2 = a(childAt, i15, cVar.f235a ? 1 : i16, childMeasureSpec, paddingTop);
                int max = Math.max(i20, a2);
                if (cVar.d) {
                    i21++;
                }
                if (cVar.f235a) {
                    z4 = true;
                }
                i16 -= a2;
                i18 = Math.max(i18, childAt.getMeasuredHeight());
                if (a2 == 1) {
                    j2 |= (long) (1 << i17);
                    i18 = i18;
                } else {
                    int i25 = i18;
                }
                i20 = max;
                i19 = i10;
            }
            i17++;
            size2 = i22;
        }
        int i26 = size2;
        boolean z6 = z4 && i19 == 2;
        boolean z7 = false;
        while (true) {
            if (i21 <= 0 || i16 <= 0) {
                i6 = mode;
                i4 = i11;
                z = z7;
                i5 = i18;
            } else {
                int i27 = Integer.MAX_VALUE;
                int i28 = 0;
                int i29 = 0;
                long j3 = 0;
                while (i28 < childCount) {
                    boolean z8 = z7;
                    c cVar2 = (c) getChildAt(i28).getLayoutParams();
                    int i30 = i18;
                    if (cVar2.d) {
                        if (cVar2.f236b < i27) {
                            i27 = cVar2.f236b;
                            j3 = 1 << i28;
                            i29 = 1;
                        } else if (cVar2.f236b == i27) {
                            j3 |= 1 << i28;
                            i29++;
                        }
                    }
                    i28++;
                    i18 = i30;
                    z7 = z8;
                }
                z = z7;
                i5 = i18;
                j2 |= j3;
                if (i29 > i16) {
                    i6 = mode;
                    i4 = i11;
                    break;
                }
                int i31 = i27 + 1;
                int i32 = 0;
                while (i32 < childCount) {
                    View childAt2 = getChildAt(i32);
                    c cVar3 = (c) childAt2.getLayoutParams();
                    int i33 = i11;
                    int i34 = mode;
                    long j4 = (long) (1 << i32);
                    if ((j3 & j4) == 0) {
                        if (cVar3.f236b == i31) {
                            j2 |= j4;
                        }
                        i9 = i31;
                    } else {
                        if (!z6 || !cVar3.e || i16 != 1) {
                            i9 = i31;
                        } else {
                            int i35 = this.l;
                            i9 = i31;
                            childAt2.setPadding(i35 + i15, 0, i35, 0);
                        }
                        cVar3.f236b++;
                        cVar3.f = true;
                        i16--;
                    }
                    i32++;
                    mode = i34;
                    i31 = i9;
                    i11 = i33;
                }
                i18 = i5;
                z7 = true;
            }
        }
        if (!z4) {
            i7 = 1;
            if (i19 == 1) {
                z2 = true;
                if (i16 > 0 || j2 == 0 || (i16 >= i19 - i7 && !z2 && i20 <= i7)) {
                    i8 = 0;
                } else {
                    float bitCount = (float) Long.bitCount(j2);
                    if (!z2) {
                        if ((j2 & 1) != 0) {
                            i8 = 0;
                            if (!((c) getChildAt(0).getLayoutParams()).e) {
                                bitCount -= 0.5f;
                            }
                        } else {
                            i8 = 0;
                        }
                        int i36 = childCount - 1;
                        if ((j2 & ((long) (1 << i36))) != 0 && !((c) getChildAt(i36).getLayoutParams()).e) {
                            bitCount -= 0.5f;
                        }
                    } else {
                        i8 = 0;
                    }
                    int i37 = bitCount > 0.0f ? (int) (((float) (i16 * i15)) / bitCount) : i8;
                    for (int i38 = i8; i38 < childCount; i38++) {
                        if ((j2 & ((long) (1 << i38))) != 0) {
                            View childAt3 = getChildAt(i38);
                            c cVar4 = (c) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                cVar4.c = i37;
                                cVar4.f = true;
                                if (i38 == 0 && !cVar4.e) {
                                    cVar4.leftMargin = (-i37) / 2;
                                }
                                z = true;
                            } else if (cVar4.f235a) {
                                cVar4.c = i37;
                                cVar4.f = true;
                                cVar4.rightMargin = (-i37) / 2;
                                z = true;
                            } else {
                                if (i38 != 0) {
                                    cVar4.leftMargin = i37 / 2;
                                }
                                if (i38 != childCount - 1) {
                                    cVar4.rightMargin = i37 / 2;
                                }
                            }
                        }
                    }
                }
                if (z) {
                    while (i8 < childCount) {
                        View childAt4 = getChildAt(i8);
                        c cVar5 = (c) childAt4.getLayoutParams();
                        if (cVar5.f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f236b * i15) + cVar5.c, 1073741824), childMeasureSpec);
                        }
                        i8++;
                    }
                }
                setMeasuredDimension(i4, i6 == 1073741824 ? i5 : i26);
            }
        } else {
            i7 = 1;
        }
        z2 = false;
        if (i16 > 0) {
        }
        i8 = 0;
        if (z) {
        }
        setMeasuredDimension(i4, i6 == 1073741824 ? i5 : i26);
    }

    /* renamed from: a */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return j();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (cVar.h <= 0) {
            cVar.h = 16;
        }
        return cVar;
    }

    public void a(g gVar) {
        this.c = gVar;
    }

    public void a(m.a aVar, g.a aVar2) {
        this.h = aVar;
        this.f233a = aVar2;
    }

    public boolean a() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public boolean a(int i2) {
        boolean z = false;
        if (i2 == 0) {
            return false;
        }
        View childAt = getChildAt(i2 - 1);
        View childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof a)) {
            z = false | ((a) childAt).d();
        }
        return (i2 <= 0 || !(childAt2 instanceof a)) ? z : z | ((a) childAt2).c();
    }

    public boolean a(i iVar) {
        return this.c.a((MenuItem) iVar, 0);
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public c j() {
        c cVar = new c(-2, -2);
        cVar.h = 16;
        return cVar;
    }

    public c c() {
        c b2 = j();
        b2.f235a = true;
        return b2;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    public g d() {
        return this.c;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public boolean e() {
        ActionMenuPresenter actionMenuPresenter = this.g;
        return actionMenuPresenter != null && actionMenuPresenter.e();
    }

    public boolean f() {
        ActionMenuPresenter actionMenuPresenter = this.g;
        return actionMenuPresenter != null && actionMenuPresenter.g();
    }

    public boolean g() {
        ActionMenuPresenter actionMenuPresenter = this.g;
        return actionMenuPresenter != null && actionMenuPresenter.j();
    }

    public Menu getMenu() {
        if (this.c == null) {
            Context context = getContext();
            this.c = new g(context);
            this.c.a((g.a) new d());
            this.g = new ActionMenuPresenter(context);
            this.g.b(true);
            ActionMenuPresenter actionMenuPresenter = this.g;
            m.a aVar = this.h;
            if (aVar == null) {
                aVar = new b();
            }
            actionMenuPresenter.a(aVar);
            this.c.a((m) this.g, this.d);
            this.g.a(this);
        }
        return this.c;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.g.d();
    }

    public int getPopupTheme() {
        return this.e;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public boolean h() {
        ActionMenuPresenter actionMenuPresenter = this.g;
        return actionMenuPresenter != null && actionMenuPresenter.k();
    }

    public void i() {
        ActionMenuPresenter actionMenuPresenter = this.g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.h();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a(false);
            if (this.g.j()) {
                this.g.g();
                this.g.e();
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        if (!this.i) {
            super.onLayout(z, i2, i3, i4, i5);
            return;
        }
        int childCount = getChildCount();
        int i10 = (i5 - i3) / 2;
        int dividerWidth = getDividerWidth();
        int i11 = i4 - i2;
        int paddingRight = (i11 - getPaddingRight()) - getPaddingLeft();
        boolean a2 = ba.a(this);
        int i12 = paddingRight;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f235a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (a(i15)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a2) {
                        i8 = getPaddingLeft() + cVar.leftMargin;
                        i9 = i8 + measuredWidth;
                    } else {
                        i9 = (getWidth() - getPaddingRight()) - cVar.rightMargin;
                        i8 = i9 - measuredWidth;
                    }
                    int i16 = i10 - (measuredHeight / 2);
                    childAt.layout(i8, i16, i9, measuredHeight + i16);
                    i12 -= measuredWidth;
                    i13 = 1;
                } else {
                    i12 -= (childAt.getMeasuredWidth() + cVar.leftMargin) + cVar.rightMargin;
                    boolean a3 = a(i15);
                    i14++;
                }
            }
        }
        if (childCount == 1 && i13 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i17 = (i11 / 2) - (measuredWidth2 / 2);
            int i18 = i10 - (measuredHeight2 / 2);
            childAt2.layout(i17, i18, measuredWidth2 + i17, measuredHeight2 + i18);
            return;
        }
        int i19 = i14 - (i13 ^ 1);
        if (i19 > 0) {
            i6 = i12 / i19;
            i7 = 0;
        } else {
            i7 = 0;
            i6 = 0;
        }
        int max = Math.max(i7, i6);
        if (a2) {
            int width = getWidth() - getPaddingRight();
            while (i7 < childCount) {
                View childAt3 = getChildAt(i7);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f235a) {
                    int i20 = width - cVar2.rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i21 = i10 - (measuredHeight3 / 2);
                    childAt3.layout(i20 - measuredWidth3, i21, i20, measuredHeight3 + i21);
                    width = i20 - ((measuredWidth3 + cVar2.leftMargin) + max);
                }
                i7++;
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        while (i7 < childCount) {
            View childAt4 = getChildAt(i7);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f235a) {
                int i22 = paddingLeft + cVar3.leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i23 = i10 - (measuredHeight4 / 2);
                childAt4.layout(i22, i23, i22 + measuredWidth4, measuredHeight4 + i23);
                paddingLeft = i22 + measuredWidth4 + cVar3.rightMargin + max;
            }
            i7++;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        boolean z = this.i;
        this.i = View.MeasureSpec.getMode(i2) == 1073741824;
        if (z != this.i) {
            this.j = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.i) {
            g gVar = this.c;
            if (!(gVar == null || size == this.j)) {
                this.j = size;
                gVar.b(true);
            }
        }
        int childCount = getChildCount();
        if (!this.i || childCount <= 0) {
            for (int i4 = 0; i4 < childCount; i4++) {
                c cVar = (c) getChildAt(i4).getLayoutParams();
                cVar.rightMargin = 0;
                cVar.leftMargin = 0;
            }
            super.onMeasure(i2, i3);
            return;
        }
        c(i2, i3);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.g.c(z);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.f234b = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.g.a(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f = z;
    }

    public void setPopupTheme(int i2) {
        if (this.e != i2) {
            this.e = i2;
            if (i2 == 0) {
                this.d = getContext();
            } else {
                this.d = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.g = actionMenuPresenter;
        this.g.a(this);
    }
}
