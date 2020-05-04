.class public abstract Lcom/oppo/camera/gl/v;
.super Lcom/oppo/camera/gl/c;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/v$a;
    }
.end annotation


# static fields
.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oppo/camera/gl/v$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/oppo/camera/gl/v$a;

.field private static k:I


# instance fields
.field protected i:Landroid/graphics/Bitmap;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/camera/gl/v;->h:Ljava/util/HashMap;

    new-instance v0, Lcom/oppo/camera/gl/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/v$a;-><init>(Lcom/oppo/camera/gl/v$1;)V

    sput-object v0, Lcom/oppo/camera/gl/v;->j:Lcom/oppo/camera/gl/v$a;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/oppo/camera/gl/c;-><init>(Lcom/oppo/camera/gl/h;II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/gl/v;->l:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/v;->m:Z

    iput-boolean v1, p0, Lcom/oppo/camera/gl/v;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/gl/v;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/v;->a(Z)V

    iput v1, p0, Lcom/oppo/camera/gl/v;->p:I

    :cond_0
    return-void
.end method

.method private static a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/oppo/camera/gl/v;->j:Lcom/oppo/camera/gl/v$a;

    iput-boolean p0, v0, Lcom/oppo/camera/gl/v$a;->a:Z

    iput-object p1, v0, Lcom/oppo/camera/gl/v$a;->b:Landroid/graphics/Bitmap$Config;

    iput p2, v0, Lcom/oppo/camera/gl/v$a;->c:I

    sget-object v1, Lcom/oppo/camera/gl/v;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-static {v1, p2, p1}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p2, v1, p1}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    sget-object p0, Lcom/oppo/camera/gl/v;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/v$a;->a()Lcom/oppo/camera/gl/v$a;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private d(Lcom/oppo/camera/gl/h;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/v;->r()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v1, v8, Lcom/oppo/camera/gl/v;->p:I

    iget v1, v8, Lcom/oppo/camera/gl/v;->p:I

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/v;->g()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/v;->h()I

    move-result v13

    if-gt v0, v12, :cond_0

    if-gt v11, v13, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, La/a/a;->a(Z)V

    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->a()Lcom/oppo/camera/gl/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/gl/k;->b()I

    move-result v1

    iput v1, v8, Lcom/oppo/camera/gl/v;->c:I

    invoke-interface {v9, v8}, Lcom/oppo/camera/gl/h;->b(Lcom/oppo/camera/gl/c;)V

    if-ne v0, v12, :cond_1

    if-ne v11, v13, :cond_1

    invoke-interface {v9, v8, v5}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v15

    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v9, v8, v15, v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;II)V

    iget v3, v8, Lcom/oppo/camera/gl/v;->p:I

    iget v4, v8, Lcom/oppo/camera/gl/v;->p:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v14, v6

    move v6, v15

    move/from16 v16, v7

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V

    iget v1, v8, Lcom/oppo/camera/gl/v;->p:I

    if-lez v1, :cond_2

    invoke-static {v10, v14, v13}, Lcom/oppo/camera/gl/v;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    invoke-static {v1, v14, v12}, Lcom/oppo/camera/gl/v;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V

    :cond_2
    iget v1, v8, Lcom/oppo/camera/gl/v;->p:I

    add-int/2addr v1, v0

    if-ge v1, v12, :cond_3

    invoke-static {v10, v14, v13}, Lcom/oppo/camera/gl/v;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v1, v8, Lcom/oppo/camera/gl/v;->p:I

    add-int v3, v1, v0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V

    :cond_3
    iget v0, v8, Lcom/oppo/camera/gl/v;->p:I

    add-int/2addr v0, v11

    if-ge v0, v13, :cond_4

    const/4 v0, 0x0

    invoke-static {v0, v14, v12}, Lcom/oppo/camera/gl/v;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    iget v0, v8, Lcom/oppo/camera/gl/v;->p:I

    add-int v4, v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/v;->s()V

    invoke-virtual/range {p0 .. p1}, Lcom/oppo/camera/gl/v;->a(Lcom/oppo/camera/gl/h;)V

    iput v10, v8, Lcom/oppo/camera/gl/v;->d:I

    iput-boolean v10, v8, Lcom/oppo/camera/gl/v;->l:Z

    return-void

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/v;->s()V

    throw v0

    :cond_5
    const/4 v0, -0x1

    iput v0, v8, Lcom/oppo/camera/gl/v;->d:I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oppo/camera/gl/v;->k:I

    return-void
.end method

.method public static p()Z
    .locals 2

    sget v0, Lcom/oppo/camera/gl/v;->k:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/gl/v;->G_()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/gl/v;->p:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/camera/gl/v;->p:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/gl/v;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/gl/v;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, La/a/a;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/v;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected abstract G_()Landroid/graphics/Bitmap;
.end method

.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected b(Lcom/oppo/camera/gl/h;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/v;->c(Lcom/oppo/camera/gl/h;)V

    invoke-virtual {p0}, Lcom/oppo/camera/gl/v;->q()Z

    move-result p1

    return p1
.end method

.method public c(Lcom/oppo/camera/gl/h;)V
    .locals 9

    invoke-virtual {p0}, Lcom/oppo/camera/gl/v;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/v;->o:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oppo/camera/gl/v;->k:I

    add-int/2addr v0, v1

    sput v0, Lcom/oppo/camera/gl/v;->k:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/v;->d(Lcom/oppo/camera/gl/h;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/gl/v;->l:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/gl/v;->r()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    iget v5, p0, Lcom/oppo/camera/gl/v;->p:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/oppo/camera/gl/v;->s()V

    iput-boolean v1, p0, Lcom/oppo/camera/gl/v;->l:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/gl/v;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/v;->r()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/oppo/camera/gl/v;->a:I

    return v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/gl/v;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/v;->r()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/oppo/camera/gl/v;->b:I

    return v0
.end method

.method public j()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public l()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/gl/c;->l()V

    iget-object v0, p0, Lcom/oppo/camera/gl/v;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/v;->s()V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/gl/v;->n:Z

    return v0
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/v;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/v;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
