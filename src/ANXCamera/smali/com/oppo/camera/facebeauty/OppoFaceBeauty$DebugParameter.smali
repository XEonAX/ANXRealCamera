.class public Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;
.super Ljava/lang/Object;
.source "OppoFaceBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/facebeauty/OppoFaceBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugParameter"
.end annotation


# instance fields
.field public mBlush:I

.field public mCheekBone:I

.field public mDeblemish:I

.field public mDepouch:I

.field public mDragChin:I

.field public mDumpTime:J

.field public mEnlargeEyes:I

.field public mEyeEnlargement:I

.field public mEyeEnlargementAlt:I

.field public mEyeSharpen1:I

.field public mEyeSharpen2:I

.field public mEyeWhiten:I

.field public mEyelidDarkening:I

.field public mFaceContour:I

.field public mFbEnable:Z

.field public mHigherNose:I

.field public mLipBeauty:I

.field public mModelling:I

.field public mNarrowNose:I

.field public mNoseHighlight:I

.field public mProtectTilak:I

.field public mPupilBrightening:I

.field public mPupilContrast:I

.field public mPupilEnlargement:I

.field public mSimulationHeight:I

.field public mSimulationWidth:I

.field public mSkinBright:I

.field public mSkinClarity:I

.field public mSkinRuddy:I

.field public mSkinStyle:I

.field public mSlimFace:I

.field public mSmallFace:I

.field public mSoften:I

.field public mSoftenSharp:I

.field public mSoftenType:I

.field public mTouchUp:I

.field public mb3DFBDump:Z

.field public mb3DFb:Z

.field public mbAIFb:Z

.field public mbDepthEnable:Z

.field public mbDrawmarks:Z

.field public mbFbDump:Z

.field public mbPrintFFD:Z

.field public mbSetPara:Z

.field public mbSkinDump:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbFbDump:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mb3DFBDump:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbDrawmarks:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbPrintFFD:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbAIFb:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mFbEnable:Z

    iput-boolean v1, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mb3DFb:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbDepthEnable:Z

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSimulationWidth:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSimulationHeight:I

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbSkinDump:Z

    iput-boolean v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mbSetPara:Z

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSoften:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSoftenSharp:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSkinStyle:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSkinBright:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mNoseHighlight:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mLipBeauty:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mDeblemish:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mDepouch:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSkinRuddy:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mBlush:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSkinClarity:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSoftenType:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mProtectTilak:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mFaceContour:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mPupilContrast:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mPupilBrightening:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mPupilEnlargement:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyeWhiten:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyelidDarkening:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyeEnlargement:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyeSharpen1:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyeSharpen2:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEyeEnlargementAlt:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mHigherNose:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mNarrowNose:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mEnlargeEyes:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSlimFace:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mSmallFace:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mCheekBone:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mDragChin:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mTouchUp:I

    iput v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mModelling:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/facebeauty/OppoFaceBeauty$DebugParameter;->mDumpTime:J

    return-void
.end method
