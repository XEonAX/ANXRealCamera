package com.oppo.camera.g;

import android.app.Activity;
import android.util.Size;
import android.view.animation.Animation;
import com.oppo.camera.d;
import com.oppo.camera.d.b;
import com.oppo.camera.d.m;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;
import java.util.HashMap;

/* compiled from: FastVideoMode */
public class a extends m {
    private int af = 10;
    private String ag = "video_size_1080p";
    private HashMap<String, String> ah = new HashMap<>();
    private Integer ai;
    private float aj;

    public a(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    private void cB() {
        d.a("FastVideoMode", "setFastValueToParameter, mSpeedValue: " + this.af);
        int i = this.af;
        if (i == 2) {
            this.ai = 15;
            this.aj = 0.5f;
        } else if (i == 4) {
            this.aj = 0.25f;
            this.ai = 8;
        } else if (i == 6) {
            this.ai = 5;
            this.aj = 0.16666667f;
        } else if (i == 8) {
            this.ai = 4;
            this.aj = 0.125f;
        } else if (i == 10) {
            this.ai = 3;
            this.aj = 0.1f;
        }
    }

    public boolean B() {
        return false;
    }

    public boolean P() {
        o(true);
        return super.P();
    }

    public boolean Z() {
        return false;
    }

    public String a() {
        return "fastVideo";
    }

    public boolean a(String str) {
        return false;
    }

    public void an() {
        if (this.L != null) {
            this.L.a((Animation.AnimationListener) null);
        }
        this.M.a(new com.oppo.camera.ui.control.c(5, "button_color_inside_red", "button_shape_dial_rotate", 1));
        super.an();
        if (this.K != null && !com.oppo.camera.o.d.w() && this.L != null) {
            this.K.a(com.oppo.camera.e.a.b(this.j, this.L.k()));
            this.K.a((f.c) null);
        }
    }

    public void ap() {
        if (this.L != null) {
            this.L.w();
        }
        this.M.a(new com.oppo.camera.ui.control.c(6, "button_color_inside_red", "button_shape_dial_rotate", 1));
        super.ap();
    }

    public boolean at() {
        return false;
    }

    public int b() {
        return (com.oppo.camera.e.a.c(this.j) || !d("key_support_fovc")) ? 32780 : 33548;
    }

    public boolean b(String str) {
        return super.b(str);
    }

    public void bD() {
        if (cM()) {
            this.M.a(false, true, true);
        }
    }

    public int bP() {
        return cC();
    }

    public String bQ() {
        return this.ag;
    }

    public boolean br() {
        return false;
    }

    public boolean bu() {
        return cM();
    }

    public Size c(h hVar) {
        Size l = l("video_size_1080p");
        return l != null ? l : super.c(hVar);
    }

    public void c(int i) {
        this.g = i;
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
    public Integer cD() {
        return this.ai;
    }

    public Float cN() {
        float f = this.aj;
        d.a("FastVideoMode", "getRealVideoTimeRatio, ratio: " + f);
        return Float.valueOf(f);
    }

    public boolean cW() {
        return false;
    }

    public boolean d(String str) {
        if ("pref_time_lapse_key".equals(str) || "pref_camera_videoflashmode_key".equals(str) || "pref_video_size_key".equals(str) || "pref_camera_tap_shutter_key".equals(str) || "pref_camera_assistant_line_key".equals(str) || "pref_camera_gesture_shutter_key".equals(str) || "pref_support_recording_capture".equals(str) || "pref_video_ratio_key".equals(str)) {
            return false;
        }
        return "pref_zoom_key".equals(str) ? !bY() && !com.oppo.camera.e.a.c(this.j) : super.d(str);
    }

    public boolean f(String str) {
        if (!"pref_video_size_key".equals(str) && !"pref_camera_videoflashmode_key".equals(str)) {
            return super.f(str);
        }
        return false;
    }

    public com.oppo.camera.ui.control.c g() {
        com.oppo.camera.ui.control.c g = super.g();
        g.b("button_shape_dial_rotate");
        return g;
    }

    /* access modifiers changed from: protected */
    public void h() {
        o(true);
        super.h();
    }

    /* access modifiers changed from: protected */
    public void j() {
        super.j();
        HashMap<String, String> hashMap = this.ah;
        if (hashMap != null) {
            hashMap.clear();
            this.ah = null;
        }
    }

    /* access modifiers changed from: protected */
    public void k() {
        d.a("FastVideoMode", "onInitCameraMode");
        super.k();
        this.g = this.L.k();
        this.af = 10;
    }

    /* access modifiers changed from: protected */
    public void l() {
        d.a("FastVideoMode", "onDeInitCameraMode");
        o(true);
        super.l();
    }

    /* access modifiers changed from: protected */
    public void m() {
        d.a("FastVideoMode", "onBeforePreview");
        super.m();
        cB();
        o(false);
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
