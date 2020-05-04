package com.oppo.camera.d;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.animation.Animation;
import com.oppo.camera.R;
import com.oppo.camera.c.b;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.f;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import java.util.HashMap;
import java.util.List;

/* compiled from: CommonCapMode */
public class e extends a {
    protected int W;
    protected boolean X;
    protected boolean Y;
    protected int Z;
    private int aa;
    private a ab;
    private Handler ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    /* access modifiers changed from: private */
    public long ah;
    private boolean ai;
    private long aj;
    private long ak;
    /* access modifiers changed from: private */
    public long al;
    /* access modifiers changed from: private */
    public long am;
    /* access modifiers changed from: private */
    public long an;
    private long ao;
    private int ap;
    /* access modifiers changed from: private */
    public b aq;
    private String[] ar;

    /* compiled from: CommonCapMode */
    private class a {

        /* renamed from: b  reason: collision with root package name */
        private Runtime f1886b;
        private long c;

        private a() {
            this.f1886b = null;
        }

        public void a() {
            if (this.f1886b == null) {
                this.f1886b = Runtime.getRuntime();
            }
            this.c = this.f1886b.maxMemory();
            d.a("CommonCapMode", "initMemory, mMaxMemory: " + this.c);
        }

        public boolean b() {
            if (this.f1886b == null) {
                this.f1886b = Runtime.getRuntime();
            }
            if (this.c - (this.f1886b.totalMemory() - this.f1886b.freeMemory()) > 52428800) {
                return false;
            }
            d.a("CommonCapMode", "isNeedStopCapture, realfree <= MIN_LEFT_MEMEORY");
            return true;
        }
    }

    public e(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
        this.W = 0;
        this.X = false;
        this.Y = false;
        this.aa = 0;
        this.ab = new a();
        this.ac = null;
        this.ad = 0;
        this.ae = 0;
        this.af = 0;
        this.ag = 0;
        this.ah = 0;
        this.ai = false;
        this.aj = 0;
        this.ak = 200;
        this.al = 0;
        this.am = 0;
        this.an = 0;
        this.ao = 0;
        this.ap = 0;
        this.Z = 8;
        this.aq = null;
        this.ar = new String[]{"ALGO_BLURLESS"};
        this.ad = bc();
        this.ae = aW();
    }

    /* access modifiers changed from: private */
    public void cE() {
        if (d("key_beauty3d") && this.aq == null) {
            this.aq = new b(this.N, new com.oppo.camera.c.d() {
                public void a() {
                    d.a("CommonCapMode", "onExitScan, beauty3D exit");
                    a(true);
                }

                public void a(boolean z) {
                    if (e.this.cq() == 4) {
                        d.a("CommonCapMode", "onScanCancel, Beauty3DState == BEAUTY3D_STATE_SCAN_CANCEL, return");
                    } else if (z) {
                        e.this.v(4);
                        e.this.o(false);
                    }
                }

                public void b() {
                    d.a("CommonCapMode", "onScanComplete, beauty3D scan Complete");
                    if (e.this.O != null) {
                        SharedPreferences.Editor edit = e.this.O.edit();
                        edit.putBoolean("key_bubble_type_add_beuty3d", false);
                        edit.apply();
                    }
                    e.this.o(false);
                    long currentTimeMillis = System.currentTimeMillis() - e.this.ah;
                    if (currentTimeMillis > 0) {
                        CameraStatisticsUtil.onCommon(e.this.N, CameraStatisticsUtil.EVENT_BEAUTY3D, CameraStatisticsUtil.format(CameraStatisticsUtil.BEAUTY3D_SCAN_TIME, String.valueOf(currentTimeMillis)), false);
                    }
                }

                public void b(boolean z) {
                    if (z && e.this.O != null) {
                        SharedPreferences.Editor edit = e.this.O.edit();
                        edit.putInt(e.this.aX(), -1);
                        edit.apply();
                    }
                    e.this.o(z);
                }

                public void c() {
                    if (e.this.M != null) {
                        e.this.M.q();
                    }
                }

                public void c(boolean z) {
                    if (e.this.M != null) {
                        e.this.M.h(z);
                    }
                }

                public void d() {
                    d.a("CommonCapMode", "onStartScan, open dual camera, Beauty3DState: " + e.this.cq());
                    long unused = e.this.ah = System.currentTimeMillis();
                    int aW = e.this.aW();
                    d.a("CommonCapMode", "onStartScan, BeautyCurrIndex: " + aW);
                    if (aW == -1) {
                        e.this.k(2);
                        e eVar = e.this;
                        eVar.a(eVar.M.r());
                    }
                    f.b(e.this.N);
                    e.this.o(false);
                }

                public void e() {
                    e.this.o(false);
                }

                public void f() {
                    f.b(e.this.N);
                    e.this.k(2);
                    e eVar = e.this;
                    eVar.a(eVar.M.r());
                    if (e.this.O != null) {
                        SharedPreferences.Editor edit = e.this.O.edit();
                        edit.putBoolean("key_bubble_type_custom_beuty3d", true);
                        edit.apply();
                    }
                }
            });
            this.aq.a();
        }
    }

    /* access modifiers changed from: private */
    public void cF() {
        if (this.q) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j = uptimeMillis - this.al;
            this.an -= j;
            this.am += j;
            this.al = uptimeMillis;
            long j2 = this.an;
            if (j2 < 0) {
                j2 = 0;
            }
            if (this.am >= 1000) {
                d.b("CommonCapMode", "updateNightCountdownTime, currentTime: " + j2 + ", delta: " + j + ", mCountDownTemp: " + this.am);
                long j3 = this.am - 1000;
                this.an = this.an + j3;
                this.am = 0;
                this.M.b(j3 + j2, false);
            }
            if (j2 > 0) {
                this.ac.sendEmptyMessageDelayed(2, 100);
            } else {
                this.ac.sendEmptyMessage(3);
            }
        }
    }

    private void cG() {
        if (d("pref_camera_pi_mode_key")) {
            boolean cK = cK();
            if (cK) {
                this.M.b("pref_camera_pi_mode_key", "on");
            }
            a(false, cK, false, true);
        }
    }

    /* access modifiers changed from: private */
    public void cH() {
        if (cK()) {
            this.M.a(false, true, true);
            this.M.b("pref_camera_pi_mode_key", com.oppo.camera.c.a_);
            a(this.p, false, false, true);
        }
    }

    private void cI() {
        long j = 0;
        for (int i = 0; i < p(); i++) {
            long pow = (long) ((((double) this.aj) * Math.pow(2.0d, (double) (((float) i) / 2.0f))) / 1000000.0d);
            long j2 = this.ak;
            if (pow > j2) {
                pow = j2;
            }
            j += pow;
        }
        long j3 = this.W == 1 ? 3500 : 1600;
        this.ao = j;
        long j4 = j + j3;
        this.an = ((long) Math.round(((float) j4) / 1000.0f)) * 1000;
        d.b("CommonCapMode", "onFirstCaptureArrived, mNightProcessTotalTime: " + this.an + ", realTime: " + j4 + ", mNightCaptureTotalTime: " + this.ao);
        if (this.N != null) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.s) {
                        d.b("CommonCapMode", "onFirstCaptureArrived, mbPaused, so return!");
                        return;
                    }
                    com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                    cVar.a("button_color_inside_none");
                    if (e.this.an >= 2000) {
                        e.this.M.i((int) e.this.an);
                        int h = e.this.M.h();
                        if (h == 2 || h == 10 || h == 11) {
                            cVar.a(3);
                        } else {
                            cVar.a(7);
                        }
                        e.this.M.a(cVar);
                        e.this.M.j(com.oppo.camera.o.d.F() - e.this.N.getResources().getDimensionPixelOffset(R.dimen.night_countdown_time_margin_top));
                        long unused = e.this.al = SystemClock.uptimeMillis();
                        long unused2 = e.this.am = 1000;
                        e.this.cF();
                    } else if (e.this.M.h() == 1) {
                        cVar.a(4);
                    } else {
                        cVar.a(2);
                    }
                    e.this.M.a(cVar);
                }
            });
        }
    }

    private boolean cJ() {
        return "on".equals(v.e());
    }

    private boolean cK() {
        return d("pref_camera_pi_mode_key") && this.O != null && "on".equals(this.O.getString("pref_camera_pi_mode_key", com.oppo.camera.c.a_));
    }

    private void cL() {
        if (d("pref_camera_pi_mode_key") && this.O != null) {
            SharedPreferences.Editor edit = this.O.edit();
            edit.putString("pref_camera_pi_mode_key", com.oppo.camera.c.a_);
            edit.commit();
            this.M.d("pref_camera_pi_mode_key");
        }
    }

    private void n(boolean z) {
        if (this.s) {
            d.e("CommonCapMode", "handleBeauty3DGuideView, pause, so return");
            return;
        }
        b bVar = this.aq;
        if (bVar == null) {
            d.a("CommonCapMode", "handleBeauty3DGuideView, mBeauty3DManager null");
        } else if (!z) {
            if (bVar.i()) {
                this.aq.m();
            }
        } else if (!d("key_beauty3d")) {
            d.a("CommonCapMode", "handleBeauty3DGuideView, not support return");
        } else if (f.a(this.N) == 1) {
            d.a("CommonCapMode", "handleBeauty3DGuideView, files exist, return");
        } else if (this.L.g() && z && this.O.getBoolean("key_front_camera_first_switch", true)) {
            d.a("CommonCapMode", "handleBeauty3DGuideView, start showBeauty3DGuide");
            SharedPreferences.Editor edit = this.O.edit();
            edit.putBoolean("key_front_camera_first_switch", false);
            edit.apply();
            this.M.p();
            this.aq.c(c(this.K.c()));
        } else if (bJ() && z) {
            this.M.p();
            this.aq.d(c(this.K.c()));
        }
    }

    /* access modifiers changed from: private */
    public void o(boolean z) {
        if (this.L != null) {
            this.L.e(z);
        }
    }

    private int x(int i) {
        if (i == 6) {
            return this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_beauty3d_add_offset_x);
        }
        return 0;
    }

    private int y(int i) {
        if (i == 6) {
            return this.N.getResources().getDimensionPixelSize(R.dimen.bubble_type_beauty3d_add_offset_y);
        }
        return 0;
    }

    public boolean A() {
        return d("key_beauty3d") && cq() > 0 && cq() != 4;
    }

    public boolean P() {
        super.P();
        if (!d("key_beauty3d")) {
            return false;
        }
        b bVar = this.aq;
        return bVar != null && bVar.d();
    }

    public void X() {
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (!e.this.s) {
                    e.this.aJ();
                }
                if (!e.this.ax() || !DebugUtil.isEnableHighPictureSizeSetting() || e.this.M.x()) {
                    e.this.M.p(true);
                    return;
                }
                double a2 = com.oppo.camera.o.d.a((Context) e.this.N, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE));
                e.this.M.a(e.this.N.getString(R.string.camera_picture_size_standard_high_hint, new Object[]{Double.valueOf(a2)}), 0, (int) R.color.screen_hint_text_color);
            }
        });
        super.X();
    }

    public boolean Z() {
        d.a("CommonCapMode", "onAfterSnapping()");
        return true;
    }

    /* access modifiers changed from: protected */
    public com.oppo.camera.e.d a(com.oppo.camera.e.d dVar) {
        dVar.B = this.L.U();
        return super.a(dVar);
    }

    public String a() {
        return "common";
    }

    public void a(int i, boolean z) {
        super.a(i, z);
        if (5 == i && z) {
            this.A = true;
        }
        if (i == 1) {
            n(false);
        } else if (i == 2) {
            if (i("key_bubble_type_add_beuty3d")) {
                if (!d("key_beauty3d") || A() || !this.M.m() || !"beauty".equals(aO()) || f.a(this.N) != 0) {
                    this.M.c(6, false);
                } else {
                    this.M.a((View) null, 6, x(6), y(6));
                }
            }
            if (this.aq == null) {
                return;
            }
            if (cD()) {
                this.aq.e(true);
                this.aq.p();
                return;
            }
            this.aq.q();
        } else if (i == 3 || i == 5) {
            b bVar = this.aq;
            if (bVar != null) {
                bVar.q();
            }
        } else {
            switch (i) {
                case 12:
                    if (this.aq == null) {
                        return;
                    }
                    if (!z || !cD()) {
                        this.aq.q();
                        return;
                    }
                    this.aq.e(true);
                    this.aq.p();
                    return;
                case 13:
                    n(z);
                    return;
                case 14:
                    b bVar2 = this.aq;
                    if (bVar2 != null) {
                        bVar2.j();
                        return;
                    }
                    return;
                case 15:
                    cC();
                    return;
                default:
                    return;
            }
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        if (!"pref_camera_pi_mode_key".equals(str) || !d("pref_camera_pi_mode_key")) {
            super.a(sharedPreferences, str);
            return;
        }
        a(this.p, "on".equals(sharedPreferences.getString("pref_camera_pi_mode_key", com.oppo.camera.c.a_)), true, true);
    }

    public void a(CaptureRequest captureRequest) {
        super.a(captureRequest);
    }

    public void a(TotalCaptureResult totalCaptureResult) {
        if (!A() || !cB()) {
            if (!this.q) {
                int[] a2 = this.K.a("com.qti.stats_control.is_lls_needed", totalCaptureResult);
                if (a2 == null || a2.length <= 0) {
                    this.X = false;
                } else {
                    this.X = a2[0] == 1;
                }
            }
            if (!this.q) {
                int[] a3 = this.K.a("com.oppo.supernight.state", totalCaptureResult);
                int length = a3 == null ? 0 : a3.length;
                if (3 == length) {
                    this.W = a3[0];
                    this.Z = p();
                    this.ak = (long) a3[2];
                } else if (length < 3 && length > 0) {
                    this.W = a3[0];
                    this.Z = p();
                    this.ak = 1 == this.W ? 5000 : 200;
                    if (this.W > 0) {
                        d.a("CommonCapMode", "onPreviewCaptureResult, com.oppo.supernight.state not correct, set default value");
                    }
                }
            }
            super.a(totalCaptureResult);
            return;
        }
        this.aq.b(totalCaptureResult);
    }

    public void a(TotalCaptureResult totalCaptureResult, CaptureRequest captureRequest) {
        d.a("CommonCapMode", "onCaptureCompleted, result: " + totalCaptureResult + ", mReceivedRawResultNum: " + this.ap + ", mbPaused: " + this.s);
        if (bE() && !this.s) {
            d.a a2 = ((com.oppo.camera.e.d) captureRequest.getTag()).a();
            if (d.a.CAPTURE_RAW == a2) {
                if (captureRequest.hashCode() == this.k) {
                    this.aj = ((Long) totalCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME)).longValue();
                    com.oppo.camera.d.b("CommonCapMode", "onCaptureCompleted, mFirstExposureTime: " + this.aj);
                    cI();
                }
                int i = this.ap;
                if (i < this.Z) {
                    this.ap = i + 1;
                }
            }
            if (!com.oppo.camera.o.d.w() && d.a.CAPTURE_REPROCESS == a2 && this.ap > 0) {
                this.K.q(0);
                this.K.a((f.c) null);
            }
        }
        super.a(totalCaptureResult, captureRequest);
    }

    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        d.a a2 = dVar.a();
        if (d.a.CAPTURE == a2 && hashMap.containsKey("type_preview") && com.oppo.camera.o.d.w()) {
            if (d(CameraFunction.NEED_PREVIEW_STRAM)) {
                builder.addTarget(hashMap.get("type_preview"));
            } else {
                builder.removeTarget(hashMap.get("type_preview"));
            }
        }
        if (d.a.PREVIEW == a2 && bC() && hashMap.containsKey("type_preview_frame")) {
            builder.addTarget(hashMap.get("type_preview_frame"));
        }
        if (d.a.CAPTURE_RAW == a2 && !com.oppo.camera.o.d.w()) {
            builder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        }
        if (d.a.CAPTURE_REPROCESS == a2 && bE()) {
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, Long.valueOf(this.ao * 1000000));
            if (hashMap.containsKey("type_preview") && com.oppo.camera.o.d.w()) {
                if (d(CameraFunction.NEED_PREVIEW_STRAM)) {
                    builder.addTarget(hashMap.get("type_preview"));
                } else {
                    builder.removeTarget(hashMap.get("type_preview"));
                }
            }
        }
        if (d.a.CAPTURE == a2 && !com.oppo.camera.o.d.w()) {
            List<CaptureRequest.Key<?>> i = this.K.c().i();
            CaptureRequest.Key key = null;
            if (i != null) {
                for (CaptureRequest.Key next : i) {
                    if ("com.mediatek.control.capture.remosaicenable".equals(next.getName())) {
                        key = next;
                    }
                }
                if (key != null) {
                    builder.set(key, new int[]{1});
                }
            }
        }
        super.a(dVar, builder, hashMap);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        com.oppo.camera.d.e("CommonCapMode", "onResume");
        if (d("key_beauty3d")) {
            b bVar = this.aq;
            if (bVar != null && bVar.f() != 0) {
                this.aq.a(new Size(1440, 2448));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        if (z2 && !z) {
            if (cK()) {
                com.oppo.camera.d.a("CommonCapMode", "onShutterCallback, PIOpen");
                Handler handler = this.ac;
                if (handler != null) {
                    handler.post(new Runnable() {
                        public void run() {
                            if (!e.this.q) {
                                com.oppo.camera.d.a("CommonCapMode", "pictureTakenCallback is already received, so return");
                                return;
                            }
                            if (e.this.M.w()) {
                                e.this.M.a(false, false, true, false);
                            }
                            if (e.this.M.h() != 4) {
                                com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                                cVar.a("button_color_inside_none");
                                cVar.a(4);
                                e.this.M.a(cVar);
                            }
                        }
                    });
                }
            }
            this.L.a(0);
            this.L.f();
            if (this.aq == null) {
                return;
            }
            if (cD()) {
                this.aq.p();
            } else {
                this.aq.q();
            }
        }
    }

    public void a(boolean z, boolean z2, boolean z3, boolean z4) {
        com.oppo.camera.d.a("CommonCapMode", "onPIChanged, isOpen: " + z2 + ", isBurstShot: " + z + ", isShowHint: " + z3 + ", isUpdateParam: " + z4);
        if (!z) {
            if (z2) {
                if (z3) {
                    this.M.a(R.string.camera_pi_on_hint_realme, -1, true, false, false);
                }
                l(0);
                if (!this.M.m() || !"filter".equals(aO())) {
                    this.M.f("pref_filter_menu");
                } else {
                    this.M.l(true);
                    this.L.w();
                    this.L.c(true);
                }
                if (this.M.w()) {
                    this.M.a(true, true, true, false);
                }
                this.M.k(true);
            } else if (z3) {
                this.M.a(R.string.camera_pi_off_hint_realme, -1, true, false, false);
            }
        }
        if (this.K != null && z4) {
            this.K.d(z2);
            this.K.a((f.c) null);
        }
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        com.oppo.camera.d.a("CommonCapMode", "onAfterPictureTaken, mReceivedSnapNum: " + this.aa + ", isBurstShot: " + z);
        if (!z) {
            if (this.L.g() && this.J != null) {
                if (!this.M.x()) {
                    this.M.d(true, false);
                } else {
                    this.M.d(false, true);
                }
            }
            if (this.Y) {
                com.oppo.camera.d.a("CommonCapMode", "onAfterPictureTaken, hide scene night tips");
                this.M.b((int) R.string.camera_scene_night_tips);
                this.Y = false;
            }
            if ((this.M.h() == 4 || this.M.h() == 3) && (d("pref_camera_hdr_mode_key") || d("pref_auto_night_scence_key") || d("pref_camera_pi_mode_key") || bE())) {
                this.M.a(g(), d("pref_burst_shot_key"));
                if (aR() == null || !this.M.m()) {
                    this.M.i(false);
                    if (cK() && !z && this.M.w()) {
                        this.M.m(false);
                    }
                } else {
                    this.M.e(aR());
                }
                if (bE()) {
                    this.M.f(true);
                    this.M.k(true);
                    this.M.h(0);
                    if (d(CameraFunction.FACE_BEAUTY_PROCESS) || d(CameraFunction.FACE_SLENDER_PROCESS)) {
                        this.M.m(true);
                    }
                    if (d("pref_support_switch_camera")) {
                        this.M.e(0);
                    }
                    this.M.f(0);
                    this.M.a(0);
                    this.L.w();
                    if (this.W == 1) {
                        this.K.s(0);
                    }
                    this.W = 0;
                    this.K.q(this.W);
                    this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), false);
                    this.K.f(false);
                    this.K.a((f.c) null);
                    n(bc());
                    aH();
                    cG();
                    bD();
                }
            }
            if (this.aq == null) {
                return;
            }
            if (cD()) {
                this.aq.e(true);
                this.aq.p();
                return;
            }
            this.aq.q();
        } else if (com.oppo.camera.o.d.s() == this.aa || (!com.oppo.camera.o.d.w() && this.ab.b())) {
            aI();
        }
    }

    public boolean a(String str) {
        return "pref_camera_high_resolution_key".equals(str) ? d("key_high_picture_size") : super.a(str);
    }

    /* access modifiers changed from: protected */
    public void aD() {
        com.oppo.camera.d.a("CommonCapMode", "onDisableBurstShot");
        if (this.p) {
            if (this.aa > 0) {
                this.L.a(3);
            }
            this.p = false;
            this.q = false;
            this.B = true;
            this.L.a(false);
            bm();
            com.oppo.camera.d.a("CommonCapMode", "onDisableBurstShot, CameraTest Continuous Shot End");
            this.ac.removeMessages(1);
            if (this.aa > 0) {
                this.ac.sendEmptyMessageDelayed(1, 500);
                this.L.r();
            } else {
                this.M.d(false);
                if (!d("pref_expand_popbar_key")) {
                    this.L.w();
                }
                if (d("pref_filter_menu")) {
                    this.M.b(true);
                }
                if (d(CameraFunction.FACE_BEAUTY_PROCESS)) {
                    this.M.b(true);
                }
                bD();
            }
            cG();
            if (!this.M.x()) {
                this.M.a(true, false);
                this.M.b(true, false);
                this.M.c(true, false);
                this.M.e(true, false);
            }
            this.A = true;
        }
    }

    /* access modifiers changed from: protected */
    public String aX() {
        return "pref_common_facebeauty_level_menu";
    }

    public void a_(boolean z) {
        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c(11, "button_color_inside_none");
        if ((this.X || cK()) && !com.oppo.camera.e.a.c(this.j)) {
            if (z) {
                cVar.a(8);
                cVar.a("button_color_inside_none");
            } else {
                cVar.a(11);
                cVar.a("button_color_inside_none");
            }
        }
        this.M.a(cVar);
    }

    public int ac() {
        return 32;
    }

    public int ad() {
        return bE() ? 32 : 35;
    }

    /* access modifiers changed from: protected */
    public void ag() {
        this.ad = bc();
        this.ae = aW();
        l(0);
        i(0);
        aP();
        this.M.f("pref_filter_menu");
        this.M.k(0);
    }

    /* access modifiers changed from: protected */
    public void ah() {
        l(this.ad);
        i(this.ae);
        aP();
        this.M.f("pref_filter_menu");
        this.M.k(this.ae);
    }

    /* access modifiers changed from: protected */
    public boolean ai() {
        com.oppo.camera.d.a("CommonCapMode", "onBurstShotCapture");
        if (this.K != null) {
            this.K.e(0);
        }
        this.aa = 0;
        this.ac.removeMessages(1);
        R();
        this.L.a(true);
        cH();
        if (this.K != null) {
            this.K.g(true);
            this.K.a((f.c) null);
        }
        if (al()) {
            return true;
        }
        aI();
        return false;
    }

    public void am() {
        com.oppo.camera.d.d("CommonCapMode", "onCancelTakePicture, reset mbShutterCallback");
        this.A = true;
    }

    public boolean at() {
        if (this.L == null || this.L.g()) {
            return super.at();
        }
        return true;
    }

    public int b() {
        if (cq() == 2 || cq() == 1) {
            return 32787;
        }
        if (cq() == 6 || cq() == 7 || cq() == 8 || cq() == 9) {
            return 32788;
        }
        if (!d("key_3hdr")) {
            return 32769;
        }
        String string = this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j));
        if ("on".equals(string)) {
            return 33025;
        }
        return MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(string) ? 33281 : 32769;
    }

    public Size b(h hVar) {
        if (cq() == 2 || cq() == 1) {
            return new Size(3264, 2448);
        }
        if (cq() == 6 || cq() == 7 || cq() == 8 || cq() == 9) {
            return new Size(1440, 1080);
        }
        if (!this.L.g()) {
            Size a2 = a(hVar);
            if (a2 != null) {
                return a2;
            }
        }
        return super.b(hVar);
    }

    public DcsMsgData b(DcsMsgData dcsMsgData) {
        CaptureMsgData captureMsgData = (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) ? null : (CaptureMsgData) dcsMsgData;
        if (captureMsgData == null) {
            return null;
        }
        if (d("pref_support_night_process")) {
            captureMsgData.mNightState = this.W;
        }
        super.b(dcsMsgData);
        return dcsMsgData;
    }

    public void b(int i) {
        com.oppo.camera.d.e("CommonCapMode", "onCameraIdChanged");
        super.b(i);
        this.A = true;
        this.ai = false;
        this.W = 0;
        this.af = 0;
        this.ap = 0;
        if (this.N != null) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    e.this.cE();
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void b(Image image) {
        super.b(image);
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        com.oppo.camera.d.c("CommonCapMode", "onBeforePictureTaken, mReceivedSnapNum: " + this.aa + ", isBurstShot: " + z);
        if (!this.s && z && this.aa < com.oppo.camera.o.d.s()) {
            this.aa++;
            this.M.g(this.aa);
            this.L.a(2);
        }
    }

    public boolean b(String str) {
        return ("pref_camera_flashmode_key".equals(str) || "pref_camera_hdr_mode_key".equals(str) || "pref_camera_vivid_effect_key".equals(str) || "pref_camera_pi_mode_key".equals(str) || "pref_filter_menu".equals(str) || "pref_none_sat_ultra_wide_angle_key".equals(str)) ? d(str) : super.b(str);
    }

    /* access modifiers changed from: protected */
    public boolean bE() {
        return d("pref_support_night_process") && this.W != 0 && this.af == 12 && !this.ai;
    }

    public boolean bF() {
        if (bE()) {
            return true;
        }
        return super.bF();
    }

    public int bG() {
        return this.aa;
    }

    public boolean bJ() {
        if (!d("key_beauty3d")) {
            return false;
        }
        b bVar = this.aq;
        if (bVar != null) {
            return bVar.i();
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public String[] bL() {
        return c.f2595b;
    }

    public int bc() {
        if (!cK() && !A()) {
            return super.bc();
        }
        com.oppo.camera.d.a("CommonCapMode", "getCurrFilterIndex, no filter");
        return 0;
    }

    public boolean bh() {
        return F() && bw();
    }

    public void bp() {
        StringBuilder sb = new StringBuilder();
        int i = this.ag;
        if (i > 0) {
            String format = CameraStatisticsUtil.format(CameraStatisticsUtil.NIGHT_CLOSED_NUM, String.valueOf(i));
            this.ag = 0;
            sb.append(format);
        }
        if (sb.length() > 0) {
            CameraStatisticsUtil.onCommon(this.N, CameraStatisticsUtil.EVENT_MENU_CLICK, sb.toString(), false);
        }
    }

    public boolean bq() {
        if (F() && !com.oppo.camera.o.d.w() && (!this.A || DebugUtil.debugPropertyEnabled("ro.config.oppo.low_ram", DebugUtil.DEBUG_DISABLE))) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, mbPicToDoneCallbacked: " + this.A + ", ro.config.oppo.low_ram: " + DebugUtil.debugPropertyEnabled("ro.config.oppo.low_ram", DebugUtil.DEBUG_DISABLE));
            return false;
        } else if (bE()) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, in nightProcess, so not support it");
            return false;
        } else if (cJ()) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, sdcard storage is too slow, so not support it");
            return false;
        } else if (bk()) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, vivid effect open, so not support it");
            return false;
        } else if (cK()) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, PIMode effect open, so not support it");
            return false;
        } else if (this.w) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, mbAutoBinning is true, so not support it");
            return false;
        } else if (!at() || !this.L.g()) {
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, param is null or from third app");
            return false;
        } else {
            String av = av();
            boolean z = "on".equals(this.O.getString("pref_camera_hdr_mode_key", CameraConfig.getOptionKeyDefaultValue("pref_camera_hdr_mode_key", this.j))) || this.v;
            String string = this.O.getString("pref_camera_photo_ratio_key", this.N.getString(R.string.camera_photo_ratio_default_value));
            if (!"on".equals(av) && !this.x && ((!z || !com.oppo.camera.o.d.w()) && !this.y && !"super".equals(string))) {
                return cv();
            }
            com.oppo.camera.d.a("CommonCapMode", "isCanFastCapture, flash: " + this.x + ", hdr: " + this.v + ", night: " + this.y);
            return false;
        }
    }

    public Size c(h hVar) {
        int cq = cq();
        return (cq == 0 || cq == 4) ? super.c(hVar) : new Size(1440, 1080);
    }

    public boolean cB() {
        b bVar = this.aq;
        if (bVar != null) {
            return bVar.g();
        }
        return false;
    }

    public void cC() {
        b bVar = this.aq;
        if (bVar != null) {
            int f = bVar.f();
            com.oppo.camera.d.a("CommonCapMode", "updateBeauty3DView, type: " + f);
            if (f != 1) {
                if (f != 10) {
                    if (f == 6 || f == 7) {
                        this.aq.a(1, new Size(1440, 1080));
                        return;
                    } else if (f != 8) {
                        return;
                    }
                }
                this.aq.a(2, new Size(1440, 1080));
                return;
            }
            this.aq.h();
        }
    }

    public boolean cD() {
        return com.oppo.camera.ui.preview.a.f.a(this.N) == 1 && d("key_beauty3d") && aW() == -1 && this.M.m() && cq() == 0 && "beauty".equals(aO());
    }

    public void ce() {
        if (i("key_bubble_type_custom_beuty3d")) {
            this.M.c(5, true);
        }
        if (i("key_bubble_type_add_beuty3d") && com.oppo.camera.ui.preview.a.f.a(this.N) == 0 && !A() && d("key_beauty3d") && "beauty".equals(aO())) {
            this.M.a((View) null, 6, x(6), y(6));
        }
        if (this.aq == null) {
            return;
        }
        if (cD()) {
            this.aq.e(true);
            this.aq.p();
            return;
        }
        this.aq.q();
    }

    public void cf() {
        if (i("key_bubble_type_add_beuty3d")) {
            this.M.c(6, true);
        }
        if (i("key_bubble_type_custom_beuty3d")) {
            this.M.c(5, true);
        }
        b bVar = this.aq;
        if (bVar != null) {
            bVar.q();
        }
    }

    public boolean cg() {
        return !bE() || !this.q;
    }

    public boolean cm() {
        return d("pref_support_night_process") || d("pref_support_raw_post_process");
    }

    public void cn() {
        b bVar = this.aq;
        if (bVar != null) {
            bVar.a(this.K);
        }
        if (d("key_3hdr") && this.K.c().G()) {
            this.K.n(true);
        }
        super.cn();
    }

    /* access modifiers changed from: protected */
    public boolean co() {
        return this.L != null && !this.L.g() && !cK() && !bw();
    }

    /* access modifiers changed from: protected */
    public int cq() {
        b bVar = this.aq;
        if (bVar != null) {
            return bVar.f();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void cs() {
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

    public void cy() {
        if (this.N != null && DebugUtil.isEnableHighPictureSizeSetting()) {
            com.oppo.camera.d.a("CommonCapMode", "displayFixedUpModeHint");
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.ax()) {
                        double a2 = com.oppo.camera.o.d.a((Context) e.this.N, CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE));
                        e.this.M.a(e.this.N.getString(R.string.camera_picture_size_standard_high_hint, new Object[]{Double.valueOf(a2)}), 0, (int) R.color.screen_hint_text_color);
                    }
                }
            });
        }
    }

    public Size d(h hVar) {
        Size b2 = com.oppo.camera.o.d.b(hVar.a(32), 1.3333333333333333d);
        if (b2 == null) {
            return super.d(hVar);
        }
        com.oppo.camera.d.b("CommonCapMode", "getRawSize, optimalSize: " + b2);
        return b2;
    }

    public boolean d(MotionEvent motionEvent) {
        return A();
    }

    public boolean d(String str) {
        if ((("key_fixed_focus_lens_support_tap_shutter".equals(str) || "key_fixed_focus_lens_support_metering".equals(str)) && this.L.W()) || CameraFunction.MODE_PANEL.equals(str)) {
            return true;
        }
        if ("pref_filter_process_key".equals(str)) {
            return !ax() || CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_PICTURE_FILTER_SUPPORT);
        }
        if ("pref_save_jpg_after_pause_key".equals(str)) {
            return this.L.g() && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SAVE_JPG_AFTER_PAUSE) && !bt() && com.oppo.camera.o.d.w();
        }
        if (CameraFunction.FACE_SLENDER_PROCESS.equals(str)) {
            return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.c(this.j) && !A();
        }
        if ("pref_camera_vivid_effect_key".equals(str)) {
            return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIVID_EFFECT) && com.oppo.camera.o.d.y() && !cK();
        }
        if ("pref_burst_shot_key".equals(str)) {
            return this.L.g() && !com.oppo.camera.e.a.c(this.j) && !ax();
        }
        if ("pref_support_post_view".equals(str)) {
            return false;
        }
        if ("pref_support_fast_capture".equals(str)) {
            if (com.oppo.camera.o.d.w()) {
                return true;
            }
            return cv() && !ax();
        } else if ("pref_support_capture_preview".equals(str)) {
            return this.L != null && this.L.g() && com.oppo.camera.o.d.w();
        } else {
            if ("pref_support_ipa_process".equals(str)) {
                return com.oppo.camera.o.d.w();
            }
            if ("pref_auto_night_scence_key".equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_COMMON_AUTO_NIGHT_SCENCE);
            }
            if ("pref_camera_torch_mode_key".equals(str)) {
                return com.oppo.camera.e.a.c(this.j);
            }
            if (CameraFunction.TORCH_SOFT_LIGHT.equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT) && com.oppo.camera.e.a.c(this.j);
            }
            if ("pref_camera_flashmode_key".equals(str)) {
                return !com.oppo.camera.e.a.c(this.j);
            }
            if ("pref_camera_hdr_mode_key".equals(str)) {
                return !ax() || CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_PICTURE_HDR_SUPPORT);
            }
            if (CameraFunction.FACE_BEAUTY_PROCESS.equals(str)) {
                return !ax() || CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_PICTURE_BEAUTY_SUPPORT);
            }
            if ("pref_expand_popbar_key".equals(str)) {
                return this.M.m() || this.M.w();
            }
            if ("key_beauty3d".equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.f() && com.oppo.camera.e.a.c(this.j) && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_BEAUTY3D);
            }
            if (CameraFunction.FACE_BEAUTY_CUSTOM.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS) && com.oppo.camera.e.a.c(this.j);
            }
            if (CameraFunction.FACE_BEAUTY_COMMON.equals(str)) {
                return d(CameraFunction.FACE_BEAUTY_PROCESS) && !com.oppo.camera.e.a.c(this.j);
            }
            if ("pref_ai_scene_key".equals(str)) {
                return !com.oppo.camera.e.a.c(this.j) && (!ax() || CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_PICTURE_ASD_SUPPORT));
            }
            if ("key_remosaic".equals(str)) {
                return com.oppo.camera.e.a.c(this.j) || ax();
            }
            if ("key_3hdr".equals(str)) {
                return com.oppo.camera.e.a.c(this.j) && d("pref_camera_hdr_mode_key") && (com.oppo.camera.e.a.a(this.j).H() || com.oppo.camera.e.a.a(this.j).G());
            }
            if ("pref_switch_front_dual_camera_key".equals(str)) {
                return d("key_beauty3d") && (cq() == 2 || cq() == 1);
            }
            if ("key_beauty3d_main_face_detect".equals(str)) {
                return d("key_beauty3d") && aW() == -1;
            }
            if ("pref_face_detection_key".equals(str)) {
                return !d("key_beauty3d") || !(cq() == 6 || cq() == 7 || cq() == 8 || cq() == 10 || cq() == 9);
            }
            if ("pref_camera_assistant_line_key".equals(str)) {
                return !A();
            }
            if ("pref_camera_pi_mode_key".equals(str)) {
                return CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_PI) && !com.oppo.camera.e.a.c(this.j) && (!ax() || CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_HIGH_PICTURE_PI_SUPPORT));
            }
            if ("pref_support_raw_post_process".equals(str)) {
                return d("pref_support_night_process") || d(CameraFunction.RAW_HDR);
            }
            if ("pref_camera_gradienter_key".equals(str)) {
                return false;
            }
            return "pref_filter_menu".equals(str) ? d("pref_filter_process_key") : (!com.oppo.camera.o.d.w() || !CameraFunction.RAW_HDR.equals(str)) ? (!"key_high_picture_size".equals(str) || !DebugUtil.isEnableHighPictureSizeSetting()) ? CameraFunction.SAT_CAMERA.equalsIgnoreCase(str) ? !com.oppo.camera.e.a.c(this.j) && com.oppo.camera.e.a.g() && !ax() && this.L.g() : "key_support_no_face_forbid_beauty".equals(str) ? !com.oppo.camera.e.a.c(this.j) : "pref_none_sat_ultra_wide_angle_key".equals(str) ? !com.oppo.camera.e.a.c(this.j) && br() && this.L.g() : super.d(str) : !com.oppo.camera.e.a.c(this.j) && CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE) != null && this.L.g() : !com.oppo.camera.e.a.c(this.j) && !ax();
        }
    }

    /* access modifiers changed from: protected */
    public void h() {
        com.oppo.camera.d.a("CommonCapMode", "onPause, mbBurstShot: " + this.p);
        this.M.i(false);
        if (this.p && this.ac != null) {
            aI();
            this.p = false;
        }
        if (bE()) {
            this.M.h(0);
        }
        Handler handler = this.ac;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        this.M.d(false);
        this.M.f(false);
        this.A = true;
        this.W = 0;
        this.af = 0;
        this.ai = false;
        this.ap = 0;
        if (d("key_beauty3d")) {
            b bVar = this.aq;
            if (bVar != null) {
                bVar.b();
            }
        }
        if (d("key_beauty3d") && i("key_bubble_type_add_beuty3d") && this.M.m()) {
            this.M.c(6, true);
        }
        if (d("key_beauty3d") && i("key_bubble_type_custom_beuty3d")) {
            this.M.c(5, true);
        }
    }

    /* access modifiers changed from: protected */
    public void i() {
        com.oppo.camera.d.e("CommonCapMode", "OnStop");
    }

    /* access modifiers changed from: protected */
    public void j() {
        com.oppo.camera.d.a("CommonCapMode", "onDestroy");
        this.ab = null;
        if (i("key_bubble_type_add_beuty3d")) {
            this.M.c(6, false);
        }
        if (i("key_bubble_type_custom_beuty3d")) {
            this.M.c(5, false);
        }
        b bVar = this.aq;
        if (bVar != null) {
            bVar.r();
            this.aq = null;
        }
    }

    /* access modifiers changed from: protected */
    public void k() {
        com.oppo.camera.d.a("CommonCapMode", "onInitCameraMode");
        a aVar = this.ab;
        if (aVar != null) {
            aVar.a();
        }
        if (this.ac == null) {
            this.ac = new Handler() {
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i == 1) {
                        com.oppo.camera.d.a("CommonCapMode", "handleMessage, MSG_CODE_HIDE_PICTURE_NUM");
                        if (!e.this.s) {
                            e.this.M.d(true);
                            if (e.this.L != null && !e.this.d("pref_expand_popbar_key")) {
                                e.this.L.w();
                            }
                            if (e.this.d("pref_filter_menu")) {
                                e.this.M.b(true);
                            }
                            if (e.this.d(CameraFunction.FACE_BEAUTY_PROCESS)) {
                                e.this.M.o(true);
                            }
                            e.this.bD();
                        }
                    } else if (i == 2) {
                        com.oppo.camera.d.a("CommonCapMode", "handleMessage, MSG_CODE_UPDATE_COUNTDOWN_TIME");
                        if (!e.this.s) {
                            e.this.cF();
                        }
                    } else if (i == 3) {
                        com.oppo.camera.d.a("CommonCapMode", "handleMessage, MSG_CODE_CAPTURE_RAW_DONE");
                        if (!e.this.q) {
                            com.oppo.camera.d.a("CommonCapMode", "handleMessage, raw capture is done, break");
                            return;
                        }
                        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                        cVar.a("button_color_inside_none");
                        cVar.a(4);
                        e.this.M.a(cVar);
                        e.this.M.f(true);
                    }
                }
            };
        }
        this.M.a(this.N.getString(R.string.camera_description_common_shutter_button));
        cE();
        this.V.put(a(), this.ar);
    }

    public boolean k(String str) {
        if ("type_preview_frame".equals(str)) {
            return d("pref_camera_gesture_shutter_key") && (cq() == 0 || cq() == 4);
        }
        if ("type_still_capture_raw".equals(str)) {
            return d("pref_support_raw_post_process");
        }
        if ("type_still_capture_yuv_main".equals(str)) {
            return this.J != null;
        }
        if ("type_still_capture_yuv_sub".equals(str) || "type_still_capture_yuv_third".equals(str)) {
            return this.J != null && !ax() && d(CameraFunction.SAT_CAMERA);
        }
        if (!com.oppo.camera.o.d.w() || !"type_still_capture".equals(str)) {
            return super.k(str);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void l() {
        com.oppo.camera.d.a("CommonCapMode", "onDeInitCameraMode");
        this.M.i(true);
        this.M.p(true);
        this.A = true;
        this.ai = false;
        this.W = 0;
        this.af = 0;
        this.ap = 0;
        Handler handler = this.ac;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        if (this.K != null) {
            this.K.k(0);
            if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_PI)) {
                this.K.d(false);
            }
        }
        j(0);
        if (this.P != null) {
            this.P.g(0);
        }
        this.M.d(false);
        if (i("key_bubble_type_add_beuty3d") && d("key_beauty3d")) {
            this.M.c(6, false);
        }
        if (i("key_bubble_type_custom_beuty3d")) {
            this.M.c(5, false);
        }
        b bVar = this.aq;
        if (bVar != null) {
            bVar.c();
        }
        if (this.J != null) {
            this.J.d();
        }
    }

    public void l(int i) {
        if (cK() && i != 0) {
            cL();
        }
        if (this.P != null) {
            this.P.a(o(i));
            this.P.b(false);
        }
        super.l(i);
    }

    /* access modifiers changed from: protected */
    public void m() {
        com.oppo.camera.d.a("CommonCapMode", "onBeforePreview");
        bK();
        b bVar = this.aq;
        if (bVar != null && bVar.f() > 0) {
            this.aq.b(this.K);
        }
        if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_PI)) {
            this.K.d(cK());
        }
        if (d("pref_burst_shot_key")) {
            List<Size> list = null;
            if (this.K.c() != null) {
                list = this.K.c().a(256);
            }
            Size b2 = com.oppo.camera.o.d.b(list, 1.3333333333333333d);
            if (b2 != null && ((long) (b2.getWidth() * b2.getHeight())) > 14000000) {
                com.oppo.camera.o.d.b(10);
            }
        }
    }

    public void m(int i) {
        if (!this.q) {
            this.af = i;
        }
    }

    public void n(int i) {
        if (cK() && i != 0) {
            cL();
        }
        super.n(i);
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        com.oppo.camera.d.a("CommonCapMode", "onBeforeSnapping");
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                boolean bE = e.this.bE();
                if (!e.this.p && ((e.this.X || bE) && !com.oppo.camera.e.a.c(e.this.j))) {
                    com.oppo.camera.d.a("CommonCapMode", "onBeforeSnapping, show scene night tips");
                    e.this.M.a(R.string.camera_scene_night_tips, -1, false, false, true);
                    e.this.Y = true;
                    if (!bE) {
                        com.oppo.camera.ui.control.c cVar = new com.oppo.camera.ui.control.c();
                        cVar.a("button_color_inside_none");
                        cVar.a(4);
                        e.this.M.a(cVar);
                    }
                }
                if (e.this.d("key_beauty3d") && e.this.aq != null) {
                    if (e.this.cD()) {
                        e.this.aq.p();
                        e.this.aq.e(false);
                    } else {
                        e.this.aq.q();
                    }
                    String aw = e.this.aw();
                    if ((aw.equals("on") || aw.equals(MenuClickMsgData.VALUE_PROFESSION_AUTO)) && com.oppo.camera.e.a.c(e.this.j) && e.this.d("pref_camera_torch_mode_key")) {
                        e.this.aq.q();
                    }
                }
                if (bE && !e.this.p) {
                    e.this.cH();
                    if (e.this.M.m()) {
                        e.this.M.l(false);
                    } else {
                        e.this.M.j(false);
                    }
                    e.this.M.a(false, true, false, false);
                    e.this.M.h(4);
                    e.this.M.e(4);
                    e.this.M.f(4);
                    e.this.M.a(4);
                    e.this.L.a((Animation.AnimationListener) null);
                    e.this.M.e(e.this.N.getString(R.string.camera_night_capturing_hint));
                }
            }
        });
        if (bE() && !this.p) {
            if (this.W == 1) {
                this.K.s(2400);
            }
            this.K.q(this.W);
            this.K.a(1, com.oppo.camera.a.a(), com.oppo.camera.a.a(), false);
            this.K.f(true);
            n(0);
            aE();
        }
        if (ax()) {
            if (ba() || F() || cK()) {
                this.K.r(0);
            } else {
                this.K.r(1);
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return !com.oppo.camera.o.d.w() && !this.A;
    }

    public int q(int i) {
        com.oppo.camera.d.a("CommonCapMode", "getBeauty3DScanIconType, effectIndex: " + i);
        int a2 = com.oppo.camera.ui.preview.a.f.a(this.N);
        if (i != 0 || !"beauty".equals(aO()) || !d("key_beauty3d") || a2 != 0) {
            return (i != 0 || !"beauty".equals(aO()) || !d("key_beauty3d") || a2 != 1) ? 0 : 2;
        }
        this.M.c(6, true);
        return 1;
    }

    public boolean r(int i) {
        if (1 != q(i)) {
            return false;
        }
        b bVar = this.aq;
        if (bVar == null) {
            return false;
        }
        bVar.k();
        return true;
    }

    public int s() {
        return d(CameraFunction.SAT_CAMERA) ? super.s() * this.m : super.s();
    }

    public void s(int i) {
        if (i == 12 && !this.ai) {
            this.ai = true;
            this.W = 0;
            if (this.K != null) {
                this.K.q(this.W);
                this.K.a((f.c) null);
            }
            this.ag++;
        }
    }

    public com.oppo.camera.e.d t() {
        if (this.p || (!bE() && r() != 1)) {
            return super.t();
        }
        com.oppo.camera.e.d dVar = new com.oppo.camera.e.d();
        dVar.a(d.a.CAPTURE_RAW);
        dVar.h = s();
        dVar.i = ad();
        dVar.A = "on".equals(com.oppo.camera.e.a.c(this.j) ? az() : a_);
        a(dVar);
        return dVar;
    }

    /* access modifiers changed from: protected */
    public void v(int i) {
        b bVar = this.aq;
        if (bVar != null) {
            bVar.a(i);
        }
    }

    /* access modifiers changed from: protected */
    public f.a x() {
        this.ap = 0;
        return super.x();
    }
}
