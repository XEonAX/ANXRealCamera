.class public abstract Lcom/oppo/camera/statistics/model/DcsMsgData;
.super Ljava/lang/Object;
.source "DcsMsgData.java"


# static fields
.field public static final CAPTURE_TYPE:I = 0x0

.field public static final DEBUG:Z

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "camera_id"

.field protected static final KEY_CAPTURE_MODE:Ljava/lang/String; = "capture_mode"

.field private static final KEY_ENTER_TIMESTAMP:Ljava/lang/String; = "enter_timestamp"

.field private static final KEY_ENTER_TYPE:Ljava/lang/String; = "enter_type"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash_mode"

.field private static final KEY_FLASH_TRIGGER:Ljava/lang/String; = "flash_trigger"

.field private static final KEY_IS_MIRROR:Ljava/lang/String; = "is_mirror"

.field private static final KEY_NEW_STYLE_TYPE:Ljava/lang/String; = "portrait_new_style_type"

.field protected static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field protected static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SMOOTH_LEVEL:Ljava/lang/String; = "smooth_value"

.field private static final KEY_ZOOM_VALUE:Ljava/lang/String; = "zoom_value"

.field protected static final LOGTAG_CAPTURE:Ljava/lang/String; = "200"

.field protected static final LOGTAG_STICKER:Ljava/lang/String; = "205"

.field protected static final LOGTAG_VIDEO:Ljava/lang/String; = "202"

.field private static final SESSION_TIME_OUT:I = 0xa

.field public static final STICKER_TYPE:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "DcsMsgData"

.field public static final VIDEO_TYPE:I = 0x1


# instance fields
.field public mCameraEnterTimeStamp:Ljava/lang/String;

.field public mCameraEnterType:Ljava/lang/String;

.field public mCameraId:Ljava/lang/String;

.field public mCaptureMode:Ljava/lang/String;

.field public mCaptureType:I

.field private mContext:Landroid/content/Context;

.field protected mEventId:Ljava/lang/String;

.field protected mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterType:Ljava/lang/String;

.field public mFlashMode:Ljava/lang/String;

.field public mIsMirror:Ljava/lang/String;

.field protected mLogTag:Ljava/lang/String;

.field public mOrientation:I

.field public mPortraitNewStyleType:Ljava/lang/String;

.field private mRealTime:Z

.field public mScreenBrightness:I

.field public mSmooth:I

.field public mZoomValue:Ljava/lang/String;

.field public mbFlashTrigger:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/compat/os/SystemPropertiesNative;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/statistics/model/DcsMsgData;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraId:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mOrientation:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureType:I

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    const-string v3, ""

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFilterType:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mSmooth:I

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mIsMirror:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFlashMode:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mbFlashTrigger:I

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mZoomValue:Ljava/lang/String;

    invoke-static {}, Lcom/oppo/camera/entry/b;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterTimeStamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mRealTime:Z

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mRealTime:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraId:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mOrientation:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureType:I

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    const-string v3, ""

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFilterType:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mSmooth:I

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mIsMirror:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFlashMode:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mbFlashTrigger:I

    iput-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mZoomValue:Ljava/lang/String;

    invoke-static {}, Lcom/oppo/camera/entry/b;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterTimeStamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mRealTime:Z

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mRealTime:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onError(Landroid/content/Context;)V

    sget-boolean v0, Lcom/oppo/camera/statistics/model/DcsMsgData;->DEBUG:Z

    invoke-static {v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onDebug(Z)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->setSessionTimeOut(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isValid()Z
    .locals 3

    invoke-static {}, Lcom/oppo/camera/o/d;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DcsMsgData"

    const-string v2, "isValid, monkey is running do not report"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method protected prepareLogTagByCaptureType()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "205"

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "202"

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "200"

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public report()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/model/DcsMsgData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v2, "capture_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraId:Ljava/lang/String;

    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mOrientation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mIsMirror:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mIsMirror:Ljava/lang/String;

    const-string v2, "is_mirror"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFilterType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFilterType:Ljava/lang/String;

    const-string v2, "filter_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    const-string v2, "portrait_new_style_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mFlashMode:Ljava/lang/String;

    const-string v2, "flash_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mbFlashTrigger:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flash_trigger"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mSmooth:I

    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "smooth_value"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mZoomValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mZoomValue:Ljava/lang/String;

    const-string v2, "zoom_value"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterTimeStamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterTimeStamp:Ljava/lang/String;

    const-string v2, "enter_timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    const-string v2, "enter_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mEventMap:Ljava/util/HashMap;

    iget-boolean v4, p0, Lcom/oppo/camera/statistics/model/DcsMsgData;->mRealTime:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_d
    return-void
.end method
