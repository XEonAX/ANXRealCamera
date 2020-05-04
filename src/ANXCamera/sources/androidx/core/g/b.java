package androidx.core.g;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: ActionProvider */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f556a;

    /* renamed from: b  reason: collision with root package name */
    private a f557b;
    private C0017b c;

    /* compiled from: ActionProvider */
    public interface a {
        void d(boolean z);
    }

    /* renamed from: androidx.core.g.b$b  reason: collision with other inner class name */
    /* compiled from: ActionProvider */
    public interface C0017b {
        void a(boolean z);
    }

    public b(Context context) {
        this.f556a = context;
    }

    public abstract View a();

    public View a(MenuItem menuItem) {
        return a();
    }

    public void a(SubMenu subMenu) {
    }

    public void a(a aVar) {
        this.f557b = aVar;
    }

    public void a(C0017b bVar) {
        if (!(this.c == null || bVar == null)) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.c = bVar;
    }

    public void a(boolean z) {
        a aVar = this.f557b;
        if (aVar != null) {
            aVar.d(z);
        }
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public void f() {
        this.c = null;
        this.f557b = null;
    }
}
