.class public Lcom/oppo/camera/statistics/model/MenuClickMsgData;
.super Lcom/oppo/camera/statistics/model/DcsMsgData;
.source "MenuClickMsgData.java"


# static fields
.field private static final EVENT_FUNCTION_ITEM_CLICK:Ljava/lang/String; = "funcValue_select"

.field private static final EVENT_FUNCTION_KEY_CLICK:Ljava/lang/String; = "funcKey_click"

.field public static final FUNC_KEY_BLUR:I = 0x9

.field public static final FUNC_KEY_FILTER:I = 0x4

.field public static final FUNC_KEY_FLASH:I = 0x3

.field public static final FUNC_KEY_HDR:I = 0x8

.field public static final FUNC_KEY_MODE_PANEL:I = 0x1

.field public static final FUNC_KEY_NEW_STYLE_TYPE:I = 0xa

.field public static final FUNC_KEY_PANORAMA_DIRECTION:I = 0x13

.field public static final FUNC_KEY_PHOTO_RATIO:I = 0x1d

.field public static final FUNC_KEY_PHOTO_RATIO_MP:I = 0x1f

.field private static final FUNC_KEY_PHOTO_RATIO_VALUE:[Ljava/lang/String;

.field public static final FUNC_KEY_PI:I = 0x7

.field public static final FUNC_KEY_PROFESSION_EXPOSURE_COMPENSATION:I = 0xf

.field public static final FUNC_KEY_PROFESSION_FOCUS:I = 0xe

.field public static final FUNC_KEY_PROFESSION_ISO:I = 0x1c

.field public static final FUNC_KEY_PROFESSION_SHUTTER:I = 0x1b

.field public static final FUNC_KEY_PROFESSION_SWITCH_CAMERA:I = 0x16

.field public static final FUNC_KEY_PROFESSION_WB:I = 0xd

.field public static final FUNC_KEY_SETTING:I = 0x5

.field public static final FUNC_KEY_SLOW_VIDEO_RATIO:I = 0x15

.field public static final FUNC_KEY_SMOOTH:I = 0x2

.field public static final FUNC_KEY_SUB_SETTING:I = 0x1a

.field public static final FUNC_KEY_TIMER:I = 0x1e

.field private static final FUNC_KEY_TIMER_VALUE:[Ljava/lang/String;

.field public static final FUNC_KEY_TO_GALLERY:I = 0x6

.field public static final FUNC_KEY_VIDEO_FILTER:I = 0x18

.field public static final FUNC_KEY_VIDEO_RATIO:I = 0x14

.field private static final KEY_AI_SCENE:Ljava/lang/String; = "ai_scene"

.field private static final KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

.field private static final KEY_DELAYTIME:Ljava/lang/String; = "delay_time"

.field private static final KEY_FUNC_KEY_ID:Ljava/lang/String; = "funcKey_id"

.field private static final KEY_FUNC_KEY_ITEM:Ljava/lang/String; = "funcKey_item"

.field private static final KEY_FUNC_KEY_RESULT:Ljava/lang/String; = "funcKey_result"

.field private static final KEY_FUNC_KEY_VALUE:Ljava/lang/String; = "funcKey_value"

.field private static final KEY_IS_ASSISTANT_LINE:Ljava/lang/String; = "is_assistant_line"

.field private static final KEY_IS_FINGERPRINT_SHUTTER:Ljava/lang/String; = "is_fingerprint_shutter"

.field private static final KEY_IS_GESTURE_CAPTURE_TYPE:Ljava/lang/String; = "is_gesture_capture_type"

.field private static final KEY_IS_MIRROR:Ljava/lang/String; = "is_mirror"

.field private static final KEY_IS_RECORDING:Ljava/lang/String; = "is_recording"

.field private static final KEY_IS_RECORD_LOCATION:Ljava/lang/String; = "is_record_location"

.field private static final KEY_IS_SHUTTER_VOICE:Ljava/lang/String; = "is_shutter_voice"

.field private static final KEY_IS_SLOGAN:Ljava/lang/String; = "is_slogan"

.field private static final KEY_IS_TAP_CAPTURE_TYPE:Ljava/lang/String; = "is_tap_capture_type"

.field public static final KEY_NONE_SMOOTH:Ljava/lang/String; = "self_smooth_clear"

.field private static final KEY_PICSIZETYPE:Ljava/lang/String; = "pic_size_type"

.field public static final KEY_PROFESSION_EXPOSURE_COMPENSATION:Ljava/lang/String; = "profession_ev_value"

.field public static final KEY_PROFESSION_EXPOSURE_TIME:Ljava/lang/String; = "profession_exp_time"

.field public static final KEY_PROFESSION_FOCUS_VALUE:Ljava/lang/String; = "profession_focus_value"

.field public static final KEY_PROFESSION_HIGH_RESOLUTION:Ljava/lang/String; = "profession_high_resolution"

.field public static final KEY_PROFESSION_ISO_VALUE:Ljava/lang/String; = "profession_ISO_value"

.field public static final KEY_PROFESSION_WHITE_BALANCE:Ljava/lang/String; = "profession_wb_value"

.field public static final KEY_RESET_SMOOTH:Ljava/lang/String; = "self_smooth_reset"

.field public static final KEY_RESET_SMOOTH_CANCEL:I = 0x1

.field public static final KEY_RESET_SMOOTH_DONE:I = 0x0

.field private static final KEY_RESTORE_DEFAULT:Ljava/lang/String; = "restore_default"

.field public static final KEY_RESULT_HIDE:I = 0x2

.field public static final KEY_RESULT_SHOW:I = 0x1

.field private static final KEY_SLOGAN_CONTENT:Ljava/lang/String; = "slogan_content"

.field private static final KEY_SLOGAN_CONTENT_VALUE:Ljava/lang/String; = "slogan_content"

.field private static final KEY_SLOW_VIDEO_REC_MODE:Ljava/lang/String; = "slowVideo_rec_mode"

.field private static final KEY_VIDEO_CODEC:Ljava/lang/String; = "video_codec"

.field private static final KEY_VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field private static final KEY_VIDEO_RECORDER_SOUND:Ljava/lang/String; = "video_recorder_sound"

.field private static final KEY_VIDEO_REC_MODE:Ljava/lang/String; = "video_rec_mode"

.field private static final KEY_VOLUME_FUNCTION:Ljava/lang/String; = "volume_function"

.field private static final TAG:Ljava/lang/String; = "MenuClickMsgData"

.field public static final VALUE_PROFESSION_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_PROFESSION_AUTO_OFF:Ljava/lang/String; = "auto_off"

.field public static final VALUE_SLOGAN_CONTENT_EXIST:Ljava/lang/String; = "1"

.field public static final VALUE_SLOGAN_CONTENT_NOT_EXIST:Ljava/lang/String; = "0"


# instance fields
.field public mFuncKeyId:I

.field public mFuncKeyResult:I

.field public mItem:Ljava/lang/String;

.field public mItemValue:Ljava/lang/String;

.field public mbVideoRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "self_smooth_dermabrasion"

    const-string v1, "self_smooth_face_lean"

    const-string v2, "self_smooth_face_small"

    const-string v3, "self_smooth_face_jaw"

    const-string v4, "self_smooth_eye_big"

    const-string v5, "self_smooth_nose_lean"

    const-string v6, "self_smooth_freshen_up"

    const-string v7, "self_smooth_cube"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    const-string v0, "standard"

    const-string v1, "square"

    const-string v2, "full"

    const-string v3, "16_9"

    const-string v4, "standard_high"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->FUNC_KEY_PHOTO_RATIO_VALUE:[Ljava/lang/String;

    const-string v0, "normal"

    const-string v1, "3"

    const-string v2, "10"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->FUNC_KEY_TIMER_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "200"

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/oppo/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iput p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    return-void
.end method

.method private checkBeauty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/oppo/camera/ui/c;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/oppo/camera/ui/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    aget-object v1, v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_1
    sget-object v2, Lcom/oppo/camera/ui/c;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/oppo/camera/ui/c;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    aget-object v1, p1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private getNextValueOfArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_5

    array-length v1, p1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    const-string v3, "standard_high"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    aget-object p1, p1, v4

    return-object p1

    :cond_1
    const-string v3, "16_9"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    array-length v3, p1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, p1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    add-int/2addr v2, v4

    aget-object p1, p1, v2

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    aget-object p1, p1, v1

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public buildEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "funcValue_select"

    goto :goto_0

    :cond_0
    const-string p1, "funcKey_click"

    :goto_0
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    return-void
.end method

.method public buildMenuClick(Ljava/lang/String;ZZZ)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "funcKey_click"

    iput-object p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    const-string p2, "pref_camera_flashmode_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "pref_filter_menu"

    const-string v1, "pref_portrait_new_style_menu"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_a

    const-string p2, "pref_camera_torch_mode_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "pref_camera_videoflashmode_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    const-string p2, "pref_camera_hdr_mode_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x8

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_3

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xa

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    if-eqz p4, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_3

    :cond_4
    const-string p2, "pref_video_filter_menu"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x18

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    if-eqz p4, :cond_5

    move p2, v2

    goto :goto_1

    :cond_5
    move p2, v3

    :goto_1
    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x4

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_3

    :cond_7
    const-string p2, "pref_video_size_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x14

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_3

    :cond_8
    const-string p2, "pref_slow_video_frame_key"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x15

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    :goto_2
    const/4 p2, 0x3

    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    :goto_3
    if-eqz p3, :cond_b

    move p2, v2

    goto :goto_4

    :cond_b
    move p2, v3

    :goto_4
    iput p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_c
    if-eqz p4, :cond_d

    goto :goto_5

    :cond_d
    move v2, v3

    :goto_5
    iput v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    :cond_e
    return-void
.end method

.method public buildMenuItem(Ljava/lang/String;Lcom/oppo/camera/i;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->checkBeauty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "pref_camera_high_resolution_key"

    const-string v7, "pref_subsetting_key"

    const-string v8, "pref_camera_pi_mode_key"

    const-string v9, "key_portrait_new_style_index"

    const-string v10, "key_filter_index"

    const-string v11, "pref_camera_timer_shutter_key"

    const-string v12, "pref_camera_photo_ratio_key"

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v5, :cond_d

    const-string v5, "pref_camera_torch_mode_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "pref_camera_videoflashmode_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v5, "pref_camera_hdr_mode_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x8

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto/16 :goto_2

    :cond_2
    const-string v5, "pref_video_size_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v4, 0x14

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto/16 :goto_2

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iput v13, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iput-object v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_5
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0xa

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_6
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_7
    const-string v4, "pref_slow_video_frame_key"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_8
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x1a

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_9
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x1d

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_a
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x1e

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x1f

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_2

    :cond_c
    return-void

    :cond_d
    :goto_1
    const/4 v4, 0x3

    iput v4, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    :goto_2
    move v4, v14

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "on"

    const-string v13, "off"

    const-string v15, "funcKey_click"

    if-eqz v5, :cond_f

    iput-object v15, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v2, v1, v13}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_4

    :cond_e
    const/4 v1, 0x2

    :goto_4
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iput-object v15, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v2, v1, v13}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_5

    :cond_10
    const/4 v1, 0x1

    :goto_5
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "funcValue_select"

    if-eqz v5, :cond_12

    iput-object v7, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    sget-object v1, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->FUNC_KEY_PHOTO_RATIO_VALUE:[Ljava/lang/String;

    const-string v3, "standard"

    invoke-virtual {v2, v12, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->getNextValueOfArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_7

    :cond_12
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iput-object v7, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    sget-object v1, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->FUNC_KEY_TIMER_VALUE:[Ljava/lang/String;

    const-string v3, "normal"

    invoke-virtual {v2, v11, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->getNextValueOfArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_7

    :cond_13
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iput-object v15, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    const-string v1, "key_high_picture_size"

    invoke-virtual {v2, v1, v14}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_6

    :cond_14
    const/4 v1, 0x1

    :goto_6
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_7

    :cond_15
    iput-object v7, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    if-eqz v4, :cond_18

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2, v10, v14}, Lcom/oppo/camera/i;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/d;->a(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_7

    :cond_16
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v2, v9, v14}, Lcom/oppo/camera/i;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/d;->b(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_7

    :cond_17
    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/oppo/camera/i;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    goto :goto_7

    :cond_18
    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    :cond_19
    :goto_7
    return-void
.end method

.method public buildSettingMenuItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string v1, "funcValue_select"

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_sound_types_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_video_fps_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_restore_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_slogan_owner_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_a
    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v0, "pref_mirror_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_camera_sound_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_camera_fingerprint_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_video_codec_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_11
    const-string v1, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_volume_key_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "slogan_content"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string p1, "video_rec_mode"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const-string p1, "slowVideo_rec_mode"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    const-string p1, "restore_default"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    const-string p1, "video_fps"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    const-string p1, "video_codec"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    const-string p1, "video_recorder_sound"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    const-string p1, "is_slogan"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    const-string p1, "ai_scene"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_9
    const-string p1, "is_mirror"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_a
    const-string p1, "is_record_location"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_b
    const-string p1, "is_shutter_voice"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_c
    const-string p1, "is_fingerprint_shutter"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_d
    const-string p1, "is_assistant_line"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    const-string p1, "volume_function"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_f
    const-string p1, "is_gesture_capture_type"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_10
    const-string p1, "is_tap_capture_type"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_11
    const-string p1, "delay_time"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_2

    :pswitch_12
    const-string p1, "pic_size_type"

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7dfd8c3f -> :sswitch_12
        -0x7b6c9fed -> :sswitch_11
        -0x7628da2a -> :sswitch_10
        -0x651df54c -> :sswitch_f
        -0x5f048920 -> :sswitch_e
        -0x51f3cacf -> :sswitch_d
        -0x4f05d6eb -> :sswitch_c
        -0x47e5ae85 -> :sswitch_b
        -0x43b4b28f -> :sswitch_a
        -0x41bfebb2 -> :sswitch_9
        -0x392872ee -> :sswitch_8
        -0x2518b6d7 -> :sswitch_7
        -0x1f666fb3 -> :sswitch_6
        -0x1e969cb5 -> :sswitch_5
        -0xb0f5f67 -> :sswitch_4
        0x70c9eebc -> :sswitch_3
        0x74aa4427 -> :sswitch_2
        0x7b5de9e4 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValid, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuClickMsgData"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/statistics/model/DcsMsgData;->isValid()Z

    move-result v0

    return v0
.end method

.method public report()V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->prepareLogTagByCaptureType()V

    iget v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "funcKey_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    const-string v1, "funcKey_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "funcKey_result"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    const-string v1, "funcValue_select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v3, "funcKey_item"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "funcKey_value"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_recording"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v2, "restore_default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v2, "slowVideo_rec_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v2, "video_rec_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v2, "is_slogan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v1, "slogan_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-boolean v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuClickMsgData"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-super {p0}, Lcom/oppo/camera/statistics/model/DcsMsgData;->report()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLogTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFuncKeyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFuncKeyResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mItemValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
