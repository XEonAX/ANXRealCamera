package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.ui.menu.a;
import com.oppo.camera.ui.menu.f;
import com.oppo.camera.ui.menu.h;

/* compiled from: CameraMenuOptionFirstLevel */
public class d extends CameraMenuOption implements View.OnClickListener {
    private h k = null;
    private String l = null;
    private boolean m = false;

    public d(Context context, a aVar, e eVar, com.oppo.camera.ui.d dVar, int i, String str, boolean z) {
        super(context, aVar, eVar, dVar, i, str);
        this.m = z;
        N();
    }

    private void N() {
        if ("pref_camera_flashmode_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_flash_mode_title);
        } else if ("pref_camera_hdr_mode_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_hdr_title);
        } else if ("pref_camera_torch_mode_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_torch_mode_title);
        } else if ("pref_setting_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_setting_title);
        } else if ("pref_subsetting_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_sub_setting_menu_description_setting_title);
        } else if ("pref_camera_pi_mode_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_pi_title);
        } else if ("pref_filter_menu".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_filter_title);
        } else if ("pref_camera_videoflashmode_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_flash_mode_title);
        } else if ("pref_slow_video_frame_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_video_size_title);
        } else if ("pref_high_resolution_key".equals(a())) {
            this.l = this.e.getResources().getString(R.string.camera_setting_menu_description_high_resolution_title);
        } else {
            this.l = "";
        }
    }

    public View A() {
        return this.k;
    }

    public void a(int i, boolean z) {
        h hVar = this.k;
        if (hVar != null) {
            hVar.a(i, z);
        }
        super.a(i, z);
    }

    public void a(Bitmap bitmap) {
        h hVar = this.k;
        if (hVar != null) {
            hVar.setImageIcon(bitmap);
        }
    }

    public void a(View view) {
        this.k = (h) view;
    }

    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        this.k.setContentDescription(this.l);
    }

    public boolean a(String str, String... strArr) {
        if (!a().equals(str)) {
            return false;
        }
        com.oppo.camera.d.a("CameraMenuOptionFirstLevel", "addMenuOptionItems, key: " + str);
        if (strArr == null || strArr.length <= 0) {
            return true;
        }
        for (String l2 : strArr) {
            l(l2);
        }
        if (this.f == null) {
            return true;
        }
        k();
        return true;
    }

    public void b() {
        this.k = new h(this.e, this.i, this.m);
        this.k.setOnClickListener(this);
        this.k.setSizeRatioType(this.d);
        this.k.setMenuName(this.l);
        this.k.setImageDrawable(B());
        this.k.setForceDarkAllowed(false);
        super.b();
    }

    public void b(boolean z) {
        h hVar = this.k;
        if (hVar != null && this.m) {
            hVar.setSelectState(z);
        }
    }

    public void e(int i) {
        super.e(i);
        h hVar = this.k;
        if (hVar != null) {
            hVar.setSizeRatioType(this.d);
        }
    }

    public void h(String str) {
        h hVar = this.k;
        if (hVar != null) {
            hVar.setItemText(str);
        }
    }

    public void o() {
        boolean z = false;
        if (H() <= 0) {
            a((Bitmap) null);
        } else if (J() && C() != null && !TextUtils.isEmpty(F())) {
            a(C());
            if (a().equals("pref_camera_high_resolution_key")) {
                h(this.e.getString(R.string.camera_setting_submenu_high_resolution, new Object[]{Double.valueOf(com.oppo.camera.o.d.a(this.e, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE)))}));
            } else {
                h(F());
            }
        } else if (D() != null && w() == 1) {
            h((String) null);
            a(D());
        } else if (C() != null) {
            h((String) null);
            a(C());
        } else if (!TextUtils.isEmpty(F())) {
            h(F());
            a((Bitmap) null);
        }
        if (this.k != null) {
            if (a() != null && a().equals("pref_subsetting_key")) {
                this.k.setImageDrawable(B());
            }
            this.k.invalidate();
            this.k.setContentDescription(this.l + F());
        }
        if (K()) {
            if (M() != 0) {
                z = true;
            }
            b(z);
        }
    }

    public void onClick(View view) {
        if (this.g != null) {
            com.oppo.camera.d.a("CameraMenuOptionFirstLevel", "onClick, Key: " + a());
            if (A() == null || A().isClickable()) {
                if (this.f == null) {
                    i();
                }
                int i = 0;
                boolean a2 = this.g.a(a(), false);
                h hVar = this.k;
                hVar.setContentDescription(this.l + F());
                if (!a2) {
                    com.oppo.camera.d.a("CameraMenuOptionFirstLevel", "onClick, onMenuButtonClick(Key): " + a() + " return false.");
                    a(1.0f);
                } else if (2 != L()) {
                    if (I()) {
                        int H = H();
                        if (f.a()) {
                            f.c();
                        }
                        int i2 = this.j;
                        if (H < 2) {
                            i = i2;
                        } else if (i2 < H - 1) {
                            i = i2 + 1;
                        }
                        g(i);
                        if (!a().equals("pref_filter_menu")) {
                            o();
                        }
                    } else if (f()) {
                        n();
                    } else {
                        m();
                    }
                    a(1.0f);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void r() {
        h hVar = this.k;
        if (hVar != null) {
            hVar.a();
            super.r();
            a((View) null);
        }
    }

    public int s() {
        h hVar = this.k;
        return hVar != null ? hVar.getViewWidth() : super.s();
    }

    public int t() {
        h hVar = this.k;
        return hVar != null ? hVar.getViewHeight() : super.t();
    }
}
