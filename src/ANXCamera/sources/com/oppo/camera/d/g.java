package com.oppo.camera.d;

import android.app.Activity;
import android.util.Size;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.e.h;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;

/* compiled from: HighPictureSizeMode */
public class g extends e {
    public g(Activity activity, b bVar, c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
        d.a("HighPictureSizeMode", "constructor");
    }

    public Size a(String str, h hVar) {
        return "type_still_capture_yuv_main_high_pixel_mfnr".equals(str) ? CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_MFNR_PICTURE_SIZE) : super.a(str, hVar);
    }

    public String a() {
        return "highPictureSize";
    }

    public boolean a(String str) {
        if ("pref_camera_high_resolution_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.a(str);
    }

    public boolean ax() {
        return true;
    }

    public Size b(h hVar) {
        Size sizeConfigValue = CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE);
        StringBuilder sb = new StringBuilder();
        sb.append("getPictureSize size: ");
        sb.append(sizeConfigValue == null ? "size is null." : sizeConfigValue.toString());
        d.a("HighPictureSizeMode", sb.toString());
        return sizeConfigValue;
    }

    public boolean bv() {
        return false;
    }

    public boolean c() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return this.N.getString(R.string.camera_picture_size_standard);
    }

    public boolean d(String str) {
        if (CameraFunction.MODE_PANEL.equals(str) || "pref_none_sat_ultra_wide_angle_key".equals(str) || "pref_support_switch_camera".equals(str) || "pref_filter_process_key".equals(str) || "pref_mirror_key".equals(str) || "pref_burst_shot_key".equals(str)) {
            return false;
        }
        return "key_high_picture_size".equals(str) ? !a.c(this.j) && CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE) != null && this.L.g() : super.d(str);
    }

    public boolean k(String str) {
        return "type_still_capture_yuv_main_high_pixel_mfnr".equals(str) ? CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_MFNR_PICTURE_SIZE) != null : super.k(str);
    }
}
