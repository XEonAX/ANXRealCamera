.class public Lcom/oppo/camera/debug/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static final BLUR_STRENGTH:F = 0.8f

.field private static final CAPTURE_BLUR_STRENGTH:F = 0.7f

.field public static final DEBUG_DISABLE:Ljava/lang/String; = "false"

.field public static final DEBUG_ENABLE:Ljava/lang/String; = "true"

.field private static final DEBUG_PROPERTY_FILE:Ljava/lang/String; = "/sdcard/camera_app_debug_property"

.field public static final DUMP_DIR_BLURANIM:Ljava/lang/String; = "blurAnim"

.field public static final DUMP_DIR_CAPTURE_RAW_PATH:Ljava/lang/String; = "oppo_capture_raw"

.field public static final DUMP_DIR_CAPTURE_YUV:Ljava/lang/String; = "capture_yuv"

.field public static final DUMP_DIR_HEADLINE:Ljava/lang/String; = "headline"

.field public static final DUMP_DIR_HEADLINE_TEXTURE:Ljava/lang/String; = "headline_texture"

.field public static final DUMP_DIR_HEADLINE_VIEW:Ljava/lang/String; = "headline_view"

.field public static final DUMP_DIR_PREVIEW:Ljava/lang/String; = "preview"

.field public static final DUMP_DIR_PREVIEW_DEPTH:Ljava/lang/String; = "preview_depth"

.field public static final DUMP_DIR_PREVIEW_YUV:Ljava/lang/String; = "preview_yuv"

.field public static final FORCE_CAMERA_ID:Ljava/lang/String; = "realme.force.camera.id"

.field private static final FORCE_CAMERA_ID_DEFAULT:I = -0x1

.field public static final FORCE_CAMERA_ID_SUPPORT:Ljava/lang/String; = "realme.force.camera.id.support"

.field public static final PROPERTIES_DEBUG_IN_BGS_ENABLE:Ljava/lang/String; = "oppo.debug.bgs.enable"

.field public static final PROPERTIES_DUMP_BLURANIM:Ljava/lang/String; = "oppo.dump.blurAnim"

.field public static final PROPERTIES_DUMP_CAPTURE_YUV:Ljava/lang/String; = "oppo.dump.capture.yuv"

.field public static final PROPERTIES_DUMP_HEADLINE:Ljava/lang/String; = "oppo.dump.headline"

.field public static final PROPERTIES_DUMP_NIGHT_RAW_ENABLE:Ljava/lang/String; = "oppo.dump.night.raw.enable"

.field public static final PROPERTIES_DUMP_NIGHT_RAW_MODE:Ljava/lang/String; = "oppo.dump.night.raw.mode"

.field public static final PROPERTIES_DUMP_POSTVIEW_YUV:Ljava/lang/String; = "oppo.dump.postview.yuv"

.field public static final PROPERTIES_DUMP_PREVIEW:Ljava/lang/String; = "oppo.dump.preview"

.field public static final PROPERTIES_DUMP_PREVIEW_DEPTH:Ljava/lang/String; = "oppo.dump.preview.depth"

.field public static final PROPERTIES_DUMP_PREVIEW_YUV:Ljava/lang/String; = "oppo.dump.preview.yuv"

.field public static final PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV:Ljava/lang/String; = "oppo.dump.singlebokeh.capture.yuv"

.field public static final PROPERTIES_DUMP_TOF:Ljava/lang/String; = "oppo.dump.tof"

.field public static final PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH:Ljava/lang/String; = "oppo.singlebokeh.blur.strength"

.field public static final PROPERTIES_SINGLE_BOKEH_BLUR_STRENGTH_SUPPORT:Ljava/lang/String; = "oppo.singlebokeh.blur.strength.support"

.field public static final PROPERTIES_SINGLE_BOKEH_CAPTURE_BLUR_STRENGTH:Ljava/lang/String; = "oppo.singlebokeh.capture.blur.strength"

.field private static final TAG:Ljava/lang/String; = "CAM_DebugUtil"

.field private static mDebugItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDualCameraType(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ro.camera.dualcam.type"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getBokehBlurStrength()F
    .locals 3

    const-string v0, "oppo.singlebokeh.blur.strength.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "oppo.singlebokeh.blur.strength"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBokehBlurStrength, blurStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAM_DebugUtil"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getCaptureBokehBlurStrength()F
    .locals 3

    const-string v0, "oppo.singlebokeh.blur.strength.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x3f333333    # 0.7f

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "oppo.singlebokeh.capture.blur.strength"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaptureBokehBlurStrength, blurStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAM_DebugUtil"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getForceCameraId()I
    .locals 3

    const-string v0, "realme.force.camera.id.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "realme.force.camera.id"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getForceCameraId, cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAM_DebugUtil"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static initDebug(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/oppo/camera/debug/PrefUtils;->isDebugPropertyOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/sdcard/camera_app_debug_property"

    invoke-static {p0}, Lcom/oppo/camera/o/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CAM_DebugUtil"

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDebug, content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oppo/camera/debug/DebugUtil;->parseDebugProperty(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "initDebug, read content failed!"

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isEnableHighPictureSizeMode()Z
    .locals 1

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnableHighPictureSizeSetting()Z
    .locals 2

    const-string v0, "oppo.camera.high.picturesize.setting"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnablePortraitFilter()Z
    .locals 2

    const-string v0, "ro.camera.filter.version"

    const-string v1, "uninitied"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoHighFrameRateEnabled()Z
    .locals 2

    const-string v0, "ro.camera.hfr.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static parseDebugProperty(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "CAM_DebugUtil"

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/oppo/camera/debug/DebugUtil$1;

    invoke-direct {v3}, Lcom/oppo/camera/debug/DebugUtil$1;-><init>()V

    invoke-virtual {v3}, Lcom/oppo/camera/debug/DebugUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string p0, "parseDebugProperty fail, debugItemList is null!"

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v1, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/debug/DebugItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseDebugProperty, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oppo/camera/debug/DebugItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oppo/camera/debug/DebugItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/oppo/camera/debug/DebugUtil;->mDebugItemMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oppo/camera/debug/DebugItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/oppo/camera/debug/DebugItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseDebugProperty fail, e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2
.end method
