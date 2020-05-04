package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.widget.LinearLayout;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.n;
import androidx.core.b.a.b;
import androidx.core.g.b;
import androidx.core.graphics.drawable.a;
import com.sensetime.stmobile.STCommon;

/* compiled from: MenuItemImpl */
public final class i implements b {
    private View A;
    private androidx.core.g.b B;
    private MenuItem.OnActionExpandListener C;
    private boolean D = false;
    private ContextMenu.ContextMenuInfo E;

    /* renamed from: a  reason: collision with root package name */
    g f193a;

    /* renamed from: b  reason: collision with root package name */
    private final int f194b;
    private final int c;
    private final int d;
    private final int e;
    private CharSequence f;
    private CharSequence g;
    private Intent h;
    private char i;
    private int j = 4096;
    private char k;
    private int l = 4096;
    private Drawable m;
    private int n = 0;
    private r o;
    private Runnable p;
    private MenuItem.OnMenuItemClickListener q;
    private CharSequence r;
    private CharSequence s;
    private ColorStateList t = null;
    private PorterDuff.Mode u = null;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private int y = 16;
    private int z = 0;

    i(g gVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.f193a = gVar;
        this.f194b = i3;
        this.c = i2;
        this.d = i4;
        this.e = i5;
        this.f = charSequence;
        this.z = i6;
    }

    private Drawable a(Drawable drawable) {
        if (drawable != null && this.x && (this.v || this.w)) {
            drawable = a.f(drawable).mutate();
            if (this.v) {
                a.a(drawable, this.t);
            }
            if (this.w) {
                a.a(drawable, this.u);
            }
            this.x = false;
        }
        return drawable;
    }

    private static void a(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    /* renamed from: a */
    public b setActionView(int i2) {
        Context f2 = this.f193a.f();
        setActionView(LayoutInflater.from(f2).inflate(i2, new LinearLayout(f2), false));
        return this;
    }

    /* renamed from: a */
    public b setActionView(View view) {
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1) {
            int i2 = this.f194b;
            if (i2 > 0) {
                view.setId(i2);
            }
        }
        this.f193a.b(this);
        return this;
    }

    public b a(androidx.core.g.b bVar) {
        androidx.core.g.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.f();
        }
        this.A = null;
        this.B = bVar;
        this.f193a.b(true);
        androidx.core.g.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.a((b.C0017b) new b.C0017b() {
                public void a(boolean z) {
                    i.this.f193a.a(i.this);
                }
            });
        }
        return this;
    }

    /* renamed from: a */
    public androidx.core.b.a.b setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.f193a.b(false);
        return this;
    }

    public androidx.core.g.b a() {
        return this.B;
    }

    /* access modifiers changed from: package-private */
    public CharSequence a(n.a aVar) {
        return (aVar == null || !aVar.a()) ? getTitle() : getTitleCondensed();
    }

    /* access modifiers changed from: package-private */
    public void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    public void a(r rVar) {
        this.o = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    public void a(boolean z2) {
        this.y = (z2 ? 4 : 0) | (this.y & -5);
    }

    /* renamed from: b */
    public androidx.core.b.a.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    /* renamed from: b */
    public androidx.core.b.a.b setTooltipText(CharSequence charSequence) {
        this.s = charSequence;
        this.f193a.b(false);
        return this;
    }

    /* access modifiers changed from: package-private */
    public void b(boolean z2) {
        int i2 = this.y;
        this.y = (z2 ? 2 : 0) | (i2 & -3);
        if (i2 != this.y) {
            this.f193a.b(false);
        }
    }

    public boolean b() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        g gVar = this.f193a;
        if (gVar.a(gVar, (MenuItem) this)) {
            return true;
        }
        Runnable runnable = this.p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.h != null) {
            try {
                this.f193a.f().startActivity(this.h);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
            }
        }
        androidx.core.g.b bVar = this.B;
        return bVar != null && bVar.b();
    }

    public int c() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public boolean c(boolean z2) {
        int i2 = this.y;
        this.y = (z2 ? 0 : 8) | (i2 & -9);
        return i2 != this.y;
    }

    public boolean collapseActionView() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f193a.d(this);
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public char d() {
        return this.f193a.c() ? this.k : this.i;
    }

    public void d(boolean z2) {
        if (z2) {
            this.y |= 32;
        } else {
            this.y &= -33;
        }
    }

    /* access modifiers changed from: package-private */
    public String e() {
        char d2 = d();
        if (d2 == 0) {
            return "";
        }
        Resources resources = this.f193a.f().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f193a.f()).hasPermanentMenuKey()) {
            sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
        }
        int i2 = this.f193a.c() ? this.l : this.j;
        a(sb, i2, STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD, resources.getString(R.string.abc_menu_meta_shortcut_label));
        a(sb, i2, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
        a(sb, i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
        a(sb, i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
        a(sb, i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
        a(sb, i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
        if (d2 == 8) {
            sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
        } else if (d2 == 10) {
            sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
        } else if (d2 != ' ') {
            sb.append(d2);
        } else {
            sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    public void e(boolean z2) {
        this.D = z2;
        this.f193a.b(false);
    }

    public boolean expandActionView() {
        if (!n()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f193a.c(this);
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return this.f193a.d() && d() != 0;
    }

    public boolean g() {
        return (this.y & 4) != 0;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        androidx.core.g.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        this.A = bVar.a((MenuItem) this);
        return this.A;
    }

    public int getAlphabeticModifiers() {
        return this.l;
    }

    public char getAlphabeticShortcut() {
        return this.k;
    }

    public CharSequence getContentDescription() {
        return this.r;
    }

    public int getGroupId() {
        return this.c;
    }

    public Drawable getIcon() {
        Drawable drawable = this.m;
        if (drawable != null) {
            return a(drawable);
        }
        if (this.n == 0) {
            return null;
        }
        Drawable b2 = androidx.appcompat.a.a.a.b(this.f193a.f(), this.n);
        this.n = 0;
        this.m = b2;
        return a(b2);
    }

    public ColorStateList getIconTintList() {
        return this.t;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.u;
    }

    public Intent getIntent() {
        return this.h;
    }

    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f194b;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    public int getNumericModifiers() {
        return this.j;
    }

    public char getNumericShortcut() {
        return this.i;
    }

    public int getOrder() {
        return this.d;
    }

    public SubMenu getSubMenu() {
        return this.o;
    }

    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.g;
        if (charSequence == null) {
            charSequence = this.f;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    public CharSequence getTooltipText() {
        return this.s;
    }

    public void h() {
        this.f193a.b(this);
    }

    public boolean hasSubMenu() {
        return this.o != null;
    }

    public boolean i() {
        return this.f193a.r();
    }

    public boolean isActionViewExpanded() {
        return this.D;
    }

    public boolean isCheckable() {
        return (this.y & 1) == 1;
    }

    public boolean isChecked() {
        return (this.y & 2) == 2;
    }

    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    public boolean isVisible() {
        androidx.core.g.b bVar = this.B;
        return (bVar == null || !bVar.d()) ? (this.y & 8) == 0 : (this.y & 8) == 0 && this.B.e();
    }

    public boolean j() {
        return (this.y & 32) == 32;
    }

    public boolean k() {
        return (this.z & 1) == 1;
    }

    public boolean l() {
        return (this.z & 2) == 2;
    }

    public boolean m() {
        return (this.z & 4) == 4;
    }

    public boolean n() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            androidx.core.g.b bVar = this.B;
            if (bVar != null) {
                this.A = bVar.a((MenuItem) this);
            }
        }
        return this.A != null;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.k == c2) {
            return this;
        }
        this.k = Character.toLowerCase(c2);
        this.f193a.b(false);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.k == c2 && this.l == i2) {
            return this;
        }
        this.k = Character.toLowerCase(c2);
        this.l = KeyEvent.normalizeMetaState(i2);
        this.f193a.b(false);
        return this;
    }

    public MenuItem setCheckable(boolean z2) {
        int i2 = this.y;
        this.y = z2 | (i2 & true) ? 1 : 0;
        if (i2 != this.y) {
            this.f193a.b(false);
        }
        return this;
    }

    public MenuItem setChecked(boolean z2) {
        if ((this.y & 4) != 0) {
            this.f193a.a((MenuItem) this);
        } else {
            b(z2);
        }
        return this;
    }

    public MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.y |= 16;
        } else {
            this.y &= -17;
        }
        this.f193a.b(false);
        return this;
    }

    public MenuItem setIcon(int i2) {
        this.m = null;
        this.n = i2;
        this.x = true;
        this.f193a.b(false);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.n = 0;
        this.m = drawable;
        this.x = true;
        this.f193a.b(false);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.t = colorStateList;
        this.v = true;
        this.x = true;
        this.f193a.b(false);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.u = mode;
        this.w = true;
        this.x = true;
        this.f193a.b(false);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.h = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        if (this.i == c2) {
            return this;
        }
        this.i = c2;
        this.f193a.b(false);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        if (this.i == c2 && this.j == i2) {
            return this;
        }
        this.i = c2;
        this.j = KeyEvent.normalizeMetaState(i2);
        this.f193a.b(false);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.q = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.i = c2;
        this.k = Character.toLowerCase(c3);
        this.f193a.b(false);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.i = c2;
        this.j = KeyEvent.normalizeMetaState(i2);
        this.k = Character.toLowerCase(c3);
        this.l = KeyEvent.normalizeMetaState(i3);
        this.f193a.b(false);
        return this;
    }

    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 == 0 || i3 == 1 || i3 == 2) {
            this.z = i2;
            this.f193a.b(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    public MenuItem setTitle(int i2) {
        return setTitle((CharSequence) this.f193a.f().getString(i2));
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f = charSequence;
        this.f193a.b(false);
        r rVar = this.o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.g = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f;
        }
        this.f193a.b(false);
        return this;
    }

    public MenuItem setVisible(boolean z2) {
        if (c(z2)) {
            this.f193a.a(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
