package com.oppo.camera.entry;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.ui.preview.a.h;
import java.util.HashSet;
import java.util.Set;

/* compiled from: CameraEntry */
public class b implements a {
    private static Long g = -1L;
    private int h = 1;
    private String i = "";
    private Activity j = null;
    private String k = "";
    private long l = 0;
    private boolean m = false;
    private boolean n = false;
    private boolean o = true;
    private boolean p = true;
    private SharedPreferences q = null;
    private String r = null;
    private Set<String> s = new HashSet();

    /* compiled from: CameraEntry */
    private enum a {
        front_main,
        front_dual,
        back_main,
        back_dual,
        back_sat,
        back_wide,
        back_tele,
        back_mono
    }

    public static boolean a(String str) {
        return !"slowVideo".equals(str) && !"night".equals(str) && !"professional".equals(str);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    private boolean a(String str, a aVar) {
        char c;
        switch (str.hashCode()) {
            case -1933413040:
                if (str.equals("commonVideo")) {
                    c = 6;
                    break;
                }
            case -1890252483:
                if (str.equals("sticker")) {
                    c = 5;
                    break;
                }
            case -1354814997:
                if (str.equals("common")) {
                    c = 0;
                    break;
                }
            case -35510913:
                if (str.equals("fastVideo")) {
                    c = 7;
                    break;
                }
            case 103652300:
                if (str.equals("macro")) {
                    c = 9;
                    break;
                }
            case 104817688:
                if (str.equals("night")) {
                    c = 1;
                    break;
                }
            case 729267099:
                if (str.equals(CameraStatisticsUtil.EVENT_CAPTURE)) {
                    c = 3;
                    break;
                }
            case 764302074:
                if (str.equals("slowVideo")) {
                    c = 8;
                    break;
                }
            case 875077159:
                if (str.equals("professional")) {
                    c = 4;
                    break;
                }
            case 1069983349:
                if (str.equals("panorama")) {
                    c = 2;
                    break;
                }
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return aVar == a.back_sat || aVar == a.back_main || aVar == a.back_wide || aVar == a.front_main;
            case 1:
                return aVar == a.back_main || aVar == a.back_wide || aVar == a.back_sat;
            case 2:
                return aVar == a.front_main || aVar == a.back_main;
            case 3:
                return aVar == a.back_dual || aVar == a.back_mono || aVar == a.front_main;
            case 4:
                return aVar == a.back_wide || aVar == a.back_tele || aVar == a.back_main;
            case 5:
                return aVar == a.front_dual || aVar == a.front_main || aVar == a.back_main;
            case 6:
                return aVar == a.front_main || aVar == a.back_main || aVar == a.back_sat || aVar == a.back_wide;
            case 7:
                return aVar == a.front_main || aVar == a.back_main || aVar == a.back_sat;
            case 8:
                return aVar == a.back_main;
            case 9:
                return aVar == a.back_tele;
            default:
                return false;
        }
    }

    private void b(Intent intent) {
        int i2;
        boolean z;
        boolean z2;
        if (intent == null) {
            d.e("CameraEntry", "parseIntentExtraInfo, intent is null");
            return;
        }
        this.k = intent.getAction();
        if (!"android.intent.action.MAIN".equals(this.k)) {
            this.s.clear();
            d.a("CameraEntry", "parseIntentExtraInfo, action: " + this.k);
            try {
                i2 = intent.getIntExtra("mode", -1);
            } catch (Exception e) {
                e.printStackTrace();
                i2 = -1;
            }
            boolean z3 = false;
            if (i2 != -1) {
                this.r = f2129a[i2];
                if (!a(this.r)) {
                    intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
                    this.s.add("rear");
                }
            }
            try {
                z = intent.getBooleanExtra("rear", false);
            } catch (Exception e2) {
                e2.printStackTrace();
                z = false;
            }
            if (z) {
                intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
                this.s.add("rear");
                if (this.r == null) {
                    this.r = f2129a[0];
                }
            }
            try {
                z2 = intent.getBooleanExtra("front", false);
            } catch (Exception e3) {
                e3.printStackTrace();
                z2 = false;
            }
            if (z2) {
                intent.putExtra("android.intent.extras.CAMERA_FACING", 1);
                this.s.add("front");
                if (this.r == null) {
                    this.r = f2129a[0];
                }
            }
            try {
                z3 = intent.getBooleanExtra("beauty", false);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (z3) {
                this.s.add("beauty");
            }
        }
    }

    public static boolean b(String str) {
        return "sticker".equals(str) || "common".equals(str) || CameraStatisticsUtil.EVENT_CAPTURE.equals(str) || "commonVideo".equals(str);
    }

    private boolean b(String str, a aVar) {
        if (aVar == a.back_sat && "commonVideo".equals(str)) {
            if (!CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_VIDEO_SAT)) {
                return false;
            }
            String string = this.q.getString("pref_video_fps_key", this.j.getString(R.string.camera_video_default_fps));
            String string2 = this.q.getString("pref_video_size_key", CameraConfig.getOptionKeyDefaultValue("pref_video_size_key", 0));
            if (Integer.valueOf(string).intValue() != 30 || "video_size_4kuhd".equals(string2)) {
                return false;
            }
        }
        if (aVar == a.back_sat && "common".equals(str) && (!com.oppo.camera.e.a.g() || this.q.getBoolean("key_high_picture_size", false))) {
            return false;
        }
        if (aVar == a.back_tele && "professional".equals(str) && !this.q.getString("pref_switch_camera_key", "camera_main").equals("camera_tele")) {
            return false;
        }
        if (aVar == a.back_wide) {
            boolean z = this.q.contains("pref_none_sat_ultra_wide_angle_key") && "on".equals(this.q.getString("pref_none_sat_ultra_wide_angle_key", c.a_));
            if ("common".equals(str)) {
                if (!z || this.q.getBoolean("key_high_picture_size", false)) {
                    return false;
                }
            } else if ("professional".equals(str)) {
                if (!this.q.getString("pref_switch_camera_key", "camera_main").equals("camera_ultra_wide")) {
                    return false;
                }
            } else if ("commonVideo".equals(str)) {
                if (!z || this.q.getBoolean("key_high_picture_size", false)) {
                    return false;
                }
            } else if ("night".equals(str) && (!z || this.q.getBoolean("key_high_picture_size", false))) {
                return false;
            }
        }
        if (aVar == a.front_dual && "sticker".equals(str) && !h.a(h.b((Context) this.j).a(this.q), 1)) {
            return false;
        }
        if (aVar != a.back_sat || !"night".equals(str) || com.oppo.camera.e.a.g()) {
            return a(str, aVar);
        }
        return false;
    }

    private void c(Intent intent) {
        String action = intent.getAction();
        d(intent);
        if (action != null) {
            if ("android.media.action.STILL_IMAGE_CAMERA_SECURE".equals(action)) {
                this.h = 1;
            } else if ("android.media.action.IMAGE_CAPTURE".equals(action) || "android.media.action.IMAGE_CAPTURE_SECURE".equals(action)) {
                this.h = 2;
                this.r = "common";
            } else if ("android.media.action.VIDEO_CAPTURE".equals(action) || "com.oppo.action.VIDEO_CAMERA".equals(action)) {
                this.h = 3;
                this.r = "commonVideo";
            } else if ("android.media.action.STILL_IMAGE_CAMERA".equals(action) || "android.intent.action.VOICE_INTERACTION_GTS_TEST".equals(action)) {
                this.n = true;
                this.h = 1;
            } else {
                this.h = 1;
            }
        }
        d.a("CameraEntry", "parseIntent, mCameraEntryType: " + this.h + ", mCallPkg: " + this.i + ", mAction: " + this.k);
        b(intent);
        if (n()) {
            this.j.setShowWhenLocked(true);
        }
    }

    private void d(Intent intent) {
        Uri uri;
        this.i = "";
        String str = null;
        try {
            uri = this.j.getReferrer();
        } catch (Exception e) {
            e.printStackTrace();
            uri = null;
        }
        try {
            str = intent.getStringExtra("extra_key_caller_package_name");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!TextUtils.isEmpty(str)) {
            this.i = str;
        } else if (uri != null) {
            this.i = uri.getHost();
        }
    }

    public static long j() {
        return g.longValue();
    }

    private boolean t() {
        return 1 == r();
    }

    public int a(String str, int i2) {
        if (i2 == 1) {
            return b(str, a.front_dual) ? com.oppo.camera.e.a.m() : com.oppo.camera.e.a.j();
        }
        if (b(str, a.back_mono)) {
            int i3 = this.q.getInt("key_portrait_new_style_back_index", 0);
            int length = com.oppo.camera.ui.preview.a.d.f.length;
            if (i3 >= length) {
                int e = com.oppo.camera.k.a.e(i3 - length);
                if (e != 0) {
                    return e;
                }
            }
        }
        return (!b(str, a.back_sat) || this.h != 1) ? b(str, a.back_dual) ? com.oppo.camera.e.a.l() : b(str, a.back_tele) ? com.oppo.camera.e.a.n() : (!b(str, a.back_wide) || r() != 1) ? com.oppo.camera.e.a.i() : com.oppo.camera.e.a.k() : com.oppo.camera.e.a.h();
    }

    public void a() {
        if (1 == r() && !this.p) {
            long currentTimeMillis = System.currentTimeMillis();
            d.a("CameraEntry", "saveCameraExitState, currentTime: " + currentTimeMillis);
            this.p = true;
            SharedPreferences.Editor edit = this.q.edit();
            edit.putLong("pref_camera_exit_time_stamp_key", currentTimeMillis);
            edit.apply();
        }
    }

    public void a(Intent intent, Activity activity, SharedPreferences sharedPreferences) {
        this.j = activity;
        this.q = sharedPreferences;
        c(intent);
        k();
        d.a("CameraEntry", "onCreate, mCameraEntryType: " + this.h + ", mCallPkg: " + this.i + ", action: " + this.k);
    }

    public void a(boolean z) {
        if (z) {
            this.j.setShowWhenLocked(false);
        }
        this.m = true;
    }

    public boolean a(Intent intent) {
        d.a("CameraEntry", "onNewIntent");
        if ("android.media.action.STILL_IMAGE_CAMERA_SECURE".equals(intent.getAction()) || this.j.getCallingActivity() == null) {
            this.j.setIntent(intent);
            c(intent);
            return true;
        }
        intent.setFlags(469762048);
        this.j.finish();
        this.j.overridePendingTransition(R.anim.oppo_close_slide_enter, R.anim.oppo_close_slide_exit);
        this.j.startActivity(intent);
        return false;
    }

    public boolean b() {
        return this.s.contains("capture");
    }

    public void c() {
        this.s.remove("capture");
    }

    public boolean d() {
        return t() && this.o;
    }

    public boolean e() {
        return !this.o || l();
    }

    public String f() {
        String str = this.r;
        return str != null ? str : this.h == 3 ? "commonVideo" : d() ? "common" : this.q.getString("pref_camera_mode_key", "common");
    }

    public void g() {
        this.r = null;
        this.s.clear();
        this.o = false;
    }

    public boolean h() {
        return l() && this.s.contains("beauty");
    }

    public int i() {
        int i2;
        int parseInt = Integer.parseInt(this.q.getString("pref_camera_id_key", String.valueOf(0)));
        if (d()) {
            parseInt = 0;
        }
        try {
            i2 = this.j.getIntent().getIntExtra("android.intent.extras.CAMERA_FACING", i2);
            if (this.n) {
                i2 = this.j.getIntent().getBooleanExtra("android.intent.extra.USE_FRONT_CAMERA", false) ? 1 : 0;
                Bundle extras = this.j.getIntent().getExtras();
                if (extras != null && extras.containsKey("Testcase_type")) {
                    if ("OPEN_FRONT_CAMERA".equalsIgnoreCase(extras.getString("Testcase_type"))) {
                        i2 = 1;
                    } else if ("OPEN_REAR_CAMERA".equalsIgnoreCase(extras.getString("Testcase_type"))) {
                        i2 = 0;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        d.a("CameraEntry", "getIntentLegacyId, mCameraEntryType: " + this.h + ", cameraId: " + i2);
        return i2;
    }

    public void k() {
        long j2 = this.q.getLong("pref_camera_exit_time_stamp_key", 0);
        long currentTimeMillis = System.currentTimeMillis();
        this.l = currentTimeMillis - j2;
        g = Long.valueOf(currentTimeMillis);
        if (t()) {
            if (this.p) {
                this.p = false;
                d.a("CameraEntry", "updateOverrideCameraModeStatus, currentTime: " + currentTimeMillis + ", timeStamp: " + j2 + ", mCameraEnterTimeGap: " + this.l);
                if (0 < j2) {
                    long j3 = this.l;
                    if (0 < j3 && 300000 >= j3) {
                        this.o = false;
                        return;
                    }
                }
                this.o = true;
                return;
            }
            this.o = false;
        } else if (l()) {
            if (this.p) {
                this.p = false;
            }
        } else if (n() && this.p) {
            this.p = false;
            this.o = false;
        }
    }

    public boolean l() {
        return this.r != null || !this.s.isEmpty();
    }

    public String m() {
        return this.i;
    }

    public boolean n() {
        return "android.media.action.STILL_IMAGE_CAMERA_SECURE".equals(this.k);
    }

    public void o() {
        this.r = null;
        this.s.clear();
    }

    public void p() {
        if (n()) {
            this.j.setShowWhenLocked(true);
        } else {
            this.j.setShowWhenLocked(false);
        }
        this.m = false;
    }

    public String q() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.r);
        String str = "beauty";
        if (!this.s.contains(str)) {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public int r() {
        return this.h;
    }

    public long s() {
        return this.l;
    }
}
