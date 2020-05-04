package color.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.view.c;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ab;
import androidx.appcompat.widget.au;
import androidx.appcompat.widget.av;
import androidx.appcompat.widget.ba;
import androidx.core.g.h;
import androidx.core.g.u;
import color.support.v7.appcompat.R;
import color.support.v7.internal.widget.d;
import color.support.v7.internal.widget.f;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends androidx.appcompat.widget.Toolbar {
    private CharSequence A;
    private CharSequence B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private final ArrayList<View> G;
    private final int[] H;
    /* access modifiers changed from: private */
    public Toolbar.c I;
    private final ActionMenuView.e J;
    private av K;
    private a L;
    private m.a M;
    private g.a N;
    private boolean O;
    private int P;
    private boolean Q;
    private int R;
    private int[] S;
    private float T;
    private int U;
    private int V;
    private final int[] W;
    private final Runnable aa;
    private final f ab;
    private int ac;
    private float ad;
    private float ae;
    private boolean af;
    private color.support.design.widget.a ag;
    View e;
    boolean f;
    private ActionMenuView g;
    private TextView h;
    private TextView i;
    private ImageButton j;
    private ImageView k;
    private Drawable l;
    private CharSequence m;
    /* access modifiers changed from: private */
    public ImageButton n;
    private Context o;
    private int p;
    private int q;
    private int r;
    /* access modifiers changed from: private */
    public int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private final d y;
    private int z;

    private class a implements m {

        /* renamed from: a  reason: collision with root package name */
        g f1432a;

        /* renamed from: b  reason: collision with root package name */
        i f1433b;

        private a() {
        }

        public void a(Context context, g gVar) {
            g gVar2 = this.f1432a;
            if (gVar2 != null) {
                i iVar = this.f1433b;
                if (iVar != null) {
                    gVar2.d(iVar);
                }
            }
            this.f1432a = gVar;
        }

        public void a(Parcelable parcelable) {
        }

        public void a(g gVar, boolean z) {
        }

        public void a(m.a aVar) {
        }

        public void a(boolean z) {
            if (this.f1433b != null) {
                g gVar = this.f1432a;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.f1432a.getItem(i) == this.f1433b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    b(this.f1432a, this.f1433b);
                }
            }
        }

        public boolean a(g gVar, i iVar) {
            Toolbar.this.r();
            ViewParent parent = Toolbar.this.n.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                toolbar.addView(toolbar.n);
            }
            Toolbar.this.e = iVar.getActionView();
            this.f1433b = iVar;
            ViewParent parent2 = Toolbar.this.e.getParent();
            Toolbar toolbar2 = Toolbar.this;
            if (parent2 != toolbar2) {
                b m = toolbar2.j();
                m.f89a = 8388611 | (Toolbar.this.s & 112);
                m.c = 2;
                Toolbar.this.e.setLayoutParams(m);
                Toolbar toolbar3 = Toolbar.this;
                toolbar3.addView(toolbar3.e);
            }
            Toolbar.this.setChildVisibilityForExpandedActionView(true);
            Toolbar.this.requestLayout();
            iVar.e(true);
            if (Toolbar.this.e instanceof c) {
                ((c) Toolbar.this.e).a();
            }
            return true;
        }

        public boolean a(r rVar) {
            return false;
        }

        public boolean b() {
            return false;
        }

        public boolean b(g gVar, i iVar) {
            if (Toolbar.this.e instanceof c) {
                ((c) Toolbar.this.e).b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.e);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.n);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.e = null;
            toolbar3.setChildVisibilityForExpandedActionView(false);
            this.f1433b = null;
            Toolbar.this.requestLayout();
            iVar.e(false);
            return true;
        }

        public int c() {
            return 0;
        }

        public Parcelable f() {
            return null;
        }
    }

    public static class b extends Toolbar.b {
        int c = 0;
        boolean d = false;

        public b(int i, int i2) {
            super(i, i2);
            this.f89a = 8388627;
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            a(marginLayoutParams);
        }

        public b(a.C0003a aVar) {
            super(aVar);
        }

        public b(b bVar) {
            super((Toolbar.b) bVar);
            this.c = bVar.c;
        }

        /* access modifiers changed from: package-private */
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public Toolbar(Context context) {
        this(context, (AttributeSet) null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.y = new d();
        this.z = 8388627;
        this.G = new ArrayList<>();
        this.H = new int[2];
        this.J = new ActionMenuView.e() {
            public boolean a(MenuItem menuItem) {
                if (Toolbar.this.I != null) {
                    return Toolbar.this.I.a(menuItem);
                }
                return false;
            }
        };
        this.Q = false;
        this.S = new int[2];
        this.T = 0.0f;
        this.W = new int[2];
        this.aa = new Runnable() {
            public void run() {
                Toolbar.this.d();
            }
        };
        this.f = false;
        this.ac = -1;
        this.af = false;
        au a2 = au.a(getContext(), attributeSet, R.styleable.Toolbar, i2, 0);
        if (a2.g(R.styleable.Toolbar_titleType)) {
            this.R = a2.a(R.styleable.Toolbar_titleType, 0);
        }
        this.q = a2.g(R.styleable.Toolbar_supportTitleTextAppearance, 0);
        this.r = a2.g(R.styleable.Toolbar_supportSubtitleTextAppearance, 0);
        this.z = a2.c(R.styleable.Toolbar_android_gravity, this.z);
        this.s = a2.c(R.styleable.Toolbar_supportButtonGravity, 48);
        int d = a2.d(R.styleable.Toolbar_supportTitleMargins, 0);
        this.x = d;
        this.w = d;
        this.v = d;
        this.u = d;
        int d2 = a2.d(R.styleable.Toolbar_supportTitleMarginStart, -1);
        if (d2 >= 0) {
            this.u = d2;
        }
        int d3 = a2.d(R.styleable.Toolbar_supportTitleMarginEnd, -1);
        if (d3 >= 0) {
            this.v = d3;
        }
        int d4 = a2.d(R.styleable.Toolbar_supportTitleMarginTop, -1);
        if (d4 >= 0) {
            this.w = d4;
        }
        int d5 = a2.d(R.styleable.Toolbar_supportTitleMarginBottom, -1);
        if (d5 >= 0) {
            this.x = d5;
        }
        this.t = a2.e(R.styleable.Toolbar_supportMaxButtonHeight, -1);
        int d6 = a2.d(R.styleable.Toolbar_supportContentInsetStart, MessageNano.UNSET_ENUM_VALUE);
        int d7 = a2.d(R.styleable.Toolbar_supportContentInsetEnd, MessageNano.UNSET_ENUM_VALUE);
        this.y.b(a2.e(R.styleable.Toolbar_supportContentInsetLeft, 0), a2.e(R.styleable.Toolbar_supportContentInsetRight, 0));
        if (!(d6 == Integer.MIN_VALUE && d7 == Integer.MIN_VALUE)) {
            this.y.a(d6, d7);
        }
        this.l = a2.a(R.styleable.Toolbar_supportCollapseIcon);
        this.m = a2.c(R.styleable.Toolbar_supportCollapseContentDescription);
        CharSequence c = a2.c(R.styleable.Toolbar_supportTitle);
        if (!TextUtils.isEmpty(c)) {
            setTitle(c);
        }
        CharSequence c2 = a2.c(R.styleable.Toolbar_supportSubtitle);
        if (!TextUtils.isEmpty(c2)) {
            setSubtitle(c2);
        }
        this.o = getContext();
        setPopupTheme(a2.g(R.styleable.Toolbar_supportPopupTheme, 0));
        Drawable a3 = a2.a(R.styleable.Toolbar_supportNavigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence c3 = a2.c(R.styleable.Toolbar_supportNavigationContentDescription);
        if (!TextUtils.isEmpty(c3)) {
            setNavigationContentDescription(c3);
        }
        this.P = a2.e(R.styleable.Toolbar_android_minHeight, 0);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.af = a2.a(R.styleable.Toolbar_showBottomDivider, false);
        if (a2.g(R.styleable.Toolbar_minTitleTextSize)) {
            this.ae = (float) a2.e(R.styleable.Toolbar_minTitleTextSize, (int) (displayMetrics.scaledDensity * 16.0f));
        } else {
            this.ae = displayMetrics.scaledDensity * 16.0f;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.q, new int[]{16842901});
        if (obtainStyledAttributes != null) {
            this.ad = (float) obtainStyledAttributes.getDimensionPixelSize(0, (int) (displayMetrics.scaledDensity * 24.0f));
            obtainStyledAttributes.recycle();
        }
        if (this.R == 1) {
            this.ad = com.color.support.d.b.a(this.ad, getResources().getConfiguration().fontScale, 2);
            this.ae = com.color.support.d.b.a(this.ae, getResources().getConfiguration().fontScale, 2);
        }
        this.U = getContext().getResources().getDimensionPixelOffset(R.dimen.toolbar_normal_menu_padding);
        this.V = getContext().getResources().getDimensionPixelOffset(R.dimen.toolbar_overflow_menu_padding);
        this.ag = new color.support.design.widget.a(this);
        if (a2.g(R.styleable.Toolbar_dividerBackgroundColor)) {
            this.ag.b(a2.b(R.styleable.Toolbar_dividerBackgroundColor, color.support.design.widget.a.f1313b));
        }
        if (a2.g(R.styleable.Toolbar_dividerColor)) {
            this.ag.a(a2.b(R.styleable.Toolbar_dividerColor, color.support.design.widget.a.f1312a));
        }
        if (a2.g(R.styleable.Toolbar_titleCenter)) {
            this.Q = a2.a(R.styleable.Toolbar_titleCenter, false);
        }
        setWillNotDraw(false);
        a2.b();
        this.ab = f.a(context);
    }

    private int a(View view, int i2) {
        b bVar = (b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = 0;
        int i4 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int b2 = b(bVar.f89a);
        if (b2 == 48) {
            return getPaddingTop() - i4;
        }
        if (b2 != 80) {
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight() - (this.af ? this.ag.b() : 0);
            int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            if (i5 < bVar.topMargin) {
                i5 = bVar.topMargin;
            } else {
                int i6 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
                if (i6 < bVar.bottomMargin) {
                    i5 = Math.max(0, i5 - (bVar.bottomMargin - i6));
                }
            }
            return paddingTop + i5;
        }
        int height2 = getHeight();
        if (this.af) {
            i3 = this.ag.b();
        }
        return ((((height2 - i3) - getPaddingBottom()) - measuredHeight) - bVar.bottomMargin) - i4;
    }

    private int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        boolean z2 = false;
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        if ((marginLayoutParams instanceof b) && ((b) marginLayoutParams).d && this.f) {
            z2 = true;
        }
        view.measure(z2 ? getChildMeasureSpec(i2, getContentInsetStart() + max + getContentInsetStart(), marginLayoutParams.width) : getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return z2 ? max : view.getMeasuredWidth() + max;
    }

    private int a(View view, int i2, int[] iArr, int i3) {
        b bVar = (b) view.getLayoutParams();
        int i4 = bVar.leftMargin - iArr[0];
        int max = i2 + Math.max(0, i4);
        iArr[0] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + bVar.rightMargin;
    }

    private int a(List<View> list, int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int size = list.size();
        int i4 = i3;
        int i5 = 0;
        int i6 = i2;
        int i7 = 0;
        while (i5 < size) {
            View view = list.get(i5);
            b bVar = (b) view.getLayoutParams();
            int i8 = bVar.leftMargin - i6;
            int i9 = bVar.rightMargin - i4;
            int max = Math.max(0, i8);
            int max2 = Math.max(0, i9);
            int max3 = Math.max(0, -i8);
            int max4 = Math.max(0, -i9);
            i7 += max + view.getMeasuredWidth() + max2;
            i5++;
            i4 = max4;
            i6 = max3;
        }
        return i7;
    }

    private void a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        b m2 = layoutParams == null ? j() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (b) layoutParams;
        m2.c = 1;
        addView(view, m2);
    }

    private void a(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void a(g gVar, boolean z2) {
        if (gVar != null) {
            if (!gVar.m().isEmpty()) {
                if (z2) {
                    setPadding(this.V, getPaddingTop(), getPaddingRight(), getPaddingBottom());
                } else {
                    setPadding(getPaddingLeft(), getPaddingTop(), this.V, getPaddingBottom());
                }
            } else if (z2) {
                setPadding(this.U, getPaddingTop(), this.U, getPaddingBottom());
            } else {
                setPadding(this.U, getPaddingTop(), this.U, getPaddingBottom());
            }
        }
    }

    private void a(List<View> list, int i2) {
        boolean z2 = u.f(this) == 1;
        int childCount = getChildCount();
        int a2 = androidx.core.g.c.a(i2, u.f(this));
        list.clear();
        if (z2) {
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt = getChildAt(i3);
                b bVar = (b) childAt.getLayoutParams();
                if (bVar.c == 0 && b(childAt) && c(bVar.f89a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            b bVar2 = (b) childAt2.getLayoutParams();
            if (bVar2.c == 0 && b(childAt2) && c(bVar2.f89a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private void a(int[] iArr) {
        int i2;
        int i3;
        boolean z2 = u.f(this) == 1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.color_actionbar_menuitemview_item_spacing);
        iArr[0] = Math.max(this.y.a(), getPaddingLeft());
        iArr[1] = getMeasuredWidth() - Math.max(this.y.b(), getPaddingRight());
        if (b((View) this.g) && this.g.getChildCount() != 0) {
            if (this.g.getChildCount() == 1) {
                i2 = this.g.getChildAt(0).getMeasuredWidth() + dimensionPixelSize + 0;
                i3 = 0;
            } else {
                i3 = this.g.getChildAt(0).getMeasuredWidth() + dimensionPixelSize + 0;
                i2 = 0;
                for (int i4 = 1; i4 < this.g.getChildCount(); i4++) {
                    i2 += this.g.getChildAt(i4).getMeasuredWidth() + dimensionPixelSize;
                }
            }
            if (z2) {
                iArr[0] = iArr[0] + i2;
                iArr[1] = iArr[1] - i3;
                return;
            }
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] - i2;
        }
    }

    private int b(int i2) {
        int i3 = i2 & 112;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.z & 112;
    }

    private int b(View view, int i2, int[] iArr, int i3) {
        b bVar = (b) view.getLayoutParams();
        int i4 = bVar.rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + bVar.leftMargin);
    }

    private boolean b(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int c(int i2) {
        int f2 = u.f(this);
        int a2 = androidx.core.g.c.a(i2, f2) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : f2 == 1 ? 5 : 3;
    }

    private int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.g.f.a(marginLayoutParams) + androidx.core.g.f.b(marginLayoutParams);
    }

    private int d(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private void e(View view) {
        if (((b) view.getLayoutParams()).c != 2 && view != this.g) {
            view.setVisibility(this.e != null ? 8 : 0);
        }
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private int getMinimumHeightCompat() {
        return Build.VERSION.SDK_INT >= 16 ? u.j(this) : this.P;
    }

    private void n() {
        if (this.k == null) {
            this.k = new ImageView(getContext());
        }
    }

    private void o() {
        p();
        if (this.g.d() == null) {
            g gVar = (g) this.g.getMenu();
            if (this.L == null) {
                this.L = new a();
            }
            this.g.setExpandedActionViewsExclusive(true);
            gVar.a((m) this.L, this.o);
        }
    }

    private void p() {
        if (this.g == null) {
            this.g = new a(getContext());
            this.g.setPopupTheme(this.p);
            this.g.setOnMenuItemClickListener(this.J);
            this.g.a(this.M, this.N);
            com.color.support.d.d.a(this.g, false);
            b m2 = j();
            if (this.Q) {
                m2.width = -1;
            } else {
                m2.width = -2;
            }
            m2.f89a = 8388613 | (this.s & 112);
            this.g.setLayoutParams(m2);
            a((View) this.g);
        }
    }

    private void q() {
        if (this.j == null) {
            this.j = new ImageButton(getContext(), (AttributeSet) null, R.attr.toolbarNavigationButtonStyle);
            b m2 = j();
            m2.f89a = 8388611 | (this.s & 112);
            this.j.setLayoutParams(m2);
            this.j.setBackgroundResource(R.drawable.color_toolbar_menu_bg);
            com.color.support.d.d.a(this.j, false);
        }
    }

    /* access modifiers changed from: private */
    public void r() {
        if (this.n == null) {
            this.n = new ImageButton(getContext(), (AttributeSet) null, R.attr.toolbarNavigationButtonStyle);
            this.n.setImageDrawable(this.l);
            this.n.setContentDescription(this.m);
            b m2 = j();
            m2.f89a = 8388611 | (this.s & 112);
            m2.c = 2;
            this.n.setLayoutParams(m2);
            this.n.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    Toolbar.this.h();
                }
            });
        }
    }

    private boolean s() {
        if (!this.O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (b(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void setChildVisibilityForExpandedActionView(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (!(((b) childAt.getLayoutParams()).c == 2 || childAt == this.g)) {
                childAt.setVisibility(z2 ? 8 : 0);
            }
        }
    }

    private void t() {
        color.support.design.widget.a aVar = this.ag;
        if (aVar != null) {
            aVar.a(this.af);
        }
    }

    public void a(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public void a(int i2, int i3) {
        this.y.a(i2, i3);
    }

    public void a(Context context, int i2) {
        this.q = i2;
        TextView textView = this.h;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
            if (this.R == 1) {
                this.h.setTextSize(0, com.color.support.d.b.a(this.h.getTextSize(), getContext().getResources().getConfiguration().fontScale, 2));
            }
            this.ad = this.h.getTextSize();
            this.T = this.h.getTextSize();
        }
    }

    public void a(View view, b bVar) {
        if (view == null) {
            this.f = false;
            return;
        }
        this.f = view != null;
        b bVar2 = new b(bVar);
        bVar2.d = true;
        bVar2.c = 0;
        addView(view, 0, bVar2);
    }

    public void a(m.a aVar, g.a aVar2) {
        this.M = aVar;
        this.N = aVar2;
    }

    public boolean a() {
        if (getVisibility() == 0) {
            ActionMenuView actionMenuView = this.g;
            return actionMenuView != null && actionMenuView.a();
        }
    }

    /* renamed from: b */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b ? new b((b) layoutParams) : layoutParams instanceof a.C0003a ? new b((a.C0003a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public void b(Context context, int i2) {
        this.r = i2;
        TextView textView = this.i;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public boolean b() {
        ActionMenuView actionMenuView = this.g;
        return actionMenuView != null && actionMenuView.g();
    }

    public boolean c() {
        ActionMenuView actionMenuView = this.g;
        return actionMenuView != null && actionMenuView.h();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    public boolean d() {
        ActionMenuView actionMenuView = this.g;
        return actionMenuView != null && actionMenuView.e();
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.af) {
            this.ag.a(canvas);
        }
    }

    public boolean e() {
        ActionMenuView actionMenuView = this.g;
        return actionMenuView != null && actionMenuView.f();
    }

    public void f() {
        ActionMenuView actionMenuView = this.g;
        if (actionMenuView != null) {
            actionMenuView.i();
        }
    }

    public boolean g() {
        a aVar = this.L;
        return (aVar == null || aVar.f1433b == null) ? false : true;
    }

    public int getBottomDividerHeight() {
        if (this.af) {
            return this.ag.b();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        return this.y.d();
    }

    public int getContentInsetLeft() {
        return this.y.a();
    }

    public int getContentInsetRight() {
        return this.y.b();
    }

    public int getContentInsetStart() {
        return this.y.c();
    }

    public boolean getIsTitleCenterStyle() {
        return this.Q;
    }

    public Drawable getLogo() {
        ImageView imageView = this.k;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.k;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        o();
        return this.g.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.j;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.j;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getPopupTheme() {
        return this.p;
    }

    public CharSequence getSubtitle() {
        return this.B;
    }

    public CharSequence getTitle() {
        return this.A;
    }

    public int getTotalScaleRange() {
        if (this.ac < 0) {
            this.ac = getMeasuredHeight() - u.j(this);
            if (this.af) {
                this.ac -= this.ag.a();
            }
        }
        return this.ac;
    }

    public ab getWrapper() {
        if (this.K == null) {
            this.K = new av(this, true);
        }
        return this.K;
    }

    public void h() {
        a aVar = this.L;
        i iVar = aVar == null ? null : aVar.f1433b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: m */
    public b j() {
        return new b(-2, -2);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.aa);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int a2 = h.a(motionEvent);
        if (a2 == 9) {
            this.F = false;
        }
        if (!this.F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (a2 == 9 && !onHoverEvent) {
                this.F = true;
            }
        }
        if (a2 == 10 || a2 == 3) {
            this.F = false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0372  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x03bb  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x03df  */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x0423  */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x0452  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0461 A[LOOP:4: B:162:0x045f->B:163:0x0461, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0124  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0135  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0138  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x013c  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x013f  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0172  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x01b1  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01c2  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0285  */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        boolean b2;
        boolean b3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int size;
        int i17;
        int a2;
        int i18;
        boolean z3;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        char c;
        int i26;
        int i27;
        boolean z4 = u.f(this) == 1;
        int width = getWidth();
        int height = getHeight() - (this.af ? this.ag.b() : 0);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i28 = width - paddingRight;
        int[] iArr = this.H;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeightCompat = getMinimumHeightCompat();
        if (!b((View) this.j)) {
            i7 = paddingLeft;
        } else if (z4) {
            i6 = b(this.j, i28, iArr, minimumHeightCompat);
            i7 = paddingLeft;
            if (b((View) this.n)) {
                if (z4) {
                    i6 = b(this.n, i6, iArr, minimumHeightCompat);
                } else {
                    i7 = a(this.n, i7, iArr, minimumHeightCompat);
                }
            }
            if (b((View) this.g)) {
                if (z4) {
                    i7 = a(this.g, i7, iArr, minimumHeightCompat);
                } else {
                    i6 = b(this.g, i6, iArr, minimumHeightCompat);
                }
            }
            iArr[0] = Math.max(0, getContentInsetLeft() - i7);
            iArr[1] = Math.max(0, getContentInsetRight() - (i28 - i6));
            int max = Math.max(i7, getContentInsetLeft());
            int min = Math.min(i6, i28 - getContentInsetRight());
            if (b(this.e)) {
                if (z4) {
                    min = b(this.e, min, iArr, minimumHeightCompat);
                } else {
                    max = a(this.e, max, iArr, minimumHeightCompat);
                }
            }
            if (b((View) this.k)) {
                if (z4) {
                    min = b(this.k, min, iArr, minimumHeightCompat);
                } else {
                    max = a(this.k, max, iArr, minimumHeightCompat);
                }
            }
            b2 = b((View) this.h);
            b3 = b((View) this.i);
            if (!b2) {
                b bVar = (b) this.h.getLayoutParams();
                i8 = paddingRight;
                i9 = bVar.topMargin + this.h.getMeasuredHeight() + bVar.bottomMargin + 0;
            } else {
                i8 = paddingRight;
                i9 = 0;
            }
            if (!b3) {
                b bVar2 = (b) this.i.getLayoutParams();
                i10 = paddingLeft;
                i9 += bVar2.topMargin + this.i.getMeasuredHeight() + bVar2.bottomMargin;
            } else {
                i10 = paddingLeft;
            }
            if (!b2 || b3) {
                TextView textView = !b2 ? this.h : this.i;
                TextView textView2 = !b3 ? this.i : this.h;
                b bVar3 = (b) textView.getLayoutParams();
                b bVar4 = (b) textView2.getLayoutParams();
                if ((b2 || this.h.getMeasuredWidth() <= 0) && (!b3 || this.i.getMeasuredWidth() <= 0)) {
                    i11 = width;
                    z3 = false;
                } else {
                    i11 = width;
                    z3 = true;
                }
                i19 = this.z & 112;
                i12 = minimumHeightCompat;
                if (i19 != 48) {
                    i18 = max;
                    i20 = getPaddingTop() + bVar3.topMargin + this.w;
                } else if (i19 != 80) {
                    int i29 = (((height - paddingTop) - paddingBottom) - i9) / 2;
                    i18 = max;
                    if (i29 < bVar3.topMargin + this.w) {
                        i29 = bVar3.topMargin + this.w;
                    } else {
                        int i30 = (((height - paddingBottom) - i9) - i29) - paddingTop;
                        if (i30 < bVar3.bottomMargin + this.x) {
                            i29 = Math.max(0, i29 - ((bVar4.bottomMargin + this.x) - i30));
                        }
                    }
                    i20 = paddingTop + i29;
                } else {
                    i18 = max;
                    i20 = (((height - paddingBottom) - bVar4.bottomMargin) - this.x) - i9;
                }
                if (!this.Q) {
                    int max2 = Math.max(b2 ? this.h.getMeasuredWidth() : 0, b3 ? this.i.getMeasuredWidth() : 0);
                    int width2 = getWidth() - (Math.max(this.S[0], getWidth() - this.S[1]) * 2);
                    int[] iArr2 = this.S;
                    int i31 = iArr2[1] - iArr2[0];
                    if (b2) {
                        b bVar5 = (b) this.h.getLayoutParams();
                        int measuredWidth = this.h.getMeasuredWidth();
                        int width3 = (getWidth() - measuredWidth) / 2;
                        int i32 = width3 + measuredWidth;
                        int measuredHeight = this.h.getMeasuredHeight() + i20;
                        if (width2 < max2) {
                            if (measuredWidth >= i31) {
                                int[] iArr3 = this.S;
                                width3 = iArr3[0];
                                i32 = iArr3[1];
                            } else {
                                width3 = this.S[0] + ((i31 - measuredWidth) / 2);
                                i32 = width3 + measuredWidth;
                            }
                        }
                        this.h.layout(width3, i20, i32, measuredHeight);
                        i20 = measuredHeight + bVar5.bottomMargin;
                    }
                    if (b3) {
                        int i33 = i20 + ((b) this.i.getLayoutParams()).topMargin;
                        int measuredWidth2 = this.i.getMeasuredWidth();
                        int width4 = (getWidth() - measuredWidth2) / 2;
                        int i34 = width4 + measuredWidth2;
                        int measuredHeight2 = this.i.getMeasuredHeight() + i33;
                        if (width2 < max2) {
                            if (measuredWidth2 >= i31) {
                                int[] iArr4 = this.S;
                                width4 = iArr4[0];
                                i34 = iArr4[1];
                            } else {
                                width4 = this.S[0] + ((i31 - measuredWidth2) / 2);
                                i34 = width4 + measuredWidth2;
                            }
                        }
                        this.i.layout(width4, i33, i34, measuredHeight2);
                    }
                } else if (z4) {
                    if (z3) {
                        i25 = this.u;
                        c = 1;
                    } else {
                        c = 1;
                        i25 = 0;
                    }
                    int i35 = i25 - iArr[c];
                    min -= Math.max(0, i35);
                    iArr[c] = Math.max(0, -i35);
                    if (b2) {
                        int measuredWidth3 = min - this.h.getMeasuredWidth();
                        int measuredHeight3 = this.h.getMeasuredHeight() + i20;
                        this.h.layout(measuredWidth3, i20, min, measuredHeight3);
                        i26 = measuredWidth3 - this.v;
                        i20 = measuredHeight3 + ((b) this.h.getLayoutParams()).bottomMargin;
                    } else {
                        i26 = min;
                    }
                    if (b3) {
                        b bVar6 = (b) this.i.getLayoutParams();
                        int i36 = i20 + bVar6.topMargin;
                        this.i.layout(min - this.i.getMeasuredWidth(), i36, min, this.i.getMeasuredHeight() + i36);
                        i27 = min - this.v;
                        int i37 = bVar6.bottomMargin;
                    } else {
                        i27 = min;
                    }
                    if (z3) {
                        min = Math.min(i26, i27);
                    }
                } else {
                    if (z3) {
                        i21 = this.u;
                        i22 = 0;
                    } else {
                        i22 = 0;
                        i21 = 0;
                    }
                    int i38 = i21 - iArr[i22];
                    i13 = i18 + Math.max(i22, i38);
                    iArr[i22] = Math.max(i22, -i38);
                    if (b2) {
                        int measuredWidth4 = this.h.getMeasuredWidth() + i13;
                        int measuredHeight4 = this.h.getMeasuredHeight() + i20;
                        this.h.layout(i13, i20, measuredWidth4, measuredHeight4);
                        i23 = measuredWidth4 + this.v;
                        i20 = measuredHeight4 + ((b) this.h.getLayoutParams()).bottomMargin;
                    } else {
                        i23 = i13;
                    }
                    if (b3) {
                        b bVar7 = (b) this.i.getLayoutParams();
                        int i39 = i20 + bVar7.topMargin;
                        int measuredWidth5 = this.i.getMeasuredWidth() + i13;
                        this.i.layout(i13, i39, measuredWidth5, this.i.getMeasuredHeight() + i39);
                        i24 = measuredWidth5 + this.v;
                        int i40 = bVar7.bottomMargin;
                    } else {
                        i24 = i13;
                    }
                    if (z3) {
                        i13 = Math.max(i23, i24);
                    }
                    a((List<View>) this.G, 3);
                    int size2 = this.G.size();
                    if (this.f) {
                        int i41 = 0;
                        while (i41 < size2) {
                            ViewGroup.LayoutParams layoutParams = this.G.get(i41).getLayoutParams();
                            if (layoutParams == null || !(layoutParams instanceof b) || !((b) layoutParams).d) {
                                i17 = i12;
                                a2 = a(this.G.get(i41), i13, iArr, i17);
                            } else {
                                a2 = a(this.G.get(i41), getContentInsetLeft(), this.W, 0);
                                i17 = i12;
                            }
                            i41++;
                            i12 = i17;
                        }
                        i14 = i12;
                    } else {
                        i14 = i12;
                        for (int i42 = 0; i42 < size2; i42++) {
                            i13 = a(this.G.get(i42), i13, iArr, i14);
                        }
                    }
                    a((List<View>) this.G, 5);
                    int size3 = this.G.size();
                    if (this.f) {
                        for (int i43 = 0; i43 < size3; i43++) {
                            ViewGroup.LayoutParams layoutParams2 = this.G.get(i43).getLayoutParams();
                            min = (layoutParams2 == null || !(layoutParams2 instanceof b) || !((b) layoutParams2).d) ? b(this.G.get(i43), min, iArr, i14) : b(this.G.get(i43), i11 - getContentInsetRight(), this.W, 0);
                        }
                        i15 = 0;
                    } else {
                        i15 = 0;
                        for (int i44 = 0; i44 < size3; i44++) {
                            min = b(this.G.get(i44), min, iArr, i14);
                        }
                    }
                    a((List<View>) this.G, 1);
                    int a3 = a((List<View>) this.G, iArr);
                    i16 = (i10 + (((i11 - i10) - i8) / 2)) - (a3 / 2);
                    int i45 = a3 + i16;
                    if (i16 >= i13) {
                        i13 = i45 > min ? i16 - (i45 - min) : i16;
                    }
                    size = this.G.size();
                    while (i15 < size) {
                        i13 = a(this.G.get(i15), i13, iArr, i14);
                        i15++;
                    }
                    this.G.clear();
                }
            } else {
                i11 = width;
                i12 = minimumHeightCompat;
                i18 = max;
            }
            i13 = i18;
            a((List<View>) this.G, 3);
            int size22 = this.G.size();
            if (this.f) {
            }
            a((List<View>) this.G, 5);
            int size32 = this.G.size();
            if (this.f) {
            }
            a((List<View>) this.G, 1);
            int a32 = a((List<View>) this.G, iArr);
            i16 = (i10 + (((i11 - i10) - i8) / 2)) - (a32 / 2);
            int i452 = a32 + i16;
            if (i16 >= i13) {
            }
            size = this.G.size();
            while (i15 < size) {
            }
            this.G.clear();
        } else {
            i7 = a(this.j, paddingLeft, iArr, minimumHeightCompat);
        }
        i6 = i28;
        if (b((View) this.n)) {
        }
        if (b((View) this.g)) {
        }
        iArr[0] = Math.max(0, getContentInsetLeft() - i7);
        iArr[1] = Math.max(0, getContentInsetRight() - (i28 - i6));
        int max3 = Math.max(i7, getContentInsetLeft());
        int min2 = Math.min(i6, i28 - getContentInsetRight());
        if (b(this.e)) {
        }
        if (b((View) this.k)) {
        }
        b2 = b((View) this.h);
        b3 = b((View) this.i);
        if (!b2) {
        }
        if (!b3) {
        }
        if (!b2) {
        }
        if (!b2) {
        }
        if (!b3) {
        }
        b bVar32 = (b) textView.getLayoutParams();
        b bVar42 = (b) textView2.getLayoutParams();
        if (b2) {
        }
        i11 = width;
        z3 = false;
        i19 = this.z & 112;
        i12 = minimumHeightCompat;
        if (i19 != 48) {
        }
        if (!this.Q) {
        }
        i13 = i18;
        a((List<View>) this.G, 3);
        int size222 = this.G.size();
        if (this.f) {
        }
        a((List<View>) this.G, 5);
        int size322 = this.G.size();
        if (this.f) {
        }
        a((List<View>) this.G, 1);
        int a322 = a((List<View>) this.G, iArr);
        i16 = (i10 + (((i11 - i10) - i8) / 2)) - (a322 / 2);
        int i4522 = a322 + i16;
        if (i16 >= i13) {
        }
        size = this.G.size();
        while (i15 < size) {
        }
        this.G.clear();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        char c;
        char c2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        char c3;
        char c4;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23 = i2;
        int i24 = i3;
        boolean z2 = u.f(this) == 1;
        if (this.Q) {
            int[] iArr = this.H;
            if (ba.a(this)) {
                c4 = 1;
                c3 = 0;
            } else {
                c3 = 1;
                c4 = 0;
            }
            int contentInsetStart = getContentInsetStart();
            int max = Math.max(contentInsetStart, 0) + 0;
            iArr[c4] = Math.max(0, contentInsetStart - 0);
            if (b((View) this.g)) {
                a((g) this.g.getMenu(), z2);
                a((View) this.g, i2, 0, i3, 0, this.t);
                i15 = this.g.getMeasuredWidth() + c((View) this.g);
                i13 = Math.max(0, this.g.getMeasuredHeight() + d((View) this.g));
                i14 = View.combineMeasuredStates(0, u.g(this.g));
            } else {
                i15 = 0;
                i14 = 0;
                i13 = 0;
            }
            int contentInsetEnd = getContentInsetEnd();
            int max2 = max + Math.max(contentInsetEnd, i15);
            iArr[c3] = Math.max(0, contentInsetEnd - i15);
            if (b(this.e)) {
                max2 += a(this.e, i2, max2, i3, 0, iArr);
                i13 = Math.max(i13, this.e.getMeasuredHeight() + d(this.e));
                i14 = View.combineMeasuredStates(i14, u.g(this.e));
            }
            int i25 = i14;
            int childCount = getChildCount();
            int i26 = i13;
            int i27 = 0;
            while (i27 < childCount) {
                View childAt = getChildAt(i27);
                if (((b) childAt.getLayoutParams()).c != 0 || !b(childAt)) {
                    i22 = childCount;
                    i26 = i26;
                } else {
                    View view = childAt;
                    i22 = childCount;
                    max2 += a(childAt, i2, max2, i3, 0, iArr);
                    View view2 = view;
                    i26 = Math.max(i26, view.getMeasuredHeight() + d(view2));
                    i25 = View.combineMeasuredStates(i25, u.g(view2));
                }
                i27++;
                childCount = i22;
            }
            int i28 = i26;
            int i29 = this.w + this.x;
            int i30 = this.u;
            int i31 = this.v;
            if (b((View) this.h)) {
                this.h.getLayoutParams().width = -2;
                this.h.setTextSize(0, this.T);
                i17 = -2;
                a((View) this.h, i2, 0, i3, i29, iArr);
                int measuredWidth = this.h.getMeasuredWidth() + c((View) this.h);
                i18 = this.h.getMeasuredHeight() + d((View) this.h);
                i19 = View.combineMeasuredStates(i25, u.g(this.h));
                i16 = measuredWidth;
            } else {
                i17 = -2;
                i19 = i25;
                i18 = 0;
                i16 = 0;
            }
            if (b((View) this.i)) {
                this.i.getLayoutParams().width = i17;
                i21 = i18;
                i16 = Math.max(i16, a((View) this.i, i2, 0, i3, i18 + i29, iArr));
                i20 = View.combineMeasuredStates(i19, u.g(this.i));
            } else {
                i20 = i19;
                i21 = i18;
            }
            int max3 = Math.max(i28, i21) + getPaddingTop() + getPaddingBottom();
            int a2 = u.a(Math.max(max2 + i16 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i23, -16777216 & i20);
            int a3 = u.a(Math.max(max3, getSuggestedMinimumHeight()), i24, i20 << 16);
            if (this.af) {
                a3 += this.ag.b();
            }
            if (s()) {
                a3 = 0;
            }
            setMeasuredDimension(a2, a3);
            a(this.S);
            int[] iArr2 = this.S;
            int i32 = iArr2[1] - iArr2[0];
            if (b((View) this.h)) {
                int measuredWidth2 = this.h.getMeasuredWidth();
                int[] iArr3 = this.S;
                if (measuredWidth2 > iArr3[1] - iArr3[0]) {
                    a((View) this.h, View.MeasureSpec.makeMeasureSpec(i32, MessageNano.UNSET_ENUM_VALUE), 0, i3, i29, iArr);
                }
            }
            if (b((View) this.i)) {
                int measuredWidth3 = this.i.getMeasuredWidth();
                int[] iArr4 = this.S;
                if (measuredWidth3 > iArr4[1] - iArr4[0]) {
                    a((View) this.i, View.MeasureSpec.makeMeasureSpec(i32, MessageNano.UNSET_ENUM_VALUE), 0, i3, i21 + i29, iArr);
                    return;
                }
                return;
            }
            return;
        }
        int[] iArr5 = this.H;
        if (ba.a(this)) {
            c2 = 1;
            c = 0;
        } else {
            c = 1;
            c2 = 0;
        }
        if (b((View) this.j)) {
            a((View) this.j, i2, 0, i3, 0, this.t);
            i6 = this.j.getMeasuredWidth() + c((View) this.j);
            i5 = Math.max(0, this.j.getMeasuredHeight() + d((View) this.j));
            i4 = View.combineMeasuredStates(0, u.g(this.j));
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (b((View) this.n)) {
            a((View) this.n, i2, 0, i3, 0, this.t);
            i6 = this.n.getMeasuredWidth() + c((View) this.n);
            i5 = Math.max(i5, this.n.getMeasuredHeight() + d((View) this.n));
            i4 = View.combineMeasuredStates(i4, u.g(this.n));
        }
        int contentInsetStart2 = getContentInsetStart();
        int max4 = 0 + Math.max(contentInsetStart2, i6);
        iArr5[c2] = Math.max(0, contentInsetStart2 - i6);
        if (b((View) this.g)) {
            a((g) this.g.getMenu(), z2);
            a((View) this.g, i2, max4, i3, 0, this.t);
            i7 = this.g.getMeasuredWidth() + c((View) this.g);
            i5 = Math.max(i5, this.g.getMeasuredHeight() + d((View) this.g));
            i4 = View.combineMeasuredStates(i4, u.g(this.g));
        } else {
            i7 = 0;
        }
        int contentInsetEnd2 = getContentInsetEnd();
        int max5 = max4 + Math.max(contentInsetEnd2, i7);
        iArr5[c] = Math.max(0, contentInsetEnd2 - i7);
        if (b(this.e)) {
            max5 += a(this.e, i2, max5, i3, 0, iArr5);
            i5 = Math.max(i5, this.e.getMeasuredHeight() + d(this.e));
            i4 = View.combineMeasuredStates(i4, u.g(this.e));
        }
        if (b((View) this.k)) {
            max5 += a((View) this.k, i2, max5, i3, 0, iArr5);
            i5 = Math.max(i5, this.k.getMeasuredHeight() + d((View) this.k));
            i4 = View.combineMeasuredStates(i4, u.g(this.k));
        }
        int childCount2 = getChildCount();
        int i33 = max5;
        for (int i34 = 0; i34 < childCount2; i34++) {
            View childAt2 = getChildAt(i34);
            if (((b) childAt2.getLayoutParams()).c == 0 && b(childAt2)) {
                View view3 = childAt2;
                i33 += a(childAt2, i2, i33, i3, 0, iArr5);
                View view4 = view3;
                i5 = Math.max(i5, view3.getMeasuredHeight() + d(view4));
                i4 = View.combineMeasuredStates(i4, u.g(view4));
            }
        }
        int i35 = this.w + this.x;
        int i36 = this.u + this.v;
        if (b((View) this.h)) {
            this.h.getLayoutParams().width = -1;
            this.h.setTextSize(0, this.T);
            i9 = 0;
            i11 = -1;
            a((View) this.h, i2, i33 + i36, i3, i35, iArr5);
            int measuredWidth4 = this.h.getMeasuredWidth() + c((View) this.h);
            i8 = this.h.getMeasuredHeight() + d((View) this.h);
            i12 = View.combineMeasuredStates(i4, u.g(this.h));
            i10 = measuredWidth4;
        } else {
            i11 = -1;
            i9 = 0;
            i12 = i4;
            i10 = 0;
            i8 = 0;
        }
        if (b((View) this.i)) {
            this.i.getLayoutParams().width = i11;
            i10 = Math.max(i10, a((View) this.i, i2, i33 + i36, i3, i8 + i35, iArr5));
            i8 += this.i.getMeasuredHeight() + d((View) this.i);
            i12 = View.combineMeasuredStates(i12, u.g(this.i));
        } else {
            int i37 = i12;
        }
        int max6 = Math.max(i5, i8);
        int paddingLeft = i33 + i10 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max6 + getPaddingTop() + getPaddingBottom();
        int a4 = u.a(Math.max(paddingLeft, getSuggestedMinimumWidth()), i23, -16777216 & i12);
        int a5 = u.a(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, i12 << 16);
        if (this.af) {
            a5 += this.ag.b();
        }
        int i38 = a5;
        if (s()) {
            i38 = i9;
        }
        setMeasuredDimension(a4, i38);
    }

    public void onRtlPropertiesChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        d dVar = this.y;
        if (dVar != null) {
            boolean z2 = true;
            if (i2 != 1) {
                z2 = false;
            }
            dVar.a(z2);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a2 = h.a(motionEvent);
        if (a2 == 0) {
            this.E = false;
        }
        if (!this.E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (a2 == 0 && !onTouchEvent) {
                this.E = true;
            }
        }
        if (a2 == 1 || a2 == 3) {
            this.E = false;
        }
        return true;
    }

    public void setBottomDividerBackground(int i2) {
        this.ag.b(i2);
        postInvalidate();
    }

    public void setBottomDividerHeight(int i2) {
        this.ag.f(i2);
        postInvalidate();
    }

    public void setCollapsible(boolean z2) {
        this.O = z2;
        requestLayout();
    }

    public void setDividerColor(int i2) {
        this.ag.a(i2);
        postInvalidate();
    }

    public void setDividerMargin(int i2) {
        this.ag.e(i2);
        postInvalidate();
    }

    public void setDividerMaxHeight(int i2) {
        this.ag.c(i2);
        postInvalidate();
    }

    public void setDividerMinHeight(int i2) {
        this.ag.d(i2);
        postInvalidate();
    }

    public void setIsTitleCenterStyle(boolean z2) {
        p();
        this.Q = z2;
        b bVar = (b) this.g.getLayoutParams();
        if (this.Q) {
            bVar.width = -1;
        } else {
            bVar.width = -2;
        }
        this.g.setLayoutParams(bVar);
        requestLayout();
    }

    public void setLogo(int i2) {
        setLogo(this.ab.a(i2));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            n();
            if (this.k.getParent() == null) {
                a((View) this.k);
                e(this.k);
            }
        } else {
            ImageView imageView = this.k;
            if (!(imageView == null || imageView.getParent() == null)) {
                removeView(this.k);
            }
        }
        ImageView imageView2 = this.k;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            n();
        }
        ImageView imageView = this.k;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMinTitleTextSize(float f2) {
        float f3 = this.ad;
        if (f2 > f3) {
            f2 = f3;
        }
        this.ae = f2;
    }

    public void setMinimumHeight(int i2) {
        this.P = i2;
        super.setMinimumHeight(i2);
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            q();
        }
        ImageButton imageButton = this.j;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(this.ab.a(i2));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            q();
            if (this.j.getParent() == null) {
                a((View) this.j);
                e(this.j);
            }
        } else {
            ImageButton imageButton = this.j;
            if (!(imageButton == null || imageButton.getParent() == null)) {
                removeView(this.j);
            }
        }
        ImageButton imageButton2 = this.j;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        q();
        this.j.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(Toolbar.c cVar) {
        this.I = cVar;
    }

    public void setPopupTheme(int i2) {
        if (this.p != i2) {
            this.p = i2;
            if (i2 == 0) {
                this.o = getContext();
            } else {
                this.o = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSearchView(View view) {
        a(view, view != null ? new b(view.getLayoutParams()) : null);
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.i == null) {
                Context context = getContext();
                this.i = new TextView(context);
                this.i.setSingleLine();
                this.i.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.r;
                if (i2 != 0) {
                    this.i.setTextAppearance(context, i2);
                }
                int i3 = this.D;
                if (i3 != 0) {
                    this.i.setTextColor(i3);
                }
            }
            if (this.i.getParent() == null) {
                a((View) this.i);
                e(this.i);
            }
        } else {
            TextView textView = this.i;
            if (!(textView == null || textView.getParent() == null)) {
                removeView(this.i);
            }
        }
        if (this.i != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                this.i.setTextAlignment(5);
            }
            this.i.setText(charSequence);
        }
        this.B = charSequence;
    }

    public void setSubtitleTextColor(int i2) {
        this.D = i2;
        TextView textView = this.i;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.h == null) {
                Context context = getContext();
                this.h = new TextView(context);
                b m2 = j();
                m2.bottomMargin = this.x;
                m2.f89a = 8388613 | (this.s & 112);
                this.h.setLayoutParams(m2);
                this.h.setSingleLine();
                this.h.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.q;
                if (i2 != 0) {
                    this.h.setTextAppearance(context, i2);
                }
                int i3 = this.C;
                if (i3 != 0) {
                    this.h.setTextColor(i3);
                }
                if (this.R == 1) {
                    this.h.setTextSize(0, com.color.support.d.b.a(this.h.getTextSize(), getContext().getResources().getConfiguration().fontScale, 2));
                }
            }
            if (this.h.getParent() == null) {
                a((View) this.h);
                e(this.h);
            }
        } else {
            TextView textView = this.h;
            if (!(textView == null || textView.getParent() == null)) {
                removeView(this.h);
            }
        }
        if (this.h != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                this.h.setTextAlignment(5);
            }
            this.h.setText(charSequence);
            this.T = this.h.getTextSize();
        }
        this.A = charSequence;
    }

    public void setTitleTextColor(int i2) {
        this.C = i2;
        TextView textView = this.h;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }
}
