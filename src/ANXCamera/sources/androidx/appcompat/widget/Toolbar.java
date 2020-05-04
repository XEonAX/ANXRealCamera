package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
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
import androidx.appcompat.R;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.g.f;
import androidx.core.g.u;
import androidx.customview.view.AbsSavedState;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup {
    private ColorStateList A;
    private ColorStateList B;
    private boolean C;
    private boolean D;
    private final ArrayList<View> E;
    private final ArrayList<View> F;
    private final int[] G;
    private final ActionMenuView.e H;
    private av I;
    private ActionMenuPresenter J;
    private a K;
    private m.a L;
    private g.a M;
    private boolean N;
    private final Runnable O;

    /* renamed from: a  reason: collision with root package name */
    ImageButton f289a;

    /* renamed from: b  reason: collision with root package name */
    View f290b;
    int c;
    c d;
    private ActionMenuView e;
    private TextView f;
    private TextView g;
    private ImageButton h;
    private ImageView i;
    private Drawable j;
    private CharSequence k;
    private Context l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private am u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int expandedMenuItemId;
        boolean isOverflowOpen;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    private class a implements m {

        /* renamed from: a  reason: collision with root package name */
        g f294a;

        /* renamed from: b  reason: collision with root package name */
        i f295b;

        a() {
        }

        public void a(Context context, g gVar) {
            g gVar2 = this.f294a;
            if (gVar2 != null) {
                i iVar = this.f295b;
                if (iVar != null) {
                    gVar2.d(iVar);
                }
            }
            this.f294a = gVar;
        }

        public void a(Parcelable parcelable) {
        }

        public void a(g gVar, boolean z) {
        }

        public void a(m.a aVar) {
        }

        public void a(boolean z) {
            if (this.f295b != null) {
                g gVar = this.f294a;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.f294a.getItem(i) == this.f295b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    b(this.f294a, this.f295b);
                }
            }
        }

        public boolean a(g gVar, i iVar) {
            Toolbar.this.i();
            ViewParent parent = Toolbar.this.f289a.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f289a);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f289a);
            }
            Toolbar.this.f290b = iVar.getActionView();
            this.f295b = iVar;
            ViewParent parent2 = Toolbar.this.f290b.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f290b);
                }
                b j = Toolbar.this.generateDefaultLayoutParams();
                j.f89a = 8388611 | (Toolbar.this.c & 112);
                j.f296b = 2;
                Toolbar.this.f290b.setLayoutParams(j);
                Toolbar toolbar4 = Toolbar.this;
                toolbar4.addView(toolbar4.f290b);
            }
            Toolbar.this.k();
            Toolbar.this.requestLayout();
            iVar.e(true);
            if (Toolbar.this.f290b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.f290b).a();
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
            if (Toolbar.this.f290b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.f290b).b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f290b);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f289a);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f290b = null;
            toolbar3.l();
            this.f295b = null;
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

    public static class b extends a.C0003a {

        /* renamed from: b  reason: collision with root package name */
        int f296b = 0;

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
            super((ViewGroup.LayoutParams) marginLayoutParams);
            a(marginLayoutParams);
        }

        public b(a.C0003a aVar) {
            super(aVar);
        }

        public b(b bVar) {
            super((a.C0003a) bVar);
            this.f296b = bVar.f296b;
        }

        /* access modifiers changed from: package-private */
        public void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public interface c {
        boolean a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, (AttributeSet) null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = 8388627;
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new int[2];
        this.H = new ActionMenuView.e() {
            public boolean a(MenuItem menuItem) {
                if (Toolbar.this.d != null) {
                    return Toolbar.this.d.a(menuItem);
                }
                return false;
            }
        };
        this.O = new Runnable() {
            public void run() {
                Toolbar.this.d();
            }
        };
        au a2 = au.a(getContext(), attributeSet, R.styleable.Toolbar, i2, 0);
        this.n = a2.g(R.styleable.Toolbar_titleTextAppearance, 0);
        this.o = a2.g(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.x = a2.c(R.styleable.Toolbar_android_gravity, this.x);
        this.c = a2.c(R.styleable.Toolbar_buttonGravity, 48);
        int d2 = a2.d(R.styleable.Toolbar_titleMargin, 0);
        d2 = a2.g(R.styleable.Toolbar_titleMargins) ? a2.d(R.styleable.Toolbar_titleMargins, d2) : d2;
        this.t = d2;
        this.s = d2;
        this.r = d2;
        this.q = d2;
        int d3 = a2.d(R.styleable.Toolbar_titleMarginStart, -1);
        if (d3 >= 0) {
            this.q = d3;
        }
        int d4 = a2.d(R.styleable.Toolbar_titleMarginEnd, -1);
        if (d4 >= 0) {
            this.r = d4;
        }
        int d5 = a2.d(R.styleable.Toolbar_titleMarginTop, -1);
        if (d5 >= 0) {
            this.s = d5;
        }
        int d6 = a2.d(R.styleable.Toolbar_titleMarginBottom, -1);
        if (d6 >= 0) {
            this.t = d6;
        }
        this.p = a2.e(R.styleable.Toolbar_maxButtonHeight, -1);
        int d7 = a2.d(R.styleable.Toolbar_contentInsetStart, MessageNano.UNSET_ENUM_VALUE);
        int d8 = a2.d(R.styleable.Toolbar_contentInsetEnd, MessageNano.UNSET_ENUM_VALUE);
        int e2 = a2.e(R.styleable.Toolbar_contentInsetLeft, 0);
        int e3 = a2.e(R.styleable.Toolbar_contentInsetRight, 0);
        s();
        this.u.b(e2, e3);
        if (!(d7 == Integer.MIN_VALUE && d8 == Integer.MIN_VALUE)) {
            this.u.a(d7, d8);
        }
        this.v = a2.d(R.styleable.Toolbar_contentInsetStartWithNavigation, MessageNano.UNSET_ENUM_VALUE);
        this.w = a2.d(R.styleable.Toolbar_contentInsetEndWithActions, MessageNano.UNSET_ENUM_VALUE);
        this.j = a2.a(R.styleable.Toolbar_collapseIcon);
        this.k = a2.c(R.styleable.Toolbar_collapseContentDescription);
        CharSequence c2 = a2.c(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(c2)) {
            setTitle(c2);
        }
        CharSequence c3 = a2.c(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(c3)) {
            setSubtitle(c3);
        }
        this.l = getContext();
        setPopupTheme(a2.g(R.styleable.Toolbar_popupTheme, 0));
        Drawable a3 = a2.a(R.styleable.Toolbar_navigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence c4 = a2.c(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(c4)) {
            setNavigationContentDescription(c4);
        }
        Drawable a4 = a2.a(R.styleable.Toolbar_logo);
        if (a4 != null) {
            setLogo(a4);
        }
        CharSequence c5 = a2.c(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(c5)) {
            setLogoDescription(c5);
        }
        if (a2.g(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.e(R.styleable.Toolbar_titleTextColor));
        }
        if (a2.g(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.e(R.styleable.Toolbar_subtitleTextColor));
        }
        if (a2.g(R.styleable.Toolbar_menu)) {
            a(a2.g(R.styleable.Toolbar_menu, 0));
        }
        a2.b();
    }

    private int a(View view, int i2) {
        b bVar = (b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int b2 = b(bVar.f89a);
        if (b2 == 48) {
            return getPaddingTop() - i3;
        }
        if (b2 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - bVar.bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        if (i4 < bVar.topMargin) {
            i4 = bVar.topMargin;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            if (i5 < bVar.bottomMargin) {
                i4 = Math.max(0, i4 - (bVar.bottomMargin - i5));
            }
        }
        return paddingTop + i4;
    }

    private int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
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

    private void a(View view, boolean z2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        b j2 = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (b) layoutParams;
        j2.f296b = 1;
        if (!z2 || this.f290b == null) {
            addView(view, j2);
            return;
        }
        view.setLayoutParams(j2);
        this.F.add(view);
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
                if (bVar.f296b == 0 && a(childAt) && c(bVar.f89a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            b bVar2 = (b) childAt2.getLayoutParams();
            if (bVar2.f296b == 0 && a(childAt2) && c(bVar2.f89a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private boolean a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int b(int i2) {
        int i3 = i2 & 112;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.x & 112;
    }

    private int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return f.a(marginLayoutParams) + f.b(marginLayoutParams);
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

    private int c(int i2) {
        int f2 = u.f(this);
        int a2 = androidx.core.g.c.a(i2, f2) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : f2 == 1 ? 5 : 3;
    }

    private int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private boolean d(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private void m() {
        if (this.i == null) {
            this.i = new n(getContext());
        }
    }

    private void n() {
        o();
        if (this.e.d() == null) {
            g gVar = (g) this.e.getMenu();
            if (this.K == null) {
                this.K = new a();
            }
            this.e.setExpandedActionViewsExclusive(true);
            gVar.a((m) this.K, this.l);
        }
    }

    private void o() {
        if (this.e == null) {
            this.e = new ActionMenuView(getContext());
            this.e.setPopupTheme(this.m);
            this.e.setOnMenuItemClickListener(this.H);
            this.e.a(this.L, this.M);
            b j2 = generateDefaultLayoutParams();
            j2.f89a = 8388613 | (this.c & 112);
            this.e.setLayoutParams(j2);
            a((View) this.e, false);
        }
    }

    private void p() {
        if (this.h == null) {
            this.h = new l(getContext(), (AttributeSet) null, R.attr.toolbarNavigationButtonStyle);
            b j2 = generateDefaultLayoutParams();
            j2.f89a = 8388611 | (this.c & 112);
            this.h.setLayoutParams(j2);
        }
    }

    private void q() {
        removeCallbacks(this.O);
        post(this.O);
    }

    private boolean r() {
        if (!this.N) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (a(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private void s() {
        if (this.u == null) {
            this.u = new am();
        }
    }

    /* renamed from: a */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b ? new b((b) layoutParams) : layoutParams instanceof a.C0003a ? new b((a.C0003a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public void a(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public void a(int i2, int i3) {
        s();
        this.u.a(i2, i3);
    }

    public void a(Context context, int i2) {
        this.n = i2;
        TextView textView = this.f;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void a(g gVar, ActionMenuPresenter actionMenuPresenter) {
        if (gVar != null || this.e != null) {
            o();
            g d2 = this.e.d();
            if (d2 != gVar) {
                if (d2 != null) {
                    d2.b((m) this.J);
                    d2.b((m) this.K);
                }
                if (this.K == null) {
                    this.K = new a();
                }
                actionMenuPresenter.c(true);
                if (gVar != null) {
                    gVar.a((m) actionMenuPresenter, this.l);
                    gVar.a((m) this.K, this.l);
                } else {
                    actionMenuPresenter.a(this.l, (g) null);
                    this.K.a(this.l, (g) null);
                    actionMenuPresenter.a(true);
                    this.K.a(true);
                }
                this.e.setPopupTheme(this.m);
                this.e.setPresenter(actionMenuPresenter);
                this.J = actionMenuPresenter;
            }
        }
    }

    public void a(m.a aVar, g.a aVar2) {
        this.L = aVar;
        this.M = aVar2;
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            actionMenuView.a(aVar, aVar2);
        }
    }

    public boolean a() {
        if (getVisibility() == 0) {
            ActionMenuView actionMenuView = this.e;
            return actionMenuView != null && actionMenuView.a();
        }
    }

    public void b(Context context, int i2) {
        this.o = i2;
        TextView textView = this.g;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public boolean b() {
        ActionMenuView actionMenuView = this.e;
        return actionMenuView != null && actionMenuView.g();
    }

    public boolean c() {
        ActionMenuView actionMenuView = this.e;
        return actionMenuView != null && actionMenuView.h();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    public boolean d() {
        ActionMenuView actionMenuView = this.e;
        return actionMenuView != null && actionMenuView.e();
    }

    public boolean e() {
        ActionMenuView actionMenuView = this.e;
        return actionMenuView != null && actionMenuView.f();
    }

    public void f() {
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            actionMenuView.i();
        }
    }

    public boolean g() {
        a aVar = this.K;
        return (aVar == null || aVar.f295b == null) ? false : true;
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f289a;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f289a;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        am amVar = this.u;
        if (amVar != null) {
            return amVar.d();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.w;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        am amVar = this.u;
        if (amVar != null) {
            return amVar.a();
        }
        return 0;
    }

    public int getContentInsetRight() {
        am amVar = this.u;
        if (amVar != null) {
            return amVar.b();
        }
        return 0;
    }

    public int getContentInsetStart() {
        am amVar = this.u;
        if (amVar != null) {
            return amVar.c();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0016  */
    public int getCurrentContentInsetEnd() {
        boolean z2;
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            g d2 = actionMenuView.d();
            if (d2 != null && d2.hasVisibleItems()) {
                z2 = true;
                return !z2 ? Math.max(getContentInsetEnd(), Math.max(this.w, 0)) : getContentInsetEnd();
            }
        }
        z2 = false;
        if (!z2) {
        }
    }

    public int getCurrentContentInsetLeft() {
        return u.f(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return u.f(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.i;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.i;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        n();
        return this.e.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.J;
    }

    public Drawable getOverflowIcon() {
        n();
        return this.e.getOverflowIcon();
    }

    /* access modifiers changed from: package-private */
    public Context getPopupContext() {
        return this.l;
    }

    public int getPopupTheme() {
        return this.m;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    /* access modifiers changed from: package-private */
    public final TextView getSubtitleTextView() {
        return this.g;
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    /* access modifiers changed from: package-private */
    public final TextView getTitleTextView() {
        return this.f;
    }

    public ab getWrapper() {
        if (this.I == null) {
            this.I = new av(this, true);
        }
        return this.I;
    }

    public void h() {
        a aVar = this.K;
        i iVar = aVar == null ? null : aVar.f295b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        if (this.f289a == null) {
            this.f289a = new l(getContext(), (AttributeSet) null, R.attr.toolbarNavigationButtonStyle);
            this.f289a.setImageDrawable(this.j);
            this.f289a.setContentDescription(this.k);
            b j2 = generateDefaultLayoutParams();
            j2.f89a = 8388611 | (this.c & 112);
            j2.f296b = 2;
            this.f289a.setLayoutParams(j2);
            this.f289a.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    Toolbar.this.h();
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: j */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    /* access modifiers changed from: package-private */
    public void k() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((b) childAt.getLayoutParams()).f296b == 2 || childAt == this.e)) {
                removeViewAt(childCount);
                this.F.add(childAt);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void l() {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            addView(this.F.get(size));
        }
        this.F.clear();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.O);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x02a5 A[LOOP:0: B:101:0x02a3->B:102:0x02a5, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x02c7 A[LOOP:1: B:104:0x02c5->B:105:0x02c7, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x02f2  */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x0301 A[LOOP:2: B:112:0x02ff->B:113:0x0301, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0130  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0134  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0137  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x016a  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x01a9  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01b8  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x022b  */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        boolean a2;
        boolean a3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int size;
        int i15;
        int i16;
        int size2;
        int i17;
        int i18;
        int size3;
        boolean z3;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        char c2;
        int i25;
        int i26;
        boolean z4 = u.f(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i27 = width - paddingRight;
        int[] iArr = this.G;
        iArr[1] = 0;
        iArr[0] = 0;
        int j2 = u.j(this);
        int min = j2 >= 0 ? Math.min(j2, i5 - i3) : 0;
        if (!a((View) this.h)) {
            i7 = paddingLeft;
        } else if (z4) {
            i6 = b(this.h, i27, iArr, min);
            i7 = paddingLeft;
            if (a((View) this.f289a)) {
                if (z4) {
                    i6 = b(this.f289a, i6, iArr, min);
                } else {
                    i7 = a(this.f289a, i7, iArr, min);
                }
            }
            if (a((View) this.e)) {
                if (z4) {
                    i7 = a(this.e, i7, iArr, min);
                } else {
                    i6 = b(this.e, i6, iArr, min);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - i7);
            iArr[1] = Math.max(0, currentContentInsetRight - (i27 - i6));
            int max = Math.max(i7, currentContentInsetLeft);
            int min2 = Math.min(i6, i27 - currentContentInsetRight);
            if (a(this.f290b)) {
                if (z4) {
                    min2 = b(this.f290b, min2, iArr, min);
                } else {
                    max = a(this.f290b, max, iArr, min);
                }
            }
            if (a((View) this.i)) {
                if (z4) {
                    min2 = b(this.i, min2, iArr, min);
                } else {
                    max = a(this.i, max, iArr, min);
                }
            }
            a2 = a((View) this.f);
            a3 = a((View) this.g);
            if (!a2) {
                b bVar = (b) this.f.getLayoutParams();
                i9 = paddingRight;
                i10 = bVar.topMargin + this.f.getMeasuredHeight() + bVar.bottomMargin + 0;
            } else {
                i9 = paddingRight;
                i10 = 0;
            }
            if (!a3) {
                b bVar2 = (b) this.g.getLayoutParams();
                i11 = width;
                i10 += bVar2.topMargin + this.g.getMeasuredHeight() + bVar2.bottomMargin;
            } else {
                i11 = width;
            }
            if (!a2 || a3) {
                TextView textView = !a2 ? this.f : this.g;
                TextView textView2 = !a3 ? this.g : this.f;
                b bVar3 = (b) textView.getLayoutParams();
                b bVar4 = (b) textView2.getLayoutParams();
                if ((a2 || this.f.getMeasuredWidth() <= 0) && (!a3 || this.g.getMeasuredWidth() <= 0)) {
                    i13 = paddingLeft;
                    z3 = false;
                } else {
                    i13 = paddingLeft;
                    z3 = true;
                }
                i19 = this.x & 112;
                i12 = min;
                if (i19 != 48) {
                    i20 = max;
                    i21 = getPaddingTop() + bVar3.topMargin + this.s;
                } else if (i19 != 80) {
                    int i28 = (((height - paddingTop) - paddingBottom) - i10) / 2;
                    i20 = max;
                    if (i28 < bVar3.topMargin + this.s) {
                        i28 = bVar3.topMargin + this.s;
                    } else {
                        int i29 = (((height - paddingBottom) - i10) - i28) - paddingTop;
                        if (i29 < bVar3.bottomMargin + this.t) {
                            i28 = Math.max(0, i28 - ((bVar4.bottomMargin + this.t) - i29));
                        }
                    }
                    i21 = paddingTop + i28;
                } else {
                    i20 = max;
                    i21 = (((height - paddingBottom) - bVar4.bottomMargin) - this.t) - i10;
                }
                if (!z4) {
                    if (z3) {
                        i24 = this.q;
                        c2 = 1;
                    } else {
                        c2 = 1;
                        i24 = 0;
                    }
                    int i30 = i24 - iArr[c2];
                    i8 -= Math.max(0, i30);
                    iArr[c2] = Math.max(0, -i30);
                    if (a2) {
                        int measuredWidth = i8 - this.f.getMeasuredWidth();
                        int measuredHeight = this.f.getMeasuredHeight() + i21;
                        this.f.layout(measuredWidth, i21, i8, measuredHeight);
                        i25 = measuredWidth - this.r;
                        i21 = measuredHeight + ((b) this.f.getLayoutParams()).bottomMargin;
                    } else {
                        i25 = i8;
                    }
                    if (a3) {
                        b bVar5 = (b) this.g.getLayoutParams();
                        int i31 = i21 + bVar5.topMargin;
                        this.g.layout(i8 - this.g.getMeasuredWidth(), i31, i8, this.g.getMeasuredHeight() + i31);
                        i26 = i8 - this.r;
                        int i32 = bVar5.bottomMargin;
                    } else {
                        i26 = i8;
                    }
                    if (z3) {
                        i8 = Math.min(i25, i26);
                    }
                    max = i20;
                } else {
                    i14 = 0;
                    int i33 = (z3 ? this.q : 0) - iArr[0];
                    max = i20 + Math.max(0, i33);
                    iArr[0] = Math.max(0, -i33);
                    if (a2) {
                        int measuredWidth2 = this.f.getMeasuredWidth() + max;
                        int measuredHeight2 = this.f.getMeasuredHeight() + i21;
                        this.f.layout(max, i21, measuredWidth2, measuredHeight2);
                        i22 = measuredWidth2 + this.r;
                        i21 = measuredHeight2 + ((b) this.f.getLayoutParams()).bottomMargin;
                    } else {
                        i22 = max;
                    }
                    if (a3) {
                        b bVar6 = (b) this.g.getLayoutParams();
                        int i34 = i21 + bVar6.topMargin;
                        int measuredWidth3 = this.g.getMeasuredWidth() + max;
                        this.g.layout(max, i34, measuredWidth3, this.g.getMeasuredHeight() + i34);
                        i23 = measuredWidth3 + this.r;
                        int i35 = bVar6.bottomMargin;
                    } else {
                        i23 = max;
                    }
                    if (z3) {
                        max = Math.max(i22, i23);
                    }
                    a((List<View>) this.E, 3);
                    size = this.E.size();
                    i15 = max;
                    for (i16 = i14; i16 < size; i16++) {
                        i15 = a(this.E.get(i16), i15, iArr, i12);
                    }
                    int i36 = i12;
                    a((List<View>) this.E, 5);
                    size2 = this.E.size();
                    for (i17 = i14; i17 < size2; i17++) {
                        i8 = b(this.E.get(i17), i8, iArr, i36);
                    }
                    a((List<View>) this.E, 1);
                    int a4 = a((List<View>) this.E, iArr);
                    i18 = (i13 + (((i11 - i13) - i9) / 2)) - (a4 / 2);
                    int i37 = a4 + i18;
                    if (i18 >= i15) {
                        i15 = i37 > i8 ? i18 - (i37 - i8) : i18;
                    }
                    size3 = this.E.size();
                    while (i14 < size3) {
                        i15 = a(this.E.get(i14), i15, iArr, i36);
                        i14++;
                    }
                    this.E.clear();
                    return;
                }
            } else {
                i13 = paddingLeft;
                i12 = min;
            }
            i14 = 0;
            a((List<View>) this.E, 3);
            size = this.E.size();
            i15 = max;
            while (i16 < size) {
            }
            int i362 = i12;
            a((List<View>) this.E, 5);
            size2 = this.E.size();
            while (i17 < size2) {
            }
            a((List<View>) this.E, 1);
            int a42 = a((List<View>) this.E, iArr);
            i18 = (i13 + (((i11 - i13) - i9) / 2)) - (a42 / 2);
            int i372 = a42 + i18;
            if (i18 >= i15) {
            }
            size3 = this.E.size();
            while (i14 < size3) {
            }
            this.E.clear();
            return;
        } else {
            i7 = a(this.h, paddingLeft, iArr, min);
        }
        i6 = i27;
        if (a((View) this.f289a)) {
        }
        if (a((View) this.e)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i7);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i27 - i6));
        int max2 = Math.max(i7, currentContentInsetLeft2);
        int min22 = Math.min(i6, i27 - currentContentInsetRight2);
        if (a(this.f290b)) {
        }
        if (a((View) this.i)) {
        }
        a2 = a((View) this.f);
        a3 = a((View) this.g);
        if (!a2) {
        }
        if (!a3) {
        }
        if (!a2) {
        }
        if (!a2) {
        }
        if (!a3) {
        }
        b bVar32 = (b) textView.getLayoutParams();
        b bVar42 = (b) textView2.getLayoutParams();
        if (a2) {
        }
        i13 = paddingLeft;
        z3 = false;
        i19 = this.x & 112;
        i12 = min;
        if (i19 != 48) {
        }
        if (!z4) {
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.G;
        if (ba.a(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c2 = 1;
            c3 = 0;
        }
        if (a((View) this.h)) {
            a((View) this.h, i2, 0, i3, 0, this.p);
            i6 = this.h.getMeasuredWidth() + b((View) this.h);
            i5 = Math.max(0, this.h.getMeasuredHeight() + c((View) this.h));
            i4 = View.combineMeasuredStates(0, this.h.getMeasuredState());
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (a((View) this.f289a)) {
            a((View) this.f289a, i2, 0, i3, 0, this.p);
            i6 = this.f289a.getMeasuredWidth() + b((View) this.f289a);
            i5 = Math.max(i5, this.f289a.getMeasuredHeight() + c((View) this.f289a));
            i4 = View.combineMeasuredStates(i4, this.f289a.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i6);
        iArr[c3] = Math.max(0, currentContentInsetStart - i6);
        if (a((View) this.e)) {
            a((View) this.e, i2, max, i3, 0, this.p);
            i7 = this.e.getMeasuredWidth() + b((View) this.e);
            i5 = Math.max(i5, this.e.getMeasuredHeight() + c((View) this.e));
            i4 = View.combineMeasuredStates(i4, this.e.getMeasuredState());
        } else {
            i7 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i7);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i7);
        if (a(this.f290b)) {
            max2 += a(this.f290b, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.f290b.getMeasuredHeight() + c(this.f290b));
            i4 = View.combineMeasuredStates(i4, this.f290b.getMeasuredState());
        }
        if (a((View) this.i)) {
            max2 += a((View) this.i, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.i.getMeasuredHeight() + c((View) this.i));
            i4 = View.combineMeasuredStates(i4, this.i.getMeasuredState());
        }
        int childCount = getChildCount();
        int i11 = i5;
        int i12 = max2;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((b) childAt.getLayoutParams()).f296b == 0 && a(childAt)) {
                i12 += a(childAt, i2, i12, i3, 0, iArr);
                i11 = Math.max(i11, childAt.getMeasuredHeight() + c(childAt));
                i4 = View.combineMeasuredStates(i4, childAt.getMeasuredState());
            }
        }
        int i14 = this.s + this.t;
        int i15 = this.q + this.r;
        if (a((View) this.f)) {
            a((View) this.f, i2, i12 + i15, i3, i14, iArr);
            int measuredWidth = this.f.getMeasuredWidth() + b((View) this.f);
            i8 = this.f.getMeasuredHeight() + c((View) this.f);
            i10 = View.combineMeasuredStates(i4, this.f.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i8 = 0;
            i10 = i4;
            i9 = 0;
        }
        if (a((View) this.g)) {
            i9 = Math.max(i9, a((View) this.g, i2, i12 + i15, i3, i8 + i14, iArr));
            i8 += this.g.getMeasuredHeight() + c((View) this.g);
            i10 = View.combineMeasuredStates(i10, this.g.getMeasuredState());
        } else {
            int i16 = i10;
        }
        int max3 = Math.max(i11, i8);
        int paddingLeft = i12 + i9 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, -16777216 & i10);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, i10 << 16);
        if (r()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.e;
        g d2 = actionMenuView != null ? actionMenuView.d() : null;
        if (!(savedState.expandedMenuItemId == 0 || this.K == null || d2 == null)) {
            MenuItem findItem = d2.findItem(savedState.expandedMenuItemId);
            if (findItem != null) {
                findItem.expandActionView();
            }
        }
        if (savedState.isOverflowOpen) {
            q();
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        s();
        am amVar = this.u;
        boolean z2 = true;
        if (i2 != 1) {
            z2 = false;
        }
        amVar.a(z2);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        a aVar = this.K;
        if (!(aVar == null || aVar.f295b == null)) {
            savedState.expandedMenuItemId = this.K.f295b.getItemId();
        }
        savedState.isOverflowOpen = b();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageButton imageButton = this.f289a;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(androidx.appcompat.a.a.a.b(getContext(), i2));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            i();
            this.f289a.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f289a;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.j);
        }
    }

    public void setCollapsible(boolean z2) {
        this.N = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = MessageNano.UNSET_ENUM_VALUE;
        }
        if (i2 != this.w) {
            this.w = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = MessageNano.UNSET_ENUM_VALUE;
        }
        if (i2 != this.v) {
            this.v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i2) {
        setLogo(androidx.appcompat.a.a.a.b(getContext(), i2));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m();
            if (!d(this.i)) {
                a((View) this.i, true);
            }
        } else {
            ImageView imageView = this.i;
            if (imageView != null && d(imageView)) {
                removeView(this.i);
                this.F.remove(this.i);
            }
        }
        ImageView imageView2 = this.i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m();
        }
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            p();
        }
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(androidx.appcompat.a.a.a.b(getContext(), i2));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            p();
            if (!d(this.h)) {
                a((View) this.h, true);
            }
        } else {
            ImageButton imageButton = this.h;
            if (imageButton != null && d(imageButton)) {
                removeView(this.h);
                this.F.remove(this.h);
            }
        }
        ImageButton imageButton2 = this.h;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        p();
        this.h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(c cVar) {
        this.d = cVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        n();
        this.e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.m != i2) {
            this.m = i2;
            if (i2 == 0) {
                this.l = getContext();
            } else {
                this.l = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.g == null) {
                Context context = getContext();
                this.g = new x(context);
                this.g.setSingleLine();
                this.g.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.o;
                if (i2 != 0) {
                    this.g.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.g.setTextColor(colorStateList);
                }
            }
            if (!d(this.g)) {
                a((View) this.g, true);
            }
        } else {
            TextView textView = this.g;
            if (textView != null && d(textView)) {
                removeView(this.g);
                this.F.remove(this.g);
            }
        }
        TextView textView2 = this.g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        TextView textView = this.g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f == null) {
                Context context = getContext();
                this.f = new x(context);
                this.f.setSingleLine();
                this.f.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.n;
                if (i2 != 0) {
                    this.f.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f.setTextColor(colorStateList);
                }
            }
            if (!d(this.f)) {
                a((View) this.f, true);
            }
        } else {
            TextView textView = this.f;
            if (textView != null && d(textView)) {
                removeView(this.f);
                this.F.remove(this.f);
            }
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleMarginBottom(int i2) {
        this.t = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.r = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.s = i2;
        requestLayout();
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
