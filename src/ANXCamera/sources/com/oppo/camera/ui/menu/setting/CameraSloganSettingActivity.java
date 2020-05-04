package com.oppo.camera.ui.menu.setting;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.h;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.g;
import com.oppo.camera.v;

public class CameraSloganSettingActivity extends h {
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;

    public void onBackPressed() {
        d.a("SloganSettingActivity", "onBackPressed");
        if (this.j) {
            this.k = true;
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.setting_delegate_layout);
        setTitle(R.string.camera_slogan_title);
        h m = m();
        j jVar = (j) m.a("com.oppo.camera.ui.menu.setting.SloganSettingActivity");
        if (jVar == null) {
            jVar = new j();
        }
        m.a().b(R.id.fragment_container, jVar, "com.oppo.camera.ui.menu.setting.SloganSettingActivity").b();
        com.oppo.camera.o.d.b(getApplicationContext());
        a.a(getApplicationContext());
        CameraConfig.initialize(a.a(0));
        v.a(getApplicationContext());
        Intent intent = getIntent();
        if ("oppo.intent.action.APP_SLOGAN_SETTING".equals(intent.getAction())) {
            Bundle bundleExtra = intent.getBundleExtra("camera_intent_data");
            jVar.g(bundleExtra);
            this.j = true;
            if (bundleExtra != null) {
                this.l = bundleExtra.getBoolean("camera_enter_form_lock_screen", false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.j && !this.k) {
            g.a().b(getApplicationContext());
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (!"oppo.intent.action.APP_SLOGAN_SETTING".equals(getIntent().getAction()) || !this.l) {
            setShowWhenLocked(false);
        } else {
            setShowWhenLocked(true);
        }
        this.k = false;
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        setShowWhenLocked(false);
    }
}
