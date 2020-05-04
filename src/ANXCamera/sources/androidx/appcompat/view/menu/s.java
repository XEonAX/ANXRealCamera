package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.b.a.c;

/* compiled from: SubMenuWrapperICS */
class s extends o implements SubMenu {

    /* renamed from: b  reason: collision with root package name */
    private final c f213b;

    s(Context context, c cVar) {
        super(context, cVar);
        this.f213b = cVar;
    }

    public void clearHeader() {
        this.f213b.clearHeader();
    }

    public MenuItem getItem() {
        return a(this.f213b.getItem());
    }

    public SubMenu setHeaderIcon(int i) {
        this.f213b.setHeaderIcon(i);
        return this;
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f213b.setHeaderIcon(drawable);
        return this;
    }

    public SubMenu setHeaderTitle(int i) {
        this.f213b.setHeaderTitle(i);
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f213b.setHeaderTitle(charSequence);
        return this;
    }

    public SubMenu setHeaderView(View view) {
        this.f213b.setHeaderView(view);
        return this;
    }

    public SubMenu setIcon(int i) {
        this.f213b.setIcon(i);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.f213b.setIcon(drawable);
        return this;
    }
}
