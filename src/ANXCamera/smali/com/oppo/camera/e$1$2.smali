.class Lcom/oppo/camera/e$1$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$1;->a([BIIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:[B

.field final synthetic h:Lcom/oppo/camera/e$1;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$1;IIIZII[B)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iput p2, p0, Lcom/oppo/camera/e$1$2;->a:I

    iput p3, p0, Lcom/oppo/camera/e$1$2;->b:I

    iput p4, p0, Lcom/oppo/camera/e$1$2;->c:I

    iput-boolean p5, p0, Lcom/oppo/camera/e$1$2;->d:Z

    iput p6, p0, Lcom/oppo/camera/e$1$2;->e:I

    iput p7, p0, Lcom/oppo/camera/e$1$2;->f:I

    iput-object p8, p0, Lcom/oppo/camera/e$1$2;->g:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iget-object v1, v1, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iget-object v1, v1, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInThirdApp, nv21ToBitmapThread start, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oppo/camera/e$1$2;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oppo/camera/e$1$2;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oppo/camera/e$1$2;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/oppo/camera/e$1$2;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v5, v1, [I

    iget v3, v0, Lcom/oppo/camera/e$1$2;->e:I

    const/4 v10, 0x0

    aput v3, v5, v10

    const/4 v11, 0x1

    aput v3, v5, v11

    new-array v6, v1, [I

    iget v3, v0, Lcom/oppo/camera/e$1$2;->f:I

    aput v3, v6, v10

    aput v3, v6, v11

    iget-object v3, v0, Lcom/oppo/camera/e$1$2;->g:[B

    iget-boolean v4, v0, Lcom/oppo/camera/e$1$2;->d:Z

    if-eqz v4, :cond_1

    const-string v4, "processInThirdApp, mirrorYUV start"

    invoke-static {v2, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v3

    iget v7, v0, Lcom/oppo/camera/e$1$2;->a:I

    iget v8, v0, Lcom/oppo/camera/e$1$2;->b:I

    iget v9, v0, Lcom/oppo/camera/e$1$2;->c:I

    invoke-static/range {v3 .. v9}, Lcom/oppo/camera/jni/YuvProcessUtil;->mirrorYUV([BI[I[IIII)[B

    move-result-object v3

    const-string v4, "processInThirdApp, mirrorYUV end"

    invoke-static {v2, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v15, v3

    new-instance v3, Lcom/oppo/camera/jni/FormatConverter;

    invoke-direct {v3}, Lcom/oppo/camera/jni/FormatConverter;-><init>()V

    iget v4, v0, Lcom/oppo/camera/e$1$2;->a:I

    iget v5, v0, Lcom/oppo/camera/e$1$2;->b:I

    iget v6, v0, Lcom/oppo/camera/e$1$2;->c:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_3

    :cond_2
    iget v4, v0, Lcom/oppo/camera/e$1$2;->b:I

    iget v5, v0, Lcom/oppo/camera/e$1$2;->a:I

    :cond_3
    iget v6, v0, Lcom/oppo/camera/e$1$2;->c:I

    if-eq v6, v8, :cond_6

    const/16 v8, 0xb4

    if-eq v6, v8, :cond_5

    if-eq v6, v7, :cond_4

    move/from16 v26, v10

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    :cond_5
    move/from16 v26, v1

    goto :goto_0

    :cond_6
    move/from16 v26, v11

    :goto_0
    const-string v1, "processInThirdApp, nv21ToBitmapProcess start"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v6, v0, Lcom/oppo/camera/e$1$2;->a:I

    iget v7, v0, Lcom/oppo/camera/e$1$2;->b:I

    iget v8, v0, Lcom/oppo/camera/e$1$2;->e:I

    iget v9, v0, Lcom/oppo/camera/e$1$2;->f:I

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x2

    move-object/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v16 .. v29}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapInit(IIIIIIIFIIIII)J

    move-result-wide v5

    const/16 v16, 0x0

    move-object v12, v3

    move-wide v13, v5

    move-object/from16 v17, v1

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapProcess(J[BILandroid/graphics/Bitmap;I)I

    invoke-virtual {v3, v5, v6}, Lcom/oppo/camera/jni/FormatConverter;->nv21ToBitmapUnInit(J)I

    const-string v3, "processInThirdApp, nv21ToBitmapProcess end"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iget-object v2, v2, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iget-object v2, v2, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    iget-object v2, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    iget-object v2, v2, Lcom/oppo/camera/e$1;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/oppo/camera/e/f;->d()V

    :cond_7
    iget-object v2, v0, Lcom/oppo/camera/e$1$2;->h:Lcom/oppo/camera/e$1;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/e$1;->a(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_1
    return-void
.end method
