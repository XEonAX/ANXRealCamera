package com.oppo.camera.ui.menu.b;

import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HeadlineHelper */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private List<Integer> f2739a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f2740b = new ArrayList();
    private int c = 1;

    /* JADX WARNING: Can't fix incorrect switch cases order */
    public static int a(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1933413040:
                if (str.equals("commonVideo")) {
                    c2 = 2;
                    break;
                }
            case -1890252483:
                if (str.equals("sticker")) {
                    c2 = 6;
                    break;
                }
            case -35510913:
                if (str.equals("fastVideo")) {
                    c2 = 0;
                    break;
                }
            case 3357525:
                if (str.equals("more")) {
                    c2 = 10;
                    break;
                }
            case 103652300:
                if (str.equals("macro")) {
                    c2 = 9;
                    break;
                }
            case 104817688:
                if (str.equals("night")) {
                    c2 = 7;
                    break;
                }
            case 729267099:
                if (str.equals(CameraStatisticsUtil.EVENT_CAPTURE)) {
                    c2 = 4;
                    break;
                }
            case 764302074:
                if (str.equals("slowVideo")) {
                    c2 = 1;
                    break;
                }
            case 875077159:
                if (str.equals("professional")) {
                    c2 = 5;
                    break;
                }
            case 1069983349:
                if (str.equals("panorama")) {
                    c2 = 3;
                    break;
                }
            case 1401705245:
                if (str.equals("highPictureSize")) {
                    c2 = 8;
                    break;
                }
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return R.string.camera_mode_fast_video;
            case 1:
                return R.string.camera_mode_slow_video;
            case 2:
                return R.string.camera_mode_video;
            case 3:
                return R.string.camera_mode_panorama;
            case 4:
                return R.string.camera_mode_portrait;
            case 5:
                return R.string.camera_mode_professional;
            case 6:
                return R.string.camera_mode_sticker;
            case 7:
                return R.string.camera_mode_night;
            case 8:
                return d();
            case 9:
                return R.string.camera_mode_super_macro;
            case 10:
                return R.string.camera_mode_more;
            default:
                return R.string.camera_mode_common;
        }
    }

    public static String b(int i) {
        switch (i) {
            case R.string.camera_mode_fast_video:
                return "fastVideo";
            case R.string.camera_mode_high_picture_size_48mp:
            case R.string.camera_mode_high_picture_size_64mp:
                return "highPictureSize";
            case R.string.camera_mode_more:
                return "more";
            case R.string.camera_mode_night:
                return "night";
            case R.string.camera_mode_panorama:
                return "panorama";
            case R.string.camera_mode_portrait:
                return CameraStatisticsUtil.EVENT_CAPTURE;
            case R.string.camera_mode_professional:
                return "professional";
            case R.string.camera_mode_slow_video:
                return "slowVideo";
            case R.string.camera_mode_sticker:
                return "sticker";
            case R.string.camera_mode_video:
                return "commonVideo";
            default:
                return "common";
        }
    }

    private static int d() {
        int W = com.oppo.camera.o.d.W();
        return (W != 48 && W == 64) ? R.string.camera_mode_high_picture_size_64mp : R.string.camera_mode_high_picture_size_48mp;
    }

    public void a() {
        com.oppo.camera.d.a("HeadlineHelper", "updateMode, mCameraEntryType: " + this.c);
        this.f2739a.clear();
        this.f2740b.clear();
        int i = this.c;
        Integer valueOf = Integer.valueOf(R.string.camera_mode_video);
        if (i == 3) {
            this.f2740b.add(valueOf);
            this.f2739a.add(valueOf);
        } else if (i == 2) {
            this.f2740b.add(Integer.valueOf(R.string.camera_mode_common));
            this.f2739a.add(Integer.valueOf(R.string.camera_mode_common));
            if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_PORTRAIT)) {
                this.f2740b.add(Integer.valueOf(R.string.camera_mode_portrait));
                this.f2739a.add(Integer.valueOf(R.string.camera_mode_portrait));
            }
        } else if (i == 1) {
            if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_NIGHT)) {
                this.f2740b.add(Integer.valueOf(R.string.camera_mode_night));
            }
            if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_FRONT_SUPERNIGHT)) {
                this.f2739a.add(Integer.valueOf(R.string.camera_mode_night));
            }
            this.f2740b.add(valueOf);
            this.f2739a.add(valueOf);
            this.f2740b.add(Integer.valueOf(R.string.camera_mode_common));
            this.f2739a.add(Integer.valueOf(R.string.camera_mode_common));
            if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_SUPPORT_PORTRAIT)) {
                this.f2740b.add(Integer.valueOf(R.string.camera_mode_portrait));
                this.f2739a.add(Integer.valueOf(R.string.camera_mode_portrait));
            }
            if (DebugUtil.isEnableHighPictureSizeMode()) {
                this.f2740b.add(Integer.valueOf(d()));
            }
            this.f2740b.add(Integer.valueOf(R.string.camera_mode_more));
            this.f2739a.add(Integer.valueOf(R.string.camera_mode_more));
        }
        com.oppo.camera.d.a("HeadlineHelper", "updateMode, mRearCameraModeTextIdList size: " + this.f2740b.size() + ", mFrontCameraModeTextIdList size: " + this.f2739a.size());
    }

    public void a(int i) {
        this.c = i;
    }

    public List<Integer> b() {
        a();
        return this.f2739a;
    }

    public List<Integer> c() {
        a();
        return this.f2740b;
    }
}
