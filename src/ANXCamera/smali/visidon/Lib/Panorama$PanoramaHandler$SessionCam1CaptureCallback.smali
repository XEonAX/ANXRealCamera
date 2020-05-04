.class Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/Panorama$PanoramaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCam1CaptureCallback"
.end annotation


# instance fields
.field public cancelRequested:Z

.field final synthetic this$1:Lvisidon/Lib/Panorama$PanoramaHandler;


# direct methods
.method private constructor <init>(Lvisidon/Lib/Panorama$PanoramaHandler;)V
    .locals 0

    iput-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->cancelRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lvisidon/Lib/Panorama$PanoramaHandler;Lvisidon/Lib/Panorama$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;-><init>(Lvisidon/Lib/Panorama$PanoramaHandler;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12

    const-string p2, ".jpg"

    const-string v0, "_im"

    const-string v1, "saving failed"

    iget-boolean v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->cancelRequested:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {p1, v3}, Lvisidon/Lib/Panorama$PanoramaHandler;->onSetPreviewParameters(Z)V

    return-void

    :cond_0
    array-length v6, p1

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v4, v2, Lvisidon/Lib/Panorama;->imagesTaken:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    iput v4, v2, Lvisidon/Lib/Panorama;->imagesTaken:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On picture taken - images taken set to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v4, v4, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v4, v4, Lvisidon/Lib/Panorama;->imagesTaken:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "Visidon"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    invoke-virtual {v2, v10}, Lvisidon/Lib/Panorama$PanoramaHandler;->onSetPreviewParameters(Z)V

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iput-boolean v10, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->processing:Z

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-boolean v2, v2, Lvisidon/Lib/Panorama;->transposed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v4, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v7, v2, Lvisidon/Lib/Panorama;->lastDisplacement:I

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v8, v2, Lvisidon/Lib/Panorama;->engine:J

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lvisidon/Lib/Panorama;->nativeAddJpegFrame([BIIJ)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v4, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v7, v2, Lvisidon/Lib/Panorama;->lastDisplacementy:I

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-wide v8, v2, Lvisidon/Lib/Panorama;->engine:J

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lvisidon/Lib/Panorama;->nativeAddJpegFrame([BIIJ)I

    :goto_0
    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iput-boolean v3, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->processing:Z

    iget-boolean v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->cancelRequested:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Lvisidon/Lib/Panorama$PanoramaHandler;->onSetPreviewParameters(Z)V

    return-void

    :cond_2
    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    const/4 v4, 0x3

    iput v4, v2, Lvisidon/Lib/Panorama;->state:I

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget-object v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v4, v4, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v4}, Lvisidon/Lib/Panorama;->access$2500(Lvisidon/Lib/Panorama;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lvisidon/Lib/Panorama;->access$2600(Lvisidon/Lib/Panorama;J)V

    iget-object v2, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v2, v2, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v2}, Lvisidon/Lib/Panorama;->access$2700(Lvisidon/Lib/Panorama;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Save input frame"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v4, "/storage/sdcard0/VDPanorama"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/l/a;->f(Ljava/lang/String;)Z

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/sdcard0/VDPanorama/image_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lvisidon/Lib/Panorama;->imageSet:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v4, v4, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v4, v4, Lvisidon/Lib/Panorama;->imagesTaken:I

    sub-int/2addr v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/oppo/camera/l/a;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/oppo/camera/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v2, p1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frame saved to: /storage/sdcard0/VDPanorama/image_set"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lvisidon/Lib/Panorama;->imageSet:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvisidon/Lib/Panorama$PanoramaHandler$SessionCam1CaptureCallback;->this$1:Lvisidon/Lib/Panorama$PanoramaHandler;

    iget-object v0, v0, Lvisidon/Lib/Panorama$PanoramaHandler;->this$0:Lvisidon/Lib/Panorama;

    iget v0, v0, Lvisidon/Lib/Panorama;->imagesTaken:I

    sub-int/2addr v0, v10

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, p1

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_5
    invoke-virtual {v4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_5
    :goto_3
    const-string p1, "Onpicturetaken ready"

    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
