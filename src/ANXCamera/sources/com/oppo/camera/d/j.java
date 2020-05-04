package com.oppo.camera.d;

import android.app.Activity;
import android.content.Context;
import android.util.Size;
import android.view.MotionEvent;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.e.h;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import java.util.List;

/* compiled from: NightMode */
public class j extends e {
    private long aa = Long.MAX_VALUE;
    private long ab = 201326592;
    private String[] ac = {"ALGO_SUPERNIGHT"};

    public j(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    public boolean B() {
        return false;
    }

    public boolean P() {
        super.P();
        return false;
    }

    public boolean Y() {
        if (!bE() || this.L == null || this.L.a(ImageProcessService.a.CHECK_QUEUE_TYPE_NIGHT)) {
            return super.Y();
        }
        d.b("NightMode", "onMemoryStateChecked, memory is not enough");
        return false;
    }

    public String a() {
        return "night";
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        d.e("NightMode", "onResume");
        super.a(z);
    }

    public boolean a(String str) {
        return false;
    }

    public int ac() {
        return 32;
    }

    public boolean at() {
        return false;
    }

    public int b() {
        return 32793;
    }

    public Size b(h hVar) {
        String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
        if (d("key_supernight_picture_size")) {
            Size size = null;
            List<Size> listSizeConfigValue = a.i() == a(this.j) ? CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_SUPERNIGHT_PICTURE_SIZE) : a.c(this.j) ? CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_FRONT_SUPERNIGHT_PICTURE_SIZE) : null;
            if ("standard".equals(string)) {
                size = com.oppo.camera.o.d.b(listSizeConfigValue, 1.3333333333333333d);
            } else if ("full".equals(string)) {
                size = com.oppo.camera.o.d.b(listSizeConfigValue, com.oppo.camera.o.d.P());
            } else if ("square".equals(string)) {
                size = com.oppo.camera.o.d.b(listSizeConfigValue, 1.0d);
            }
            if (size != null) {
                d.b("NightMode", "getPictureSize, nightOptimalSize: " + size);
                return size;
            }
        }
        return super.b(hVar);
    }

    public DcsMsgData b(DcsMsgData dcsMsgData, v.a aVar) {
        CaptureMsgData captureMsgData;
        if (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) {
            captureMsgData = null;
        } else {
            captureMsgData = (CaptureMsgData) dcsMsgData;
            Size a2 = v.a(com.oppo.camera.o.d.a(aVar.d));
            if (a2 != null) {
                captureMsgData.mWidth = String.valueOf(a2.getWidth());
                captureMsgData.mHeight = String.valueOf(a2.getHeight());
            }
        }
        return super.b((DcsMsgData) captureMsgData, aVar);
    }

    public boolean b(String str) {
        if ("pref_camera_hdr_mode_key".equals(str) || "pref_camera_torch_mode_key".equals(str)) {
            return false;
        }
        if ("pref_camera_photo_ratio_key".equals(str) || "pref_camera_timer_shutter_key".equals(str)) {
            return true;
        }
        return super.b(str);
    }

    /* access modifiers changed from: protected */
    public boolean bE() {
        return this.W != 0 && this.aa >= this.ab;
    }

    public void bp() {
    }

    public boolean c() {
        return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_FRONT_SUPERNIGHT);
    }

    public boolean c(MotionEvent motionEvent) {
        if (d("pref_support_night_process")) {
            return true;
        }
        return super.c(motionEvent);
    }

    public boolean cu() {
        return false;
    }

    /* access modifiers changed from: protected */
    public int cx() {
        if (!br() || !this.L.W()) {
            return -1;
        }
        return R.string.ultra_wide_angle_toast;
    }

    public Size d(h hVar) {
        if (d("key_supernight_picture_size")) {
            List<Size> list = null;
            if (a.i() == a(this.j)) {
                list = CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_SUPERNIGHT_PICTURE_SIZE);
            } else if (a.c(this.j)) {
                list = CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_FRONT_SUPERNIGHT_PICTURE_SIZE);
            }
            Size b2 = com.oppo.camera.o.d.b(list, 1.3333333333333333d);
            if (b2 != null) {
                d.b("NightMode", "getRawSize, nightOptimalSize: " + b2);
                return b2;
            }
        }
        return super.d(hVar);
    }

    public boolean d(String str) {
        if (!"pref_filter_process_key".equals(str) && !"pref_burst_shot_key".equals(str) && !"pref_camera_vivid_effect_key".equals(str) && !"pref_support_fast_capture".equals(str) && !"pref_camera_flashmode_key".equals(str) && !"pref_camera_torch_mode_key".equals(str) && !"pref_camera_hdr_mode_key".equals(str) && !"key_beauty3d".equals(str) && !"pref_ai_scene_key".equals(str) && !"pref_camera_pi_mode_key".equals(str) && !"key_high_picture_size".equals(str) && !"pref_camera_gesture_shutter_key".equals(str)) {
            if (CameraFunction.FACE_BEAUTY_PROCESS.equals(str) || CameraFunction.FACE_SLENDER_PROCESS.equals(str)) {
                return a.c(this.j) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_FRONT_SUPERNIGHT);
            }
            if ("pref_support_switch_camera".equals(str) || "pref_mirror_key".equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_FRONT_SUPERNIGHT);
            }
            if ("pref_support_post_view".equals(str)) {
                return (this.L == null || this.L.g()) && !F();
            }
            if ("pref_support_raw_post_process".equals(str) || "pref_support_night_process".equals(str)) {
                return true;
            }
            if ("pref_auto_night_scence_key".equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_COMMON_AUTO_NIGHT_SCENCE);
            }
            if ("pref_expand_popbar_key".equals(str)) {
                return this.M.m();
            }
            if (!"pref_camera_gradienter_key".equals(str) && !CameraFunction.MODE_PANEL.equals(str) && !"pref_filter_menu".equals(str) && !"key_support_no_face_forbid_beauty".equals(str)) {
                return "key_supernight_picture_size".equals(str) ? (CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_SUPERNIGHT_PICTURE_SIZE) == null && CameraConfig.getListSizeConfigValue(ConfigDataBase.KEY_FRONT_SUPERNIGHT_PICTURE_SIZE) == null) ? false : true : "pref_none_sat_ultra_wide_angle_key".equals(str) ? !a.c(this.j) && br() : super.d(str);
            }
            return false;
        }
    }

    public boolean e() {
        return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_NIGHT);
    }

    /* access modifiers changed from: protected */
    public void h() {
        d.a("NightMode", "onPause");
        super.h();
    }

    /* access modifiers changed from: protected */
    public void i() {
        d.e("NightMode", "OnStop");
    }

    /* access modifiers changed from: protected */
    public void j() {
        d.a("NightMode", "onDestroy");
        super.j();
    }

    /* access modifiers changed from: protected */
    public void k() {
        d.a("NightMode", "onInitCameraMode");
        super.k();
        this.V.put(a(), this.ac);
    }

    /* access modifiers changed from: protected */
    public void l() {
        d.a("NightMode", "onDeInitCameraMode()");
        super.l();
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        this.aa = com.oppo.camera.o.d.e((Context) this.N);
        this.Z = p();
        if (this.Z >= 0) {
            this.ab = (Long.valueOf((long) this.Z).longValue() * 25165824) + 10485760;
        }
        d.b("NightMode", "onBeforeSnapping, mRawCaptureNum: " + this.Z + ", mNightState: " + this.W + ", mAvailMemory: " + this.aa + ", mNightCaptureMemory: " + this.ab);
        boolean n = super.n();
        if (n && !this.X) {
            if (!bE()) {
                this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                        cVar.a("button_color_inside_none");
                        cVar.a(4);
                        j.this.M.a(cVar);
                    }
                });
            } else {
                this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        j.this.M.a(R.string.camera_scene_night_tips, -1, false, false, true);
                        j.this.Y = true;
                    }
                });
            }
        }
        return n;
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return false;
    }
}
