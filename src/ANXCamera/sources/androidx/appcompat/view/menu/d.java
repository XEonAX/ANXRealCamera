package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ai;
import androidx.appcompat.widget.aj;
import androidx.core.g.c;
import androidx.core.g.u;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CascadingMenuPopup */
final class d extends k implements View.OnKeyListener, PopupWindow.OnDismissListener, m {
    private static final int g = R.layout.abc_cascading_menu_item_layout;
    private PopupWindow.OnDismissListener A;

    /* renamed from: a  reason: collision with root package name */
    final Handler f174a;

    /* renamed from: b  reason: collision with root package name */
    final List<a> f175b = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener c = new ViewTreeObserver.OnGlobalLayoutListener() {
        public void onGlobalLayout() {
            if (d.this.e() && d.this.f175b.size() > 0 && !d.this.f175b.get(0).f181a.j()) {
                View view = d.this.d;
                if (view == null || !view.isShown()) {
                    d.this.d();
                    return;
                }
                for (a aVar : d.this.f175b) {
                    aVar.f181a.D_();
                }
            }
        }
    };
    View d;
    ViewTreeObserver e;
    boolean f;
    private final Context h;
    private final int i;
    private final int j;
    private final int k;
    private final boolean l;
    private final List<g> m = new ArrayList();
    private final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() {
        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            if (d.this.e != null) {
                if (!d.this.e.isAlive()) {
                    d.this.e = view.getViewTreeObserver();
                }
                d.this.e.removeGlobalOnLayoutListener(d.this.c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final ai o = new ai() {
        public void a(g gVar, MenuItem menuItem) {
            d.this.f174a.removeCallbacksAndMessages(gVar);
        }

        public void b(final g gVar, final MenuItem menuItem) {
            final a aVar = null;
            d.this.f174a.removeCallbacksAndMessages((Object) null);
            int size = d.this.f175b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.f175b.get(i).f182b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (i2 < d.this.f175b.size()) {
                    aVar = d.this.f175b.get(i2);
                }
                d.this.f174a.postAtTime(new Runnable() {
                    public void run() {
                        if (aVar != null) {
                            d.this.f = true;
                            aVar.f182b.a(false);
                            d.this.f = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            gVar.a(menuItem, 4);
                        }
                    }
                }, gVar, SystemClock.uptimeMillis() + 200);
            }
        }
    };
    private int p = 0;
    private int q = 0;
    private View r;
    private int s;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private m.a z;

    /* compiled from: CascadingMenuPopup */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final aj f181a;

        /* renamed from: b  reason: collision with root package name */
        public final g f182b;
        public final int c;

        public a(aj ajVar, g gVar, int i) {
            this.f181a = ajVar;
            this.f182b = gVar;
            this.c = i;
        }

        public ListView a() {
            return this.f181a.g();
        }
    }

    public d(Context context, View view, int i2, int i3, boolean z2) {
        this.h = context;
        this.r = view;
        this.j = i2;
        this.k = i3;
        this.l = z2;
        this.x = false;
        this.s = k();
        Resources resources = context.getResources();
        this.i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f174a = new Handler();
    }

    private MenuItem a(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = gVar.getItem(i2);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View a(a aVar, g gVar) {
        int i2;
        f fVar;
        MenuItem a2 = a(aVar.f182b, gVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = aVar.a();
        ListAdapter adapter = a3.getAdapter();
        int i3 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i2 = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            i2 = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i3 >= count) {
                i3 = -1;
                break;
            } else if (a2 == fVar.getItem(i3)) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return null;
        }
        int firstVisiblePosition = (i3 + i2) - a3.getFirstVisiblePosition();
        if (firstVisiblePosition < 0 || firstVisiblePosition >= a3.getChildCount()) {
            return null;
        }
        return a3.getChildAt(firstVisiblePosition);
    }

    private void c(g gVar) {
        View view;
        a aVar;
        int i2;
        int i3;
        int i4;
        LayoutInflater from = LayoutInflater.from(this.h);
        f fVar = new f(gVar, from, this.l, g);
        if (!e() && this.x) {
            fVar.a(true);
        } else if (e()) {
            fVar.a(k.b(gVar));
        }
        int a2 = a(fVar, (ViewGroup) null, this.h, this.i);
        aj j2 = j();
        j2.a((ListAdapter) fVar);
        j2.h(a2);
        j2.f(this.q);
        if (this.f175b.size() > 0) {
            List<a> list = this.f175b;
            aVar = list.get(list.size() - 1);
            view = a(aVar, gVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            j2.c(false);
            j2.a((Object) null);
            int d2 = d(a2);
            boolean z2 = d2 == 1;
            this.s = d2;
            if (Build.VERSION.SDK_INT >= 26) {
                j2.b(view);
                i3 = 0;
                i2 = 0;
            } else {
                int[] iArr = new int[2];
                this.r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.q & 7) == 5) {
                    iArr[0] = iArr[0] + this.r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i2 = iArr2[0] - iArr[0];
                i3 = iArr2[1] - iArr[1];
            }
            if ((this.q & 5) != 5) {
                if (z2) {
                    a2 = view.getWidth();
                }
                i4 = i2 - a2;
                j2.b(i4);
                j2.b(true);
                j2.a(i3);
            } else if (!z2) {
                a2 = view.getWidth();
                i4 = i2 - a2;
                j2.b(i4);
                j2.b(true);
                j2.a(i3);
            }
            i4 = i2 + a2;
            j2.b(i4);
            j2.b(true);
            j2.a(i3);
        } else {
            if (this.t) {
                j2.b(this.v);
            }
            if (this.u) {
                j2.a(this.w);
            }
            j2.a(i());
        }
        this.f175b.add(new a(j2, gVar, this.s));
        j2.D_();
        ListView g2 = j2.g();
        g2.setOnKeyListener(this);
        if (aVar == null && this.y && gVar.n() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, g2, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(gVar.n());
            g2.addHeaderView(frameLayout, (Object) null, false);
            j2.D_();
        }
    }

    private int d(int i2) {
        List<a> list = this.f175b;
        ListView a2 = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.d.getWindowVisibleDisplayFrame(rect);
        return this.s == 1 ? (iArr[0] + a2.getWidth()) + i2 > rect.right ? 0 : 1 : iArr[0] - i2 < 0 ? 1 : 0;
    }

    private int d(g gVar) {
        int size = this.f175b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (gVar == this.f175b.get(i2).f182b) {
                return i2;
            }
        }
        return -1;
    }

    private aj j() {
        aj ajVar = new aj(this.h, (AttributeSet) null, this.j, this.k);
        ajVar.a(this.o);
        ajVar.a((AdapterView.OnItemClickListener) this);
        ajVar.a((PopupWindow.OnDismissListener) this);
        ajVar.b(this.r);
        ajVar.f(this.q);
        ajVar.a(true);
        ajVar.i(2);
        return ajVar;
    }

    private int k() {
        return u.f(this.r) == 1 ? 0 : 1;
    }

    public void D_() {
        if (!e()) {
            for (g c2 : this.m) {
                c(c2);
            }
            this.m.clear();
            this.d = this.r;
            if (this.d != null) {
                boolean z2 = this.e == null;
                this.e = this.d.getViewTreeObserver();
                if (z2) {
                    this.e.addOnGlobalLayoutListener(this.c);
                }
                this.d.addOnAttachStateChangeListener(this.n);
            }
        }
    }

    public void a(int i2) {
        if (this.p != i2) {
            this.p = i2;
            this.q = c.a(i2, u.f(this.r));
        }
    }

    public void a(Parcelable parcelable) {
    }

    public void a(View view) {
        if (this.r != view) {
            this.r = view;
            this.q = c.a(this.p, u.f(this.r));
        }
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    public void a(g gVar) {
        gVar.a((m) this, this.h);
        if (e()) {
            c(gVar);
        } else {
            this.m.add(gVar);
        }
    }

    public void a(g gVar, boolean z2) {
        int d2 = d(gVar);
        if (d2 >= 0) {
            int i2 = d2 + 1;
            if (i2 < this.f175b.size()) {
                this.f175b.get(i2).f182b.a(false);
            }
            a remove = this.f175b.remove(d2);
            remove.f182b.b((m) this);
            if (this.f) {
                remove.f181a.b((Object) null);
                remove.f181a.e(0);
            }
            remove.f181a.d();
            int size = this.f175b.size();
            if (size > 0) {
                this.s = this.f175b.get(size - 1).c;
            } else {
                this.s = k();
            }
            if (size == 0) {
                d();
                m.a aVar = this.z;
                if (aVar != null) {
                    aVar.a(gVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.e;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.e.removeGlobalOnLayoutListener(this.c);
                    }
                    this.e = null;
                }
                this.d.removeOnAttachStateChangeListener(this.n);
                this.A.onDismiss();
            } else if (z2) {
                this.f175b.get(0).f182b.a(false);
            }
        }
    }

    public void a(m.a aVar) {
        this.z = aVar;
    }

    public void a(boolean z2) {
        for (a a2 : this.f175b) {
            a(a2.a().getAdapter()).notifyDataSetChanged();
        }
    }

    public boolean a(r rVar) {
        for (a next : this.f175b) {
            if (rVar == next.f182b) {
                next.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        a((g) rVar);
        m.a aVar = this.z;
        if (aVar != null) {
            aVar.a(rVar);
        }
        return true;
    }

    public void b(int i2) {
        this.t = true;
        this.v = i2;
    }

    public void b(boolean z2) {
        this.x = z2;
    }

    public boolean b() {
        return false;
    }

    public void c(int i2) {
        this.u = true;
        this.w = i2;
    }

    public void c(boolean z2) {
        this.y = z2;
    }

    public void d() {
        int size = this.f175b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f175b.toArray(new a[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                a aVar = aVarArr[i2];
                if (aVar.f181a.e()) {
                    aVar.f181a.d();
                }
            }
        }
    }

    public boolean e() {
        return this.f175b.size() > 0 && this.f175b.get(0).f181a.e();
    }

    public Parcelable f() {
        return null;
    }

    public ListView g() {
        if (this.f175b.isEmpty()) {
            return null;
        }
        List<a> list = this.f175b;
        return list.get(list.size() - 1).a();
    }

    /* access modifiers changed from: protected */
    public boolean h() {
        return false;
    }

    public void onDismiss() {
        a aVar;
        int size = this.f175b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                aVar = null;
                break;
            }
            aVar = this.f175b.get(i2);
            if (!aVar.f181a.e()) {
                break;
            }
            i2++;
        }
        if (aVar != null) {
            aVar.f182b.a(false);
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        d();
        return true;
    }
}
