package com.oppo.camera.k;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.util.Size;
import android.view.Surface;
import android.view.Window;
import android.view.WindowManager;
import co.polarr.renderer.FilterPackageUtil;
import co.polarr.renderer.PolarrRender;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.e.d;
import com.oppo.camera.e.h;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.ui.CameraScreenHintView;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: PortraitCapMode */
public class b extends com.oppo.camera.d.a {
    private boolean W = false;
    /* access modifiers changed from: private */
    public boolean X = true;
    /* access modifiers changed from: private */
    public boolean Y = false;
    private boolean Z = false;
    private CameraScreenHintView aa = null;
    /* access modifiers changed from: private */
    public int ab = -1;
    private int ac = -1;
    private int ad = 2;
    private float ae = -1.0f;
    /* access modifiers changed from: private */
    public ValueAnimator af = null;
    private a ag = null;
    private String[] ah = {"ALGO_BOKEH"};
    private int ai = 0;
    private int aj = 0;
    private int ak = 0;
    private a al = null;
    /* access modifiers changed from: private */
    public Handler am = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    b bVar = b.this;
                    bVar.b(bVar.N);
                }
            } else if (b.this.Y) {
                boolean unused = b.this.X = true;
                b bVar2 = b.this;
                bVar2.B(bVar2.ab);
            }
        }
    };

    /* compiled from: PortraitCapMode */
    private class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f2240a;

        /* renamed from: b  reason: collision with root package name */
        private float f2241b;
        private float c;
        private Window d;
        private WindowManager.LayoutParams e;

        public void a(float f, float f2) {
            d.a("PortraitCapMode", "setTargetBrightness, targetBrightness: " + f2 + ", deltaBrightness: " + f);
            this.f2241b = f2;
            this.c = f;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = (this.c * ((Float) valueAnimator.getAnimatedValue()).floatValue()) + this.f2241b;
            this.e.screenBrightness = floatValue / ((float) this.f2240a.L.I());
            this.d.setAttributes(this.e);
        }
    }

    public b(Activity activity, com.oppo.camera.d.b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
        if (com.oppo.camera.e.a.d(15) != 0 || com.oppo.camera.e.a.d(16) != 0) {
            this.ai = com.oppo.camera.ui.preview.a.d.f.length;
            this.al = new a(this.ai);
        }
    }

    private void A(int i) {
        if (7 == i && 2 != this.ak) {
            this.ak = 2;
            if (z(this.aj) && this.P != null) {
                String y = y(this.aj);
                this.P.a(y);
                this.M.a(this.aj, y);
                this.al.a(true, this.aj - this.ai);
            }
        } else if (7 != i && 1 != this.ak) {
            this.ak = 1;
            if (z(this.aj) && this.P != null) {
                String x = x(this.aj);
                this.P.a(x);
                this.M.a(this.aj, x);
                this.al.a(false, this.aj - this.ai);
            }
        }
    }

    /* access modifiers changed from: private */
    public void B(final int i) {
        if (this.N != null) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (!b.this.M.y()) {
                        b.this.cB();
                        int i = i;
                        if (i == 1) {
                            b.this.n(true);
                        } else if (i == 2) {
                            b bVar = b.this;
                            bVar.l(bVar.N.getString(R.string.camera_bokeh_move_farther_away));
                        } else if (i == 3) {
                            b bVar2 = b.this;
                            bVar2.l(bVar2.N.getString(R.string.camera_bokeh_move_closer));
                        } else if (i == 4) {
                            b bVar3 = b.this;
                            bVar3.l(bVar3.N.getString(R.string.camera_bokeh_need_more_light));
                        } else if (i == 5) {
                            b bVar4 = b.this;
                            bVar4.l(bVar4.N.getString(R.string.camera_bokeh_place_subject_not_found));
                        } else if (i == 7) {
                            b bVar5 = b.this;
                            bVar5.l(bVar5.N.getString(R.string.camera_bokeh_camera_occlusion));
                        } else if (i != 9) {
                            b.this.n(true);
                        } else {
                            b bVar6 = b.this;
                            bVar6.l(bVar6.N.getString(R.string.camera_bokeh_single));
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void b(Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        float f = (float) Settings.System.getInt(activity.getContentResolver(), CameraStatisticsUtil.SCREEN_BRIGHTNESS, 100);
        if (f > 100.0f) {
            this.ag.a(f - 100.0f, 100.0f);
            this.af.start();
        }
        d.a("PortraitCapMode", "setScreenBrightness, brightness: 100, currBrightness: " + f + ", winParams.screenBrightness: " + attributes.screenBrightness);
    }

    /* access modifiers changed from: private */
    public void cB() {
        cC();
    }

    private void cC() {
        this.M.i();
        this.aa = this.M.j();
    }

    /* access modifiers changed from: private */
    public void l(String str) {
        if (this.X) {
            if (this.aa == null) {
                cB();
            }
            this.aa.setVisibility(0);
            this.aa.a(str, true, false);
        }
    }

    /* access modifiers changed from: private */
    public void n(boolean z) {
        CameraScreenHintView cameraScreenHintView = this.aa;
        if (cameraScreenHintView != null && cameraScreenHintView.getHintTextView().getVisibility() == 0) {
            this.aa.b(z);
        }
    }

    private String x(int i) {
        return z(i) ? this.al.c(i - this.ai) : FilterPackageUtil.F_DEFAULT;
    }

    private String y(int i) {
        return z(i) ? this.al.d(i - this.ai) : FilterPackageUtil.F_CUBE_2018_11;
    }

    private boolean z(int i) {
        return i >= this.ai && this.al != null;
    }

    public void X() {
        super.X();
        this.ak = 0;
        this.ab = -1;
        this.ac = -1;
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (!b.this.s) {
                    b.this.aJ();
                    b bVar = b.this;
                    boolean unused = bVar.Y = bVar.d("pref_dual_camera");
                    if (b.this.Y) {
                        b.this.am.removeMessages(1);
                        b.this.am.sendEmptyMessageDelayed(1, 400);
                    }
                    if (b.this.af != null) {
                        b.this.af.cancel();
                    }
                }
            }
        });
    }

    public boolean Z() {
        return true;
    }

    public String a() {
        return CameraStatisticsUtil.EVENT_CAPTURE;
    }

    public List<String> a(String str, int i) {
        if (!"pref_camera_photo_ratio_key".equals(str)) {
            return super.a(str, i);
        }
        List<String> supportedList = CameraConfig.getSupportedList("pref_camera_photo_ratio_key", i);
        ArrayList arrayList = new ArrayList();
        if (supportedList != null && supportedList.contains("standard")) {
            arrayList.add("standard");
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    public void a(int i, boolean z) {
        super.a(i, z);
        if (i != 1) {
            if (i != 4) {
                if (i == 5) {
                    this.X = z;
                    if (!z) {
                        CameraScreenHintView cameraScreenHintView = this.aa;
                        if (cameraScreenHintView != null) {
                            cameraScreenHintView.b(false);
                        }
                    } else if (this.M.h() == 4) {
                        this.M.a(g(), false);
                    }
                }
            } else if (this.Y) {
                B(0);
                CameraScreenHintView cameraScreenHintView2 = this.aa;
                if (cameraScreenHintView2 != null) {
                    cameraScreenHintView2.setVisibility(z ? 0 : 8);
                }
            }
        } else if (!z) {
            this.X = false;
            Handler handler = this.am;
            if (handler != null) {
                handler.removeMessages(1);
            }
            CameraScreenHintView cameraScreenHintView3 = this.aa;
            if (cameraScreenHintView3 != null && cameraScreenHintView3.getHintTextView().getVisibility() == 0) {
                this.aa.b(true);
            }
        }
        if (4 != i && 7 != i && 8 != i && 9 != i) {
            if (z) {
                this.A = true;
            } else if (3 != i) {
                this.X = false;
                Handler handler2 = this.am;
                if (handler2 != null) {
                    handler2.removeMessages(1);
                }
                CameraScreenHintView cameraScreenHintView4 = this.aa;
                if (cameraScreenHintView4 != null) {
                    cameraScreenHintView4.b(true);
                }
            }
        }
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        boolean z;
        super.a(totalCaptureResult);
        if (this.X && d("pref_dual_camera")) {
            int[] a2 = this.K.a("com.oppo.portrait.bokeh.state", totalCaptureResult);
            int[] a3 = this.K.a("com.mediatek.stereofeature.stereowarning", totalCaptureResult);
            int i = this.ab;
            if (a2 == null || this.ac == a2[0]) {
                z = false;
            } else {
                this.ac = a2[0];
                i = a2[0];
                z = true;
            }
            if (!(a3 == null || this.ad == (a3[0] & 2))) {
                this.ad = a3[0] & 2;
                if (!z) {
                    i = -1;
                }
                if (2 == (a3[0] & 2)) {
                    i = 4;
                }
                z = true;
            }
            if (z && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_WESTALGO_DUAL_CAMERA)) {
                if (this.ac != 1 || this.ad == 2) {
                    this.K.f(1);
                } else {
                    this.K.f(0);
                }
            }
            if (this.ab != i) {
                this.ab = i;
                B(this.ab);
                A(this.ab);
            }
        }
        int[] a4 = this.K.a("focus.distance", totalCaptureResult);
        if (a4 != null && Float.compare((float) a4[0], 0.0f) > 0) {
            this.ae = 1000.0f / ((float) a4[0]);
        }
    }

    /* access modifiers changed from: protected */
    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        if (dVar.a() == d.a.CAPTURE) {
            if (!d("pref_dual_camera") && hashMap.containsKey("type_preview")) {
                if (d(CameraFunction.NEED_PREVIEW_STRAM)) {
                    builder.addTarget(hashMap.get("type_preview"));
                } else {
                    builder.removeTarget(hashMap.get("type_preview"));
                }
            }
            if (hashMap.containsKey("type_still_capture")) {
                builder.removeTarget(hashMap.get("type_still_capture"));
            }
        }
        if (d.a.PREVIEW == dVar.a() && ((bC() || d("pref_camera_blur_mode_key")) && hashMap.containsKey("type_preview_frame"))) {
            builder.addTarget(hashMap.get("type_preview_frame"));
        }
        super.a(dVar, builder, hashMap);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        com.oppo.camera.d.a("PortraitCapMode", "onResume");
        this.X = d("pref_dual_camera");
        if (this.al != null) {
            PolarrRender.updateGlobalScreenOrientation(this.g);
            if (this.O != null) {
                this.aj = this.O.getInt("key_portrait_new_style_back_index", 0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        if (z2) {
            this.L.a(0);
            this.L.f();
        }
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        com.oppo.camera.d.a("PortraitCapMode", "onAfterPictureTaken");
        if (this.L.g()) {
            if (!at()) {
                this.L.i();
            }
            if ((!com.oppo.camera.o.d.w() && this.A) || com.oppo.camera.o.d.w()) {
                this.M.d(true, false);
            }
        }
        this.M.a(g(), false);
    }

    public boolean a(String str) {
        if ("pref_camera_high_resolution_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.a(str);
    }

    /* access modifiers changed from: protected */
    public String aX() {
        return "pref_portrait_facebeauty_level_menu";
    }

    public void a_(boolean z) {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(11, "button_color_inside_none");
        if (z) {
            cVar.a(8);
            cVar.a("button_color_inside_none");
        } else {
            cVar.a(11);
            cVar.a("button_color_inside_none");
        }
        this.M.a(cVar);
    }

    public int ad() {
        return 35;
    }

    public void am() {
        com.oppo.camera.d.d("PortraitCapMode", "onCancelTakePicture, reset mbShutterCallback");
        this.A = true;
    }

    public int b() {
        return d("pref_dual_camera") ? 32785 : 32806;
    }

    public Size b(h hVar) {
        if (!d("pref_dual_camera")) {
            String a2 = com.oppo.camera.o.d.a(hVar.a(256), 8000000, 0);
            if (a2 != null) {
                int parseInt = Integer.parseInt(a2.split("x")[0]);
                int parseInt2 = Integer.parseInt(a2.split("x")[1]);
                Size size = new Size(parseInt, parseInt2);
                com.oppo.camera.d.b("PortraitCapMode", "getPictureSize, width: " + parseInt + ", height: " + parseInt2);
                return size;
            }
        }
        if (com.oppo.camera.e.a.c(this.j)) {
            return new Size(5760, 4312);
        }
        Size sizeConfigValue = CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_BACK_PORTRAIT_NORMAL_MODE_PIC_SIZE);
        if (sizeConfigValue != null) {
            com.oppo.camera.d.b("PortraitCapMode", "getPictureSize, rear size: " + sizeConfigValue.getWidth() + "x" + sizeConfigValue.getHeight());
        }
        return sizeConfigValue;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData) {
        CaptureMsgData captureMsgData = (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) ? null : (CaptureMsgData) dcsMsgData;
        if (captureMsgData == null) {
            return null;
        }
        captureMsgData.mBokehCode = this.ab;
        return captureMsgData;
    }

    public void b(int i) {
        com.oppo.camera.d.e("PortraitCapMode", "onCameraIdChanged");
        this.A = true;
        if (!(this.al == null || this.O == null)) {
            this.aj = this.O.getInt("key_portrait_new_style_back_index", 0);
        }
        super.b(i);
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        com.oppo.camera.d.c("PortraitCapMode", "onBeforePictureTaken");
        if (this.s) {
        }
    }

    public boolean b(String str) {
        return "pref_portrait_new_style_menu".equals(str) ? d("pref_portrait_new_style_menu") : "pref_filter_menu".equals(str) ? d("pref_filter_menu") : super.b(str);
    }

    /* access modifiers changed from: protected */
    public String[] bL() {
        return c.c;
    }

    public boolean bb() {
        return d("pref_camera_blur_mode_key");
    }

    /* access modifiers changed from: protected */
    public String be() {
        return d("pref_portrait_new_style_menu") ? this.al == null ? "key_portrait_new_style_index" : com.oppo.camera.e.a.c(this.j) ? "key_portrait_new_style_front_index" : "key_portrait_new_style_back_index" : super.be();
    }

    public String bf() {
        return "pref_portrait_new_style_menu";
    }

    public boolean bq() {
        if (this.L.g()) {
            return d("pref_support_fast_capture");
        }
        com.oppo.camera.d.a("PortraitCapMode", "isCanFastCapture, param is null or from third app");
        return false;
    }

    public Size c(h hVar) {
        if (!d("pref_dual_camera")) {
            return super.c(hVar);
        }
        Size sizeConfigValue = CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_PORTRAIT_NORMAL_MODE_PRE_SIZE);
        if (sizeConfigValue == null) {
            sizeConfigValue = new Size(1440, 1080);
        }
        com.oppo.camera.d.b("PortraitCapMode", "getPreviewSize, previewSize: " + sizeConfigValue);
        return sizeConfigValue;
    }

    public void c(int i) {
        super.c(i);
        if (this.al != null) {
            PolarrRender.updateGlobalScreenOrientation(i);
        }
        CameraScreenHintView cameraScreenHintView = this.aa;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.setOrientation(i);
        }
    }

    /* access modifiers changed from: protected */
    public void cs() {
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return this.N.getString(R.string.camera_picture_size_standard);
    }

    public boolean cu() {
        return false;
    }

    public void cz() {
        B(this.ab);
    }

    public boolean d(String str) {
        if ("pref_filter_process_key".equals(str)) {
            return d("pref_portrait_new_style_menu") || d("pref_filter_menu");
        }
        if ("pref_portrait_new_style_menu".equals(str)) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_PORTRAIT_NEW_STYLE);
        }
        if ("pref_filter_menu".equals(str)) {
            return !d("pref_portrait_new_style_menu") && !d("pref_dual_camera");
        }
        if ("pref_support_capture_preview".equals(str)) {
            return this.L != null && this.L.g();
        }
        if ("pref_save_jpg_after_pause_key".equals(str)) {
            return this.L != null && this.L.g() && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SAVE_JPG_AFTER_PAUSE) && com.oppo.camera.o.d.w();
        }
        if ("key_remosaic".equals(str)) {
            return com.oppo.camera.e.a.c(this.j);
        }
        if ("pref_camera_gesture_shutter_key".equals(str)) {
            return com.oppo.camera.e.a.c(this.j);
        }
        if ("pref_support_high_temperature_ultimate_limit".equals(str)) {
            return true;
        }
        if ("pref_dual_camera".equals(str)) {
            return com.oppo.camera.e.a.c(this.j) ? com.oppo.camera.e.a.f() : com.oppo.camera.e.a.e();
        }
        if ("pref_support_post_view".equals(str)) {
            return false;
        }
        if ("pref_auto_night_scence_key".equals(str)) {
            return this.L != null && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_COMMON_AUTO_NIGHT_SCENCE) && this.L.g();
        }
        if ("pref_zoom_key".equals(str)) {
            return false;
        }
        if ("pref_support_ipa_process".equals(str)) {
            return true;
        }
        if (CameraFunction.FACE_BEAUTY_PROCESS.equals(str)) {
            return !d("pref_dual_camera");
        }
        if (CameraFunction.FACE_SLENDER_PROCESS.equals(str)) {
            return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.c(this.j);
        }
        if (CameraFunction.FACE_BEAUTY_CUSTOM.equals(str)) {
            return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.c(this.j);
        }
        if ("pref_camera_blur_mode_key".equals(str)) {
            return !d("pref_dual_camera");
        }
        if (CameraFunction.MODE_PANEL.equals(str) || "pref_support_capture_preview".equals(str)) {
            return true;
        }
        if (!"pref_support_fast_capture".equals(str)) {
            return "pref_portrait_new_style_menu".equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_PORTRAIT_NEW_STYLE) : "pref_camera_torch_mode_key".equals(str) ? d(CameraFunction.TORCH_SOFT_LIGHT) : CameraFunction.TORCH_SOFT_LIGHT.equals(str) ? CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT) && com.oppo.camera.e.a.c(this.j) : super.d(str);
        }
        if (com.oppo.camera.o.d.w()) {
            return true;
        }
        return cv();
    }

    /* access modifiers changed from: protected */
    public int[] d(int i) {
        if (!d("pref_portrait_new_style_menu")) {
            return super.d(i);
        }
        if (com.oppo.camera.e.a.c(i)) {
            return com.oppo.camera.ui.preview.a.d.g;
        }
        a aVar = this.al;
        return aVar != null ? aVar.c() : com.oppo.camera.ui.preview.a.d.h;
    }

    /* access modifiers changed from: protected */
    public String[] e(int i) {
        if (!d("pref_portrait_new_style_menu")) {
            return super.e(i);
        }
        if (com.oppo.camera.e.a.c(i)) {
            return com.oppo.camera.ui.preview.a.d.e;
        }
        a aVar = this.al;
        return aVar != null ? aVar.b() : com.oppo.camera.ui.preview.a.d.f;
    }

    public boolean f(String str) {
        if ("pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.f(str);
    }

    /* access modifiers changed from: protected */
    public void h() {
        com.oppo.camera.d.a("PortraitCapMode", "onPause");
        Handler handler = this.am;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        if (this.aa != null) {
            this.Q.removeView(this.aa);
            this.aa = null;
        }
        if (this.M != null && this.L.g()) {
            this.M.a(g(), false);
        }
        ValueAnimator valueAnimator = this.af;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.L != null) {
            this.L.H();
        }
        this.X = false;
        this.A = true;
        this.Z = false;
    }

    /* access modifiers changed from: protected */
    public void i() {
        com.oppo.camera.d.e("PortraitCapMode", "onStop");
    }

    /* access modifiers changed from: protected */
    public void j() {
        com.oppo.camera.d.a("PortraitCapMode", "onDestroy");
        a aVar = this.al;
        if (aVar != null) {
            aVar.a();
            this.al = null;
        }
    }

    /* access modifiers changed from: protected */
    public void k() {
        com.oppo.camera.d.a("PortraitCapMode", "onInitCameraMode");
        this.M.a(false, true, true);
        this.M.a(this.N.getString(R.string.camera_description_common_shutter_button));
        this.Y = d("pref_dual_camera");
        this.V.put(a(), this.ah);
        if (this.al != null) {
            PolarrRender.updateGlobalScreenOrientation(this.g);
            if (this.O != null) {
                this.aj = this.O.getInt("key_portrait_new_style_back_index", 0);
            }
        }
    }

    public void k(int i) {
        super.k(i);
        if (!com.oppo.camera.e.a.c(this.j) && this.aj != i) {
            if (this.Z) {
                this.X = false;
                n(true);
                this.L.K();
                if (2 == this.ak && z(this.aj)) {
                    c cVar = this.M;
                    int i2 = this.aj;
                    cVar.a(i2, x(i2));
                    this.al.a(false, this.aj - this.ai);
                }
                this.ak = 0;
                this.ab = -1;
            }
            this.aj = i;
        }
    }

    public boolean k(String str) {
        if ("type_preview_frame".equals(str)) {
            return d("pref_camera_blur_mode_key") || d("pref_camera_gesture_shutter_key");
        }
        if (d("pref_dual_camera")) {
            if ("type_still_capture_yuv_main".equals(str) || "type_still_capture_yuv_sub".equals(str)) {
                return true;
            }
        } else if ("type_still_capture_yuv_main".equals(str)) {
            return true;
        } else {
            if ("type_still_capture".equals(str)) {
                return false;
            }
        }
        return super.k(str);
    }

    /* access modifiers changed from: protected */
    public void l() {
        com.oppo.camera.d.a("PortraitCapMode", "onDeInitCameraMode");
        this.A = true;
        j(0);
        if (this.P != null) {
            this.P.g(0);
        }
        Handler handler = this.am;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        ValueAnimator valueAnimator = this.af;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.L != null) {
            this.L.H();
        }
        CameraScreenHintView cameraScreenHintView = this.aa;
        if (cameraScreenHintView != null && cameraScreenHintView.getHintTextView().getVisibility() == 0) {
            this.aa.b(true);
        }
        this.ae = -1.0f;
        if (this.J != null) {
            this.J.d();
        }
        if (2 == this.ak && z(this.aj)) {
            c cVar = this.M;
            int i = this.aj;
            cVar.a(i, x(i));
            this.al.a(false, this.aj - this.ai);
        }
        this.ak = 0;
        this.ab = -1;
    }

    /* access modifiers changed from: protected */
    public void l(int i) {
        a aVar = this.al;
        if (aVar != null && aVar.a(this.aj, i)) {
            this.Z = true;
        }
        if (this.P != null) {
            if (!this.Z) {
                this.P.a(o(i));
            }
            this.P.b(false);
        }
        super.l(i);
    }

    /* access modifiers changed from: protected */
    public void m() {
        com.oppo.camera.d.a("PortraitCapMode", "onBeforePreview");
        if (this.Z) {
            this.Z = false;
            this.P.a(o(this.aj));
        }
        if (d("pref_dual_camera")) {
            return;
        }
        if (d(CameraFunction.FACE_BEAUTY_PROCESS)) {
            int aW = aW();
            com.oppo.camera.d.a("PortraitCapMode", "onBeforePreview, level: " + aW);
            j(aW);
            a(bO());
            if (this.P != null) {
                this.P.g(aW);
                return;
            }
            return;
        }
        j(0);
        if (this.P != null) {
            this.P.g(0);
        }
    }

    /* access modifiers changed from: protected */
    public void n(int i) {
        if (this.P != null) {
            if (bk() && i != 0) {
                bl();
            }
            if (!this.Z) {
                this.P.a(o(i));
                return;
            }
            return;
        }
        com.oppo.camera.d.e("PortraitCapMode", "updateFilterParam, mPreviewEffectProcess: " + this.P + ", mPreferences: " + this.O);
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        com.oppo.camera.d.a("PortraitCapMode", "onBeforeSnapping");
        if (!bq() && this.M.h() == 1) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                    cVar.a("button_color_inside_none");
                    cVar.a(4);
                    b.this.M.a(cVar);
                }
            });
        }
        return true;
    }

    public String o(int i) {
        return z(i) ? this.al.b(i - this.ai) : e(this.j)[i];
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return !com.oppo.camera.o.d.w() && !this.A;
    }

    public int p() {
        if (this.L == null || !this.L.g()) {
            return 1;
        }
        return super.p();
    }

    public int s() {
        return (this.J == null || !d("pref_dual_camera")) ? super.s() : p() * 2;
    }
}
