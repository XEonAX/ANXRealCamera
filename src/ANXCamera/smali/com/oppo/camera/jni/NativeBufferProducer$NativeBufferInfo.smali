.class public Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;
.super Ljava/lang/Object;
.source "NativeBufferProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/jni/NativeBufferProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeBufferInfo"
.end annotation


# instance fields
.field public mBufferAddr:J

.field public mBufferFd:I

.field public mBufferSize:I

.field public mbIonBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferFd:I

    iput v0, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferSize:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferAddr:J

    iput-boolean v0, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mbIonBuffer:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeBufferInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mBufferFd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mBufferSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mBufferAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->mBufferAddr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
