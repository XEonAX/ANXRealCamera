package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.view.i;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ab;
import androidx.appcompat.widget.av;
import androidx.core.g.u;
import java.util.ArrayList;

/* compiled from: ToolbarActionBar */
class h extends a {

    /* renamed from: a  reason: collision with root package name */
    ab f100a;

    /* renamed from: b  reason: collision with root package name */
    boolean f101b;
    Window.Callback c;
    private boolean d;
    private boolean e;
    private ArrayList<a.b> f = new ArrayList<>();
    private final Runnable g = new Runnable() {
        public void run() {
            h.this.i();
        }
    };
    private final Toolbar.c h = new Toolbar.c() {
        public boolean a(MenuItem menuItem) {
            return h.this.c.onMenuItemSelected(0, menuItem);
        }
    };

    /* compiled from: ToolbarActionBar */
    private final class a implements m.a {

        /* renamed from: b  reason: collision with root package name */
        private boolean f105b;

        a() {
        }

        public void a(g gVar, boolean z) {
            if (!this.f105b) {
                this.f105b = true;
                h.this.f100a.n();
                if (h.this.c != null) {
                    h.this.c.onPanelClosed(108, gVar);
                }
                this.f105b = false;
            }
        }

        public boolean a(g gVar) {
            if (h.this.c == null) {
                return false;
            }
            h.this.c.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* compiled from: ToolbarActionBar */
    private final class b implements g.a {
        b() {
        }

        public void a(g gVar) {
            if (h.this.c == null) {
                return;
            }
            if (h.this.f100a.i()) {
                h.this.c.onPanelClosed(108, gVar);
            } else if (h.this.c.onPreparePanel(0, (View) null, gVar)) {
                h.this.c.onMenuOpened(108, gVar);
            }
        }

        public boolean a(g gVar, MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: ToolbarActionBar */
    private class c extends i {
        public c(Window.Callback callback) {
            super(callback);
        }

        public View onCreatePanelView(int i) {
            return i == 0 ? new View(h.this.f100a.b()) : super.onCreatePanelView(i);
        }

        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !h.this.f101b) {
                h.this.f100a.m();
                h.this.f101b = true;
            }
            return onPreparePanel;
        }
    }

    h(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f100a = new av(toolbar, false);
        this.c = new c(callback);
        this.f100a.a(this.c);
        toolbar.setOnMenuItemClickListener(this.h);
        this.f100a.a(charSequence);
    }

    private Menu j() {
        if (!this.d) {
            this.f100a.a((m.a) new a(), (g.a) new b());
            this.d = true;
        }
        return this.f100a.q();
    }

    public int a() {
        return this.f100a.o();
    }

    public void a(float f2) {
        u.a((View) this.f100a.a(), f2);
    }

    public void a(int i, int i2) {
        this.f100a.c((i & i2) | ((~i2) & this.f100a.o()));
    }

    public void a(Configuration configuration) {
        super.a(configuration);
    }

    public void a(CharSequence charSequence) {
        this.f100a.a(charSequence);
    }

    public void a(boolean z) {
        a(z ? 4 : 0, 4);
    }

    public boolean a(int i, KeyEvent keyEvent) {
        Menu j = j();
        if (j == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        j.setQwertyMode(z);
        return j.performShortcut(i, keyEvent, 0);
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            c();
        }
        return true;
    }

    public Context b() {
        return this.f100a.b();
    }

    public void b(boolean z) {
    }

    public boolean c() {
        return this.f100a.k();
    }

    public void d(boolean z) {
    }

    public boolean d() {
        return this.f100a.l();
    }

    public void e(boolean z) {
    }

    public boolean e() {
        this.f100a.a().removeCallbacks(this.g);
        u.a((View) this.f100a.a(), this.g);
        return true;
    }

    public void f(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.get(i).a(z);
            }
        }
    }

    public boolean f() {
        if (!this.f100a.c()) {
            return false;
        }
        this.f100a.d();
        return true;
    }

    /* access modifiers changed from: package-private */
    public void g() {
        this.f100a.a().removeCallbacks(this.g);
    }

    public Window.Callback h() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public void i() {
        Menu j = j();
        g gVar = j instanceof g ? (g) j : null;
        if (gVar != null) {
            gVar.h();
        }
        try {
            j.clear();
            if (!this.c.onCreatePanelMenu(0, j) || !this.c.onPreparePanel(0, (View) null, j)) {
                j.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.i();
            }
        }
    }
}
