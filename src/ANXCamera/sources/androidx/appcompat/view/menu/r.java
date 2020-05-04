package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.g;

/* compiled from: SubMenuBuilder */
public class r extends g implements SubMenu {
    private g d;
    private i e;

    public r(Context context, g gVar, i iVar) {
        super(context);
        this.d = gVar;
        this.e = iVar;
    }

    public String a() {
        i iVar = this.e;
        int itemId = iVar != null ? iVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    public void a(g.a aVar) {
        this.d.a(aVar);
    }

    /* access modifiers changed from: package-private */
    public boolean a(g gVar, MenuItem menuItem) {
        return super.a(gVar, menuItem) || this.d.a(gVar, menuItem);
    }

    public boolean b() {
        return this.d.b();
    }

    public boolean c() {
        return this.d.c();
    }

    public boolean c(i iVar) {
        return this.d.c(iVar);
    }

    public boolean d() {
        return this.d.d();
    }

    public boolean d(i iVar) {
        return this.d.d(iVar);
    }

    public MenuItem getItem() {
        return this.e;
    }

    public g q() {
        return this.d.q();
    }

    public void setGroupDividerEnabled(boolean z) {
        this.d.setGroupDividerEnabled(z);
    }

    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.e(i);
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a(drawable);
    }

    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.d(i);
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.a(charSequence);
    }

    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.a(view);
    }

    public SubMenu setIcon(int i) {
        this.e.setIcon(i);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.e.setIcon(drawable);
        return this;
    }

    public void setQwertyMode(boolean z) {
        this.d.setQwertyMode(z);
    }

    public Menu t() {
        return this.d;
    }
}
