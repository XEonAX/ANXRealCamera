.class public Lcom/oppo/camera/Ipa/a/a;
.super Lcom/oppo/camera/Ipa/a/b;
.source "AnimojiProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;ZIIILcom/oppo/camera/Ipa/b$a;)V
    .locals 5

    invoke-virtual {p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v0

    const-string v1, "AnimojiProcessor"

    if-nez v0, :cond_0

    const-string p1, "processNVData, outputImageData is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNVData, imageWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", imageHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputOffscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputOffscreen.width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputOffscreen.height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputOffscreen.dataLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    const/16 p1, 0xb4

    if-eq p5, p1, :cond_2

    const/16 p1, 0x10e

    if-eq p5, p1, :cond_1

    :goto_0
    move v4, p4

    move p4, p3

    move p3, v4

    goto :goto_1

    :cond_1
    invoke-static {v0, p3, p4}, Lcom/oppo/camera/o/d;->c([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v0, p3, p4}, Lcom/oppo/camera/o/d;->d([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0, p3, p4}, Lcom/oppo/camera/o/d;->b([BII)[B

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/oppo/camera/o/d;->e([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v0, p3, p4}, Lcom/oppo/camera/o/d;->b([BII)[B

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/oppo/camera/o/d;->e([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v0, p3, p4}, Lcom/oppo/camera/o/d;->d([BII)[B

    move-result-object v0

    :goto_1
    iput p4, p6, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput p3, p6, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput-object v0, p6, Lcom/oppo/camera/Ipa/b$a;->a:[B

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 12

    iget-object v7, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v8, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-boolean v1, v7, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/oppo/camera/Ipa/b$c;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/oppo/camera/Ipa/b$c;->k:J

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, v7, Lcom/oppo/camera/Ipa/b$a;->p:J

    :goto_1
    move-wide v9, v0

    iget-object v0, v8, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    const/16 v11, 0x100

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$c;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, v8, v9, v10}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;Lcom/oppo/camera/Ipa/b$b;J)[B

    move-result-object p1

    iput-object p1, v7, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iput v11, v7, Lcom/oppo/camera/Ipa/b$a;->i:I

    return-void

    :cond_2
    iget-boolean p1, v8, Lcom/oppo/camera/Ipa/b$b;->E:Z

    if-eqz p1, :cond_3

    iget-boolean p1, v8, Lcom/oppo/camera/Ipa/b$b;->e:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    move v2, p1

    iget-object p1, v8, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v4

    iget v5, v8, Lcom/oppo/camera/Ipa/b$b;->at:I

    move-object v0, p0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/Ipa/a/a;->a(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;ZIIILcom/oppo/camera/Ipa/b$a;)V

    iget-object p1, v7, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget v0, v7, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v1, v7, Lcom/oppo/camera/Ipa/b$a;->f:I

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->a([BII)[B

    move-result-object p1

    invoke-static {p1, v8, v9, v10}, Lcom/oppo/camera/o/d;->a([BLcom/oppo/camera/Ipa/b$b;J)[B

    move-result-object p1

    iput-object p1, v7, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iput v11, v7, Lcom/oppo/camera/Ipa/b$a;->i:I

    return-void
.end method