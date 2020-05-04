.class public Lcom/oppo/camera/jni/APSClient$APSResultInfo;
.super Ljava/lang/Object;
.source "APSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/jni/APSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APSResultInfo"
.end annotation


# instance fields
.field public mAppAlgoFlag:J

.field public mBufferType:I

.field public mBuffers:Ljava/nio/ByteBuffer;

.field public mCopyBuffer:[B

.field public mCropBottom:I

.field public mCropLeft:I

.field public mCropRight:I

.field public mCropTop:I

.field public mHeight:I

.field public mIdentity:J

.field public mImage:Landroid/media/Image;

.field public mMessageType:I

.field public mRotation:I

.field public mScanline:I

.field public mStride:I

.field public mWidth:I

.field final synthetic this$0:Lcom/oppo/camera/jni/APSClient;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/jni/APSClient;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->this$0:Lcom/oppo/camera/jni/APSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mMessageType:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mRotation:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mBufferType:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mWidth:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mHeight:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mStride:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mScanline:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mIdentity:J

    iput-wide v0, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mAppAlgoFlag:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mBuffers:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCopyBuffer:[B

    iput-object v0, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mImage:Landroid/media/Image;

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropLeft:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropTop:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropRight:I

    iput p1, p0, Lcom/oppo/camera/jni/APSClient$APSResultInfo;->mCropBottom:I

    return-void
.end method
