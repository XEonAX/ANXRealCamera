package com.oppo.camera.ui.menu.setting;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import color.support.design.widget.ColorAppBarLayout;
import color.support.v7.widget.Toolbar;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.g;
import com.oppo.camera.o.e;

public class CameraVideoRatioSettingActivity extends h {
    private Toolbar j;
    private ColorAppBarLayout k;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;

    public void onBackPressed() {
        d.a("CameraVideoRatioSettingActivity", "onBackPressed");
        if (this.l) {
            this.m = true;
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.camera_setting_video_resolution_activity_layout);
        k kVar = new k();
        m().a().a((int) R.id.list_container, (Fragment) kVar).b();
        this.j = (Toolbar) findViewById(R.id.toolbar);
        a((androidx.appcompat.widget.Toolbar) this.j);
        this.k = (ColorAppBarLayout) findViewById(R.id.appBarLayout);
        this.k.setPadding(0, e.a(this), 0, 0);
        this.j.setNavigationOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                CameraVideoRatioSettingActivity.this.onBackPressed();
            }
        });
        Intent intent = getIntent();
        if ("oppo.intent.action.APP_VIDEO_RATIO_SETTING".equals(intent.getAction())) {
            Bundle bundleExtra = intent.getBundleExtra("camera_intent_data");
            kVar.g(bundleExtra);
            this.l = true;
            if (bundleExtra != null) {
                this.n = bundleExtra.getBoolean("camera_enter_form_lock_screen", false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.l && !this.m) {
            g.a().b(getApplicationContext());
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (!"oppo.intent.action.APP_VIDEO_RATIO_SETTING".equals(getIntent().getAction()) || !this.n) {
            setShowWhenLocked(false);
        } else {
            setShowWhenLocked(true);
        }
        this.m = false;
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        setShowWhenLocked(false);
    }
}
