package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.b.a.a;

/* compiled from: MenuWrapperICS */
public class o extends c implements Menu {

    /* renamed from: b  reason: collision with root package name */
    private final a f208b;

    public o(Context context, a aVar) {
        super(context);
        if (aVar != null) {
            this.f208b = aVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    public MenuItem add(int i) {
        return a(this.f208b.add(i));
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(this.f208b.add(i, i2, i3, i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(this.f208b.add(i, i2, i3, charSequence));
    }

    public MenuItem add(CharSequence charSequence) {
        return a(this.f208b.add(charSequence));
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr;
        MenuItem[] menuItemArr3 = menuItemArr2 != null ? new MenuItem[menuItemArr2.length] : null;
        int addIntentOptions = this.f208b.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr3);
        if (menuItemArr3 != null) {
            int length = menuItemArr3.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr2[i5] = a(menuItemArr3[i5]);
            }
        }
        return addIntentOptions;
    }

    public SubMenu addSubMenu(int i) {
        return a(this.f208b.addSubMenu(i));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return a(this.f208b.addSubMenu(i, i2, i3, i4));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return a(this.f208b.addSubMenu(i, i2, i3, charSequence));
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return a(this.f208b.addSubMenu(charSequence));
    }

    public void clear() {
        a();
        this.f208b.clear();
    }

    public void close() {
        this.f208b.close();
    }

    public MenuItem findItem(int i) {
        return a(this.f208b.findItem(i));
    }

    public MenuItem getItem(int i) {
        return a(this.f208b.getItem(i));
    }

    public boolean hasVisibleItems() {
        return this.f208b.hasVisibleItems();
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f208b.isShortcutKey(i, keyEvent);
    }

    public boolean performIdentifierAction(int i, int i2) {
        return this.f208b.performIdentifierAction(i, i2);
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f208b.performShortcut(i, keyEvent, i2);
    }

    public void removeGroup(int i) {
        a(i);
        this.f208b.removeGroup(i);
    }

    public void removeItem(int i) {
        b(i);
        this.f208b.removeItem(i);
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f208b.setGroupCheckable(i, z, z2);
    }

    public void setGroupEnabled(int i, boolean z) {
        this.f208b.setGroupEnabled(i, z);
    }

    public void setGroupVisible(int i, boolean z) {
        this.f208b.setGroupVisible(i, z);
    }

    public void setQwertyMode(boolean z) {
        this.f208b.setQwertyMode(z);
    }

    public int size() {
        return this.f208b.size();
    }
}
