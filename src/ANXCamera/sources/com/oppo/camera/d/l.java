package com.oppo.camera.d;

import android.app.Activity;
import android.util.Size;
import android.view.MotionEvent;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.e.h;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SuperMacroMode */
public class l extends e {
    public l(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    public boolean P() {
        super.P();
        return false;
    }

    public void X() {
        super.X();
        if (this.N != null) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (l.this.M != null) {
                        l.this.M.a(R.string.camera_super_macro_capture_hint, -1, true, false, false);
                    }
                }
            });
        }
    }

    public String a() {
        return "macro";
    }

    public List<String> a(String str, int i) {
        if (!"pref_camera_flashmode_key".equals(str)) {
            return super.a(str, i);
        }
        String[] strArr = null;
        if (a.c(i)) {
            return null;
        }
        List<String> supportedList = CameraConfig.getSupportedList(str, i);
        if (supportedList == null) {
            supportedList = new ArrayList<>();
            if ("pref_camera_flashmode_key".equals(str)) {
                strArr = this.N.getResources().getStringArray(R.array.macro_flash_mode_values);
            }
            if (strArr != null) {
                for (String add : strArr) {
                    supportedList.add(add);
                }
            }
        }
        return supportedList;
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        d.e("SuperMacroMode", "onResume");
        this.M.a(0, false);
        super.a(z);
    }

    public boolean a(String str) {
        if ("pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.a(str);
    }

    public boolean at() {
        return true;
    }

    public int b() {
        return 32808;
    }

    public Size b(h hVar) {
        return com.oppo.camera.o.d.b(hVar.a(256), 1.3333333333333333d);
    }

    public boolean b(String str) {
        if ("pref_camera_hdr_mode_key".equals(str)) {
            return false;
        }
        return super.b(str);
    }

    public void bp() {
    }

    public boolean c() {
        return false;
    }

    public boolean c(MotionEvent motionEvent) {
        if (d("pref_support_night_process")) {
            return true;
        }
        return super.c(motionEvent);
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return this.N.getString(R.string.camera_picture_size_standard);
    }

    public boolean cu() {
        return true;
    }

    public boolean d(String str) {
        if (!"pref_support_switch_camera".equals(str) && !"pref_burst_shot_key".equals(str) && !"pref_camera_vivid_effect_key".equals(str) && !"pref_support_fast_capture".equals(str) && !"pref_camera_hdr_mode_key".equals(str) && !CameraFunction.FACE_BEAUTY_PROCESS.equals(str) && !CameraFunction.FACE_SLENDER_PROCESS.equals(str) && !"key_beauty3d".equals(str) && !"pref_ai_scene_key".equals(str) && !"pref_mirror_key".equals(str) && !"pref_none_sat_ultra_wide_angle_key".equals(str) && !"key_high_picture_size".equals(str) && !"pref_zoom_key".equals(str)) {
            if ("pref_support_post_view".equals(str)) {
                return (this.L == null || this.L.g()) && !F();
            }
            if (!"pref_support_raw_post_process".equals(str) && !"pref_support_night_process".equals(str)) {
                if ("pref_auto_night_scence_key".equals(str)) {
                    return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_COMMON_AUTO_NIGHT_SCENCE);
                }
                if ("pref_expand_popbar_key".equals(str)) {
                    return this.M.m();
                }
                if ("pref_camera_gradienter_key".equals(str) || CameraFunction.MODE_PANEL.equals(str)) {
                    return false;
                }
                if ("pref_filter_menu".equals(str) || "key_fixed_focus_lens_support_tap_shutter".equals(str) || "key_fixed_focus_lens_support_metering".equals(str)) {
                    return true;
                }
                if (!"key_support_no_face_forbid_beauty".equals(str) && !"key_support_mode_change_vibrate".equals(str)) {
                    return super.d(str);
                }
                return false;
            }
        }
        return false;
    }

    public boolean e() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void i() {
        d.e("SuperMacroMode", "OnStop");
    }

    /* access modifiers changed from: protected */
    public void l() {
        d.a("SuperMacroMode", "onDeInitCameraMode()");
        this.M.b((int) R.string.camera_super_macro_capture_hint);
        super.l();
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        d.b("SuperMacroMode", "onBeforeSnapping, mRawCaptureNum: " + this.Z + ", mNightState: " + this.W);
        return super.n();
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return false;
    }
}
