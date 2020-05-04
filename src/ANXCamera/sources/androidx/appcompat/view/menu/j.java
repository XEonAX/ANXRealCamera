package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.g.b;
import java.lang.reflect.Method;

/* compiled from: MenuItemWrapperICS */
public class j extends c implements MenuItem {

    /* renamed from: b  reason: collision with root package name */
    private final androidx.core.b.a.b f196b;
    private Method c;

    /* compiled from: MenuItemWrapperICS */
    private class a extends androidx.core.g.b {

        /* renamed from: a  reason: collision with root package name */
        final ActionProvider f197a;

        a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f197a = actionProvider;
        }

        public View a() {
            return this.f197a.onCreateActionView();
        }

        public void a(SubMenu subMenu) {
            this.f197a.onPrepareSubMenu(j.this.a(subMenu));
        }

        public boolean b() {
            return this.f197a.onPerformDefaultAction();
        }

        public boolean c() {
            return this.f197a.hasSubMenu();
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class b extends a implements ActionProvider.VisibilityListener {
        private b.C0017b d;

        b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        public View a(MenuItem menuItem) {
            return this.f197a.onCreateActionView(menuItem);
        }

        public void a(b.C0017b bVar) {
            this.d = bVar;
            this.f197a.setVisibilityListener(bVar != null ? this : null);
        }

        public boolean d() {
            return this.f197a.overridesItemVisibility();
        }

        public boolean e() {
            return this.f197a.isVisible();
        }

        public void onActionProviderVisibilityChanged(boolean z) {
            b.C0017b bVar = this.d;
            if (bVar != null) {
                bVar.a(z);
            }
        }
    }

    /* compiled from: MenuItemWrapperICS */
    static class c extends FrameLayout implements androidx.appcompat.view.c {

        /* renamed from: a  reason: collision with root package name */
        final CollapsibleActionView f199a;

        c(View view) {
            super(view.getContext());
            this.f199a = (CollapsibleActionView) view;
            addView(view);
        }

        public void a() {
            this.f199a.onActionViewExpanded();
        }

        public void b() {
            this.f199a.onActionViewCollapsed();
        }

        /* access modifiers changed from: package-private */
        public View c() {
            return (View) this.f199a;
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class d implements MenuItem.OnActionExpandListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem.OnActionExpandListener f201b;

        d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f201b = onActionExpandListener;
        }

        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f201b.onMenuItemActionCollapse(j.this.a(menuItem));
        }

        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f201b.onMenuItemActionExpand(j.this.a(menuItem));
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem.OnMenuItemClickListener f203b;

        e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f203b = onMenuItemClickListener;
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f203b.onMenuItemClick(j.this.a(menuItem));
        }
    }

    public j(Context context, androidx.core.b.a.b bVar) {
        super(context);
        if (bVar != null) {
            this.f196b = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    public void a(boolean z) {
        try {
            if (this.c == null) {
                this.c = this.f196b.getClass().getDeclaredMethod("setExclusiveCheckable", new Class[]{Boolean.TYPE});
            }
            this.c.invoke(this.f196b, new Object[]{Boolean.valueOf(z)});
        } catch (Exception e2) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
        }
    }

    public boolean collapseActionView() {
        return this.f196b.collapseActionView();
    }

    public boolean expandActionView() {
        return this.f196b.expandActionView();
    }

    public ActionProvider getActionProvider() {
        androidx.core.g.b a2 = this.f196b.a();
        if (a2 instanceof a) {
            return ((a) a2).f197a;
        }
        return null;
    }

    public View getActionView() {
        View actionView = this.f196b.getActionView();
        return actionView instanceof c ? ((c) actionView).c() : actionView;
    }

    public int getAlphabeticModifiers() {
        return this.f196b.getAlphabeticModifiers();
    }

    public char getAlphabeticShortcut() {
        return this.f196b.getAlphabeticShortcut();
    }

    public CharSequence getContentDescription() {
        return this.f196b.getContentDescription();
    }

    public int getGroupId() {
        return this.f196b.getGroupId();
    }

    public Drawable getIcon() {
        return this.f196b.getIcon();
    }

    public ColorStateList getIconTintList() {
        return this.f196b.getIconTintList();
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f196b.getIconTintMode();
    }

    public Intent getIntent() {
        return this.f196b.getIntent();
    }

    public int getItemId() {
        return this.f196b.getItemId();
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f196b.getMenuInfo();
    }

    public int getNumericModifiers() {
        return this.f196b.getNumericModifiers();
    }

    public char getNumericShortcut() {
        return this.f196b.getNumericShortcut();
    }

    public int getOrder() {
        return this.f196b.getOrder();
    }

    public SubMenu getSubMenu() {
        return a(this.f196b.getSubMenu());
    }

    public CharSequence getTitle() {
        return this.f196b.getTitle();
    }

    public CharSequence getTitleCondensed() {
        return this.f196b.getTitleCondensed();
    }

    public CharSequence getTooltipText() {
        return this.f196b.getTooltipText();
    }

    public boolean hasSubMenu() {
        return this.f196b.hasSubMenu();
    }

    public boolean isActionViewExpanded() {
        return this.f196b.isActionViewExpanded();
    }

    public boolean isCheckable() {
        return this.f196b.isCheckable();
    }

    public boolean isChecked() {
        return this.f196b.isChecked();
    }

    public boolean isEnabled() {
        return this.f196b.isEnabled();
    }

    public boolean isVisible() {
        return this.f196b.isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        androidx.core.g.b bVar = Build.VERSION.SDK_INT >= 16 ? new b(this.f172a, actionProvider) : new a(this.f172a, actionProvider);
        androidx.core.b.a.b bVar2 = this.f196b;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    public MenuItem setActionView(int i) {
        this.f196b.setActionView(i);
        View actionView = this.f196b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f196b.setActionView((View) new c(actionView));
        }
        return this;
    }

    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.f196b.setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f196b.setAlphabeticShortcut(c2);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2, int i) {
        this.f196b.setAlphabeticShortcut(c2, i);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.f196b.setCheckable(z);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.f196b.setChecked(z);
        return this;
    }

    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f196b.a(charSequence);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.f196b.setEnabled(z);
        return this;
    }

    public MenuItem setIcon(int i) {
        this.f196b.setIcon(i);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.f196b.setIcon(drawable);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f196b.setIconTintList(colorStateList);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f196b.setIconTintMode(mode);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f196b.setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.f196b.setNumericShortcut(c2);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i) {
        this.f196b.setNumericShortcut(c2, i);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f196b.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f196b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f196b.setShortcut(c2, c3);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f196b.setShortcut(c2, c3, i, i2);
        return this;
    }

    public void setShowAsAction(int i) {
        this.f196b.setShowAsAction(i);
    }

    public MenuItem setShowAsActionFlags(int i) {
        this.f196b.setShowAsActionFlags(i);
        return this;
    }

    public MenuItem setTitle(int i) {
        this.f196b.setTitle(i);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f196b.setTitle(charSequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f196b.setTitleCondensed(charSequence);
        return this;
    }

    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f196b.b(charSequence);
        return this;
    }

    public MenuItem setVisible(boolean z) {
        return this.f196b.setVisible(z);
    }
}
