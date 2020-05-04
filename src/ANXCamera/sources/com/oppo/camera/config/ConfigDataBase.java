package com.oppo.camera.config;

import android.hardware.camera2.CameraCharacteristics;
import com.oppo.camera.c;
import com.oppo.camera.d;
import com.oppo.camera.e.h;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.menu.b;
import com.oppo.exif.OppoExifInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConfigDataBase {
    protected static final String BACK_DEFAULT = "_back_camera";
    protected static final String BACK_SUPPORTED = "_back_camera_supported";
    protected static final String DEFAULT = "_default";
    protected static final String FRONT_DEFAULT = "_front_camera";
    protected static final String FRONT_SUPPORTED = "_front_camera_supported";
    public static final CameraCharacteristics.Key<Byte> KEY_ANIMOJI = new CameraCharacteristics.Key<>("com.oppo.app.feature.animoji.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_ARCSOFT_SINGLE_BOKEH = new CameraCharacteristics.Key<>("com.oppo.feature.arscoft.single.bokeh.support", Byte.class);
    public static final CameraCharacteristics.Key<int[]> KEY_BACK_PORTRAIT_NORMAL_MODE_PIC_SIZE = new CameraCharacteristics.Key<>("com.oppo.tunning.back.portrait.normal.picturesize", int[].class);
    public static final CameraCharacteristics.Key<Byte> KEY_BEAUTY3D = new CameraCharacteristics.Key<>("com.oppo.feature.beauty3d.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_CAPTURE_THIRD_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oppo.capture.third.size", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_COMMON_AUTO_NIGHT_SCENCE = new CameraCharacteristics.Key<>("com.oppo.feature.auto.night.scence.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_CSHOT_FIRST_REQUEST_NUM = new CameraCharacteristics.Key<>("com.oppo.tunning.continue.shot.first.request.num", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_DEFAULT_TO_FRONT_SWITCH_ANIM_TIME = new CameraCharacteristics.Key<>("com.oppo.tunning.rear.to.front.switchtime", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_DEFAULT_TO_REAL_SWITCH_ANIM_TIME = new CameraCharacteristics.Key<>("com.oppo.tunning.front.to.rear.switchtime", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_FACE_BEAUTY_VERSION_CODE = new CameraCharacteristics.Key<>("com.oppo.facebeauty.version", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_FEATURE_DCIP3_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.feature.DCIP3.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_FRONT_PANORAMA_MAX_HEIGHT = new CameraCharacteristics.Key<>("com.oppo.tunning.front.panorama.max.height", Integer.class);
    public static final CameraCharacteristics.Key<int[]> KEY_FRONT_SUPERNIGHT_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oppo.front.supernight.picturesize", int[].class);
    public static final CameraCharacteristics.Key<Byte> KEY_GOOGLE_LENS_ENABLE = new CameraCharacteristics.Key<>("com.oppo.feature.googlelens.support", Byte.class);
    public static final CameraCharacteristics.Key<int[]> KEY_HIGH_MFNR_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oppo.high.mfnr.picturesize", int[].class);
    public static final CameraCharacteristics.Key<Byte[]> KEY_HIGH_PICTURE_ASD_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.high.picturesize.asd.support", Byte[].class);
    public static final CameraCharacteristics.Key<Byte[]> KEY_HIGH_PICTURE_BEAUTY_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.high.picturesize.beauty.support", Byte[].class);
    public static final CameraCharacteristics.Key<Byte[]> KEY_HIGH_PICTURE_FILTER_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.high.picturesize.filter.support", Byte[].class);
    public static final CameraCharacteristics.Key<Byte[]> KEY_HIGH_PICTURE_HDR_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.high.picturesize.hdr.support", Byte[].class);
    public static final CameraCharacteristics.Key<Byte[]> KEY_HIGH_PICTURE_PI_SUPPORT = new CameraCharacteristics.Key<>("com.oppo.high.picturesize.pi.support", Byte[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_HIGH_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oppo.high.picturesize", int[].class);
    public static final CameraCharacteristics.Key<Integer> KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT = new CameraCharacteristics.Key<>("com.oppo.tunning.temperature.ultimate.limit", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P = new CameraCharacteristics.Key<>("com.oppo.temperature.ultimate.limit.1080p.720p.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_MOTOR_DOWN_DELAY = new CameraCharacteristics.Key<>("com.oppo.motor.down.delay", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_MOTOR_FLASHLIGHT = new CameraCharacteristics.Key<>("com.oppo.feature.motor.flashlight.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_NIGHT = new CameraCharacteristics.Key<>("com.oppo.feature.suppernight.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_PANORAMA_TO_FRONT_SWITCH_ANIM_TIME = new CameraCharacteristics.Key<>("com.oppo.tunning.panorama.rear.to.front.switchtime", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_PANORAMA_TO_REAL_SWITCH_ANIM_TIME = new CameraCharacteristics.Key<>("com.oppo.tunning.panorama.front.to.rear.switchtime", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_PI = new CameraCharacteristics.Key<>("com.oppo.feature.pi.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_PORTRAIT_NEW_STYLE = new CameraCharacteristics.Key<>("com.oppo.feature.portrait.new.style.support", Byte.class);
    public static final CameraCharacteristics.Key<int[]> KEY_PORTRAIT_NORMAL_MODE_PRE_SIZE = new CameraCharacteristics.Key<>("com.oppo.tunning.portrait.normal.previewsize", int[].class);
    public static final CameraCharacteristics.Key<Byte> KEY_POST_POSTVIEW = new CameraCharacteristics.Key<>("com.oppo.feature.postview.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_PREVIEW_FPS_HFR_1080P = new CameraCharacteristics.Key<>("com.oppo.tunning.1080p.hfr.fps", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_PREVIEW_FPS_HFR_720P = new CameraCharacteristics.Key<>("com.oppo.tunning.720p.hfr.fps", Integer.class);
    public static final CameraCharacteristics.Key<Integer> KEY_REAR_PANORAMA_MAX_HEIGHT = new CameraCharacteristics.Key<>("com.oppo.tunning.rear.panorama.max.height", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SAVE_JPG_AFTER_PAUSE = new CameraCharacteristics.Key<>("com.oppo.feature.postprocess.savejpeg.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_STICKER = new CameraCharacteristics.Key<>("com.oppo.app.feature.sticker.support", Byte.class);
    public static final CameraCharacteristics.Key<int[]> KEY_SUPERNIGHT_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oppo.supernight.picturesize", int[].class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPER_MACRO = new CameraCharacteristics.Key<>("com.oppo.feature.suppermacro.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_SUPER_NIGHT_CAMERA_MODE = new CameraCharacteristics.Key<>("com.oppo.tunning.super.night.camera.mode", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_FRONT_SUPERNIGHT = new CameraCharacteristics.Key<>("com.oppo.feature.front.suppernight.support", Byte.class);
    public static final CameraCharacteristics.Key<Integer> KEY_SUPPORT_HIGH_RESOLUTION = new CameraCharacteristics.Key<>("com.oppo.high.resolution.support", Integer.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_PORTRAIT = new CameraCharacteristics.Key<>("com.oppo.feature.portrait.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_PORTRAIT_LIGHT = new CameraCharacteristics.Key<>("com.oppo.feature.portrait.light", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_SLOWVIDEO_1080P = new CameraCharacteristics.Key<>("com.oppo.feature.slowvideo.1080p.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIDEO_1080_60_FPS = new CameraCharacteristics.Key<>("com.oppo.feature.video.1080p.60fps.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIDEO_4K_60_FPS = new CameraCharacteristics.Key<>("com.oppo.feature.video.4k.60fps.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIDEO_720_60_FPS = new CameraCharacteristics.Key<>("com.oppo.feature.video.720p.60fps.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIDEO_FACE_BEAUTY = new CameraCharacteristics.Key<>("com.oppo.feature.video.facebeauty.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIDEO_SAT = new CameraCharacteristics.Key<>("com.oppo.feature.video.sat.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_SUPPORT_VIVID_EFFECT = new CameraCharacteristics.Key<>("com.oppo.feature.vivid.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_TORCH_SOFT_LIGHT = new CameraCharacteristics.Key<>("com.oppo.feature.torch.softlight.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_VIDEO_EIS = new CameraCharacteristics.Key<>("com.oppo.feature.video.eis.support", Byte.class);
    public static final CameraCharacteristics.Key<Float> KEY_VIDEO_EIS_PREVIEW_SCALE = new CameraCharacteristics.Key<>("com.oppo.tunning.video.eis.preview.scale", Float.class);
    public static final CameraCharacteristics.Key<Byte> KEY_VIDEO_SIZE_4K = new CameraCharacteristics.Key<>("com.oppo.feature.video.4k.support", Byte.class);
    public static final CameraCharacteristics.Key<Byte> KEY_WESTALGO_DUAL_CAMERA = new CameraCharacteristics.Key<>("com.oppo.feature.westalgo.dual.camera.support", Byte.class);
    private static final int[] PERFORMANCE_OPEN_OMOJI_CONFIG_LIST = {1077936128, 1, 1086324736, 1, 1090519040, 2, 1082130432, 4095};
    protected static final String PICTURE_SIZE_5M = "5000000";
    private static final String TAG = "ConfigDataBase";
    protected HashMap<String, String> mDefaultMenuSettingConfigMap = null;
    protected List<String> mMenuPanelList = null;
    protected List<String> mMenuSettingList = null;
    protected int[] mOmojiPerformanceConfigList = null;
    protected List<b> mOptionItemConfigList = null;
    protected HashMap<CameraCharacteristics.Key<?>, String> mProjectConfigMap = null;

    public HashMap<String, String> getDefaultMenuSettingConfig() {
        return this.mDefaultMenuSettingConfigMap;
    }

    public List<String> getMenuPanelList() {
        return this.mMenuPanelList;
    }

    public List<String> getMenuSettingList() {
        return this.mMenuSettingList;
    }

    public int[] getOmojiPerformanceConfigList() {
        return this.mOmojiPerformanceConfigList;
    }

    public List<b> getOptionItemConfigs() {
        return this.mOptionItemConfigList;
    }

    public HashMap<CameraCharacteristics.Key<?>, String> getProjectMap() {
        return this.mProjectConfigMap;
    }

    public void initPerformanceConfig() {
        this.mOmojiPerformanceConfigList = PERFORMANCE_OPEN_OMOJI_CONFIG_LIST;
    }

    public void parseDefaultMenuSettingConfigMap() {
        if (this.mDefaultMenuSettingConfigMap == null) {
            this.mDefaultMenuSettingConfigMap = new HashMap<>();
        }
        this.mDefaultMenuSettingConfigMap.clear();
        this.mDefaultMenuSettingConfigMap.put("pref_camera_hdr_mode_key_default_back_camera", MenuClickMsgData.VALUE_PROFESSION_AUTO);
        this.mDefaultMenuSettingConfigMap.put("pref_camera_hdr_mode_key_default_front_camera", MenuClickMsgData.VALUE_PROFESSION_AUTO);
        this.mDefaultMenuSettingConfigMap.put("pref_video_size_key_default_back_camera", "video_size_1080p");
        if (CameraConfig.getConfigBooleanValue(KEY_SUPPORT_VIDEO_FACE_BEAUTY)) {
            this.mDefaultMenuSettingConfigMap.put("pref_video_size_key_default_front_camera", "video_size_720p");
        } else {
            this.mDefaultMenuSettingConfigMap.put("pref_video_size_key_default_front_camera", "video_size_1080p");
        }
    }

    public void parseDefaultProjectConfig() {
        if (this.mProjectConfigMap == null) {
            this.mProjectConfigMap = new HashMap<>();
        }
        this.mProjectConfigMap.clear();
        this.mProjectConfigMap.put(KEY_COMMON_AUTO_NIGHT_SCENCE, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_VIDEO_EIS, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_VIDEO_EIS_PREVIEW_SCALE, "1.25f");
        this.mProjectConfigMap.put(KEY_FRONT_PANORAMA_MAX_HEIGHT, "1920");
        this.mProjectConfigMap.put(KEY_REAR_PANORAMA_MAX_HEIGHT, "1944");
        this.mProjectConfigMap.put(KEY_STICKER, "0");
        this.mProjectConfigMap.put(KEY_NIGHT, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_SAVE_JPG_AFTER_PAUSE, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_SUPPORT_VIVID_EFFECT, "0");
        this.mProjectConfigMap.put(KEY_PORTRAIT_NORMAL_MODE_PRE_SIZE, "1440x1080");
        this.mProjectConfigMap.put(KEY_BACK_PORTRAIT_NORMAL_MODE_PIC_SIZE, "4608x3456");
        this.mProjectConfigMap.put(KEY_POST_POSTVIEW, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT, "480");
        this.mProjectConfigMap.put(KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_PORTRAIT_NEW_STYLE, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_BEAUTY3D, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_ANIMOJI, "0");
        this.mProjectConfigMap.put(KEY_PI, "0");
        this.mProjectConfigMap.put(KEY_TORCH_SOFT_LIGHT, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_SLOWVIDEO_1080P, "0");
        this.mProjectConfigMap.put(KEY_PREVIEW_FPS_HFR_1080P, "120");
        this.mProjectConfigMap.put(KEY_PREVIEW_FPS_HFR_720P, "240");
        this.mProjectConfigMap.put(KEY_DEFAULT_TO_REAL_SWITCH_ANIM_TIME, "650");
        this.mProjectConfigMap.put(KEY_DEFAULT_TO_FRONT_SWITCH_ANIM_TIME, "650");
        this.mProjectConfigMap.put(KEY_PANORAMA_TO_REAL_SWITCH_ANIM_TIME, "650");
        this.mProjectConfigMap.put(KEY_PANORAMA_TO_FRONT_SWITCH_ANIM_TIME, "650");
        this.mProjectConfigMap.put(KEY_VIDEO_SIZE_4K, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_SUPPORT_VIDEO_720_60_FPS, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_VIDEO_1080_60_FPS, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_VIDEO_4K_60_FPS, "0");
        this.mProjectConfigMap.put(KEY_SUPER_NIGHT_CAMERA_MODE, "-1");
        this.mProjectConfigMap.put(KEY_CSHOT_FIRST_REQUEST_NUM, OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL);
        this.mProjectConfigMap.put(KEY_WESTALGO_DUAL_CAMERA, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_HIGH_RESOLUTION, "0");
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_SIZE, (Object) null);
        this.mProjectConfigMap.put(KEY_HIGH_MFNR_PICTURE_SIZE, (Object) null);
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_HDR_SUPPORT, "0");
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_ASD_SUPPORT, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_FILTER_SUPPORT, "0");
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_BEAUTY_SUPPORT, "0");
        this.mProjectConfigMap.put(KEY_HIGH_PICTURE_PI_SUPPORT, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_SUPERNIGHT_PICTURE_SIZE, (Object) null);
        this.mProjectConfigMap.put(KEY_FRONT_SUPERNIGHT_PICTURE_SIZE, (Object) null);
        this.mProjectConfigMap.put(KEY_MOTOR_FLASHLIGHT, "0");
        this.mProjectConfigMap.put(KEY_MOTOR_DOWN_DELAY, String.valueOf(1000));
        this.mProjectConfigMap.put(KEY_SUPPORT_PORTRAIT, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_FACE_BEAUTY_VERSION_CODE, "-1");
        this.mProjectConfigMap.put(KEY_FEATURE_DCIP3_SUPPORT, "0");
        this.mProjectConfigMap.put(KEY_ARCSOFT_SINGLE_BOKEH, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
        this.mProjectConfigMap.put(KEY_GOOGLE_LENS_ENABLE, "0");
        this.mProjectConfigMap.put(KEY_CAPTURE_THIRD_PICTURE_SIZE, PICTURE_SIZE_5M);
        this.mProjectConfigMap.put(KEY_SUPER_MACRO, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_VIDEO_FACE_BEAUTY, "0");
        this.mProjectConfigMap.put(KEY_SUPPORT_FRONT_SUPERNIGHT, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
    }

    public void parseMenuPanel() {
        if (this.mMenuPanelList == null) {
            this.mMenuPanelList = new ArrayList();
        }
        this.mMenuPanelList.clear();
        this.mMenuPanelList.add("pref_camera_torch_mode_key");
        this.mMenuPanelList.add("pref_camera_flashmode_key");
        this.mMenuPanelList.add("pref_camera_videoflashmode_key");
        this.mMenuPanelList.add("pref_camera_hdr_mode_key");
        this.mMenuPanelList.add("pref_camera_pi_mode_key");
        this.mMenuPanelList.add("pref_camera_vivid_effect_key");
        this.mMenuPanelList.add("pref_slow_video_frame_key");
        this.mMenuPanelList.add("pref_high_resolution_key");
        this.mMenuPanelList.add("pref_video_filter_menu");
        this.mMenuPanelList.add("pref_filter_menu");
        this.mMenuPanelList.add("pref_portrait_new_style_menu");
        this.mMenuPanelList.add("pref_switch_camera_key");
        this.mMenuPanelList.add("pref_subsetting_key");
        this.mMenuPanelList.add("pref_camera_photo_ratio_key");
        this.mMenuPanelList.add("pref_camera_timer_shutter_key");
        this.mMenuPanelList.add("pref_camera_high_resolution_key");
        this.mMenuPanelList.add("pref_setting_key");
    }

    public void parseMenuSetting() {
        if (this.mMenuSettingList == null) {
            this.mMenuSettingList = new ArrayList();
        }
        this.mMenuSettingList.clear();
        d.a(TAG, "parseMenuSetting, isSupportFingerprintShutter: " + com.oppo.camera.o.d.j());
        if (com.oppo.camera.o.d.j()) {
            this.mMenuSettingList.add("pref_camera_fingerprint_shutter_key");
        }
        this.mMenuSettingList.add("pref_volume_key_function_key");
        this.mMenuSettingList.add("pref_camera_assistant_line_key");
        this.mMenuSettingList.add("pref_camera_sound_key");
        this.mMenuSettingList.add("pref_camera_recordlocation_key");
        this.mMenuSettingList.add("pref_camera_storage_key");
        this.mMenuSettingList.add("pref_mirror_key");
        this.mMenuSettingList.add("pref_ai_scene_key");
        this.mMenuSettingList.add("pref_camera_photo_ratio_key");
        this.mMenuSettingList.add("pref_camera_tap_shutter_key");
        this.mMenuSettingList.add("pref_camera_gesture_shutter_key");
        if (com.oppo.camera.o.d.V() && this.mMenuSettingList.contains("pref_camera_sound_key")) {
            this.mMenuSettingList.remove("pref_camera_sound_key");
        }
        this.mMenuSettingList.add("pref_slogan_owner_key");
        this.mMenuSettingList.add("pref_camera_slogan_key");
        this.mMenuSettingList.add("pref_video_codec_key");
        this.mMenuSettingList.add("pref_video_ratio_key");
        this.mMenuSettingList.add("pref_photo_slogan_key");
        this.mMenuSettingList.add("pref_sound_types_key");
    }

    public void parseOptionItemConfig() {
        if (this.mOptionItemConfigList == null) {
            this.mOptionItemConfigList = new ArrayList();
        }
        this.mOptionItemConfigList.clear();
        b bVar = new b();
        bVar.a("pref_video_size_key_back_camera_supported");
        bVar.b("video_size_720p");
        bVar.b("video_size_1080p");
        if (CameraConfig.getConfigBooleanValue(KEY_VIDEO_SIZE_4K)) {
            bVar.b("video_size_4kuhd");
        }
        this.mOptionItemConfigList.add(bVar);
        b bVar2 = new b();
        bVar2.a("pref_video_size_key_front_camera_supported");
        bVar2.b("video_size_1080p");
        bVar2.b("video_size_720p");
        this.mOptionItemConfigList.add(bVar2);
        b bVar3 = new b();
        bVar3.a("pref_slow_video_frame_key");
        if (CameraConfig.getConfigBooleanValue(KEY_SUPPORT_SLOWVIDEO_1080P)) {
            bVar3.b("120FPS");
        }
        bVar3.b("240FPS");
        bVar3.b("960FPS");
        this.mOptionItemConfigList.add(bVar3);
        b bVar4 = new b();
        bVar4.a("pref_camera_torch_mode_key");
        bVar4.b(c.a_);
        bVar4.b("on");
        if (!CameraConfig.getConfigBooleanValue(KEY_TORCH_SOFT_LIGHT)) {
            bVar4.b(MenuClickMsgData.VALUE_PROFESSION_AUTO);
        }
        this.mOptionItemConfigList.add(bVar4);
    }

    public void parseProjectFromCharacteristics(h hVar) {
        for (Map.Entry next : this.mProjectConfigMap.entrySet()) {
            String b2 = hVar.b((CameraCharacteristics.Key) next.getKey());
            if (b2 != null) {
                next.setValue(String.valueOf(b2));
            }
        }
    }
}
