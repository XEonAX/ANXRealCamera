package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.g.b;
import java.util.ArrayList;

class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements b.a {
    OverflowMenuButton g;
    d h;
    a i;
    c j;
    final e k = new e();
    int l;
    private Drawable m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y = new SparseBooleanArray();
    private b z;

    private class OverflowMenuButton extends n implements ActionMenuView.a {

        /* renamed from: b  reason: collision with root package name */
        private final float[] f224b = new float[2];

        public OverflowMenuButton(Context context) {
            super(context, (AttributeSet) null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            aw.a(this, getContentDescription());
            setOnTouchListener(new af(this, ActionMenuPresenter.this) {
                public p a() {
                    if (ActionMenuPresenter.this.h == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.h.b();
                }

                public boolean b() {
                    ActionMenuPresenter.this.e();
                    return true;
                }

                public boolean c() {
                    if (ActionMenuPresenter.this.j != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.g();
                    return true;
                }
            });
        }

        public boolean c() {
            return false;
        }

        public boolean d() {
            return false;
        }

        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.e();
            return true;
        }

        /* access modifiers changed from: protected */
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    private class a extends l {
        public a(Context context, r rVar, View view) {
            super(context, rVar, view, false, R.attr.actionOverflowMenuStyle);
            if (!((i) rVar.getItem()).j()) {
                a(ActionMenuPresenter.this.g == null ? (View) ActionMenuPresenter.this.f : ActionMenuPresenter.this.g);
            }
            a((m.a) ActionMenuPresenter.this.k);
        }

        /* access modifiers changed from: protected */
        public void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.i = null;
            actionMenuPresenter.l = 0;
            super.e();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        public p a() {
            if (ActionMenuPresenter.this.i != null) {
                return ActionMenuPresenter.this.i.b();
            }
            return null;
        }
    }

    private class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private d f230b;

        public c(d dVar) {
            this.f230b = dVar;
        }

        public void run() {
            if (ActionMenuPresenter.this.c != null) {
                ActionMenuPresenter.this.c.g();
            }
            View view = (View) ActionMenuPresenter.this.f;
            if (!(view == null || view.getWindowToken() == null || !this.f230b.c())) {
                ActionMenuPresenter.this.h = this.f230b;
            }
            ActionMenuPresenter.this.j = null;
        }
    }

    private class d extends l {
        public d(Context context, g gVar, View view, boolean z) {
            super(context, gVar, view, z, R.attr.actionOverflowMenuStyle);
            a(8388613);
            a((m.a) ActionMenuPresenter.this.k);
        }

        /* access modifiers changed from: protected */
        public void e() {
            if (ActionMenuPresenter.this.c != null) {
                ActionMenuPresenter.this.c.close();
            }
            ActionMenuPresenter.this.h = null;
            super.e();
        }
    }

    private class e implements m.a {
        e() {
        }

        public void a(g gVar, boolean z) {
            if (gVar instanceof r) {
                gVar.q().a(false);
            }
            m.a a2 = ActionMenuPresenter.this.a();
            if (a2 != null) {
                a2.a(gVar, z);
            }
        }

        public boolean a(g gVar) {
            if (gVar == null) {
                return false;
            }
            ActionMenuPresenter.this.l = ((r) gVar).getItem().getItemId();
            m.a a2 = ActionMenuPresenter.this.a();
            if (a2 != null) {
                return a2.a(gVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
    }

    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof n.a) && ((n.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.n()) {
            actionView = super.a(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public n a(ViewGroup viewGroup) {
        n nVar = this.f;
        n a2 = super.a(viewGroup);
        if (nVar != a2) {
            ((ActionMenuView) a2).setPresenter(this);
        }
        return a2;
    }

    public void a(Context context, g gVar) {
        super.a(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(context);
        if (!this.p) {
            this.o = a2.b();
        }
        if (!this.v) {
            this.q = a2.c();
        }
        if (!this.t) {
            this.s = a2.a();
        }
        int i2 = this.q;
        if (this.o) {
            if (this.g == null) {
                this.g = new OverflowMenuButton(this.f170a);
                if (this.n) {
                    this.g.setImageDrawable(this.m);
                    this.m = null;
                    this.n = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.g.getMeasuredWidth();
        } else {
            this.g = null;
        }
        this.r = i2;
        this.x = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public void a(Configuration configuration) {
        if (!this.t) {
            this.s = androidx.appcompat.view.a.a(this.f171b).a();
        }
        if (this.c != null) {
            this.c.b(true);
        }
    }

    public void a(Drawable drawable) {
        OverflowMenuButton overflowMenuButton = this.g;
        if (overflowMenuButton != null) {
            overflowMenuButton.setImageDrawable(drawable);
            return;
        }
        this.n = true;
        this.m = drawable;
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.openSubMenuId > 0) {
                MenuItem findItem = this.c.findItem(savedState.openSubMenuId);
                if (findItem != null) {
                    a((r) findItem.getSubMenu());
                }
            }
        }
    }

    public void a(g gVar, boolean z2) {
        h();
        super.a(gVar, z2);
    }

    public void a(i iVar, n.a aVar) {
        aVar.a(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.z == null) {
            this.z = new b();
        }
        actionMenuItemView.setPopupCallback(this.z);
    }

    public void a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.a(this.c);
    }

    public void a(boolean z2) {
        super.a(z2);
        ((View) this.f).requestLayout();
        boolean z3 = false;
        if (this.c != null) {
            ArrayList<i> l2 = this.c.l();
            int size = l2.size();
            for (int i2 = 0; i2 < size; i2++) {
                androidx.core.g.b a2 = l2.get(i2).a();
                if (a2 != null) {
                    a2.a((b.a) this);
                }
            }
        }
        ArrayList<i> m2 = this.c != null ? this.c.m() : null;
        if (this.o && m2 != null) {
            int size2 = m2.size();
            if (size2 == 1) {
                z3 = !m2.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.g == null) {
                this.g = new OverflowMenuButton(this.f170a);
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != this.f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.g);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.g, actionMenuView.c());
            }
        } else {
            OverflowMenuButton overflowMenuButton = this.g;
            if (overflowMenuButton != null && overflowMenuButton.getParent() == this.f) {
                ((ViewGroup) this.f).removeView(this.g);
            }
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.o);
    }

    public boolean a(int i2, i iVar) {
        return iVar.j();
    }

    public boolean a(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.g) {
            return false;
        }
        return super.a(viewGroup, i2);
    }

    public boolean a(r rVar) {
        boolean z2 = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        r rVar2 = rVar;
        while (rVar2.t() != this.c) {
            rVar2 = (r) rVar2.t();
        }
        View a2 = a(rVar2.getItem());
        if (a2 == null) {
            return false;
        }
        this.l = rVar.getItem().getItemId();
        int size = rVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z2 = true;
                break;
            }
            i2++;
        }
        this.i = new a(this.f171b, rVar, a2);
        this.i.a(z2);
        this.i.a();
        super.a(rVar);
        return true;
    }

    public void b(boolean z2) {
        this.o = z2;
        this.p = true;
    }

    public boolean b() {
        int i2;
        ArrayList<i> arrayList;
        int i3;
        int i4;
        int i5;
        boolean z2;
        boolean z3;
        ActionMenuPresenter actionMenuPresenter = this;
        View view = null;
        boolean z4 = false;
        if (actionMenuPresenter.c != null) {
            arrayList = actionMenuPresenter.c.j();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i6 = actionMenuPresenter.s;
        int i7 = actionMenuPresenter.r;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f;
        boolean z5 = false;
        int i8 = 0;
        int i9 = 0;
        int i10 = i6;
        for (int i11 = 0; i11 < i2; i11++) {
            i iVar = arrayList.get(i11);
            if (iVar.l()) {
                i8++;
            } else if (iVar.k()) {
                i9++;
            } else {
                z5 = true;
            }
            if (actionMenuPresenter.w && iVar.isActionViewExpanded()) {
                i10 = 0;
            }
        }
        if (actionMenuPresenter.o && (z5 || i9 + i8 > i10)) {
            i10--;
        }
        int i12 = i10 - i8;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.y;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.u) {
            int i13 = actionMenuPresenter.x;
            i3 = i7 / i13;
            i4 = i13 + ((i7 % i13) / i3);
        } else {
            i4 = 0;
            i3 = 0;
        }
        int i14 = 0;
        int i15 = i7;
        int i16 = 0;
        while (i16 < i2) {
            i iVar2 = arrayList.get(i16);
            if (iVar2.l()) {
                View a2 = actionMenuPresenter.a(iVar2, view, viewGroup);
                if (actionMenuPresenter.u) {
                    i3 -= ActionMenuView.a(a2, i4, i3, makeMeasureSpec, z4 ? 1 : 0);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = a2.getMeasuredWidth();
                i15 -= measuredWidth;
                if (i14 != 0) {
                    measuredWidth = i14;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    z3 = true;
                    sparseBooleanArray.put(groupId, true);
                } else {
                    z3 = true;
                }
                iVar2.d(z3);
                i14 = measuredWidth;
                z2 = z4;
                i5 = i2;
            } else if (iVar2.k()) {
                int groupId2 = iVar2.getGroupId();
                boolean z6 = sparseBooleanArray.get(groupId2);
                boolean z7 = (i12 > 0 || z6) && i15 > 0 && (!actionMenuPresenter.u || i3 > 0);
                if (z7) {
                    boolean z8 = z7;
                    i5 = i2;
                    View a3 = actionMenuPresenter.a(iVar2, (View) null, viewGroup);
                    if (actionMenuPresenter.u) {
                        int a4 = ActionMenuView.a(a3, i4, i3, makeMeasureSpec, 0);
                        i3 -= a4;
                        z8 = a4 == 0 ? false : z8;
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    int measuredWidth2 = a3.getMeasuredWidth();
                    i15 -= measuredWidth2;
                    if (i14 == 0) {
                        i14 = measuredWidth2;
                    }
                    z7 = z8 & (!actionMenuPresenter.u ? i15 + i14 > 0 : i15 >= 0);
                } else {
                    boolean z9 = z7;
                    i5 = i2;
                }
                if (z7 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z6) {
                    sparseBooleanArray.put(groupId2, false);
                    int i17 = 0;
                    while (i17 < i16) {
                        i iVar3 = arrayList.get(i17);
                        if (iVar3.getGroupId() == groupId2) {
                            if (iVar3.j()) {
                                i12++;
                            }
                            iVar3.d(false);
                        }
                        i17++;
                    }
                }
                if (z7) {
                    i12--;
                }
                iVar2.d(z7);
                z2 = false;
            } else {
                z2 = z4;
                i5 = i2;
                iVar2.d(z2);
            }
            i16++;
            z4 = z2;
            i2 = i5;
            view = null;
            actionMenuPresenter = this;
        }
        return true;
    }

    public void c(boolean z2) {
        this.w = z2;
    }

    public Drawable d() {
        OverflowMenuButton overflowMenuButton = this.g;
        if (overflowMenuButton != null) {
            return overflowMenuButton.getDrawable();
        }
        if (this.n) {
            return this.m;
        }
        return null;
    }

    public void d(boolean z2) {
        if (z2) {
            super.a((r) null);
        } else if (this.c != null) {
            this.c.a(false);
        }
    }

    public boolean e() {
        if (!this.o || j() || this.c == null || this.f == null || this.j != null || this.c.m().isEmpty()) {
            return false;
        }
        d dVar = new d(this.f171b, this.c, this.g, true);
        this.j = new c(dVar);
        ((View) this.f).post(this.j);
        super.a((r) null);
        return true;
    }

    public Parcelable f() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.l;
        return savedState;
    }

    public boolean g() {
        if (this.j == null || this.f == null) {
            d dVar = this.h;
            if (dVar == null) {
                return false;
            }
            dVar.d();
            return true;
        }
        ((View) this.f).removeCallbacks(this.j);
        this.j = null;
        return true;
    }

    public boolean h() {
        return g() | i();
    }

    public boolean i() {
        a aVar = this.i;
        if (aVar == null) {
            return false;
        }
        aVar.d();
        return true;
    }

    public boolean j() {
        d dVar = this.h;
        return dVar != null && dVar.f();
    }

    public boolean k() {
        return this.j != null || j();
    }
}
