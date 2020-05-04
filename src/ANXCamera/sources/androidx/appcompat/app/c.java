package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.az;
import androidx.core.app.a;
import androidx.core.app.f;
import androidx.core.app.m;

/* compiled from: AppCompatActivity */
public class c extends androidx.fragment.app.c implements d, m.a {
    private e j;
    private Resources k;

    private boolean a(int i, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode())) {
            return false;
        }
        Window window = getWindow();
        return (window == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    public b a(b.a aVar) {
        return null;
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
    }

    public void a(b bVar) {
    }

    public void a(Toolbar toolbar) {
        k().a(toolbar);
    }

    public void a(m mVar) {
        mVar.a((Activity) this);
    }

    public boolean a(Intent intent) {
        return f.a((Activity) this, intent);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k().b(view, layoutParams);
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        k().a(context);
    }

    public void b(Intent intent) {
        f.b((Activity) this, intent);
    }

    public void b(b bVar) {
    }

    public void b(m mVar) {
    }

    public void closeOptionsMenu() {
        a f = f();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (f == null || !f.d()) {
            super.closeOptionsMenu();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a f = f();
        if (keyCode != 82 || f == null || !f.a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    public a f() {
        return k().a();
    }

    public <T extends View> T findViewById(int i) {
        return k().b(i);
    }

    public void g() {
        k().f();
    }

    public MenuInflater getMenuInflater() {
        return k().b();
    }

    public Resources getResources() {
        if (this.k == null && az.a()) {
            this.k = new az(this, super.getResources());
        }
        Resources resources = this.k;
        return resources == null ? super.getResources() : resources;
    }

    public boolean h() {
        Intent i = i();
        if (i == null) {
            return false;
        }
        if (a(i)) {
            m a2 = m.a((Context) this);
            a(a2);
            b(a2);
            a2.a();
            try {
                a.a(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        } else {
            b(i);
            return true;
        }
    }

    public Intent i() {
        return f.a(this);
    }

    public void invalidateOptionsMenu() {
        k().f();
    }

    @Deprecated
    public void j() {
    }

    public e k() {
        if (this.j == null) {
            this.j = e.a((Activity) this, (d) this);
        }
        return this.j;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.k != null) {
            this.k.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        k().a(configuration);
    }

    public void onContentChanged() {
        j();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        e k2 = k();
        k2.h();
        k2.a(bundle);
        super.onCreate(bundle);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        k().g();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        a f = f();
        if (menuItem.getItemId() != 16908332 || f == null || (f.a() & 4) == 0) {
            return false;
        }
        return h();
    }

    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* access modifiers changed from: protected */
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        k().b(bundle);
    }

    /* access modifiers changed from: protected */
    public void onPostResume() {
        super.onPostResume();
        k().e();
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        k().c(bundle);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        k().c();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        k().d();
    }

    /* access modifiers changed from: protected */
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        k().a(charSequence);
    }

    public void openOptionsMenu() {
        a f = f();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (f == null || !f.c()) {
            super.openOptionsMenu();
        }
    }

    public void setContentView(int i) {
        k().c(i);
    }

    public void setContentView(View view) {
        k().a(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k().a(view, layoutParams);
    }

    public void setTheme(int i) {
        super.setTheme(i);
        k().a(i);
    }
}
