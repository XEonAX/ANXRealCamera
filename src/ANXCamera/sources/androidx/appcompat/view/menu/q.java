package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.aj;
import androidx.core.g.u;

/* compiled from: StandardMenuPopup */
final class q extends k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, m {
    private static final int e = R.layout.abc_popup_menu_item_layout;

    /* renamed from: a  reason: collision with root package name */
    final aj f209a;

    /* renamed from: b  reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f210b = new ViewTreeObserver.OnGlobalLayoutListener() {
        public void onGlobalLayout() {
            if (q.this.e() && !q.this.f209a.j()) {
                View view = q.this.c;
                if (view == null || !view.isShown()) {
                    q.this.d();
                } else {
                    q.this.f209a.D_();
                }
            }
        }
    };
    View c;
    ViewTreeObserver d;
    private final Context f;
    private final g g;
    private final f h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private final View.OnAttachStateChangeListener m = new View.OnAttachStateChangeListener() {
        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            if (q.this.d != null) {
                if (!q.this.d.isAlive()) {
                    q.this.d = view.getViewTreeObserver();
                }
                q.this.d.removeGlobalOnLayoutListener(q.this.f210b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private PopupWindow.OnDismissListener n;
    private View o;
    private m.a p;
    private boolean q;
    private boolean r;
    private int s;
    private int t = 0;
    private boolean u;

    public q(Context context, g gVar, View view, int i2, int i3, boolean z) {
        this.f = context;
        this.g = gVar;
        this.i = z;
        this.h = new f(gVar, LayoutInflater.from(context), this.i, e);
        this.k = i2;
        this.l = i3;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.o = view;
        this.f209a = new aj(this.f, (AttributeSet) null, this.k, this.l);
        gVar.a((m) this, context);
    }

    private boolean j() {
        if (e()) {
            return true;
        }
        if (!this.q) {
            View view = this.o;
            if (view != null) {
                this.c = view;
                this.f209a.a((PopupWindow.OnDismissListener) this);
                this.f209a.a((AdapterView.OnItemClickListener) this);
                this.f209a.a(true);
                View view2 = this.c;
                boolean z = this.d == null;
                this.d = view2.getViewTreeObserver();
                if (z) {
                    this.d.addOnGlobalLayoutListener(this.f210b);
                }
                view2.addOnAttachStateChangeListener(this.m);
                this.f209a.b(view2);
                this.f209a.f(this.t);
                if (!this.r) {
                    this.s = a(this.h, (ViewGroup) null, this.f, this.j);
                    this.r = true;
                }
                this.f209a.h(this.s);
                this.f209a.i(2);
                this.f209a.a(i());
                this.f209a.D_();
                ListView g2 = this.f209a.g();
                g2.setOnKeyListener(this);
                if (this.u && this.g.n() != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(R.layout.abc_popup_menu_header_item_layout, g2, false);
                    TextView textView = (TextView) frameLayout.findViewById(16908310);
                    if (textView != null) {
                        textView.setText(this.g.n());
                    }
                    frameLayout.setEnabled(false);
                    g2.addHeaderView(frameLayout, (Object) null, false);
                }
                this.f209a.a((ListAdapter) this.h);
                this.f209a.D_();
                return true;
            }
        }
        return false;
    }

    public void D_() {
        if (!j()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    public void a(int i2) {
        this.t = i2;
    }

    public void a(Parcelable parcelable) {
    }

    public void a(View view) {
        this.o = view;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    public void a(g gVar) {
    }

    public void a(g gVar, boolean z) {
        if (gVar == this.g) {
            d();
            m.a aVar = this.p;
            if (aVar != null) {
                aVar.a(gVar, z);
            }
        }
    }

    public void a(m.a aVar) {
        this.p = aVar;
    }

    public void a(boolean z) {
        this.r = false;
        f fVar = this.h;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    public boolean a(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f, rVar, this.c, this.i, this.k, this.l);
            lVar.a(this.p);
            lVar.a(k.b((g) rVar));
            lVar.a(this.n);
            this.n = null;
            this.g.a(false);
            int f2 = this.f209a.f();
            int c2 = this.f209a.c();
            if ((Gravity.getAbsoluteGravity(this.t, u.f(this.o)) & 7) == 5) {
                f2 += this.o.getWidth();
            }
            if (lVar.a(f2, c2)) {
                m.a aVar = this.p;
                if (aVar == null) {
                    return true;
                }
                aVar.a(rVar);
                return true;
            }
        }
        return false;
    }

    public void b(int i2) {
        this.f209a.b(i2);
    }

    public void b(boolean z) {
        this.h.a(z);
    }

    public boolean b() {
        return false;
    }

    public void c(int i2) {
        this.f209a.a(i2);
    }

    public void c(boolean z) {
        this.u = z;
    }

    public void d() {
        if (e()) {
            this.f209a.d();
        }
    }

    public boolean e() {
        return !this.q && this.f209a.e();
    }

    public Parcelable f() {
        return null;
    }

    public ListView g() {
        return this.f209a.g();
    }

    public void onDismiss() {
        this.q = true;
        this.g.close();
        ViewTreeObserver viewTreeObserver = this.d;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.d = this.c.getViewTreeObserver();
            }
            this.d.removeGlobalOnLayoutListener(this.f210b);
            this.d = null;
        }
        this.c.removeOnAttachStateChangeListener(this.m);
        PopupWindow.OnDismissListener onDismissListener = this.n;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
