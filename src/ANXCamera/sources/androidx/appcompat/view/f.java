package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import androidx.b.g;
import java.util.ArrayList;

/* compiled from: SupportActionModeWrapper */
public class f extends ActionMode {

    /* renamed from: a  reason: collision with root package name */
    final Context f146a;

    /* renamed from: b  reason: collision with root package name */
    final b f147b;

    /* compiled from: SupportActionModeWrapper */
    public static class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        final ActionMode.Callback f148a;

        /* renamed from: b  reason: collision with root package name */
        final Context f149b;
        final ArrayList<f> c = new ArrayList<>();
        final g<Menu, Menu> d = new g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f149b = context;
            this.f148a = callback;
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            o oVar = new o(this.f149b, (androidx.core.b.a.a) menu);
            this.d.put(menu, oVar);
            return oVar;
        }

        public void a(b bVar) {
            this.f148a.onDestroyActionMode(b(bVar));
        }

        public boolean a(b bVar, Menu menu) {
            return this.f148a.onCreateActionMode(b(bVar), a(menu));
        }

        public boolean a(b bVar, MenuItem menuItem) {
            return this.f148a.onActionItemClicked(b(bVar), new j(this.f149b, (androidx.core.b.a.b) menuItem));
        }

        public ActionMode b(b bVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.c.get(i);
                if (fVar != null && fVar.f147b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f149b, bVar);
            this.c.add(fVar2);
            return fVar2;
        }

        public boolean b(b bVar, Menu menu) {
            return this.f148a.onPrepareActionMode(b(bVar), a(menu));
        }
    }

    public f(Context context, b bVar) {
        this.f146a = context;
        this.f147b = bVar;
    }

    public void finish() {
        this.f147b.c();
    }

    public View getCustomView() {
        return this.f147b.i();
    }

    public Menu getMenu() {
        return new o(this.f146a, (androidx.core.b.a.a) this.f147b.b());
    }

    public MenuInflater getMenuInflater() {
        return this.f147b.a();
    }

    public CharSequence getSubtitle() {
        return this.f147b.g();
    }

    public Object getTag() {
        return this.f147b.j();
    }

    public CharSequence getTitle() {
        return this.f147b.f();
    }

    public boolean getTitleOptionalHint() {
        return this.f147b.k();
    }

    public void invalidate() {
        this.f147b.d();
    }

    public boolean isTitleOptional() {
        return this.f147b.h();
    }

    public void setCustomView(View view) {
        this.f147b.a(view);
    }

    public void setSubtitle(int i) {
        this.f147b.b(i);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f147b.a(charSequence);
    }

    public void setTag(Object obj) {
        this.f147b.a(obj);
    }

    public void setTitle(int i) {
        this.f147b.a(i);
    }

    public void setTitle(CharSequence charSequence) {
        this.f147b.b(charSequence);
    }

    public void setTitleOptionalHint(boolean z) {
        this.f147b.a(z);
    }
}
