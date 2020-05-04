package com.oppo.camera.ui.menu.setting;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.h;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.g;
import com.oppo.camera.o.a;
import com.oppo.camera.v;

public class CameraSettingActivity extends h {
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;

    public void a(boolean z) {
        this.l = z;
    }

    public boolean n() {
        return this.k;
    }

    public void onBackPressed() {
        d.a("CameraSettingActivity", "onBackPressed");
        if (this.j) {
            this.l = true;
        }
        super.onBackPressed();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.setting_delegate_layout);
        h m2 = m();
        g gVar = (g) m2.a("com.oppo.camera.ui.menu.setting.CameraSettingActivity");
        if (gVar == null) {
            gVar = new g();
        }
        m2.a().b(R.id.fragment_container, gVar, "com.oppo.camera.ui.menu.setting.CameraSettingActivity").b();
        v.a(getApplicationContext());
        Intent intent = getIntent();
        d.a("CameraSettingActivity", "onCreate(), Action: " + intent.getAction());
        a.a(this, intent, getString(R.string.camera_setting_name));
        if ("com.oppo.camera.action.SETTING_MENU".equals(intent.getAction())) {
            Bundle bundleExtra = intent.getBundleExtra("camera_intent_data");
            gVar.g(bundleExtra);
            this.j = true;
            this.k = false;
            if (bundleExtra != null) {
                this.m = bundleExtra.getBoolean("camera_enter_form_lock_screen", false);
            }
        } else if ("oppo.intent.action.APP_SETTINGS".equals(intent.getAction()) || "android.intent.action.MAIN".equals(intent.getAction())) {
            this.k = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.k = false;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.j && !this.l) {
            g.a().b(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (!"com.oppo.camera.action.SETTING_MENU".equals(getIntent().getAction()) || !this.m) {
            setShowWhenLocked(false);
        } else {
            setShowWhenLocked(true);
        }
        this.l = false;
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (!this.l) {
            setShowWhenLocked(false);
        }
    }
}
