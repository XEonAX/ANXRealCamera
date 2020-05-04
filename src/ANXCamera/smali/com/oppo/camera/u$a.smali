.class public Lcom/oppo/camera/u$a;
.super Landroid/os/AsyncTask;
.source "SloganManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/u;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/u;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "SloganManager"

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/u$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "doInBackground, start"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    const/4 v5, 0x1

    iput v5, v0, Lcom/oppo/camera/u;->a:I

    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->b(Lcom/oppo/camera/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    iget-object v6, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v6}, Lcom/oppo/camera/u;->c(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->d(Lcom/oppo/camera/u;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->e(Lcom/oppo/camera/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v5, 0x2

    :cond_3
    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_b

    iget-object v6, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v6}, Lcom/oppo/camera/u;->f(Lcom/oppo/camera/u;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/u$c;

    iget-object v8, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v8}, Lcom/oppo/camera/u;->b(Lcom/oppo/camera/u;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v8}, Lcom/oppo/camera/u;->g(Lcom/oppo/camera/u;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lcom/oppo/camera/u$c;->e:Z

    if-nez v8, :cond_9

    :cond_4
    iget-object v8, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    iget-object v9, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v9}, Lcom/oppo/camera/u;->h(Lcom/oppo/camera/u;)I

    move-result v9

    iget-object v10, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    invoke-static {v8, v0, v9, v10}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;IILandroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "oppo.dump.watermark.png"

    invoke-static {v9, v4}, Lcom/color/compat/os/SystemPropertiesNative;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "x"

    if-eqz v9, :cond_5

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/oppo/camera/v;->l:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "watermark_png"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Watermark_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_pic_size_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v12}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doInBackground, saveBitmapAsPng file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v12

    iget-object v13, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    iget-object v14, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    invoke-static {v13, v14}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;Landroid/util/Size;)F

    move-result v13

    int-to-float v14, v9

    div-float/2addr v14, v13

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground, waterMarkBitmapWidth: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", waterMarkBitmapHeight: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", watermarkWidthInScreen: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenWidth: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scale: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    iget-object v12, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    iget-object v13, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v13}, Lcom/oppo/camera/u;->h(Lcom/oppo/camera/u;)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Lcom/oppo/camera/u;->b(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, ".yuv"

    const-string v13, "_"

    if-nez v0, :cond_6

    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".slogan_portrait_"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ".slogan_landscape_"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v9, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v11}, Lcom/oppo/camera/u;->c(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v9

    iget-object v10, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v10}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v10}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v10, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v10}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    iput-boolean v9, v7, Lcom/oppo/camera/u$c;->e:Z

    iput-object v4, v7, Lcom/oppo/camera/u$c;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v4}, Lcom/oppo/camera/u;->f(Lcom/oppo/camera/u;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground, generateYuvFile success: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", key: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", yuvInfo: <mPictureSize: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", streamType: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/oppo/camera/u$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mYuvFilename: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/oppo/camera/u$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mbFileExist: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/oppo/camera/u$c;->e:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v0, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    const/4 v3, 0x0

    iput v3, v0, Lcom/oppo/camera/u;->a:I

    const-string v0, "doInBackground, end"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    :goto_3
    const-string v0, "doInBackground, return null"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    const/4 v4, 0x0

    iput v4, v3, Lcom/oppo/camera/u;->a:I

    invoke-static {v3, v4}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;Z)Z

    iget-object v3, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v3, v4}, Lcom/oppo/camera/u;->b(Lcom/oppo/camera/u;Z)Z

    iget-object v3, v1, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v3, v4}, Lcom/oppo/camera/u;->c(Lcom/oppo/camera/u;Z)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v2, 0x0

    return-object v2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    const-string p1, "SloganManager"

    const-string v0, "onPostExecute"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/u;->a(Lcom/oppo/camera/u;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1, v0}, Lcom/oppo/camera/u;->b(Lcom/oppo/camera/u;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    iput v0, p1, Lcom/oppo/camera/u;->a:I

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->k(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_owner_name"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->l(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_market_name"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    const-string v1, "pref_slogan_version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->m(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_location"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->n(Lcom/oppo/camera/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_time"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {p1}, Lcom/oppo/camera/u;->i(Lcom/oppo/camera/u;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/u$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    const-string v0, "SloganManager"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/u$a;->a:Lcom/oppo/camera/u;

    invoke-static {v0}, Lcom/oppo/camera/u;->j(Lcom/oppo/camera/u;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/u$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
