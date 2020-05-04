.class public Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;
.super Ljava/lang/Object;
.source "OppoFaceBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/facebeauty/OppoFaceBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessParameter"
.end annotation


# instance fields
.field public mAppBeautyParam:[I

.field public mAppBeautyParamSize:I

.field public mAttrResult:[B

.field public mBeauty3DParam:[I

.field public mBeauty3DParamSize:I

.field public mDeviceOrientation:I

.field public mFFDResult:[B

.field public mFaceBeautyLevel:I

.field public mFaceNum:I

.field public mISO:I

.field public mLanguage:Ljava/lang/String;

.field public mMasterFaceIndex:I

.field public mModelPath:Ljava/lang/String;

.field public mProjectName:Ljava/lang/String;

.field public mRegion:Ljava/lang/String;

.field public mSensorName:[B

.field public mVersion:Ljava/lang/String;

.field public mVersionCode:I

.field public mbAiAdjustParam:Z

.field public mbFlashSnapshot:Z

.field public mbLowPerformance:Z

.field public mbVideoMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mDeviceOrientation:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFaceBeautyLevel:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mISO:I

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbVideoMode:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbFlashSnapshot:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbLowPerformance:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mbAiAdjustParam:Z

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAppBeautyParamSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAppBeautyParam:[I

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mModelPath:Ljava/lang/String;

    const/16 v2, 0x18

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mSensorName:[B

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mLanguage:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mRegion:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mProjectName:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mMasterFaceIndex:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFaceNum:I

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mFFDResult:[B

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mAttrResult:[B

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mVersionCode:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mBeauty3DParamSize:I

    iput-object v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$ProcessParameter;->mBeauty3DParam:[I

    return-void
.end method
