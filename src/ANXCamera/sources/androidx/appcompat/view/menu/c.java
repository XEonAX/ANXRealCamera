package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.b.a;
import androidx.core.b.a.b;
import java.util.Iterator;
import java.util.Map;

/* compiled from: BaseMenuWrapper */
abstract class c {

    /* renamed from: a  reason: collision with root package name */
    final Context f172a;

    /* renamed from: b  reason: collision with root package name */
    private Map<b, MenuItem> f173b;
    private Map<androidx.core.b.a.c, SubMenu> c;

    c(Context context) {
        this.f172a = context;
    }

    /* access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof b)) {
            return menuItem;
        }
        b bVar = (b) menuItem;
        if (this.f173b == null) {
            this.f173b = new a();
        }
        MenuItem menuItem2 = this.f173b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.f172a, bVar);
        this.f173b.put(bVar, jVar);
        return jVar;
    }

    /* access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof androidx.core.b.a.c)) {
            return subMenu;
        }
        androidx.core.b.a.c cVar = (androidx.core.b.a.c) subMenu;
        if (this.c == null) {
            this.c = new a();
        }
        SubMenu subMenu2 = this.c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.f172a, cVar);
        this.c.put(cVar, sVar);
        return sVar;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        Map<b, MenuItem> map = this.f173b;
        if (map != null) {
            map.clear();
        }
        Map<androidx.core.b.a.c, SubMenu> map2 = this.c;
        if (map2 != null) {
            map2.clear();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        Map<b, MenuItem> map = this.f173b;
        if (map != null) {
            Iterator<b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(int i) {
        Map<b, MenuItem> map = this.f173b;
        if (map != null) {
            Iterator<b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
