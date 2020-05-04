package com.oppo.camera.ui.menu.setting;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.c;
import com.oppo.camera.d;
import com.oppo.camera.ui.menu.setting.a.a;

/* compiled from: CameraSettingBaseActivity */
public abstract class h extends c implements a {
    private a j = null;

    public boolean M_() {
        return true;
    }

    public boolean a() {
        return true;
    }

    public int c() {
        return 3;
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (com.oppo.camera.l.a.f2242a != i) {
            return;
        }
        if (-1 == i2) {
            com.oppo.camera.l.a.a(intent);
        } else {
            com.oppo.camera.l.a.b();
        }
    }

    public void onContentChanged() {
        super.onContentChanged();
        this.j.a();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        this.j = new a(this);
        this.j.a(k());
        super.onCreate(bundle);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        this.j.a(menuItem);
        return super.onOptionsItemSelected(menuItem);
    }

    /* access modifiers changed from: protected */
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.j.b(k());
    }

    public void setShowWhenLocked(boolean z) {
        KeyguardManager keyguardManager = (KeyguardManager) getApplicationContext().getSystemService("keyguard");
        if (keyguardManager != null) {
            boolean z2 = keyguardManager.isKeyguardLocked() && keyguardManager.isKeyguardSecure() && z;
            super.setShowWhenLocked(z2);
            d.b("SettingBaseActivity", "setShowWhenLocked: " + z2);
        }
    }
}
