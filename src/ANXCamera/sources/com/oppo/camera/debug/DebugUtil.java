package com.oppo.camera.debug;

import android.content.Context;
import android.text.TextUtils;
import com.color.compat.os.SystemPropertiesNative;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DebugUtil {
    private static final float BLUR_STRENGTH = 0.8f;
    private static final float CAPTURE_BLUR_STRENGTH = 0.7f;
    public static final String DEBUG_DISABLE = "false";
    public static final String DEBUG_ENABLE = "true";
    private static final String DEBUG_PROPERTY_FILE = "/sdcard/camera_app_debug_property";
    public static final String DUMP_DIR_BLURANIM = "blurAnim";
    public static final String DUMP_DIR_CAPTURE_RAW_PATH = "oppo_capture_raw";
    public static final String DUMP_DIR_CAPTURE_YUV = "capture_yuv";
    public static final String DUMP_DIR_HEADLINE = "headline";
    public static final String DUMP_DIR_HEADLINE_TEXTURE = "headline_texture";
    public static final String DUMP_DIR_HEADLINE_VIEW = "headline_view";
    public static final String DUMP_DIR_PREVIEW = "preview";
    public static final String DUMP_DIR_PREVIEW_DEPTH = "preview_depth";
    public static final String DUMP_DIR_PREVIEW_YUV = "preview_yuv";
    public static final String FORCE_CAMERA_ID = "realme.force.camera.id";
    private static final int FORCE_CAMERA_ID_DEFAULT = -1;
    public static final String FORCE_CAMERA_ID_SUPPORT = "realme.force.camera.id.support";
    public static final String PROPERTIES_DEBUG_IN_BGS_ENABLE = "oppo.debug.bgs.enable";
    public static final String PROPERTIES_DUMP_BLURANIM = "oppo.dump.blurAnim";
    public static final String PROPERTIES_DUMP_CAPTURE_YUV = "oppo.dump.capture.yuv";
    public static final String PROPERTIES_DUMP_HEADLINE = "oppo.dump.headline";
    public static final String PROPERTIES_DUMP_NIGHT_RAW_ENABLE = "oppo.dump.night.raw.enable";
    public static final String PROPERTIES_DUMP_NIGHT_RAW_MODE = "oppo.dump.night.raw.mode";
    public static final String PROPERTIES_DUMP_POSTVIEW_YUV = "oppo.dump.postview.yuv";
    public static final String PROPERTIES_DUMP_PREVIEW = "oppo.dump.preview";
    public static final String PROPERTIES_DUMP_PREVIEW_DEPTH = "oppo.dump.preview.depth";
    public static final String PROPERTIES_DUMP_PREVIEW_YUV = "oppo.dump.preview.yuv";
    public static final String PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV = "oppo.dump.singlebokeh.capture.yuv";
    public static final String PROPERTIES_DUMP_TOF = "oppo.dump.tof";
    public static final String PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH = "oppo.singlebokeh.blur.strength";
    public static final String PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH_SUPPORT = "oppo.singlebokeh.blur.strength.support";
    public static final String PROPERTIES_SINGLE_BOKEH_CAPTURE_BLUR_STRENGTH = "oppo.singlebokeh.capture.blur.strength";
    private static final String TAG = "CAM_DebugUtil";
    private static HashMap<String, String> mDebugItemMap;

    public static boolean checkDualCameraType(String str) {
        return getDebugProperty("ro.camera.dualcam.type", "").equals(str);
    }

    public static boolean debugPropertyEnabled(String str, String str2) {
        HashMap<String, String> hashMap = mDebugItemMap;
        return (hashMap == null || !hashMap.containsKey(str)) ? !TextUtils.isEmpty(str) && DEBUG_ENABLE.equals(SystemPropertiesNative.get(str, str2)) : Boolean.valueOf(mDebugItemMap.get(str)).booleanValue();
    }

    public static float getBokehBlurStrength() {
        boolean debugPropertyEnabled = debugPropertyEnabled(PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH_SUPPORT, DEBUG_DISABLE);
        float f = BLUR_STRENGTH;
        if (debugPropertyEnabled) {
            try {
                f = Float.valueOf(getDebugProperty(PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH, String.valueOf(BLUR_STRENGTH))).floatValue();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        d.a(TAG, "getBokehBlurStrength, blurStrength: " + f);
        return f;
    }

    public static float getCaptureBokehBlurStrength() {
        boolean debugPropertyEnabled = debugPropertyEnabled(PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH_SUPPORT, DEBUG_DISABLE);
        float f = CAPTURE_BLUR_STRENGTH;
        if (debugPropertyEnabled) {
            try {
                f = Float.valueOf(getDebugProperty(PROPERTIES_SINGLE_BOKEH_CAPTURE_BLUR_STRENGTH, String.valueOf(CAPTURE_BLUR_STRENGTH))).floatValue();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        d.a(TAG, "getCaptureBokehBlurStrength, blurStrength: " + f);
        return f;
    }

    public static String getDebugProperty(String str, String str2) {
        HashMap<String, String> hashMap = mDebugItemMap;
        return (hashMap == null || !hashMap.containsKey(str)) ? !TextUtils.isEmpty(str) ? SystemPropertiesNative.get(str, str2) : "" : mDebugItemMap.get(str);
    }

    public static int getForceCameraId() {
        int i = -1;
        if (debugPropertyEnabled(FORCE_CAMERA_ID_SUPPORT, DEBUG_DISABLE)) {
            try {
                i = Integer.valueOf(getDebugProperty(FORCE_CAMERA_ID, String.valueOf(-1))).intValue();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        d.a(TAG, "getForceCameraId, cameraId: " + i);
        return i;
    }

    public static void initDebug(Context context) {
        if (PrefUtils.isDebugPropertyOn(context)) {
            String c = com.oppo.camera.o.d.c(DEBUG_PROPERTY_FILE);
            if (c != null) {
                d.e(TAG, "initDebug, content: " + c);
                parseDebugProperty(c);
                return;
            }
            d.e(TAG, "initDebug, read content failed!");
        }
    }

    public static boolean isEnableHighPictureSizeMode() {
        return CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE) != null && !isEnableHighPictureSizeSetting();
    }

    public static boolean isEnableHighPictureSizeSetting() {
        return debugPropertyEnabled("oppo.camera.high.picturesize.setting", DEBUG_DISABLE);
    }

    public static boolean isEnablePortraitFilter() {
        return MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(getDebugProperty("ro.camera.filter.version", "uninitied"));
    }

    public static boolean isVideoHighFrameRateEnabled() {
        return MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(getDebugProperty("ro.camera.hfr.enable", "0"));
    }

    private static boolean parseDebugProperty(String str) {
        try {
            ArrayList arrayList = (ArrayList) new Gson().fromJson(str, new TypeToken<List<DebugItem>>() {
            }.getType());
            if (arrayList == null) {
                d.e(TAG, "parseDebugProperty fail, debugItemList is null!");
                return false;
            }
            if (mDebugItemMap == null) {
                mDebugItemMap = new HashMap<>();
            }
            for (int i = 0; i < arrayList.size(); i++) {
                DebugItem debugItem = (DebugItem) arrayList.get(i);
                d.e(TAG, "parseDebugProperty, key: " + debugItem.getKey() + ", value: " + debugItem.getValue());
                mDebugItemMap.put(debugItem.getKey(), debugItem.getValue());
            }
            return true;
        } catch (Exception e) {
            d.e(TAG, "parseDebugProperty fail, e: " + e.getMessage());
            return false;
        }
    }
}
