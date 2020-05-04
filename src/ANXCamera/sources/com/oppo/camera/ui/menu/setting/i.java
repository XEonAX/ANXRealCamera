package com.oppo.camera.ui.menu.setting;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.BaseInterpolator;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.ui.b;
import com.oppo.camera.ui.d;
import com.oppo.camera.ui.menu.f;
import com.oppo.camera.ui.menu.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: CameraSettingUI */
public class i implements c {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2823a = null;

    /* renamed from: b  reason: collision with root package name */
    private com.oppo.camera.i f2824b = null;
    private a g = null;
    /* access modifiers changed from: private */
    public boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private d k = null;
    /* access modifiers changed from: private */
    public CameraSettingMenuPanel l = null;
    private int m = 1;
    private int n = 0;
    private int o = 0;
    private ValueAnimator p = null;
    private g q = null;
    /* access modifiers changed from: private */
    public Handler r = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 1 && !i.this.h && i.this.l == null) {
                i.this.m();
            }
        }
    };

    /* compiled from: CameraSettingUI */
    private class a extends Thread {

        /* renamed from: b  reason: collision with root package name */
        private boolean f2827b;

        public a() {
            this.f2827b = false;
            this.f2827b = false;
        }

        public void a() {
            this.f2827b = true;
        }

        public void run() {
            if (!this.f2827b) {
                i.this.n();
                if (!i.this.h) {
                    i.this.r.removeMessages(1);
                    i.this.r.sendEmptyMessage(1);
                }
            }
        }
    }

    public i(Activity activity, com.oppo.camera.i iVar, d dVar, boolean z) {
        this.f2823a = activity;
        this.f2824b = iVar;
        this.k = dVar;
        this.j = z;
    }

    private void a(int i2, boolean z) {
        com.oppo.camera.d.a("CameraSettingUI", "updateSupportedOptionItems");
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null && this.k != null && this.i) {
            cameraSettingMenuPanel.f();
            if (this.m != 3) {
                this.l.a("pref_video_size_key", CameraConfig.getSupportedList("pref_video_size_key", i2));
                this.l.a("pref_slow_video_frame_key", CameraConfig.getSupportedList("pref_slow_video_frame_key", i2));
                List<String> supportedList = CameraConfig.getSupportedList("pref_camera_timer_shutter_key", i2);
                if (supportedList != null) {
                    this.l.a("pref_camera_timer_shutter_key", supportedList);
                }
            }
            this.l.a("pref_camera_torch_mode_key", CameraConfig.getSupportedList("pref_camera_torch_mode_key", i2));
            if (z && !this.j) {
                this.l.setVisibility(0);
            }
            this.l.setOrientation(this.n);
            this.k.k();
        }
    }

    private boolean a(View view, int i2, int i3) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i4 = iArr[0];
        int i5 = iArr[1];
        return i3 >= i5 && i3 <= view.getMeasuredHeight() + i5 && i2 >= i4 && i2 <= view.getMeasuredWidth() + i4;
    }

    /* access modifiers changed from: private */
    public void m() {
        com.oppo.camera.d.a("CameraSettingUI", "initializeCameraSettingMenu, mPreferenceOptionGroup: " + this.q);
        if (this.q == null) {
            return;
        }
        if (this.j) {
            this.l = (CameraSettingMenuPanel) this.f2823a.findViewById(R.id.oppo_subsetting_bar);
            this.l.a(this.f2824b, this.k, this.q, this.o, true);
            return;
        }
        this.l = (CameraSettingMenuPanel) this.f2823a.findViewById(R.id.oppo_setting_bar);
        this.l.a(this.f2824b, this.k, this.q, this.o, false);
    }

    /* access modifiers changed from: private */
    public void n() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.j) {
            this.q = new g(this.f2823a, R.xml.camera_submenu_settings, true);
        } else {
            this.q = new g(this.f2823a, R.xml.camera_preferences, false);
        }
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT)) {
            com.oppo.camera.ui.menu.a a2 = this.q.a("pref_camera_torch_mode_key");
            if (a2 != null) {
                ArrayList<com.oppo.camera.ui.menu.d> optionItems = a2.getOptionItems();
                if (optionItems != null) {
                    for (com.oppo.camera.ui.menu.d next : optionItems) {
                        if ("on".equals(next.d())) {
                            next.b(this.f2823a.getString(R.string.camera_flash_mode_torch));
                        }
                    }
                }
            }
        }
        com.oppo.camera.d.a("CameraSettingUI", "parseCameraMenuConfig, use time: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    public void a() {
        this.g = new a();
        this.g.start();
    }

    public void a(float f) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setAlpha(f);
        }
    }

    public void a(int i2) {
        this.o = i2;
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setSizeRatioType(this.o);
        }
    }

    public void a(int i2, boolean z, boolean z2) {
        a aVar = this.g;
        if (aVar != null) {
            try {
                aVar.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.i = true;
        if (this.l == null) {
            m();
        }
        a(i2, z2);
        h();
        if (z) {
            int i3 = this.o;
            if (i3 != 0 && i3 != 2) {
                if ((this.k.l() || !com.oppo.camera.o.d.O()) && this.o == 1) {
                    boolean O = com.oppo.camera.o.d.O();
                }
            }
        }
    }

    public void a(String str) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.b(str);
        }
    }

    public void a(String str, int i2) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(str, i2);
        }
    }

    public void a(String str, String str2) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(str, str2);
        }
    }

    public void a(String str, String str2, int i2, int i3) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(str, str2, i2, i3);
        }
    }

    public void a(String str, boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.d(str, z);
        }
    }

    public void a(String str, String... strArr) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(str, strArr);
        }
    }

    public void a(boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setCameraMenuLayout(z);
        }
    }

    public void a(boolean z, boolean z2) {
        com.oppo.camera.d.a("CameraSettingUI", "enableCameraSettingMenu(), enable: " + z + ", ashed: " + z2);
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(z, z2);
        }
    }

    public boolean a(MotionEvent motionEvent) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel == null || !cameraSettingMenuPanel.isShown() || !a((View) this.l, (int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
            return false;
        }
        com.oppo.camera.d.a("CameraSettingUI", "needTouchEvent, mCameraSettingMenu is show and dispatchTouchEvent");
        return true;
    }

    public void b() {
        com.oppo.camera.d.a("CameraSettingUI", "onResumeMessage");
        this.h = false;
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a();
        }
    }

    public void b(float f) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(f);
        }
    }

    public void b(int i2) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setVisibility(i2);
        }
    }

    public void b(int i2, boolean z, boolean z2) {
        a(i2, z, z2);
        d(true);
    }

    public void b(String str) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.c(str, true);
        }
    }

    public void b(String str, String str2) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.b(str, str2);
        }
    }

    public void b(String str, boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.a(str, z, false);
        }
    }

    public void b(String str, String... strArr) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.b(str, strArr);
        }
    }

    public void b(boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.d();
            if (!z) {
                b("pref_camera_videoflashmode_key", (String) null);
            } else {
                d dVar = this.k;
                if (dVar != null && dVar.g("pref_camera_torch_mode_key")) {
                    b("pref_camera_torch_mode_key", (String) null);
                }
            }
            if (com.oppo.camera.o.d.I() == 0) {
                com.oppo.camera.o.d.a((View) this.l, b.a(this.f2823a, 3), 300, (BaseInterpolator) null, (Animator.AnimatorListener) null);
            }
        }
    }

    public void b(boolean z, boolean z2) {
        com.oppo.camera.d.a("CameraSettingUI", "resetMenuState, resetVisibility:" + z + ", resetLayout:" + z2);
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.b(z, z2);
        }
    }

    public void c() {
        com.oppo.camera.d.a("CameraSettingUI", "onPause");
        this.i = false;
        this.h = true;
        this.r.removeMessages(1);
        a(false);
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.b();
            this.l.clearAnimation();
            this.l.setAlpha(1.0f);
            this.l.setInitState(false);
        }
        com.oppo.camera.i iVar = this.f2824b;
        if (iVar != null && this.j) {
            iVar.edit().putString("pref_subsetting_key", c.a_).apply();
            c("pref_subsetting_key");
            CameraSettingMenuPanel cameraSettingMenuPanel2 = this.l;
            if (cameraSettingMenuPanel2 != null) {
                cameraSettingMenuPanel2.setVisibility(8);
            }
        }
        f.d();
    }

    public void c(int i2) {
        com.oppo.camera.o.d.a((View) this.l, i2, (Animation.AnimationListener) null, 300);
    }

    public void c(String str) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.c(str);
        }
    }

    public void c(boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            if (this.m != 3) {
                cameraSettingMenuPanel.e();
            }
            this.l.setOrientation(this.n);
        }
    }

    public void c(boolean z, boolean z2) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.c(z, z2);
        }
    }

    public void d() {
        com.oppo.camera.d.a("CameraSettingUI", "onDestroy");
        a aVar = this.g;
        if (aVar != null) {
            try {
                aVar.a();
                this.g = null;
            } catch (Exception unused) {
            }
        }
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.g();
            this.l = null;
        }
        g gVar = this.q;
        if (gVar != null) {
            gVar.a();
            this.q = null;
        }
        this.f2823a = null;
        this.k = null;
    }

    public void d(int i2) {
        this.m = i2;
    }

    public void d(boolean z) {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setInitState(z);
        }
    }

    public void d(boolean z, boolean z2) {
        com.oppo.camera.d.a("CameraSettingUI", "updateSettingBarBg, halfOpaque: " + z + ", needAnimation: " + z2);
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null && this.i) {
            if (z2) {
                if (z) {
                    com.oppo.camera.o.d.a((View) cameraSettingMenuPanel, b.a(this.f2823a, 1), 200, (BaseInterpolator) null, (Animator.AnimatorListener) null);
                } else {
                    com.oppo.camera.o.d.a((View) cameraSettingMenuPanel, this.f2823a.getResources().getColor(R.color.background_color), 200, (BaseInterpolator) null, (Animator.AnimatorListener) null);
                }
            } else if (z) {
                cameraSettingMenuPanel.setBackgroundColor(b.a(this.f2823a, 1));
            } else {
                cameraSettingMenuPanel.setBackgroundColor(this.f2823a.getResources().getColor(R.color.background_color));
            }
        }
    }

    public void e(int i2) {
        this.n = i2;
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setOrientation(i2);
        }
    }

    public void e(boolean z) {
        if (this.l != null) {
            int color2 = this.f2823a.getColor(R.color.beauty3d_guide_background);
            if (z) {
                com.oppo.camera.o.d.a((View) this.l, color2, 200, (BaseInterpolator) null, (Animator.AnimatorListener) null);
            } else {
                this.l.setBackgroundColor(color2);
            }
        }
    }

    public boolean e() {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            return cameraSettingMenuPanel.c();
        }
        return false;
    }

    public boolean f() {
        return this.f2824b.getString("pref_subsetting_key", c.a_).equals("on");
    }

    public CopyOnWriteArrayList<CameraMenuOption> g() {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            return cameraSettingMenuPanel.getMenuList();
        }
        return null;
    }

    public void h() {
        CopyOnWriteArrayList<CameraMenuOption> g2 = g();
        com.oppo.camera.d.a("CameraSettingUI", "updateSettingMenu, mbCameraOpened: " + this.i);
        if (g2 != null && this.i) {
            Iterator<CameraMenuOption> it = g2.iterator();
            while (it.hasNext()) {
                CameraMenuOption next = it.next();
                if (this.j) {
                    if (this.k.f(next.a())) {
                        a(next.a());
                        b(next.a(), (String) null);
                    } else {
                        b(next.a());
                    }
                } else if (this.k.e(next.a())) {
                    a(next.a());
                    b(next.a(), (String) null);
                } else {
                    b(next.a());
                }
            }
        }
    }

    public boolean i() {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            return cameraSettingMenuPanel.getMenuPanelEnable();
        }
        return false;
    }

    public void j() {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null) {
            cameraSettingMenuPanel.setVisibility(4);
            this.l.setClickable(false);
        }
    }

    public void k() {
        CameraSettingMenuPanel cameraSettingMenuPanel = this.l;
        if (cameraSettingMenuPanel != null && !this.j) {
            cameraSettingMenuPanel.setVisibility(0);
            this.l.setClickable(true);
        }
    }

    public int l() {
        return com.oppo.camera.o.d.D();
    }
}
