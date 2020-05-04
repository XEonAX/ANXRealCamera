package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.core.g.aa;
import androidx.core.g.u;
import androidx.core.g.y;
import androidx.core.g.z;

/* compiled from: ToolbarWidgetWrapper */
public class av implements ab {

    /* renamed from: a  reason: collision with root package name */
    Toolbar f351a;

    /* renamed from: b  reason: collision with root package name */
    CharSequence f352b;
    Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private View g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private boolean k;
    private CharSequence l;
    private CharSequence m;
    private ActionMenuPresenter n;
    private int o;
    private int p;
    private Drawable q;

    public av(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public av(Toolbar toolbar, boolean z, int i2, int i3) {
        this.o = 0;
        this.p = 0;
        this.f351a = toolbar;
        this.f352b = toolbar.getTitle();
        this.l = toolbar.getSubtitle();
        this.k = this.f352b != null;
        this.j = toolbar.getNavigationIcon();
        au a2 = au.a(toolbar.getContext(), (AttributeSet) null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.q = a2.a(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence c2 = a2.c(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(c2)) {
                b(c2);
            }
            CharSequence c3 = a2.c(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c3)) {
                c(c3);
            }
            Drawable a3 = a2.a(R.styleable.ActionBar_logo);
            if (a3 != null) {
                b(a3);
            }
            Drawable a4 = a2.a(R.styleable.ActionBar_icon);
            if (a4 != null) {
                a(a4);
            }
            if (this.j == null) {
                Drawable drawable = this.q;
                if (drawable != null) {
                    c(drawable);
                }
            }
            c(a2.a(R.styleable.ActionBar_displayOptions, 0));
            int g2 = a2.g(R.styleable.ActionBar_customNavigationLayout, 0);
            if (g2 != 0) {
                a(LayoutInflater.from(this.f351a.getContext()).inflate(g2, this.f351a, false));
                c(this.e | 16);
            }
            int f2 = a2.f(R.styleable.ActionBar_height, 0);
            if (f2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f351a.getLayoutParams();
                layoutParams.height = f2;
                this.f351a.setLayoutParams(layoutParams);
            }
            int d2 = a2.d(R.styleable.ActionBar_contentInsetStart, -1);
            int d3 = a2.d(R.styleable.ActionBar_contentInsetEnd, -1);
            if (d2 >= 0 || d3 >= 0) {
                this.f351a.a(Math.max(d2, 0), Math.max(d3, 0));
            }
            int g3 = a2.g(R.styleable.ActionBar_titleTextStyle, 0);
            if (g3 != 0) {
                Toolbar toolbar2 = this.f351a;
                toolbar2.a(toolbar2.getContext(), g3);
            }
            int g4 = a2.g(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (g4 != 0) {
                Toolbar toolbar3 = this.f351a;
                toolbar3.b(toolbar3.getContext(), g4);
            }
            int g5 = a2.g(R.styleable.ActionBar_popupTheme, 0);
            if (g5 != 0) {
                this.f351a.setPopupTheme(g5);
            }
        } else {
            this.e = r();
        }
        a2.b();
        e(i2);
        this.m = this.f351a.getNavigationContentDescription();
        this.f351a.setNavigationOnClickListener(new View.OnClickListener() {

            /* renamed from: a  reason: collision with root package name */
            final a f353a;

            {
                a aVar = new a(av.this.f351a.getContext(), 0, 16908332, 0, 0, av.this.f352b);
                this.f353a = aVar;
            }

            public void onClick(View view) {
                if (av.this.c != null && av.this.d) {
                    av.this.c.onMenuItemSelected(0, this.f353a);
                }
            }
        });
    }

    private void e(CharSequence charSequence) {
        this.f352b = charSequence;
        if ((this.e & 8) != 0) {
            this.f351a.setTitle(charSequence);
        }
    }

    private int r() {
        if (this.f351a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f351a.getNavigationIcon();
        return 15;
    }

    private void s() {
        Drawable drawable;
        int i2 = this.e;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.i;
            if (drawable == null) {
                drawable = this.h;
            }
        } else {
            drawable = this.h;
        }
        this.f351a.setLogo(drawable);
    }

    private void t() {
        if ((this.e & 4) != 0) {
            Toolbar toolbar = this.f351a;
            Drawable drawable = this.j;
            if (drawable == null) {
                drawable = this.q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f351a.setNavigationIcon((Drawable) null);
    }

    private void u() {
        if ((this.e & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.m)) {
            this.f351a.setNavigationContentDescription(this.p);
        } else {
            this.f351a.setNavigationContentDescription(this.m);
        }
    }

    public ViewGroup a() {
        return this.f351a;
    }

    public y a(final int i2, long j2) {
        return u.k(this.f351a).a(i2 == 0 ? 1.0f : 0.0f).a(j2).a((z) new aa() {
            private boolean c = false;

            public void a(View view) {
                av.this.f351a.setVisibility(0);
            }

            public void b(View view) {
                if (!this.c) {
                    av.this.f351a.setVisibility(i2);
                }
            }

            public void c(View view) {
                this.c = true;
            }
        });
    }

    public void a(int i2) {
        a(i2 != 0 ? androidx.appcompat.a.a.a.b(b(), i2) : null);
    }

    public void a(Drawable drawable) {
        this.h = drawable;
        s();
    }

    public void a(Menu menu, m.a aVar) {
        if (this.n == null) {
            this.n = new ActionMenuPresenter(this.f351a.getContext());
            this.n.a(R.id.action_menu_presenter);
        }
        this.n.a(aVar);
        this.f351a.a((g) menu, this.n);
    }

    public void a(View view) {
        View view2 = this.g;
        if (!(view2 == null || (this.e & 16) == 0)) {
            this.f351a.removeView(view2);
        }
        this.g = view;
        if (view != null && (this.e & 16) != 0) {
            this.f351a.addView(this.g);
        }
    }

    public void a(Window.Callback callback) {
        this.c = callback;
    }

    public void a(m.a aVar, g.a aVar2) {
        this.f351a.a(aVar, aVar2);
    }

    public void a(an anVar) {
        View view = this.f;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f351a;
            if (parent == toolbar) {
                toolbar.removeView(this.f);
            }
        }
        this.f = anVar;
        if (anVar != null && this.o == 2) {
            this.f351a.addView(this.f, 0);
            Toolbar.b bVar = (Toolbar.b) this.f.getLayoutParams();
            bVar.width = -2;
            bVar.height = -2;
            bVar.f89a = 8388691;
            anVar.setAllowCollapse(true);
        }
    }

    public void a(CharSequence charSequence) {
        if (!this.k) {
            e(charSequence);
        }
    }

    public void a(boolean z) {
        this.f351a.setCollapsible(z);
    }

    public Context b() {
        return this.f351a.getContext();
    }

    public void b(int i2) {
        b(i2 != 0 ? androidx.appcompat.a.a.a.b(b(), i2) : null);
    }

    public void b(Drawable drawable) {
        this.i = drawable;
        s();
    }

    public void b(CharSequence charSequence) {
        this.k = true;
        e(charSequence);
    }

    public void b(boolean z) {
    }

    public void c(int i2) {
        int i3 = this.e ^ i2;
        this.e = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    u();
                }
                t();
            }
            if ((i3 & 3) != 0) {
                s();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.f351a.setTitle(this.f352b);
                    this.f351a.setSubtitle(this.l);
                } else {
                    this.f351a.setTitle((CharSequence) null);
                    this.f351a.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) != 0) {
                View view = this.g;
                if (view == null) {
                    return;
                }
                if ((i2 & 16) != 0) {
                    this.f351a.addView(view);
                } else {
                    this.f351a.removeView(view);
                }
            }
        }
    }

    public void c(Drawable drawable) {
        this.j = drawable;
        t();
    }

    public void c(CharSequence charSequence) {
        this.l = charSequence;
        if ((this.e & 8) != 0) {
            this.f351a.setSubtitle(charSequence);
        }
    }

    public boolean c() {
        return this.f351a.g();
    }

    public void d() {
        this.f351a.h();
    }

    public void d(int i2) {
        this.f351a.setVisibility(i2);
    }

    public void d(CharSequence charSequence) {
        this.m = charSequence;
        u();
    }

    public CharSequence e() {
        return this.f351a.getTitle();
    }

    public void e(int i2) {
        if (i2 != this.p) {
            this.p = i2;
            if (TextUtils.isEmpty(this.f351a.getNavigationContentDescription())) {
                f(this.p);
            }
        }
    }

    public void f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void f(int i2) {
        d((CharSequence) i2 == 0 ? null : b().getString(i2));
    }

    public void g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public boolean h() {
        return this.f351a.a();
    }

    public boolean i() {
        return this.f351a.b();
    }

    public boolean j() {
        return this.f351a.c();
    }

    public boolean k() {
        return this.f351a.d();
    }

    public boolean l() {
        return this.f351a.e();
    }

    public void m() {
        this.d = true;
    }

    public void n() {
        this.f351a.f();
    }

    public int o() {
        return this.e;
    }

    public int p() {
        return this.o;
    }

    public Menu q() {
        return this.f351a.getMenu();
    }
}
