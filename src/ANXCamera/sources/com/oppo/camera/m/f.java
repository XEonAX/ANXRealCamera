package com.oppo.camera.m;

import android.app.Activity;
import android.content.SharedPreferences;
import android.util.Range;
import android.util.Size;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.d.b;
import com.oppo.camera.d.m;
import com.oppo.camera.d.n;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.camera.m.a;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;

/* compiled from: SlowVideoMode */
public class f extends m {
    private boolean af = false;
    private Integer ag = null;
    /* access modifiers changed from: private */
    public boolean ah = false;
    private boolean ai = false;
    private a aj;
    private final a.C0062a ak = new a.C0062a() {
        public void a(String str) {
            try {
                boolean unused = f.this.a(f.this.cP(), str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            f.this.cL();
            boolean unused2 = f.this.ah = false;
            d.a("SlowVideoMode", "onProcessFinished !");
        }

        public void b(String str) {
            f.this.m(str);
            f fVar = f.this;
            fVar.m(fVar.cP());
            f.this.cL();
            boolean unused = f.this.ah = false;
            d.e("SlowVideoMode", "onCompileFailed !");
        }
    };

    public f(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    private String cB() {
        return this.O.getString("pref_slow_video_frame_key", this.N.getString(R.string.camera_slow_video_default_value));
    }

    private a cJ() {
        a aVar = this.aj;
        if (aVar == null || !aVar.a().equals(cB())) {
            cK();
            this.aj = e.a(cB(), this.N, this.M);
        }
        d.a("SlowVideoMode", "fpsModeInstanceWrap fpsMode: " + this.aj.a());
        return this.aj;
    }

    private void cK() {
        if (this.aj != null) {
            d.a("SlowVideoMode", "destroyFpsMode mbCompilingVideo: " + this.ah);
            if (this.ah) {
                this.aj.h();
            }
            this.aj.i();
            this.aj = null;
        }
    }

    /* access modifiers changed from: private */
    public void cL() {
        if (this.M != null) {
            this.M.a(this.aj.a(1));
            this.M.c(true);
            this.M.a(true, true);
            this.M.c(true, true);
            this.M.e(true, true);
            d.b("SlowVideoMode", "enableUIView now !");
        }
    }

    public int E() {
        if (!bY()) {
            return 10;
        }
        if ("video_size_1080p".equals(bQ())) {
            int configIntValue = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_1080P);
            if (configIntValue > 0) {
                return (configIntValue * 5) / 30;
            }
            return 40;
        }
        int configIntValue2 = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_720P);
        if (configIntValue2 > 0) {
            return (configIntValue2 * 5) / 30;
        }
        return 80;
    }

    public void X() {
        super.X();
        if (!this.af && this.N != null) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (f.this.M != null) {
                        f.this.M.a(R.string.camera_slow_video_tips, -1, true, false, false);
                    }
                }
            });
            this.af = true;
        }
    }

    public boolean Z() {
        return false;
    }

    public String a() {
        return "slowVideo";
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        d.a("SlowVideoMode", "onSharedPreferenceChanged, key: " + str);
        if ("pref_slow_video_frame_key".equals(str)) {
            cJ();
        } else {
            super.a(sharedPreferences, str);
        }
    }

    /* access modifiers changed from: protected */
    public void a(n nVar) {
        if (nVar != null) {
            this.aj.a(nVar);
        }
    }

    /* access modifiers changed from: protected */
    public boolean a(long j) {
        this.ai = j > ((long) this.aj.e());
        return this.ai;
    }

    public void an() {
        int e = this.aj.e();
        if (e > 0 && Integer.MAX_VALUE != e) {
            this.M.i(e);
        }
        this.M.a(this.aj.a(2));
        this.ai = false;
        super.an();
    }

    public void ao() {
        this.K.d(E());
        if (com.oppo.camera.o.d.w()) {
            this.K.a(1, com.oppo.camera.a.a(), com.oppo.camera.a.a(), false);
        }
        this.K.a((f.c) null);
    }

    public void ap() {
        com.oppo.camera.ui.control.c a2 = this.aj.a(1);
        if (this.aj.b()) {
            if (!this.ai || !this.aj.a(this.ad, cP())) {
                this.M.d(true, false);
                m(cP());
            } else {
                this.ah = true;
                this.aj.a(this.ak);
                a2 = this.aj.a(3);
            }
            d.a("SlowVideoMode", "afterStopRecording, getVideoFileName: " + cP() + ", mbAutoStopRecord: " + this.ai + ", mbCompilingVideo: " + this.ah);
        }
        this.M.a(a2);
        this.K.d(E());
        this.K.a(3, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
        this.K.a((f.c) null);
        super.ap();
    }

    public boolean at() {
        return false;
    }

    public int b() {
        return (com.oppo.camera.e.a.c(this.j) || !d("key_support_fovc")) ? 32781 : 33549;
    }

    public boolean b(String str) {
        return "pref_camera_videoflashmode_key".equals(str) ? !com.oppo.camera.e.a.c(this.j) : "pref_slow_video_frame_key".equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_SLOWVIDEO_1080P) : super.b(str);
    }

    public void bD() {
        if (cM()) {
            this.M.a(-1, R.drawable.torch_hint_icon, false, true, false);
        } else {
            this.M.a(false, true, true);
        }
    }

    public int bP() {
        return cC();
    }

    public String bQ() {
        return e.a(cB());
    }

    public boolean bV() {
        boolean bV = super.bV();
        if (bV) {
            this.aj.f();
        }
        return bV;
    }

    public boolean bW() {
        boolean bW = super.bW();
        if (bW) {
            this.aj.g();
        }
        return bW;
    }

    public boolean bu() {
        return cM();
    }

    public Size c(h hVar) {
        d.a("SlowVideoMode", "getPreviewSize");
        Size l = l(bQ());
        return l != null ? l : super.c(hVar);
    }

    public void c(boolean z, boolean z2) {
        if (!cM()) {
            this.M.a(false, true, true);
        }
    }

    public boolean c() {
        return false;
    }

    public boolean c(String str) {
        if (!"pref_face_detection_key".equals(str) || !bY()) {
            return super.c(str);
        }
        return false;
    }

    public Integer cD() {
        return this.ag;
    }

    public String cG() {
        return e.a(this.N.getString(R.string.camera_slow_video_default_value));
    }

    public Float cN() {
        return super.cN();
    }

    /* access modifiers changed from: protected */
    public String cO() {
        String bQ = bQ();
        if ("video_size_1080p".equals(bQ)) {
            return "slow_motion_hfr_" + CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_1080P) + ":0,0,0,0";
        } else if (!"video_size_720p".equals(bQ)) {
            return super.cO();
        } else {
            return "slow_motion_hfr_" + CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_720P) + ":0,0,0,0";
        }
    }

    /* access modifiers changed from: protected */
    public int cQ() {
        if (this.X.equals("video_size_1080p")) {
            return YuvProcessUtil.ExifInfo.EXPOSURE_BIAS_MULTIPLE;
        }
        return 7500000;
    }

    /* access modifiers changed from: protected */
    public boolean cU() {
        return this.aj.c();
    }

    /* access modifiers changed from: protected */
    public boolean cV() {
        return this.aj.d();
    }

    public boolean cW() {
        return "H265".equals(this.O.getString("pref_video_codec_key", this.N.getString(R.string.camera_video_codec_default_value)));
    }

    public boolean cb() {
        return this.aj.b();
    }

    public boolean cc() {
        return this.aj.b() && this.ah;
    }

    /* access modifiers changed from: protected */
    public boolean cp() {
        return true;
    }

    public Range<Integer> d() {
        String bQ = bQ();
        d.a("SlowVideoMode", "getHighSpeedVideoFpsRange videoSizeType: " + bQ);
        if ("video_size_1080p".equals(bQ)) {
            int configIntValue = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_1080P);
            return Range.create(Integer.valueOf(configIntValue), Integer.valueOf(configIntValue));
        } else if (!"video_size_720p".equals(bQ)) {
            return null;
        } else {
            int configIntValue2 = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_720P);
            return Range.create(Integer.valueOf(configIntValue2), Integer.valueOf(configIntValue2));
        }
    }

    public boolean d(String str) {
        if ("pref_camera_videoflashmode_key".equals(str) || "pref_slow_video_frame_key".equals(str)) {
            return true;
        }
        if ("pref_update_setting_background_bar_key".equals(str) || CameraFunction.REQUEST_FAST_LAUNCH.equals(str) || "pref_face_detection_key".equals(str) || "pref_video_size_key".equals(str) || "pref_time_lapse_key".equals(str) || "pref_camera_tap_shutter_key".equals(str) || "pref_support_switch_camera".equals(str) || "pref_camera_assistant_line_key".equals(str) || "pref_camera_gesture_shutter_key".equals(str) || "pref_support_recording_capture".equals(str) || "pref_zoom_key".equals(str) || "pref_video_ratio_key".equals(str)) {
            return false;
        }
        if ("pref_support_high_temperature_ultimate_limit".equals(str)) {
            return true;
        }
        return super.d(str);
    }

    public boolean e() {
        return DebugUtil.isVideoHighFrameRateEnabled();
    }

    public boolean f(String str) {
        if ("pref_camera_videoflashmode_key".equals(str) || "pref_slow_video_frame_key".equals(str)) {
            return true;
        }
        return super.f(str);
    }

    public com.oppo.camera.ui.control.c g() {
        com.oppo.camera.ui.control.c g = super.g();
        g.b("button_shape_dial_still");
        return g;
    }

    /* access modifiers changed from: protected */
    public void j() {
        cK();
        super.j();
        this.af = false;
    }

    /* access modifiers changed from: protected */
    public void k() {
        d.a("SlowVideoMode", "onInitCameraMode");
        super.k();
        this.g = this.L.k();
        o(false);
    }

    public boolean k(String str) {
        return "type_preview".equals(str) || "type_video".equals(str);
    }

    /* access modifiers changed from: protected */
    public void l() {
        d.a("SlowVideoMode", "onDeInitCameraMode");
        cK();
        o(true);
        super.l();
    }

    /* access modifiers changed from: protected */
    public void m() {
        d.a("SlowVideoMode", "onBeforePreview");
        cJ();
        super.m();
        String bQ = bQ();
        if ("video_size_1080p".equals(bQ)) {
            this.ag = Integer.valueOf(CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_1080P));
        } else if ("video_size_720p".equals(bQ)) {
            this.ag = Integer.valueOf(CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PREVIEW_FPS_HFR_720P));
        }
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return false;
    }
}
