package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.i;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.d;
import com.oppo.exif.OppoExifInterface;

public class MenuClickMsgData extends DcsMsgData {
    private static final String EVENT_FUNCTION_ITEM_CLICK = "funcValue_select";
    private static final String EVENT_FUNCTION_KEY_CLICK = "funcKey_click";
    public static final int FUNC_KEY_BLUR = 9;
    public static final int FUNC_KEY_FILTER = 4;
    public static final int FUNC_KEY_FLASH = 3;
    public static final int FUNC_KEY_HDR = 8;
    public static final int FUNC_KEY_MODE_PANEL = 1;
    public static final int FUNC_KEY_NEW_STYLE_TYPE = 10;
    public static final int FUNC_KEY_PANORAMA_DIRECTION = 19;
    public static final int FUNC_KEY_PHOTO_RATIO = 29;
    public static final int FUNC_KEY_PHOTO_RATIO_MP = 31;
    private static final String[] FUNC_KEY_PHOTO_RATIO_VALUE = {"standard", "square", "full", "16_9", "standard_high"};
    public static final int FUNC_KEY_PI = 7;
    public static final int FUNC_KEY_PROFESSION_EXPOSURE_COMPENSATION = 15;
    public static final int FUNC_KEY_PROFESSION_FOCUS = 14;
    public static final int FUNC_KEY_PROFESSION_ISO = 28;
    public static final int FUNC_KEY_PROFESSION_SHUTTER = 27;
    public static final int FUNC_KEY_PROFESSION_SWITCH_CAMERA = 22;
    public static final int FUNC_KEY_PROFESSION_WB = 13;
    public static final int FUNC_KEY_SETTING = 5;
    public static final int FUNC_KEY_SLOW_VIDEO_RATIO = 21;
    public static final int FUNC_KEY_SMOOTH = 2;
    public static final int FUNC_KEY_SUB_SETTING = 26;
    public static final int FUNC_KEY_TIMER = 30;
    private static final String[] FUNC_KEY_TIMER_VALUE = {"normal", OppoExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, "10"};
    public static final int FUNC_KEY_TO_GALLERY = 6;
    public static final int FUNC_KEY_VIDEO_FILTER = 24;
    public static final int FUNC_KEY_VIDEO_RATIO = 20;
    private static final String KEY_AI_SCENE = "ai_scene";
    private static final String[] KEY_COMMON_CUSTOM_BEAUTY = {CaptureMsgData.KEY_SMOOTH_DERMABRASION, CaptureMsgData.KEY_SMOOTH_FACE_LEAN, CaptureMsgData.KEY_SMOOTH_FACE_SMALL, CaptureMsgData.KEY_SMOOTH_FACE_JAW, CaptureMsgData.KEY_SMOOTH_EYE_BIG, CaptureMsgData.KEY_SMOOTH_NOSE_LEAN, CaptureMsgData.KEY_SMOOTH_FRESHEN_UP, CaptureMsgData.KEY_SMOOTH_CUBE};
    private static final String KEY_DELAYTIME = "delay_time";
    private static final String KEY_FUNC_KEY_ID = "funcKey_id";
    private static final String KEY_FUNC_KEY_ITEM = "funcKey_item";
    private static final String KEY_FUNC_KEY_RESULT = "funcKey_result";
    private static final String KEY_FUNC_KEY_VALUE = "funcKey_value";
    private static final String KEY_IS_ASSISTANT_LINE = "is_assistant_line";
    private static final String KEY_IS_FINGERPRINT_SHUTTER = "is_fingerprint_shutter";
    private static final String KEY_IS_GESTURE_CAPTURE_TYPE = "is_gesture_capture_type";
    private static final String KEY_IS_MIRROR = "is_mirror";
    private static final String KEY_IS_RECORDING = "is_recording";
    private static final String KEY_IS_RECORD_LOCATION = "is_record_location";
    private static final String KEY_IS_SHUTTER_VOICE = "is_shutter_voice";
    private static final String KEY_IS_SLOGAN = "is_slogan";
    private static final String KEY_IS_TAP_CAPTURE_TYPE = "is_tap_capture_type";
    public static final String KEY_NONE_SMOOTH = "self_smooth_clear";
    private static final String KEY_PICSIZETYPE = "pic_size_type";
    public static final String KEY_PROFESSION_EXPOSURE_COMPENSATION = "profession_ev_value";
    public static final String KEY_PROFESSION_EXPOSURE_TIME = "profession_exp_time";
    public static final String KEY_PROFESSION_FOCUS_VALUE = "profession_focus_value";
    public static final String KEY_PROFESSION_HIGH_RESOLUTION = "profession_high_resolution";
    public static final String KEY_PROFESSION_ISO_VALUE = "profession_ISO_value";
    public static final String KEY_PROFESSION_WHITE_BALANCE = "profession_wb_value";
    public static final String KEY_RESET_SMOOTH = "self_smooth_reset";
    public static final int KEY_RESET_SMOOTH_CANCEL = 1;
    public static final int KEY_RESET_SMOOTH_DONE = 0;
    private static final String KEY_RESTORE_DEFAULT = "restore_default";
    public static final int KEY_RESULT_HIDE = 2;
    public static final int KEY_RESULT_SHOW = 1;
    private static final String KEY_SLOGAN_CONTENT = "slogan_content";
    private static final String KEY_SLOGAN_CONTENT_VALUE = "slogan_content";
    private static final String KEY_SLOW_VIDEO_REC_MODE = "slowVideo_rec_mode";
    private static final String KEY_VIDEO_CODEC = "video_codec";
    private static final String KEY_VIDEO_FPS = "video_fps";
    private static final String KEY_VIDEO_RECORDER_SOUND = "video_recorder_sound";
    private static final String KEY_VIDEO_REC_MODE = "video_rec_mode";
    private static final String KEY_VOLUME_FUNCTION = "volume_function";
    private static final String TAG = "MenuClickMsgData";
    public static final String VALUE_PROFESSION_AUTO = "auto";
    public static final String VALUE_PROFESSION_AUTO_OFF = "auto_off";
    public static final String VALUE_SLOGAN_CONTENT_EXIST = "1";
    public static final String VALUE_SLOGAN_CONTENT_NOT_EXIST = "0";
    public int mFuncKeyId = -1;
    public int mFuncKeyResult = -1;
    public String mItem = "";
    public String mItemValue = "";
    public boolean mbVideoRecording = false;

    public MenuClickMsgData(Context context) {
        super(context, "200", "", false);
    }

    private String checkBeauty(String str) {
        String str2;
        int i = 0;
        while (true) {
            if (i >= c.f2595b.length) {
                str2 = "";
                break;
            }
            String str3 = c.f2595b[i];
            if (str3 != null && str3.equals(str)) {
                str2 = KEY_COMMON_CUSTOM_BEAUTY[i];
                break;
            }
            i++;
        }
        for (int i2 = 0; i2 < c.c.length; i2++) {
            String str4 = c.c[i2];
            if (str4 != null && str4.equals(str)) {
                return KEY_COMMON_CUSTOM_BEAUTY[i2];
            }
        }
        return str2;
    }

    private String getNextValueOfArray(String[] strArr, String str) {
        if (!(strArr == null || strArr.length == 0 || str == null)) {
            for (int i = 0; i < strArr.length; i++) {
                if ("standard_high".equals(str)) {
                    return strArr[1];
                }
                if ("16_9".equals(str) || str.equals(strArr[strArr.length - 1])) {
                    return strArr[0];
                }
                if (str.equals(strArr[i]) && i < strArr.length - 1) {
                    return strArr[i + 1];
                }
            }
        }
        return "";
    }

    public void buildEvent(boolean z) {
        this.mEventId = z ? EVENT_FUNCTION_ITEM_CLICK : EVENT_FUNCTION_KEY_CLICK;
    }

    public void buildMenuClick(String str, boolean z, boolean z2, boolean z3) {
        if (!TextUtils.isEmpty(str)) {
            this.mEventId = EVENT_FUNCTION_KEY_CLICK;
            int i = 2;
            if ("pref_camera_flashmode_key".equals(str) || "pref_camera_torch_mode_key".equals(str) || "pref_camera_videoflashmode_key".equals(str)) {
                this.mFuncKeyId = 3;
            } else if ("pref_camera_hdr_mode_key".equals(str)) {
                this.mFuncKeyId = 8;
            } else if ("pref_portrait_new_style_menu".equals(str)) {
                this.mFuncKeyId = 10;
                this.mFuncKeyResult = z3 ? 2 : 1;
            } else if ("pref_video_filter_menu".equals(str)) {
                this.mFuncKeyId = 24;
                this.mFuncKeyResult = z3 ? 2 : 1;
            } else if ("pref_filter_menu".equals(str)) {
                this.mFuncKeyId = 4;
            } else if ("pref_video_size_key".equals(str)) {
                this.mFuncKeyId = 20;
            } else if ("pref_slow_video_frame_key".equals(str)) {
                this.mFuncKeyId = 21;
            } else {
                return;
            }
            this.mFuncKeyResult = z2 ? 2 : 1;
            if ("pref_portrait_new_style_menu".equals(str) || "pref_filter_menu".equals(str)) {
                if (!z3) {
                    i = 1;
                }
                this.mFuncKeyResult = i;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e4  */
    public void buildMenuItem(String str, i iVar, int i) {
        boolean z;
        String str2 = str;
        i iVar2 = iVar;
        int i2 = i;
        if (!TextUtils.isEmpty(str) && iVar2 != null) {
            String checkBeauty = checkBeauty(str);
            if ("pref_camera_flashmode_key".equals(str2) || "pref_camera_torch_mode_key".equals(str2) || "pref_camera_videoflashmode_key".equals(str2)) {
                this.mFuncKeyId = 3;
            } else if ("pref_camera_hdr_mode_key".equals(str2)) {
                this.mFuncKeyId = 8;
            } else if ("pref_video_size_key".equals(str2)) {
                this.mFuncKeyId = 20;
            } else {
                if (!TextUtils.isEmpty(checkBeauty)) {
                    this.mFuncKeyId = 2;
                    this.mItem = checkBeauty;
                } else if ("key_filter_index".equals(str2)) {
                    this.mFuncKeyId = 4;
                } else if ("key_portrait_new_style_index".equals(str2)) {
                    this.mFuncKeyId = 10;
                } else if ("pref_camera_pi_mode_key".equals(str2)) {
                    this.mFuncKeyId = 7;
                } else if ("pref_slow_video_frame_key".equals(str2)) {
                    this.mFuncKeyId = 21;
                } else if ("pref_subsetting_key".equals(str2)) {
                    this.mFuncKeyId = 26;
                } else if ("pref_camera_photo_ratio_key".equals(str2)) {
                    this.mFuncKeyId = 29;
                } else if ("pref_camera_timer_shutter_key".equals(str2)) {
                    this.mFuncKeyId = 30;
                } else if ("pref_camera_high_resolution_key".equals(str2)) {
                    this.mFuncKeyId = 31;
                } else {
                    return;
                }
                z = true;
                if (!"pref_camera_pi_mode_key".equals(str2)) {
                    this.mEventId = EVENT_FUNCTION_KEY_CLICK;
                    this.mFuncKeyResult = "on".equals(iVar2.getString(str2, com.oppo.camera.c.a_)) ? 1 : 2;
                    return;
                } else if ("pref_subsetting_key".equals(str2)) {
                    this.mEventId = EVENT_FUNCTION_KEY_CLICK;
                    this.mFuncKeyResult = "on".equals(iVar2.getString(str2, com.oppo.camera.c.a_)) ? 2 : 1;
                    return;
                } else if ("pref_camera_photo_ratio_key".equals(str2)) {
                    this.mEventId = EVENT_FUNCTION_ITEM_CLICK;
                    this.mItemValue = getNextValueOfArray(FUNC_KEY_PHOTO_RATIO_VALUE, iVar2.getString("pref_camera_photo_ratio_key", "standard"));
                    return;
                } else if ("pref_camera_timer_shutter_key".equals(str2)) {
                    this.mEventId = EVENT_FUNCTION_ITEM_CLICK;
                    this.mItemValue = getNextValueOfArray(FUNC_KEY_TIMER_VALUE, iVar2.getString("pref_camera_timer_shutter_key", "normal"));
                    return;
                } else if ("pref_camera_high_resolution_key".equals(str2)) {
                    this.mEventId = EVENT_FUNCTION_KEY_CLICK;
                    this.mFuncKeyResult = iVar2.getBoolean("key_high_picture_size", false) ? 2 : 1;
                    return;
                } else {
                    this.mEventId = EVENT_FUNCTION_ITEM_CLICK;
                    if (!z) {
                        this.mItemValue = iVar2.getString(str2, "");
                        return;
                    } else if ("key_filter_index".equals(str2)) {
                        this.mItemValue = d.a(iVar2.getInt("key_filter_index", 0), i2);
                        return;
                    } else if ("key_portrait_new_style_index".equals(str2)) {
                        this.mItemValue = d.b(iVar2.getInt("key_portrait_new_style_index", 0), i2);
                        return;
                    } else {
                        this.mItemValue = String.valueOf(iVar2.getInt(str2, -1));
                        return;
                    }
                }
            }
            z = false;
            if (!"pref_camera_pi_mode_key".equals(str2)) {
            }
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00e2, code lost:
        if (r3.equals("pref_camera_assistant_line_key") != false) goto L_0x00f0;
     */
    public void buildSettingMenuItem(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            char c = 5;
            this.mFuncKeyId = 5;
            this.mEventId = EVENT_FUNCTION_ITEM_CLICK;
            this.mItemValue = String.valueOf(obj);
            switch (str.hashCode()) {
                case -2113768511:
                    if (str.equals("pref_volume_key_function_key")) {
                        c = 4;
                        break;
                    }
                case -2070716397:
                    break;
                case -1982388778:
                    if (str.equals("pref_video_codec_key")) {
                        c = 13;
                        break;
                    }
                case -1696462156:
                    if (str.equals("pref_camera_fingerprint_shutter_key")) {
                        c = 6;
                        break;
                    }
                case -1594132768:
                    if (str.equals("pref_camera_photo_ratio_key")) {
                        c = 0;
                        break;
                    }
                case -1374931663:
                    if (str.equals("pref_camera_sound_key")) {
                        c = 7;
                        break;
                    }
                case -1325782763:
                    if (str.equals("pref_camera_timer_shutter_key")) {
                        c = 1;
                        break;
                    }
                case -1206234757:
                    if (str.equals("pref_mirror_key")) {
                        c = 9;
                        break;
                    }
                case -1135915663:
                    if (str.equals("pref_ai_scene_key")) {
                        c = 10;
                        break;
                    }
                case -1103096754:
                    if (str.equals("pref_slogan_owner_key")) {
                        c = 18;
                        break;
                    }
                case -958952174:
                    if (str.equals("pref_restore_key")) {
                        c = 15;
                        break;
                    }
                case -622376663:
                    if (str.equals("pref_video_fps_key")) {
                        c = 14;
                        break;
                    }
                case -526806963:
                    if (str.equals("pref_sound_types_key")) {
                        c = 12;
                        break;
                    }
                case -513186997:
                    if (str.equals("pref_video_ratio_key")) {
                        c = 17;
                        break;
                    }
                case -185556839:
                    if (str.equals("pref_camera_gesture_shutter_key")) {
                        c = 3;
                        break;
                    }
                case 1892282044:
                    if (str.equals("pref_camera_slogan_key")) {
                        c = 11;
                        break;
                    }
                case 1957315623:
                    if (str.equals("pref_slow_video_frame_key")) {
                        c = 16;
                        break;
                    }
                case 2069752292:
                    if (str.equals("pref_camera_recordlocation_key")) {
                        c = 8;
                        break;
                    }
                case 2118868211:
                    if (str.equals("pref_camera_tap_shutter_key")) {
                        c = 2;
                        break;
                    }
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    this.mItem = KEY_PICSIZETYPE;
                    return;
                case 1:
                    this.mItem = "delay_time";
                    return;
                case 2:
                    this.mItem = KEY_IS_TAP_CAPTURE_TYPE;
                    return;
                case 3:
                    this.mItem = KEY_IS_GESTURE_CAPTURE_TYPE;
                    return;
                case 4:
                    this.mItem = "volume_function";
                    return;
                case 5:
                    this.mItem = KEY_IS_ASSISTANT_LINE;
                    return;
                case 6:
                    this.mItem = KEY_IS_FINGERPRINT_SHUTTER;
                    return;
                case 7:
                    this.mItem = KEY_IS_SHUTTER_VOICE;
                    return;
                case 8:
                    this.mItem = KEY_IS_RECORD_LOCATION;
                    return;
                case 9:
                    this.mItem = KEY_IS_MIRROR;
                    return;
                case 10:
                    this.mItem = "ai_scene";
                    return;
                case 11:
                    this.mItem = KEY_IS_SLOGAN;
                    return;
                case 12:
                    this.mItem = "video_recorder_sound";
                    return;
                case 13:
                    this.mItem = "video_codec";
                    return;
                case 14:
                    this.mItem = "video_fps";
                    return;
                case 15:
                    this.mItem = KEY_RESTORE_DEFAULT;
                    return;
                case 16:
                    this.mItem = KEY_SLOW_VIDEO_REC_MODE;
                    return;
                case 17:
                    this.mItem = "video_rec_mode";
                    return;
                case 18:
                    this.mItem = "slogan_content";
                    return;
                default:
                    this.mItem = "";
                    return;
            }
        }
    }

    public boolean isValid() {
        if (this.mFuncKeyId > 0) {
            return super.isValid();
        }
        com.oppo.camera.d.b(TAG, "isValid, " + toString());
        return false;
    }

    public void report() {
        prepareLogTagByCaptureType();
        if (this.mFuncKeyId > 0) {
            this.mEventMap.put(KEY_FUNC_KEY_ID, String.valueOf(this.mFuncKeyId));
        }
        if (this.mEventId.equals(EVENT_FUNCTION_KEY_CLICK) && this.mFuncKeyResult > 0) {
            this.mEventMap.put(KEY_FUNC_KEY_RESULT, String.valueOf(this.mFuncKeyResult));
        }
        if (this.mEventId.equals(EVENT_FUNCTION_ITEM_CLICK) && !TextUtils.isEmpty(this.mItem)) {
            this.mEventMap.put(KEY_FUNC_KEY_ITEM, this.mItem);
        }
        if (this.mEventId.equals(EVENT_FUNCTION_ITEM_CLICK) && !TextUtils.isEmpty(this.mItemValue)) {
            this.mEventMap.put(KEY_FUNC_KEY_VALUE, this.mItemValue);
        }
        if (this.mCaptureType == 1) {
            this.mEventMap.put(KEY_IS_RECORDING, String.valueOf(this.mbVideoRecording));
        }
        if (this.mFuncKeyId == 5) {
            if (KEY_RESTORE_DEFAULT.equals(this.mItem) && !TextUtils.isEmpty(this.mItemValue)) {
                this.mEventMap.put(KEY_FUNC_KEY_VALUE, this.mItemValue);
            }
            if (KEY_SLOW_VIDEO_REC_MODE.equals(this.mItem) && !TextUtils.isEmpty(this.mItemValue)) {
                this.mEventMap.put(KEY_FUNC_KEY_VALUE, this.mItemValue);
            }
            if ("video_rec_mode".equals(this.mItem) && !TextUtils.isEmpty(this.mItemValue)) {
                this.mEventMap.put(KEY_FUNC_KEY_VALUE, this.mItemValue);
            }
            if (KEY_IS_SLOGAN.equals(this.mItem) && !TextUtils.isEmpty(this.mItemValue)) {
                this.mEventMap.put(KEY_FUNC_KEY_VALUE, this.mItemValue);
            }
            if ("slogan_content".equals(this.mItem) && !TextUtils.isEmpty(this.mItemValue)) {
                this.mEventMap.put("slogan_content", this.mItemValue);
            }
        }
        if (DEBUG) {
            com.oppo.camera.d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return "  mLogTag: " + this.mLogTag + ", mEventId: " + this.mEventId + ", mCaptureMode: " + this.mCaptureMode + ", mOrientation: " + this.mOrientation + ", mCameraId: " + this.mCameraId + ", mFuncKeyId: " + this.mFuncKeyId + ", mFuncKeyResult: " + this.mFuncKeyResult + ", mItemValue: " + this.mItemValue + ", mItem: " + this.mItem;
    }
}
