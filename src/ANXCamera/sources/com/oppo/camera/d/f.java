package com.oppo.camera.d;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.a;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.i;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;

/* compiled from: CommonVideoMode */
public class f extends m {
    private static final boolean af = "0".equals(DebugUtil.getDebugProperty("oppo.camera.disable.videoeis", "0"));
    private boolean ag = false;
    private Range<Integer> ah = Range.create(60, 60);
    private Range<Integer> ai = Range.create(30, 30);
    private boolean aj = false;

    public f(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    private boolean cJ() {
        boolean z = bc() != 0;
        boolean z2 = aW() != 0;
        d.e("CommonVideoMode", "checkSpecialEffectSwitch, isFilterSwitchOn: " + z + ", isFaceBeatySwitchOn: " + z2);
        return z2 || z;
    }

    private boolean cK() {
        return !"".equals(this.O.getString("pref_lasted_video_fps", "")) && !"".equals(this.O.getString("pref_lasted_video_size", ""));
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0096  */
    /* JADX WARNING: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    public void cL() {
        String cY = cY();
        int i = 0;
        boolean z = 60 == cZ() && !a.c(this.j);
        int aW = aW();
        if ("video_size_4kuhd".equals(cY) || "video_size_1080p".equals(cY) || z) {
            if (this.M.w()) {
                this.M.b(false, true, false);
            }
            if (aW != 0) {
                SharedPreferences.Editor edit = this.O.edit();
                edit.putInt(aX(), 0);
                edit.commit();
                this.M.k(0);
                j(i);
                a(bO());
                if (this.P != null) {
                    this.P.g(i);
                    return;
                }
                return;
            }
        } else {
            int i2 = this.O.getInt(bL()[0], h(0));
            if (!(i2 == 0 || i2 == -100000)) {
                i = 102;
            }
            if (aW != i) {
                SharedPreferences.Editor edit2 = this.O.edit();
                edit2.putInt(aX(), i);
                edit2.commit();
                this.M.k(i);
                j(i);
                a(bO());
                if (this.P != null) {
                }
            }
        }
        i = aW;
        j(i);
        a(bO());
        if (this.P != null) {
        }
    }

    /* access modifiers changed from: private */
    public void cX() {
        int bc = bc();
        String cY = cY();
        boolean z = 60 == cZ() && !a.c(this.j);
        if ("video_size_4kuhd".equals(cY) || (z && bc != 0)) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putInt(be(), 0);
            edit.commit();
            this.M.a(aR(), 0);
            n(0);
        }
    }

    private String cY() {
        return this.O.getString("pref_video_size_key", cG());
    }

    private int cZ() {
        return Integer.valueOf(this.O.getString("pref_video_fps_key", this.N.getString(R.string.camera_video_default_fps))).intValue();
    }

    private boolean da() {
        boolean z = false;
        if (a.c(this.j)) {
            return false;
        }
        if (30 == cZ()) {
            d.a("CommonVideoMode", "isHighFps false, videoFps: 30");
            return false;
        } else if (this.aj) {
            d.e("CommonVideoMode", "isHighFps, force30fps");
            return false;
        } else {
            String cY = cY();
            if (("video_size_720p".equals(cY) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_720_60_FPS)) || (("video_size_1080p".equals(cY) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_1080_60_FPS)) || ("video_size_4kuhd".equals(cY) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_4K_60_FPS)))) {
                if (60 == cZ()) {
                    z = true;
                }
                d.a("CommonVideoMode", "isHighFps, isHighFps: " + z);
            }
            return z;
        }
    }

    private void db() {
        d.a("CommonVideoMode", "onHighFpsStateChange");
        if (!d("key_support_video_high_fps")) {
            d.a("CommonVideoMode", "onHighFpsStateChange, not support high fps, so return");
            return;
        }
        if (this.M != null && da() && !this.M.x()) {
            this.M.a(R.string.camera_video_fps_60, -1, true, false, false);
        }
        if (this.K != null) {
            this.K.a((f.c) null);
        }
    }

    private void dc() {
        String string = this.O.getString("pref_video_fps_key", this.N.getString(R.string.camera_video_default_fps));
        String string2 = this.N.getString(R.string.camera_video_default_fps);
        d.b("CommonVideoMode", "setFpsToDefault, nowVideoFPS: " + string);
        if (!TextUtils.equals(string, string2)) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_video_fps_key", this.N.getString(R.string.camera_video_default_fps));
            edit.apply();
        }
    }

    private void e(boolean z, boolean z2) {
        boolean cJ = cJ();
        boolean z3 = this.O.getBoolean("pref_lasted_video_save_status", false);
        d.a("CommonVideoMode", "restoreSpecialEffectStatus, afterStatus: " + cJ + ", beforeStatus: " + z3 + ", isClickFaceBeauty: " + z2);
        SharedPreferences.Editor edit = this.O.edit();
        if ((cJ || z2) && !z3) {
            edit.putBoolean("pref_lasted_video_save_status", true);
            edit.putString("pref_lasted_video_fps", String.valueOf(bP()));
            edit.putString("pref_lasted_video_size", cY());
            edit.apply();
            boolean z4 = this.O.getString("pref_video_size_key", (String) null) == null;
            boolean z5 = this.O.getString("pref_video_fps_key", (String) null) == null;
            if (z4) {
                d.b("CommonVideoMode", "set video size pref value");
                this.L.b(true);
                this.O.edit().putString("pref_video_size_key", cY()).apply();
                this.L.b(false);
            }
            if (z5) {
                d.b("CommonVideoMode", "set fps pref value");
                this.L.b(true);
                this.O.edit().putString("pref_video_fps_key", String.valueOf(bP())).apply();
                this.L.b(false);
            }
            d.a("CommonVideoMode", "restoreSpecialEffectStatus, save status");
        } else if (!cJ && z3) {
            this.O.edit().putBoolean("pref_lasted_video_save_status", false).apply();
            if (cK()) {
                if (z) {
                    this.L.b(true);
                }
                d.a("CommonVideoMode", "restoreSpecialEffectStatus, read status");
                edit.putString("pref_video_fps_key", this.O.getString("pref_lasted_video_fps", this.N.getString(R.string.camera_video_default_fps)));
                edit.putString("pref_video_size_key", this.O.getString("pref_lasted_video_size", cG()));
                edit.putString("pref_lasted_video_fps", "");
                edit.putString("pref_lasted_video_size", "");
                edit.apply();
                if (z) {
                    this.L.b(false);
                }
                db();
            }
        }
    }

    private boolean n(String str) {
        return "pref_video_filter_menu".equals(str) || "pref_filter_menu".equals(str) || "pref_video_facebeauty_level_menu".equals(str) || "key_filter_index".equals(str) || "key_video_filter_index".equals(str);
    }

    public void I() {
        super.I();
        e(true, false);
    }

    public void X() {
        super.X();
        if (this.ag) {
            this.M.n(true);
            this.ag = false;
        }
    }

    public boolean Z() {
        return bY();
    }

    public String a() {
        return "commonVideo";
    }

    public void a(int i, int i2, boolean z) {
        super.a(i, i2, z);
        d.a("CommonVideoMode", "onFaceBeautyItemValueChange, mbForce30fps: " + this.aj);
        if (aW() != 0) {
            this.aj = true;
        }
        db();
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        super.a(sharedPreferences, str);
        if (n(str)) {
            e(false, false);
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        this.aj = false;
        cB();
        super.a(z);
    }

    public void a(boolean z, boolean z2, boolean z3, boolean z4) {
        String cY = cY();
        boolean z5 = 60 == cZ() && !a.c(this.j) && z3;
        boolean equals = "on".equals(this.O.getString("pref_none_sat_ultra_wide_angle_key", this.N.getString(R.string.ultra_wide_angle_default_value)));
        int bc = bc();
        d.a("CommonVideoMode", "checkForceChangeTo1080P, isHighfps: " + z5 + ", filterIndex: " + bc + ", isNoneSatUltraWideAngleMenuOpen: " + equals);
        if (!this.L.g()) {
            return;
        }
        if (!"video_size_4kuhd".equals(cY) && !z5) {
            return;
        }
        if (bc != 0 || equals) {
            if (z) {
                this.L.b(true);
            }
            if ("video_size_4kuhd".equals(cY)) {
                i.a aVar = (i.a) this.O.edit();
                aVar.a("pref_video_size_key", "video_size_1080p", z4);
                aVar.apply();
            }
            dc();
            if (z) {
                this.L.b(false);
            }
            if (z2) {
                this.M.d("pref_video_size_key");
            }
            if (!z) {
                this.aj = true;
            }
            d.a("CommonVideoMode", "checkForceChangeTo720P, mbForce30fps: " + this.aj);
        }
    }

    public boolean aU() {
        String cY = cY();
        boolean z = 60 == cZ() && !a.c(this.j);
        d.a("CommonVideoMode", "onFaceBeautyMenuClick, videoSizeType: " + cY + " isHighfps: " + z);
        if (!"video_size_4kuhd".equals(cY) && !"video_size_1080p".equals(cY) && !z) {
            return true;
        }
        this.ag = true;
        e(false, true);
        if (z) {
            this.aj = true;
            db();
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_video_fps_key", this.N.getString(R.string.camera_video_default_fps));
            edit.apply();
        }
        SharedPreferences.Editor edit2 = this.O.edit();
        edit2.putString("pref_video_size_key", "video_size_720p");
        edit2.commit();
        int aW = aW();
        int i = this.O.getInt(bL()[0], h(0));
        int i2 = (i == 0 || i == -100000) ? 0 : 102;
        if (aW != i2) {
            SharedPreferences.Editor edit3 = this.O.edit();
            edit3.putInt(aX(), i2);
            edit3.commit();
            this.M.k(i2);
        }
        this.M.d("pref_video_size_key");
        this.M.a(false, false);
        this.M.b(false);
        this.M.o(false);
        this.aj = true;
        return false;
    }

    /* access modifiers changed from: protected */
    public String aX() {
        return "pref_video_facebeauty_level_menu";
    }

    public void an() {
        this.M.a(new com.oppo.camera.ui.control.c(5, "button_color_inside_red", "button_shape_ring_none", 1));
        super.an();
        if (this.K != null) {
            if (com.oppo.camera.o.d.w()) {
                this.K.n(1);
            } else {
                this.K.a(a.b(this.j, this.L.k()));
            }
            this.K.a((f.c) null);
        }
    }

    public void ap() {
        this.M.a(new com.oppo.camera.ui.control.c(6, "button_color_inside_red", "button_shape_ring_none", 1));
        super.ap();
    }

    public int b() {
        if (a.c(this.j) || !d("key_support_fovc")) {
            return 32779;
        }
        return (!d("key_support_video_high_fps") || 60 != cZ()) ? 33547 : 32801;
    }

    public void b(int i) {
        super.b(i);
    }

    public void bD() {
        if (cM()) {
            this.M.a(-1, R.drawable.torch_hint_icon, false, true, false);
        } else {
            this.M.a(false, true, true);
        }
    }

    public void bH() {
        super.bH();
        this.M.d("pref_video_size_key");
    }

    /* access modifiers changed from: protected */
    public int[] bO() {
        String[] bL = bL();
        if (bL == null) {
            d.d("CommonVideoMode", "getCustomBeautyValues, customBeautyKeys null");
            return null;
        }
        int[] iArr = new int[bL.length];
        if (d(CameraFunction.FACE_BEAUTY_CUSTOM)) {
            for (int i = 0; i < bL.length; i++) {
                if (this.O != null) {
                    iArr[i] = this.O.getInt(bL[i], f[i]);
                } else {
                    iArr[i] = f[i];
                }
            }
        } else if (d(CameraFunction.FACE_BEAUTY_COMMON)) {
            if (this.O != null) {
                iArr[0] = this.O.getInt(bL[0], a.c(this.j) ? 40 : 0);
            } else {
                iArr[0] = 0;
            }
            for (int i2 = 1; i2 < bL.length; i2++) {
                iArr[i2] = 0;
            }
        } else {
            for (int i3 = 0; i3 < bL.length; i3++) {
                iArr[i3] = 0;
            }
        }
        return iArr;
    }

    public int bP() {
        return d("key_support_video_high_fps") ? cZ() : Integer.valueOf(this.N.getString(R.string.camera_video_default_fps)).intValue();
    }

    public void bg() {
        super.bg();
        a(false, true, true, true);
    }

    public boolean bu() {
        return cM();
    }

    public Size c(h hVar) {
        Size l = l(bQ());
        return l != null ? l : super.c(hVar);
    }

    public void c(boolean z, boolean z2) {
        if (!cM()) {
            this.M.a(false, true, true);
        }
    }

    public boolean c(String str) {
        if (!"pref_face_detection_key".equals(str) || !bY()) {
            return super.c(str);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void cA() {
        super.cA();
        db();
    }

    public void cB() {
        String string = this.O.getString("pref_none_sat_ultra_wide_angle_key", this.N.getString(R.string.ultra_wide_angle_default_value));
        boolean z = cZ() >= 60 && !a.c(this.j);
        boolean equals = "video_size_4kuhd".equals(cY());
        boolean equals2 = "on".equals(string);
        d.a("CommonVideoMode", "checkForceCloseNoneSatUltraWideAngle, isHighfps: " + z + ", is4K: " + equals + ", isNoneSatUltraWideAngleMenuOpen: " + equals2);
        if (this.L.g() && equals2) {
            if (z || equals) {
                i.a aVar = (i.a) this.O.edit();
                aVar.a("pref_none_sat_ultra_wide_angle_key", com.oppo.camera.c.a_, true);
                aVar.apply();
            }
        }
    }

    /* access modifiers changed from: protected */
    public int cC() {
        return da() ? 60 : 30;
    }

    /* access modifiers changed from: protected */
    public Integer cD() {
        return Integer.valueOf(da() ? 60 : 30);
    }

    /* access modifiers changed from: protected */
    public boolean cE() {
        return this.L.g() && (F() || ba());
    }

    /* access modifiers changed from: protected */
    public void cF() {
        if (bY() && d("pref_video_eis")) {
            d.a("CommonVideoMode", "releaseEisFrame");
            this.K.n(0);
            final ConditionVariable conditionVariable = new ConditionVariable();
            this.K.a((f.d) new f.d() {
                public void a() {
                    conditionVariable.open();
                }

                public void b() {
                    d.a("CommonVideoMode", "onBeforeRequest, do nothing before request");
                }
            });
            conditionVariable.block(1000);
        }
    }

    public String cG() {
        return CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", this.j);
    }

    public boolean cd() {
        return da();
    }

    public void cf() {
        d.a("CommonVideoMode", "onEffectMenuPopDown, mbForce30fps: " + this.aj);
        this.aj = false;
        db();
        e(false, false);
    }

    /* access modifiers changed from: protected */
    public boolean cp() {
        return false;
    }

    public boolean cu() {
        return false;
    }

    public void cy() {
    }

    public Range<Integer> d() {
        if (!d("key_support_video_high_fps")) {
            return null;
        }
        return da() ? this.ah : this.ai;
    }

    public boolean d(String str) {
        if ("key_fixed_focus_lens_support_metering".equals(str) && this.L.W()) {
            return true;
        }
        if ("pref_video_size_key".equals(str)) {
            return this.L.g();
        }
        if (CameraFunction.MODE_PANEL.equals(str)) {
            return true;
        }
        if ("pref_camera_videoflashmode_key".equals(str)) {
            return !a.c(this.j);
        }
        if ("pref_camera_tap_shutter_key".equals(str) || "pref_time_lapse_key".equals(str) || "pref_camera_assistant_line_key".equals(str) || "pref_camera_gesture_shutter_key".equals(str)) {
            return false;
        }
        if ("pref_expand_popbar_key".equals(str)) {
            return this.M.m() || this.M.w();
        }
        if ("pref_filter_process_key".equals(str)) {
            return this.L != null && this.L.g();
        }
        if (!"pref_support_high_temperature_ultimate_limit".equals(str)) {
            if (ConfigDataBase.KEY_VIDEO_EIS.getName().equals(str)) {
                d.a("CommonVideoMode", "getSupportFunction, KEY_VIDEO_EIS: " + CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_VIDEO_EIS));
            }
            if (CameraFunction.FACE_BEAUTY_PROCESS.equals(str)) {
                return this.L != null && this.L.g() && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_FACE_BEAUTY);
            }
            if (CameraFunction.FACE_SLENDER_PROCESS.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS);
            }
            if (CameraFunction.FACE_BEAUTY_COMMON.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS);
            }
            if ("pref_camera_videoflashmode_key".equals(str)) {
                return !a.c(this.j);
            }
            if ("key_support_no_face_forbid_beauty".equals(str)) {
                return !a.c(this.j);
            }
            if ("pref_video_eis".equals(str) && !a.c(this.j) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_VIDEO_EIS) && af && ("video_size_720p".equals(this.X) || "video_size_1080p".equals(this.X))) {
                return true;
            }
            if (!"key_support_video_high_fps".equals(str)) {
                return "pref_support_ipa_process".equals(str) ? com.oppo.camera.o.d.w() : "pref_camera_torch_mode_key".equals(str) ? d(CameraFunction.TORCH_SOFT_LIGHT) : CameraFunction.TORCH_SOFT_LIGHT.equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT) && a.c(this.j) : "pref_none_sat_ultra_wide_angle_key".equals(str) ? !a.c(this.j) && bs() && this.L.g() : super.d(str);
            }
            String bQ = bQ();
            boolean configBooleanValue = "video_size_720p".equals(bQ) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_720_60_FPS) : "video_size_1080p".equals(bQ) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_1080_60_FPS) : "video_size_4kuhd".equals(bQ) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_4K_60_FPS) : false;
            d.a("CommonVideoMode", "getSupportFunction, sizeType: " + bQ + ", isSupportHps: " + configBooleanValue);
            return this.L.g() && !a.c(this.j) && configBooleanValue;
        } else if (!TextUtils.equals(this.X, "video_size_4kuhd")) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P) && !a.c(this.j) && (TextUtils.equals(this.X, "video_size_1080p") || TextUtils.equals(this.X, "video_size_720p"));
        } else {
            return true;
        }
    }

    public void e(boolean z) {
        super.e(z);
        o(true);
    }

    /* access modifiers changed from: protected */
    public void h() {
        super.h();
        this.ag = false;
    }

    public void i(int i) {
        if (!this.s && aW() != i && this.L.e() == 1 && !bY()) {
            super.i(i);
        }
    }

    /* access modifiers changed from: protected */
    public void l() {
        super.l();
        if (this.K != null && d(ConfigDataBase.KEY_VIDEO_EIS.getName())) {
            this.K.n(0);
        }
        if (this.M != null) {
            this.M.s();
        }
        this.aj = false;
    }

    public void l(int i) {
        if (this.P != null) {
            this.P.a(o(i));
            if (!d(CameraFunction.FILTER_VIGNETTE) || !"oppo_video_filter_olympus".equals(o(i))) {
                this.P.b(false);
            } else {
                this.P.b(true);
            }
        }
        if (i == 0) {
            this.aj = false;
        }
        super.l(i);
        a(false, true, false, false);
        if (bc() != 0) {
            d.a("CommonVideoMode", "onFilterItemChange");
            this.aj = true;
            db();
            dc();
        }
    }

    /* access modifiers changed from: protected */
    public void m() {
        super.m();
        if (this.K != null) {
            if (com.oppo.camera.o.d.w()) {
                this.K.n(0);
            } else if (d(ConfigDataBase.KEY_VIDEO_EIS.getName())) {
                this.K.n(1);
                this.K.a((f.c) null);
            }
        }
        if (this.W != null) {
            this.W.post(new Runnable() {
                public void run() {
                    if (f.this.L.g()) {
                        f.this.cL();
                        f.this.cX();
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void n(boolean z) {
        if (this.K != null && com.oppo.camera.o.d.w()) {
            this.K.n(0);
            this.K.a((f.c) null);
        }
        super.n(z);
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        return bY();
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return false;
    }
}
