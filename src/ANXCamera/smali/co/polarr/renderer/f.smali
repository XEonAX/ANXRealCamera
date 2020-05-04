.class public Lco/polarr/renderer/f;
.super Ljava/lang/Object;


# static fields
.field private static final DEHAZE_MAX_SIZE:F = 512.0f

.field private static final FAST_AUTO_ENHANCEMENT_FAMRES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PPE_RENDER"


# instance fields
.field private A:Lco/polarr/renderer/filters/bp;

.field private B:Lco/polarr/renderer/filters/a;

.field private C:Lco/polarr/renderer/d;

.field private D:I

.field private E:Z

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/os/Handler;

.field private H:Ljava/nio/ByteBuffer;

.field private I:Z

.field private J:Lco/polarr/renderer/filters/ab;

.field private K:Z

.field private a:Lco/polarr/renderer/filters/a/c;

.field private b:Lco/polarr/renderer/entities/Context;

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/filters/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lco/polarr/renderer/b/b;

.field private g:Landroid/content/res/Resources;

.field private h:Lco/polarr/renderer/filters/a/d;

.field private i:Lco/polarr/renderer/filters/bl;

.field private j:Lco/polarr/renderer/filters/bj;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lco/polarr/renderer/render/f;

.field private r:Lco/polarr/renderer/render/f;

.field private s:Lco/polarr/renderer/render/f;

.field private t:Lco/polarr/renderer/b/m;

.field private u:I

.field private v:Z

.field private w:[I

.field private x:Z

.field private y:Lco/polarr/renderer/filters/ai;

.field private z:Lco/polarr/renderer/filters/ak;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/polarr/renderer/f;->m:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/polarr/renderer/f;->n:Z

    iput-boolean v1, p0, Lco/polarr/renderer/f;->o:Z

    iput-boolean v0, p0, Lco/polarr/renderer/f;->p:Z

    iput v1, p0, Lco/polarr/renderer/f;->u:I

    iput-boolean v1, p0, Lco/polarr/renderer/f;->x:Z

    iput v1, p0, Lco/polarr/renderer/f;->D:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    iput-boolean v1, p0, Lco/polarr/renderer/f;->K:Z

    return-void
.end method

.method static synthetic a(Lco/polarr/renderer/f;)Lco/polarr/renderer/entities/Context;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    return-object p0
.end method

.method private a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;
    .locals 9

    if-nez p4, :cond_0

    move-object p4, p3

    :cond_0
    if-nez p6, :cond_1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    :cond_1
    iget v0, p4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p4, Lco/polarr/renderer/render/f;->d:I

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p4, Lco/polarr/renderer/render/f;->e:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    const/4 v5, 0x4

    new-array v6, v5, [F

    mul-float/2addr v0, p5

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v6, v0

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v6, v4

    const/4 v3, 0x3

    aput v8, v6, v3

    iput-object v6, p2, Lco/polarr/renderer/filters/f;->a:[F

    sget-object v6, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v6, p2, Lco/polarr/renderer/filters/f;->b:Lco/polarr/renderer/entities/Mesh;

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    iget-object v6, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p2, p3, v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    new-array p3, v5, [F

    aput v8, p3, v7

    mul-float/2addr v2, p5

    aput v2, p3, v0

    aput v8, p3, v4

    mul-float/2addr v1, p6

    aput v1, p3, v3

    iput-object p3, p2, Lco/polarr/renderer/filters/f;->a:[F

    sget-object p3, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p3, p2, Lco/polarr/renderer/filters/f;->b:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-direct {p0, p2, p1, p4}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    return-object p4
.end method

.method private a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/r;Lco/polarr/renderer/filters/s;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;
    .locals 7

    if-nez p5, :cond_0

    move-object p5, p4

    :cond_0
    iget v0, p5, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p5, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v0, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    const/4 v0, 0x0

    const/4 v6, 0x1

    aput v0, v3, v6

    iput-object v3, p2, Lco/polarr/renderer/filters/r;->a:[F

    sget-object v3, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v3, p2, Lco/polarr/renderer/filters/r;->b:Lco/polarr/renderer/entities/Mesh;

    iget p4, p4, Lco/polarr/renderer/render/f;->c:I

    iget-object v3, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p2, p4, v3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    new-array p2, v2, [F

    aput v0, p2, v5

    mul-float/2addr v1, v4

    aput v1, p2, v6

    iput-object p2, p3, Lco/polarr/renderer/filters/s;->a:[F

    sget-object p2, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p2, p3, Lco/polarr/renderer/filters/s;->b:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-direct {p0, p3, p1, p5}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    return-object p5
.end method

.method private a(ILandroid/graphics/Rect;I)V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1, p3}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, p3, v1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->o()V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, p3, v1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method private a(Landroid/content/Context;ZZ)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "render::needSkip=%b::fastDraw=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    if-nez v0, :cond_0

    const-string v0, "PPE_RENDER"

    const-string v1, "getBitmap: Renderer was not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-virtual {v0, v1, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Z)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lco/polarr/renderer/b/q;->a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    :cond_1
    if-nez p3, :cond_4

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/z;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/z;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/y;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/y;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/b;->a([F)V

    iget-object v1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    if-nez v1, :cond_3

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    :cond_3
    iget-object v1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v1, v0}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, v4}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->draw()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/c;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->i()V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v4, v4, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1, v4}, Lco/polarr/renderer/filters/a/c;->c(II)V

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->r()V

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    iget v1, p0, Lco/polarr/renderer/f;->k:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    :cond_5
    if-nez p3, :cond_9

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "spots"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v1, v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lco/polarr/renderer/f;->i:Lco/polarr/renderer/filters/bl;

    if-nez v1, :cond_6

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v4}, Lco/polarr/renderer/filters/bl;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bl;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/f;->i:Lco/polarr/renderer/filters/bl;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-virtual {v1, v4}, Lco/polarr/renderer/filters/bl;->a(Lco/polarr/renderer/entities/Context;)V

    :goto_1
    iget-object v1, p0, Lco/polarr/renderer/f;->i:Lco/polarr/renderer/filters/bl;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lco/polarr/renderer/f;->j:Lco/polarr/renderer/filters/bj;

    if-nez v1, :cond_8

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v4}, Lco/polarr/renderer/filters/bj;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/bj;

    move-result-object v1

    iput-object v1, p0, Lco/polarr/renderer/f;->j:Lco/polarr/renderer/filters/bj;

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-virtual {v1, v4}, Lco/polarr/renderer/filters/bj;->a(Lco/polarr/renderer/entities/Context;)V

    :goto_2
    iget-object v1, p0, Lco/polarr/renderer/f;->j:Lco/polarr/renderer/filters/bj;

    :goto_3
    move v4, v2

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/SpotItem;

    iget v6, v5, Lco/polarr/renderer/entities/SpotItem;->feather:F

    iput v6, v1, Lco/polarr/renderer/filters/bj;->a:F

    iget-object v6, v5, Lco/polarr/renderer/entities/SpotItem;->size:[F

    iput-object v6, v1, Lco/polarr/renderer/filters/bj;->b:[F

    iget-object v6, v5, Lco/polarr/renderer/entities/SpotItem;->position:[F

    invoke-static {v6}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v6

    iput-object v6, v1, Lco/polarr/renderer/filters/bj;->c:[F

    iget-object v6, v5, Lco/polarr/renderer/entities/SpotItem;->sourcePosition:[F

    invoke-static {v6}, Lco/polarr/renderer/b/t;->a([F)[F

    move-result-object v6

    iput-object v6, v1, Lco/polarr/renderer/filters/bj;->d:[F

    iget v6, v5, Lco/polarr/renderer/entities/SpotItem;->angle:F

    iput v6, v1, Lco/polarr/renderer/filters/bj;->e:F

    iget v6, v5, Lco/polarr/renderer/entities/SpotItem;->opacity:F

    iput v6, v1, Lco/polarr/renderer/filters/bj;->f:F

    iget v5, v5, Lco/polarr/renderer/entities/SpotItem;->mode:F

    iput v5, v1, Lco/polarr/renderer/filters/bj;->g:F

    iget-object v5, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v5, v1}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->j()V

    if-nez p3, :cond_c

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "faces"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v1, v2

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    array-length v4, v4

    if-le v4, v1, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/polarr/renderer/entities/FaceItem;

    iget-object v5, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    aget-object v5, v5, v1

    iget-object v6, v4, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    iget-object v6, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v7, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v6, v7}, Lco/polarr/renderer/filters/ab;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/ab;

    move-result-object v6

    iput-object v5, v6, Lco/polarr/renderer/filters/ab;->a:Lco/polarr/renderer/render/c;

    iget-object v4, v4, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iput-object v4, v6, Lco/polarr/renderer/filters/ab;->b:Lco/polarr/renderer/entities/Context$FaceState;

    iget-object v4, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v4, v6}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    if-nez p3, :cond_d

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object v5, p0, Lco/polarr/renderer/f;->e:Ljava/util/List;

    invoke-static {v0, v1, v4, v5}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/a/c;Ljava/util/List;)Lco/polarr/renderer/filters/a/a;

    :cond_d
    if-eqz p2, :cond_10

    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/c;->q()V

    if-nez p3, :cond_e

    goto :goto_7

    :cond_e
    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result p1

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    if-ne p1, p2, :cond_f

    :goto_7
    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p1

    iget-object p2, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result p2

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p1, p2, p3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    :cond_f
    return-void

    :cond_10
    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string p3, "blur_opacity"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_11

    move-object p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_11

    goto :goto_8

    :cond_11
    instance-of p3, p2, Ljava/lang/Float;

    if-eqz p3, :cond_12

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_12

    :goto_8
    move v2, v3

    :cond_12
    if-eqz v2, :cond_13

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->d:I

    if-eq p2, v3, :cond_13

    iget-object p2, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object p3, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p3, v0}, Lco/polarr/renderer/filters/d;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Lco/polarr/renderer/filters/a/c;->b(Lco/polarr/renderer/filters/a/a;)Z

    :cond_13
    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string p3, "text"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v0, "zPrevText"

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p3, v0, p2}, Lco/polarr/renderer/render/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/c;->q()V

    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p1

    iget-object p2, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result p2

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p1, p2, p3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/render/b;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->watermarkTexture:Lco/polarr/renderer/render/f;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean p1, p1, Lco/polarr/renderer/entities/Context$WatermarkOptions;->enabled:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->watermarkOptions:Lco/polarr/renderer/entities/Context$WatermarkOptions;

    iget-boolean p1, p1, Lco/polarr/renderer/entities/Context$WatermarkOptions;->preview:Z

    if-eqz p1, :cond_15

    :cond_14
    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/av;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/av;

    move-result-object p1

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/b;->a([F)V

    iget-object p2, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->d:I

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p3, p3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {p1, p2, p3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->a(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->draw()V

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    :cond_15
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 9

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "local_adjustments"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/Adjustment;

    if-nez v4, :cond_1

    iget-object v4, v5, Lco/polarr/renderer/entities/Adjustment;->adjustments:Lco/polarr/renderer/entities/Context$LocalState;

    iget v4, v4, Lco/polarr/renderer/entities/Context$LocalState;->blur:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget-object v1, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v5, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v5, v5, Lco/polarr/renderer/render/f;->e:I

    shr-int/lit8 v6, v1, 0x1

    shr-int/lit8 v7, v5, 0x1

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v8, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {v8, v6, v7}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v6, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v7

    iput-object v7, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    const/4 v7, 0x0

    invoke-direct {p0, v7, v3, v2}, Lco/polarr/renderer/f;->a(Landroid/content/Context;ZZ)V

    invoke-static {p1, v0}, Lco/polarr/renderer/render/b;->d(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v0, v2}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/render/f;)V

    iget-object p1, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v1, v5}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object p1, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v1, v5}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iput-object v6, v0, Lco/polarr/renderer/entities/Context;->matrix:[F

    :cond_3
    move v2, v4

    :cond_4
    if-nez v2, :cond_5

    iget-object p1, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v3, v3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_5
    return-void
.end method

.method private a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;IZ)V
    .locals 9

    iget-object v0, p2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int p3, v2

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    shr-int v3, v0, p3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    shr-int p3, v1, p3

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    if-nez p4, :cond_0

    const/high16 p3, 0x44800000    # 1024.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    int-to-float v3, v0

    mul-float/2addr v3, p3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-float v5, v1

    mul-float/2addr v5, p3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p3, v5

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v5, p2, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    invoke-static {v5, v3, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_0
    const/16 p3, 0xbe2

    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p3, p2, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz p3, :cond_1

    iget-object p3, p2, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length p3, p3

    if-lez p3, :cond_1

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/au;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/au;

    move-result-object p3

    iget-object v3, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p3, v2, v3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object p3, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    goto :goto_0

    :cond_1
    iget-object p3, p2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    :goto_0
    const/16 v3, 0xf

    new-array v5, v3, [F

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v3, v6, v3

    int-to-float v0, v0

    div-float v0, v6, v0

    int-to-float v1, v1

    div-float/2addr v6, v1

    :goto_1
    const/4 v1, 0x7

    if-gt v2, v1, :cond_2

    mul-int v7, v2, v2

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-int/2addr v1, v2

    aput v7, v5, v1

    add-int/lit8 v1, v2, 0x7

    aput v7, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lco/polarr/renderer/filters/v;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/v;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "delta"

    invoke-virtual {v1, v2, v0}, Lco/polarr/renderer/filters/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v5, v1, Lco/polarr/renderer/filters/v;->a:[F

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/w;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/w;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lco/polarr/renderer/filters/w;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v5, v0, Lco/polarr/renderer/filters/w;->a:[F

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    iget-object v2, p2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v1, p3, v2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object p3, p2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p2, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0, p3, v1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    if-eqz p4, :cond_3

    const/4 v4, 0x4

    :cond_3
    invoke-direct {p0, p2, p1, v4}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;I)V

    return-void
.end method

.method private a(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;I)V
    .locals 12

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/f;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/f;

    move-result-object v7

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/r;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/r;

    move-result-object v2

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/s;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/s;

    move-result-object v3

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/k;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/k;

    move-result-object v8

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/m;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/m;

    move-result-object v9

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/n;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/n;

    move-result-object v10

    invoke-static {p2, p1}, Lco/polarr/renderer/filters/at;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/at;

    move-result-object p2

    iget-object v0, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->d:I

    int-to-float v0, v0

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->e:I

    int-to-float v1, v1

    int-to-float p3, p3

    const/high16 v4, 0x44000000    # 512.0f

    div-float/2addr v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    div-float/2addr v4, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr v0, p3

    float-to-int v0, v0

    mul-float/2addr v1, p3

    float-to-int p3, v1

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v1, v0, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v1, v0, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    invoke-static {v1, v0, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    invoke-static {v1, v0, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v1, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    invoke-static {v1, v0, p3}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object p3, p1, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    iget-object v5, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/r;Lco/polarr/renderer/filters/s;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;)Lco/polarr/renderer/render/f;

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v0, p2, Lco/polarr/renderer/filters/at;->a:Lco/polarr/renderer/entities/Mesh;

    iget v0, p3, Lco/polarr/renderer/render/f;->c:I

    iget-object v1, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    invoke-direct {p0, p2, v0, v1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object v4, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object p2

    iput-object p2, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    iget-object v4, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    move-object v3, v4

    invoke-direct/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object p2

    iput-object p2, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    iget-object v4, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    const/high16 v5, 0x42400000    # 48.0f

    move-object v3, v4

    invoke-direct/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object p2

    iput-object p2, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    iget-object p2, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v9, Lco/polarr/renderer/filters/m;->a:I

    iget-object p2, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v9, Lco/polarr/renderer/filters/m;->b:I

    iget-object p2, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v9, Lco/polarr/renderer/filters/m;->c:I

    sget-object p2, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p2, v9, Lco/polarr/renderer/filters/m;->d:Lco/polarr/renderer/entities/Mesh;

    iget-object p2, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11, p2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object v4, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget-object p2, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v10, Lco/polarr/renderer/filters/n;->a:I

    iget-object p2, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v10, Lco/polarr/renderer/filters/n;->b:I

    iget p2, v4, Lco/polarr/renderer/render/f;->c:I

    iput p2, v10, Lco/polarr/renderer/filters/n;->c:I

    sget-object p2, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p2, v10, Lco/polarr/renderer/filters/n;->d:Lco/polarr/renderer/entities/Mesh;

    iget-object p2, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v10, v11, p2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object p2, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v5, 0x41000000    # 8.0f

    move-object v0, p0

    move-object v3, v4

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object v10

    move-object v3, p2

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/filters/f;Lco/polarr/renderer/render/f;Lco/polarr/renderer/render/f;FLjava/lang/Float;)Lco/polarr/renderer/render/f;

    move-result-object p2

    iget v0, v10, Lco/polarr/renderer/render/f;->c:I

    iput v0, v8, Lco/polarr/renderer/filters/k;->a:I

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    iput p2, v8, Lco/polarr/renderer/filters/k;->b:I

    iget p2, p3, Lco/polarr/renderer/render/f;->c:I

    iput p2, v8, Lco/polarr/renderer/filters/k;->c:I

    sget-object p2, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iput-object p2, v8, Lco/polarr/renderer/filters/k;->d:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v8, v11, p1}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    return-void
.end method

.method private a(Lco/polarr/renderer/filters/a/a;IIII)V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0, p3}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p3, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v0

    invoke-virtual {p3, v0}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object p3, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p3, p4, p5}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p3, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p3, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->a(I)V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->draw()V

    const-string p1, "render tex out id"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p3}, Lco/polarr/renderer/render/f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "renderTextrue::inputTextureID=%d::outputTexture=%s"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget v1, p3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget v1, p3, Lco/polarr/renderer/render/f;->d:I

    iget p3, p3, Lco/polarr/renderer/render/f;->e:I

    invoke-virtual {v0, v1, p3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p3, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p3, p1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/filters/a/a;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/d;->a(I)V

    :cond_1
    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->draw()V

    const-string p1, "render tex"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "updateStates::renderStates=%s::needUpdateFilter=%b::fastUpdate=%b"

    invoke-static {v0, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_4

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v0, "prevFaces"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "prevFaceFeatures"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v3}, Lco/polarr/renderer/c;->a(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "prevBrushes"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "zPrevSpots"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-boolean p3, p3, Lco/polarr/renderer/entities/Context;->isSDK:Z

    if-nez p3, :cond_2

    const-string p3, "distortion_mesh"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p3, p1}, Lco/polarr/renderer/b/e;->a(Lco/polarr/renderer/entities/Context;[F)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lco/polarr/renderer/f;->r()V

    goto :goto_4

    :cond_4
    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_7

    iget-object p2, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object p2

    const-class p3, Lco/polarr/renderer/filters/ae;

    invoke-static {p2, p3}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object p2

    check-cast p2, Lco/polarr/renderer/filters/ae;

    iget-object p3, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {p3}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object p3

    const-class v0, Lco/polarr/renderer/filters/q;

    invoke-static {p3, v0}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object p3

    check-cast p3, Lco/polarr/renderer/filters/q;

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/ae;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Lco/polarr/renderer/filters/q;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/ae;->a(Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Lco/polarr/renderer/filters/q;->a(Ljava/util/Map;)V

    :cond_7
    :goto_4
    const-string p1, "do update states"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lco/polarr/renderer/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lco/polarr/renderer/f;->I:Z

    return p1
.end method

.method static synthetic b(Lco/polarr/renderer/f;)Z
    .locals 0

    iget-boolean p0, p0, Lco/polarr/renderer/f;->m:Z

    return p0
.end method

.method static synthetic c(Lco/polarr/renderer/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    return-object p0
.end method

.method private g(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lco/polarr/renderer/f;->a(Landroid/content/Context;Z)V

    iget-boolean p1, p0, Lco/polarr/renderer/f;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, v0}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p1

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, v0}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/h;->a([FZZ)[F

    invoke-virtual {p1}, Lco/polarr/renderer/filters/Basic;->draw()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->patterns:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->patterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/render/f;

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->patterns:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/render/f;

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->brushes:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "faces"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/f;->a(Ljava/util/List;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v1, "face_features"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lco/polarr/renderer/b/e;->a(Lco/polarr/renderer/entities/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fastDrawFrame"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v1, Lco/polarr/renderer/filters/ak;->a:Z

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ak;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-boolean v1, v1, Lco/polarr/renderer/entities/Context;->isOES:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ak;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v0, v3, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v1, p0, Lco/polarr/renderer/f;->l:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    iget v2, p0, Lco/polarr/renderer/f;->k:I

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v1, v2, v3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    iget-object v1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    iget v3, p0, Lco/polarr/renderer/f;->l:I

    :goto_0
    move-object v5, v1

    move v6, v2

    move v7, v3

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v4, "faces"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lco/polarr/renderer/f;->J:Lco/polarr/renderer/filters/ab;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v2

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/FaceItem;

    iget-object v6, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    aget-object v6, v6, v1

    iget-object v7, v5, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lco/polarr/renderer/f;->J:Lco/polarr/renderer/filters/ab;

    iput-object v6, v7, Lco/polarr/renderer/filters/ab;->a:Lco/polarr/renderer/render/c;

    iget-object v5, v5, Lco/polarr/renderer/entities/FaceItem;->adjustments:Lco/polarr/renderer/entities/Context$FaceState;

    iput-object v5, v7, Lco/polarr/renderer/filters/ab;->b:Lco/polarr/renderer/entities/Context$FaceState;

    iget-object v5, p0, Lco/polarr/renderer/f;->J:Lco/polarr/renderer/filters/ab;

    iget v6, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-direct {p0, v5, v6, v4}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    iget-object v2, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v2, v1, v3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    goto :goto_7

    :cond_4
    iget v1, p0, Lco/polarr/renderer/f;->l:I

    if-lez v1, :cond_5

    iget-object v2, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    :goto_3
    move v3, v1

    move-object v1, v2

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ai;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-boolean v1, v1, Lco/polarr/renderer/entities/Context;->isOES:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ai;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v0, v3, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_7
    iget v1, p0, Lco/polarr/renderer/f;->l:I

    if-lez v1, :cond_8

    iget-object v2, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    goto :goto_3

    :goto_4
    iget v2, p0, Lco/polarr/renderer/f;->k:I

    goto/16 :goto_0

    :goto_5
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v8, v1, Lco/polarr/renderer/render/f;->d:I

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v9, v1, Lco/polarr/renderer/render/f;->e:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;IIII)V

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    :goto_6
    iget v2, p0, Lco/polarr/renderer/f;->k:I

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v1, v2, v3}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    :cond_9
    :goto_7
    iget-boolean v1, p0, Lco/polarr/renderer/f;->o:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v2

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/Basic;->draw()V

    :cond_a
    return-void
.end method

.method private t()V
    .locals 4

    invoke-direct {p0}, Lco/polarr/renderer/f;->u()V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    const-string v0, "fast update texture"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lco/polarr/renderer/f;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;IZ)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v1, p0, Lco/polarr/renderer/f;->c:I

    iget v2, p0, Lco/polarr/renderer/f;->d:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v1, p0, Lco/polarr/renderer/f;->c:I

    iget v2, p0, Lco/polarr/renderer/f;->d:I

    invoke-static {v0, v1, v2}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    const-string v0, "update texture for maps"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    return-void
.end method

.method private u()V
    .locals 3

    iget-boolean v0, p0, Lco/polarr/renderer/f;->v:Z

    if-nez v0, :cond_1

    iget v0, p0, Lco/polarr/renderer/f;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/f;->C:Lco/polarr/renderer/d;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/d;

    invoke-direct {v0}, Lco/polarr/renderer/d;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/f;->C:Lco/polarr/renderer/d;

    iget-object v0, p0, Lco/polarr/renderer/f;->C:Lco/polarr/renderer/d;

    invoke-virtual {v0}, Lco/polarr/renderer/d;->a()V

    :cond_0
    iget v0, p0, Lco/polarr/renderer/f;->k:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lco/polarr/renderer/f;->C:Lco/polarr/renderer/d;

    invoke-virtual {v1, v0}, Lco/polarr/renderer/d;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget v1, p0, Lco/polarr/renderer/f;->c:I

    iget v2, p0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {v0, v1, v2}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v0, p0, Lco/polarr/renderer/f;->C:Lco/polarr/renderer/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lco/polarr/renderer/d;->a(Landroid/graphics/SurfaceTexture;[F)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lco/polarr/renderer/f;->v:Z

    if-nez v0, :cond_2

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, p0, Lco/polarr/renderer/f;->c:I

    iput v1, v0, Lco/polarr/renderer/render/f;->d:I

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v1, p0, Lco/polarr/renderer/f;->d:I

    iput v1, v0, Lco/polarr/renderer/render/f;->e:I

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget v2, p0, Lco/polarr/renderer/f;->c:I

    invoke-virtual {v0, v2, v1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    iget v1, p0, Lco/polarr/renderer/f;->k:I

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/render/f;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a;->getMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    iget v1, p0, Lco/polarr/renderer/f;->k:I

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    invoke-direct {p0, v0, v1, v2}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private v()[B
    .locals 10

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    const/16 v1, 0x12c

    invoke-static {v0, v1, v1}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->H:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const v0, 0x57e40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/f;->H:Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v0

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    invoke-virtual {v0, v1, v1}, Lco/polarr/renderer/filters/a/d;->b(II)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-static {v1}, Lco/polarr/renderer/filters/Basic;->getInstance(Landroid/content/res/Resources;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v1, v2}, Lco/polarr/renderer/filters/Basic;->setInputTextureId(I)V

    invoke-virtual {v1}, Lco/polarr/renderer/filters/Basic;->draw()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12c

    const/16 v6, 0x12c

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lco/polarr/renderer/f;->H:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/d;->p()V

    iget-object v0, p0, Lco/polarr/renderer/f;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/f;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method private w()V
    .locals 0

    invoke-static {}, Lco/polarr/renderer/filters/Basic;->a_()V

    invoke-static {}, Lco/polarr/renderer/filters/c;->d_()V

    invoke-static {}, Lco/polarr/renderer/filters/d;->e_()V

    invoke-static {}, Lco/polarr/renderer/filters/y;->u_()V

    invoke-static {}, Lco/polarr/renderer/filters/z;->v_()V

    invoke-static {}, Lco/polarr/renderer/filters/ab;->w_()V

    invoke-static {}, Lco/polarr/renderer/filters/ac;->x_()V

    invoke-static {}, Lco/polarr/renderer/filters/ap;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/am;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/an;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/ao;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/al;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bj;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bk;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bl;->j()V

    invoke-static {}, Lco/polarr/renderer/filters/ah;->B_()V

    invoke-static {}, Lco/polarr/renderer/filters/p;->o_()V

    invoke-static {}, Lco/polarr/renderer/filters/g;->h_()V

    invoke-static {}, Lco/polarr/renderer/filters/bq;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/av;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/aw;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/au;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/f;->g_()V

    invoke-static {}, Lco/polarr/renderer/filters/r;->q_()V

    invoke-static {}, Lco/polarr/renderer/filters/s;->r_()V

    invoke-static {}, Lco/polarr/renderer/filters/k;->k_()V

    invoke-static {}, Lco/polarr/renderer/filters/m;->m_()V

    invoke-static {}, Lco/polarr/renderer/filters/n;->n_()V

    invoke-static {}, Lco/polarr/renderer/filters/at;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/v;->s_()V

    invoke-static {}, Lco/polarr/renderer/filters/w;->t_()V

    invoke-static {}, Lco/polarr/renderer/filters/e;->f_()V

    invoke-static {}, Lco/polarr/renderer/filters/a/d;->i()V

    invoke-static {}, Lco/polarr/renderer/filters/b;->c_()V

    invoke-static {}, Lco/polarr/renderer/filters/as;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/az;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/ay;->h()V

    invoke-static {}, Lco/polarr/renderer/filters/bb;->h()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/b/b;->a(Ljava/util/List;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    return p1
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lco/polarr/renderer/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "start render bitmap"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "fastRenderBitmap::filterId=%s::fastRenderBitmap=%f"

    invoke-static {v2, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x1908

    invoke-static {v2, v1, v0, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    iget-boolean v0, p0, Lco/polarr/renderer/f;->p:Z

    iput-boolean v1, p0, Lco/polarr/renderer/f;->p:Z

    invoke-virtual {p0}, Lco/polarr/renderer/f;->i()V

    iput-boolean v0, p0, Lco/polarr/renderer/f;->p:Z

    invoke-virtual {p0, p2, p3}, Lco/polarr/renderer/f;->a(Ljava/lang/String;F)V

    invoke-direct {p0}, Lco/polarr/renderer/f;->s()V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p3, p3, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p3, p3, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p3, v0, p1}, Lco/polarr/renderer/b/i;->b(III)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const-string p1, "end render bitmap"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const-string v0, "start render bitmap"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "renderBitmap::renderStates=%s"

    invoke-static {v1, v2}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lco/polarr/renderer/f;->k:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x1908

    invoke-static {v2, v3, v1, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    iget-boolean v1, p0, Lco/polarr/renderer/f;->p:Z

    iput-boolean v3, p0, Lco/polarr/renderer/f;->p:Z

    invoke-virtual {p0}, Lco/polarr/renderer/f;->i()V

    iput-boolean v1, p0, Lco/polarr/renderer/f;->p:Z

    invoke-virtual {p0, p2}, Lco/polarr/renderer/f;->a(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v3}, Lco/polarr/renderer/f;->a(Landroid/content/Context;Z)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v0, v1, p1}, Lco/polarr/renderer/b/i;->b(III)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const-string p1, "end render bitmap"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-object p2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public a()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "initAllFilters"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const-string v2, "default"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ak;->h()V

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v2}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/ak;->a(Lco/polarr/renderer/entities/Cube;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ai;->f()V

    sget-object v1, Lco/polarr/renderer/FilterPackageUtil;->a:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    iget-object v5, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    invoke-virtual {v5, v4}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    iget-object v6, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v4}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object v4

    invoke-virtual {v5, v4}, Lco/polarr/renderer/filters/ai;->a(Lco/polarr/renderer/entities/Cube;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public a(F)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setFilterIntensity::intensity=%f"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ak;->a(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setInputTexture::inputTexture=%d"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "start set input"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iput p1, p0, Lco/polarr/renderer/f;->k:I

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    const/4 v0, 0x0

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->textures:[I

    iput-boolean v2, p0, Lco/polarr/renderer/f;->x:Z

    const-string p1, "end set input"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "updateSize::width=%d::height=%d"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "start update size"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iput p1, p0, Lco/polarr/renderer/f;->c:I

    iput p2, p0, Lco/polarr/renderer/f;->d:I

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget p2, p0, Lco/polarr/renderer/f;->c:I

    iget v0, p0, Lco/polarr/renderer/f;->d:I

    invoke-static {p1, p2, v0}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    iget-boolean p1, p0, Lco/polarr/renderer/f;->v:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    if-eqz p1, :cond_0

    iget p2, p0, Lco/polarr/renderer/f;->c:I

    iget v0, p0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {p1, p2, v0}, Lco/polarr/renderer/filters/a/c;->b(II)V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/f;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lco/polarr/renderer/filters/a/a;

    invoke-virtual {p2}, Lco/polarr/renderer/filters/a/a;->k()V

    iget v0, p0, Lco/polarr/renderer/f;->c:I

    iget v1, p0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {p2, v0, v1}, Lco/polarr/renderer/filters/a/a;->b(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/entities/Context;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget p1, p0, Lco/polarr/renderer/f;->c:I

    int-to-float v1, p1

    iget p1, p0, Lco/polarr/renderer/f;->d:I

    int-to-float v2, p1

    iget-boolean v3, p0, Lco/polarr/renderer/f;->p:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFZZ[F)V

    const-string p1, "end update size"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(III)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "clearTexture::textureId=%d::width=%d::height=%d"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-static {}, Lco/polarr/renderer/b/h;->a()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/polarr/renderer/filters/a/d;->a([F)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1, p2, p3}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->o()V

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "render::fastDraw=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    if-nez v0, :cond_0

    const-string v0, "PPE_RENDER"

    const-string v1, "getBitmap: Renderer was not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;)V

    :goto_0
    const-string v0, "render blur"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p2}, Lco/polarr/renderer/f;->a(Landroid/content/Context;ZZ)V

    const-string p1, "do render"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-nez p2, :cond_2

    iget p1, p0, Lco/polarr/renderer/f;->l:I

    if-lez p1, :cond_2

    iget-object p2, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    iget p2, p0, Lco/polarr/renderer/f;->c:I

    iget v0, p0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {p1, p2, v0}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object p1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {p1, p2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object p1

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p2, p2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget p2, p2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {p1}, Lco/polarr/renderer/filters/Basic;->draw()V

    iget-object p1, p0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a/d;->p()V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/res/Resources;IILjava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    iput v8, v0, Lco/polarr/renderer/f;->c:I

    iput v9, v0, Lco/polarr/renderer/f;->d:I

    iput-object v1, v0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeInit_width/height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v10, Landroid/util/TimingLogger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Polarr"

    invoke-direct {v10, v3, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lco/polarr/renderer/entities/Context;

    iget-boolean v3, v0, Lco/polarr/renderer/f;->v:Z

    invoke-direct {v2, v3}, Lco/polarr/renderer/entities/Context;-><init>(Z)V

    iput-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    new-instance v3, Lco/polarr/renderer/b/p;

    invoke-direct {v3}, Lco/polarr/renderer/b/p;-><init>()V

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    invoke-virtual {v2, v1}, Lco/polarr/renderer/b/p;->b(Landroid/content/res/Resources;)V

    const-string v2, "shaderUtil.init"

    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget v2, v0, Lco/polarr/renderer/f;->u:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iput-boolean v11, v2, Lco/polarr/renderer/entities/Context;->isOES:Z

    :cond_0
    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iput-object v1, v2, Lco/polarr/renderer/entities/Context;->resources:Landroid/content/res/Resources;

    iget-boolean v2, v0, Lco/polarr/renderer/f;->v:Z

    const/4 v12, 0x0

    if-nez v2, :cond_2

    move-object/from16 v2, p4

    invoke-direct {v0, v2, v12, v12}, Lco/polarr/renderer/f;->a(Ljava/util/Map;ZZ)V

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1, v2, v3}, Lco/polarr/renderer/render/b;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;Landroid/graphics/Point;)V

    new-instance v2, Lco/polarr/renderer/filters/a/c;

    iget-object v3, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v3, v1}, Lco/polarr/renderer/filters/a/c;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object v2, v0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/b/p;->b(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/polarr/renderer/filters/a/a;

    iget-object v4, v0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v4, v3}, Lco/polarr/renderer/filters/a/c;->a(Lco/polarr/renderer/filters/a/a;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/c;->k()V

    iget-object v2, v0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget v3, v0, Lco/polarr/renderer/f;->c:I

    iget v4, v0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {v2, v3, v4}, Lco/polarr/renderer/filters/a/c;->b(II)V

    :cond_2
    iget-boolean v2, v0, Lco/polarr/renderer/f;->v:Z

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/16 v15, 0x1908

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    new-array v7, v2, [I

    array-length v2, v7

    const/4 v4, 0x0

    const/16 v5, 0x1908

    move-object v3, v7

    move/from16 v6, p2

    move-object/from16 v16, v7

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    aget v3, v16, v12

    invoke-static {v3, v15, v8, v9}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    aget v3, v16, v11

    invoke-static {v3, v15, v8, v9}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    aget v3, v16, v14

    invoke-static {v3, v15, v8, v9}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    aget v3, v16, v14

    invoke-static {v3, v15, v8, v9}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    aget v3, v16, v13

    invoke-static {v3, v15, v8, v9}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    const/4 v3, 0x4

    aget v3, v16, v3

    const/16 v4, 0x400

    invoke-static {v3, v15, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    const/4 v3, 0x5

    aget v3, v16, v3

    const/16 v4, 0x3e8

    invoke-static {v3, v15, v4, v4}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    const-string v2, "outScreenContext.denoiseTexture"

    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v2, Lco/polarr/renderer/filters/a;

    iget-object v3, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v1, v3}, Lco/polarr/renderer/filters/a;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v2, v0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    iget-object v2, v0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a;->k()V

    const-string v2, "BasicOes.create"

    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v2, Lco/polarr/renderer/filters/ak;

    iget-object v3, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v1, v3}, Lco/polarr/renderer/filters/ak;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v2, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const-string v2, "lookup2DFilter.create"

    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v2, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/ak;->k()V

    const-string v2, "lookup2DFilter.create()"

    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lco/polarr/renderer/f;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lco/polarr/renderer/filters/bp;

    iget-object v3, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v1, v3}, Lco/polarr/renderer/filters/bp;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v2, v0, Lco/polarr/renderer/f;->A:Lco/polarr/renderer/filters/bp;

    iget-object v1, v0, Lco/polarr/renderer/f;->A:Lco/polarr/renderer/filters/bp;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/bp;->k()V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lco/polarr/renderer/f;->e:Ljava/util/List;

    iget-object v2, v0, Lco/polarr/renderer/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/polarr/renderer/filters/a/a;

    invoke-virtual {v3}, Lco/polarr/renderer/filters/a/a;->k()V

    iget v4, v0, Lco/polarr/renderer/f;->c:I

    iget v5, v0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {v3, v4, v5}, Lco/polarr/renderer/filters/a/a;->b(II)V

    goto :goto_1

    :cond_4
    new-instance v2, Lco/polarr/renderer/b/b;

    iget-object v3, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v3, v1}, Lco/polarr/renderer/b/b;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    iput-object v2, v0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    iget-object v1, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/render/b;->c(Lco/polarr/renderer/entities/Context;)V

    iget-object v1, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/render/b;->b(Lco/polarr/renderer/entities/Context;)V

    iget-object v2, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget v1, v0, Lco/polarr/renderer/f;->c:I

    int-to-float v3, v1

    iget v1, v0, Lco/polarr/renderer/f;->d:I

    int-to-float v4, v1

    iget-boolean v5, v0, Lco/polarr/renderer/f;->p:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFZZ[F)V

    :cond_5
    :goto_2
    iget-object v1, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    const-string v1, "RenderTextureFilter.getInstance"

    invoke-virtual {v10, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-boolean v1, v0, Lco/polarr/renderer/f;->v:Z

    if-nez v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x44000000    # 512.0f

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v2, v8

    mul-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, v9

    mul-float/2addr v3, v1

    float-to-int v1, v3

    new-array v9, v13, [I

    array-length v3, v9

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move-object v4, v9

    move v7, v2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lco/polarr/renderer/b/i;->a(I[IIIII)V

    aget v3, v9, v12

    invoke-static {v3, v15, v2, v1}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    aget v3, v9, v11

    invoke-static {v3, v15, v2, v1}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v3

    iput-object v3, v0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    aget v3, v9, v14

    invoke-static {v3, v15, v2, v1}, Lco/polarr/renderer/b/i;->c(IIII)Lco/polarr/renderer/render/f;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    :cond_6
    const/16 v1, 0x1f03

    invoke-static {v1}, Landroid/opengl/GLES30;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GL_OES_standard_derivatives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDerivative="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/util/TimingLogger;->dumpToLog()V

    return-void
.end method

.method public a(Landroid/content/res/Resources;IIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IIZI)V

    return-void
.end method

.method public a(Landroid/content/res/Resources;IIZI)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "initRender::width=%d::height=%d::fastMode=%b::textureType=%d"

    invoke-static {v4, v3}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "start init"

    invoke-static {v3}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-lez p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p4, p0, Lco/polarr/renderer/f;->v:Z

    xor-int/lit8 v3, p4, 0x1

    iput-boolean v3, p0, Lco/polarr/renderer/f;->m:Z

    iput p5, p0, Lco/polarr/renderer/f;->u:I

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, v6, v6, p5}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IILjava/util/Map;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x320

    invoke-virtual {p0, p1, v3, v3, p5}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;IILjava/util/Map;)V

    :goto_0
    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iput-boolean v6, p1, Lco/polarr/renderer/entities/Context;->isSDK:Z

    iput-boolean v5, p0, Lco/polarr/renderer/f;->p:Z

    if-nez p4, :cond_2

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v6, v6}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_2
    invoke-virtual {p0, p2, p3}, Lco/polarr/renderer/f;->a(II)V

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lco/polarr/renderer/f;->a()V

    :cond_3
    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    sput-object p1, Lco/polarr/renderer/entities/Context;->backgroundColor:[F

    const-string p1, "end init"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "End of initRender, time = %d ms"

    invoke-static {p2, p1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v1, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-virtual {v0, v1, p1, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/Context;Lco/polarr/renderer/entities/BrushItem;Lco/polarr/renderer/render/f;)V

    return-void
.end method

.method public a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "addBrushPathPoint::brushItem=%s::point"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    :cond_1
    iget-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v1, v1, Lco/polarr/renderer/render/f;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->e:I

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2}, Lco/polarr/renderer/b/b;->a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;FF)Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lco/polarr/renderer/entities/MagicEraserPath;III)V
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "magicEraserPathOverLay::path=%s::outputTexture=%d::width=%d::height=%d"

    invoke-static {v2, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/b/m;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->resources:Landroid/content/res/Resources;

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    invoke-direct {v0, v2, v3}, Lco/polarr/renderer/b/m;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/b/p;)V

    iput-object v0, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    iget-object v0, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v0, v2, p3, p4, v1}, Lco/polarr/renderer/b/m;->a(IIII)V

    :cond_0
    iget-object v3, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v0, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    move v5, p2

    move-object v6, p1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lco/polarr/renderer/b/m;->a(Lco/polarr/renderer/render/f;ILco/polarr/renderer/entities/MagicEraserPath;II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "updateStates::stateString=%s"

    invoke-static {v3, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start update states json"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v3, 0xba2

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    invoke-static {p1}, Lco/polarr/renderer/b/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/f;->a(Ljava/util/Map;)V

    aget p1, v1, v2

    aget v0, v1, v0

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-static {p1, v0, v2, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p1, "end update states json"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fastUpdateFilter::filterID=%s::filterIntensity=%f"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object p1

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ak;->a(Lco/polarr/renderer/entities/Cube;)V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/ak;->a(F)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object p1

    invoke-virtual {p2, p1}, Lco/polarr/renderer/filters/ai;->a(Lco/polarr/renderer/entities/Cube;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/FaceItem;",
            ">;F)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "updateFaces::faceItems=%s::faceAdjustIntensity=%f"

    invoke-static {v2, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/f;->c:I

    int-to-float v0, v0

    iget v2, p0, Lco/polarr/renderer/f;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v2, p1, v3, v4}, Lco/polarr/renderer/b/f;->a(FFLjava/util/List;Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v2, "faces"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lco/polarr/renderer/f;->w:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    const/16 v3, 0x12c

    invoke-static {v0, v2, v3, v3}, Lco/polarr/renderer/render/e;->a(Landroid/content/res/Resources;Lco/polarr/renderer/render/f;II)[I

    move-result-object v0

    iput-object v0, p0, Lco/polarr/renderer/f;->w:[I

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x12c

    const/16 v3, 0x12c

    iget-object v4, p0, Lco/polarr/renderer/f;->w:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/renderer/entities/FaceItem;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-static/range {v2 .. v8}, Lco/polarr/renderer/b/a;->a(II[ILco/polarr/renderer/entities/FaceItem;Lco/polarr/renderer/entities/Context$FaceFeaturesState;FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lco/polarr/renderer/f;->a(Ljava/util/List;IZFFF)V

    return-void
.end method

.method public a(Ljava/util/List;IZFFF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;IZFFF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    if-eqz v1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    if-gtz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v6, 0x2

    new-array v7, v6, [I

    const/16 v8, 0x1000

    const/16 v9, 0xde1

    const/4 v10, 0x0

    invoke-static {v9, v10, v8, v7, v10}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    const/16 v8, 0x1001

    const/4 v11, 0x1

    invoke-static {v9, v10, v8, v7, v11}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aget v9, v7, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    aget v7, v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    const-string v6, "drawFiltersFrame::drawingItems=%s::outputTexture=%d::width=%d::height=%d"

    invoke-static {v6, v8}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "start draw filter frame"

    invoke-static {v6}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/16 v6, 0xc11

    invoke-static {v6}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_1
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v8, v8, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v9, v0, Lco/polarr/renderer/f;->c:I

    iget v12, v0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Lco/polarr/renderer/f;->a(II)V

    iget v13, v0, Lco/polarr/renderer/f;->l:I

    const/4 v14, -0x1

    iput v14, v0, Lco/polarr/renderer/f;->l:I

    iget-object v14, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-boolean v14, v14, Lco/polarr/renderer/entities/Context;->isOES:Z

    if-eqz v14, :cond_2

    iget-object v14, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-eqz v14, :cond_2

    iget-object v14, v0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    invoke-virtual {v14}, Lco/polarr/renderer/filters/a;->getMatrix()[F

    move-result-object v14

    invoke-static {v14, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v14, v0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    iget v15, v0, Lco/polarr/renderer/f;->k:I

    iget-object v11, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v11, v11, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-direct {v0, v14, v15, v11}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;ILco/polarr/renderer/render/f;)V

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v10

    :goto_0
    if-eqz v16, :cond_5

    iget-object v11, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lco/polarr/renderer/filters/ak;->getMatrix()[F

    move-result-object v11

    invoke-static {v11, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v11, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {v11}, Lco/polarr/renderer/filters/ak;->getMatrix()[F

    move-result-object v11

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v11, v10, v15, v15, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v11, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object v14, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v14, v14, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    iget v14, v14, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v11, v14}, Lco/polarr/renderer/filters/ak;->a(I)V

    iget-object v11, v0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v11, v2}, Lco/polarr/renderer/filters/a/d;->b(I)V

    iget-object v2, v0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v2, v11, v8}, Lco/polarr/renderer/filters/a/d;->b(II)V

    iget-object v2, v0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/d;->o()V

    iget-object v2, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iput-boolean v10, v2, Lco/polarr/renderer/filters/ak;->a:Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lco/polarr/renderer/f;->b(Ljava/lang/String;)V

    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v14, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v8, v10, v11, v14}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v10, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-gt v8, v10, :cond_3

    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    goto :goto_2

    :cond_3
    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    :goto_2
    int-to-float v8, v8

    iget-object v10, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget-object v14, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    mul-float v16, v8, v3

    mul-float v17, v4, v10

    mul-float v18, v5, v11

    iget-object v8, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v2, v2, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move/from16 v15, p3

    move/from16 v19, v8

    move/from16 v20, v2

    invoke-virtual/range {v14 .. v20}, Lco/polarr/renderer/filters/ak;->a(ZFFFFF)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lco/polarr/renderer/f;->h:Lco/polarr/renderer/filters/a/d;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->p()V

    goto :goto_4

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/polarr/renderer/entities/DrawingItem;

    iget-object v11, v8, Lco/polarr/renderer/entities/DrawingItem;->filterId:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lco/polarr/renderer/f;->b(Ljava/lang/String;)V

    iget-object v11, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    move/from16 v14, p3

    iput-boolean v14, v11, Lco/polarr/renderer/filters/ak;->o:Z

    iput v3, v11, Lco/polarr/renderer/filters/ak;->p:F

    iput v4, v11, Lco/polarr/renderer/filters/ak;->q:F

    iput v5, v11, Lco/polarr/renderer/filters/ak;->r:F

    invoke-direct/range {p0 .. p0}, Lco/polarr/renderer/f;->s()V

    iget-object v11, v0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iput-boolean v10, v11, Lco/polarr/renderer/filters/ak;->o:Z

    iget-object v11, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v11, v11, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v11, v11, Lco/polarr/renderer/render/f;->c:I

    iget-object v8, v8, Lco/polarr/renderer/entities/DrawingItem;->rect:Landroid/graphics/Rect;

    invoke-direct {v0, v11, v8, v2}, Lco/polarr/renderer/f;->a(ILandroid/graphics/Rect;I)V

    goto :goto_3

    :cond_6
    :goto_4
    iput v13, v0, Lco/polarr/renderer/f;->l:I

    invoke-virtual {v0, v9, v12}, Lco/polarr/renderer/f;->a(II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    if-eqz v7, :cond_7

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_7
    const-string v1, "end draw filter frame"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "updateStates::renderStates=%s"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start update states"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0xba2

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-boolean v2, p0, Lco/polarr/renderer/f;->v:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lco/polarr/renderer/f;->b(Ljava/util/Map;)V

    const-string p1, "end fast update states"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lco/polarr/renderer/f;->a(Ljava/util/Map;ZZ)V

    aget p1, v1, v3

    aget v0, v1, v0

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-static {p1, v0, v2, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p1, "end update states"

    :goto_0
    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;IFZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IFZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "start auto enhance face"

    invoke-static {v3}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v4, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v4, v9

    const-string v6, "autoEnhanceFace::faceStates=%s::faceIndex=%d::percent=%f::needReduceGlobal=%b"

    invoke-static {v6, v4}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v3, [I

    const/16 v4, 0xba2

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v4, "faces"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v6, "face_features"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lco/polarr/renderer/f;->w:[I

    if-nez v6, :cond_1

    iget-object v6, v0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v10, v0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v10, v10, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    const/16 v11, 0x12c

    invoke-static {v6, v10, v11, v11}, Lco/polarr/renderer/render/e;->a(Landroid/content/res/Resources;Lco/polarr/renderer/render/f;II)[I

    move-result-object v6

    iput-object v6, v0, Lco/polarr/renderer/f;->w:[I

    :cond_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_3

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    iget-object v12, v0, Lco/polarr/renderer/f;->w:[I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/polarr/renderer/entities/FaceItem;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/polarr/renderer/entities/Context$FaceFeaturesState;

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v10 .. v16}, Lco/polarr/renderer/b/a;->a(II[ILco/polarr/renderer/entities/FaceItem;Lco/polarr/renderer/entities/Context$FaceFeaturesState;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    iget-object v12, v0, Lco/polarr/renderer/f;->w:[I

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lco/polarr/renderer/entities/FaceItem;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lco/polarr/renderer/entities/Context$FaceFeaturesState;

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v10 .. v16}, Lco/polarr/renderer/b/a;->a(II[ILco/polarr/renderer/entities/FaceItem;Lco/polarr/renderer/entities/Context$FaceFeaturesState;FZ)V

    :cond_3
    aget v1, v3, v5

    aget v2, v3, v7

    aget v4, v3, v8

    aget v3, v3, v9

    invoke-static {v1, v2, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v1, "end auto enhance face"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/polarr/renderer/f;->o:Z

    return-void
.end method

.method public a([I)Z
    .locals 8

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v2, v0

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    aget v6, v0, v3

    aget v7, p1, v5

    if-eq v6, v7, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iput-object p1, v0, Lco/polarr/renderer/entities/Context;->textures:[I

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Lco/polarr/renderer/f;->k:I

    return v1
.end method

.method public b(F)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "autoEnhanceGlobal::percent=%f"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start auto enhance global"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0xba2

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v2, p0, Lco/polarr/renderer/f;->w:[I

    const/16 v4, 0x12c

    if-nez v2, :cond_0

    iget-object v2, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v5, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    invoke-static {v2, v5, v4, v4}, Lco/polarr/renderer/render/e;->a(Landroid/content/res/Resources;Lco/polarr/renderer/render/f;II)[I

    move-result-object v2

    iput-object v2, p0, Lco/polarr/renderer/f;->w:[I

    :cond_0
    iget-object v2, p0, Lco/polarr/renderer/f;->w:[I

    iget-object v5, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v4, v4, v2, v5}, Lco/polarr/renderer/b/a;->a(II[ILjava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v2, p0, Lco/polarr/renderer/f;->m:Z

    if-nez v2, :cond_1

    const-string v2, "highlights"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "shadows"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clarity"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dehaze"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget v2, v1, v3

    aget v0, v1, v0

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v4, p1}, Lco/polarr/renderer/FilterPackageUtil;->GetRefStates(Ljava/util/Map;F)Ljava/util/Map;

    move-result-object p1

    const-string v0, "end auto enhance global"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "createInputTexture"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start create input"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v0

    iput v0, p0, Lco/polarr/renderer/f;->k:I

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->b(I)V

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lco/polarr/renderer/b/i;->a()V

    iput-boolean v1, p0, Lco/polarr/renderer/f;->x:Z

    const-string v0, "end create input"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "start set output"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setOutputTexture::outTexture=%d"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lco/polarr/renderer/f;->l:I

    const-string p1, "end set output"

    invoke-static {p1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .locals 6

    mul-int v4, p1, p1

    sget-object v0, Lco/polarr/renderer/entities/Context;->LutContext:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iput v4, v0, Lco/polarr/renderer/render/f;->d:I

    sget-object v0, Lco/polarr/renderer/entities/Context;->LutContext:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    iput p1, v0, Lco/polarr/renderer/render/f;->e:I

    sget-object v0, Lco/polarr/renderer/entities/Context;->LutContext:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    sget-object v1, Lco/polarr/renderer/entities/Context;->LutContext:Lco/polarr/renderer/entities/Context;

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/a/c;->a(Lco/polarr/renderer/entities/Context;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0, v4, p1}, Lco/polarr/renderer/filters/a/c;->b(II)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0, p2}, Lco/polarr/renderer/filters/a/c;->a(I)V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->i()V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->j()V

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->q()V

    iget-object v0, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget-object v0, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v0}, Lco/polarr/renderer/filters/a/c;->m()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lco/polarr/renderer/f;->a(Lco/polarr/renderer/filters/a/a;IIII)V

    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget-object p2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-virtual {p1, p2}, Lco/polarr/renderer/filters/a/c;->a(Lco/polarr/renderer/entities/Context;)V

    iget-object p1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    iget p2, p0, Lco/polarr/renderer/f;->c:I

    iget v0, p0, Lco/polarr/renderer/f;->d:I

    invoke-virtual {p1, p2, v0}, Lco/polarr/renderer/filters/a/c;->b(II)V

    return-void
.end method

.method public b(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "updateBrushPoints::brushItem=%s"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    :cond_1
    iget-object v0, p1, Lco/polarr/renderer/entities/BrushItem;->points:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lco/polarr/renderer/entities/BrushItem;->touchPoints:Ljava/util/List;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v2, v2, Lco/polarr/renderer/render/f;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    iget v3, v3, Lco/polarr/renderer/render/f;->e:I

    int-to-float v3, v3

    invoke-static {v1, p1, v2, v3}, Lco/polarr/renderer/b/b;->a(Ljava/util/List;Lco/polarr/renderer/entities/BrushItem;FF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "fastUpdateFilter::filterID=%s"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object p1

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ak;->a(Lco/polarr/renderer/entities/Cube;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Lco/polarr/renderer/FilterPackageUtil;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lco/polarr/renderer/entities/Cube;

    move-result-object p1

    invoke-virtual {v0, p1}, Lco/polarr/renderer/filters/ai;->a(Lco/polarr/renderer/entities/Cube;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lco/polarr/renderer/f;->a(Ljava/util/Map;ZZ)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/polarr/renderer/f;->p:Z

    return-void
.end method

.method public c(F)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "autoEnhanceGlobalForFace::percent=%f"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "start auto enhance global face"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    sget-object v0, Lco/polarr/renderer/b/a;->a:Ljava/util/Map;

    invoke-static {v0}, Lco/polarr/renderer/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lco/polarr/renderer/FilterPackageUtil;->GetRefStates(Ljava/util/Map;F)Ljava/util/Map;

    move-result-object p1

    const-string v0, "end auto enhance global face"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lco/polarr/renderer/f;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Lco/polarr/renderer/b/i;->a(I)V

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    invoke-static {v0}, Lco/polarr/renderer/render/b;->d(I)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lco/polarr/renderer/f;->k:I

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    invoke-virtual {v0, p1}, Lco/polarr/renderer/b/b;->a(I)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    invoke-virtual {v0, p1, p2}, Lco/polarr/renderer/b/b;->a(II)V

    return-void
.end method

.method public c(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "enableRealTimeAutoEnhancement::isEnable=%b"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Lco/polarr/renderer/f;->m:Z

    iput-boolean p1, p0, Lco/polarr/renderer/f;->n:Z

    iget-boolean p1, p0, Lco/polarr/renderer/f;->n:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lco/polarr/renderer/f;->v:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    if-nez p1, :cond_0

    new-instance p1, Lco/polarr/renderer/filters/a;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {p1, v1, v2}, Lco/polarr/renderer/filters/a;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object p1, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    iget-object p1, p0, Lco/polarr/renderer/f;->B:Lco/polarr/renderer/filters/a;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/a;->k()V

    :cond_0
    iget-object p1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    if-nez p1, :cond_1

    new-instance p1, Lco/polarr/renderer/filters/ak;

    iget-object v1, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {p1, v1, v2}, Lco/polarr/renderer/filters/ak;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object p1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    iget-object p1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {p1}, Lco/polarr/renderer/filters/ak;->k()V

    :cond_1
    invoke-virtual {p0}, Lco/polarr/renderer/f;->a()V

    :cond_2
    iget-boolean p1, p0, Lco/polarr/renderer/f;->n:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lco/polarr/renderer/f;->G:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "PO_AE_THEREAD"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lco/polarr/renderer/f;->G:Landroid/os/Handler;

    :cond_3
    iget-boolean p1, p0, Lco/polarr/renderer/f;->m:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p1, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-static {p1, v0, v0}, Lco/polarr/renderer/b/i;->a(Lco/polarr/renderer/render/f;II)V

    :cond_4
    return-void
.end method

.method public d(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setUseVignette::useVegnette=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lco/polarr/renderer/f;->K:Z

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "isUseVignette"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lco/polarr/renderer/f;->K:Z

    return v0
.end method

.method public e()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getTextureId"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lco/polarr/renderer/f;->k:I

    return v0
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const-string v1, "AUTO_ENHANCE_FILTER"

    const-string v2, "default"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lco/polarr/renderer/filters/ak;->i()Lco/polarr/renderer/render/f;

    move-result-object p1

    iget v0, p1, Lco/polarr/renderer/render/f;->e:I

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p0, v0, p1}, Lco/polarr/renderer/f;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    invoke-virtual {p1, v1}, Lco/polarr/renderer/filters/ak;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/ak;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lco/polarr/renderer/filters/ai;->h()Lco/polarr/renderer/render/f;

    move-result-object p1

    iget v0, p1, Lco/polarr/renderer/render/f;->e:I

    iget p1, p1, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {p0, v0, p1}, Lco/polarr/renderer/f;->b(II)V

    iget-object p1, p0, Lco/polarr/renderer/f;->y:Lco/polarr/renderer/filters/ai;

    invoke-virtual {p1, v1}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lco/polarr/renderer/filters/ai;->a(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public f()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getOutputId"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lco/polarr/renderer/f;->l:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    return v0
.end method

.method public f(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "autoEnhanceGlobal::isEnable=%b"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lco/polarr/renderer/f;->E:Z

    iget-boolean p1, p0, Lco/polarr/renderer/f;->E:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lco/polarr/renderer/f;->D:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lco/polarr/renderer/f;->e(Z)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/polarr/renderer/filters/ak;->b:Z

    invoke-virtual {p0}, Lco/polarr/renderer/f;->h()V

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/polarr/renderer/filters/ak;->b:Z

    return-void
.end method

.method public h()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "drawFrame"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start draw frame"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    iget-boolean v3, p0, Lco/polarr/renderer/f;->v:Z

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lco/polarr/renderer/f;->n:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lco/polarr/renderer/f;->u:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v0}, Lco/polarr/renderer/f;->g(Z)V

    return-void

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v5, 0xba2

    invoke-static {v5, v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Lco/polarr/renderer/f;->a(Landroid/content/Context;Z)V

    iget-boolean v5, p0, Lco/polarr/renderer/f;->o:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v6, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v5, v6}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v5

    iget-object v6, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v6, v6, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    iget v6, v6, Lco/polarr/renderer/render/f;->c:I

    invoke-virtual {v5, v6}, Lco/polarr/renderer/filters/Basic;->a(I)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v6

    invoke-static {v6, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->draw()V

    :cond_3
    aget v0, v3, v0

    aget v4, v3, v4

    const/4 v5, 0x2

    aget v5, v3, v5

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-static {v0, v4, v5, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_4
    const-string v0, "end draw frame"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lco/polarr/renderer/f;->E:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lco/polarr/renderer/f;->D:I

    if-lt v0, v4, :cond_7

    new-instance v0, Lco/polarr/renderer/f$1;

    invoke-direct {p0}, Lco/polarr/renderer/f;->v()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/polarr/renderer/f$1;-><init>(Lco/polarr/renderer/f;[B)V

    iget v1, p0, Lco/polarr/renderer/f;->D:I

    if-le v1, v4, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lco/polarr/renderer/f;->I:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lco/polarr/renderer/f;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    iget-object v0, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lco/polarr/renderer/f;->a(Ljava/util/Map;)V

    invoke-virtual {p0, v4}, Lco/polarr/renderer/f;->e(Z)V

    iget-object v1, p0, Lco/polarr/renderer/f;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lco/polarr/renderer/f;->D:I

    sub-int/2addr v0, v4

    iput v0, p0, Lco/polarr/renderer/f;->D:I

    iget v0, p0, Lco/polarr/renderer/f;->D:I

    if-gtz v0, :cond_9

    iput v4, p0, Lco/polarr/renderer/f;->D:I

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_9
    :goto_2
    invoke-direct {p0}, Lco/polarr/renderer/f;->s()V

    return-void
.end method

.method public i()V
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "updateInputTexture"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start update input"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lco/polarr/renderer/f;->w:[I

    iget-boolean v3, p0, Lco/polarr/renderer/f;->v:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lco/polarr/renderer/f;->n:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v4, 0xba2

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    invoke-direct {p0}, Lco/polarr/renderer/f;->u()V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    const-string v4, "updated input texture"

    invoke-static {v4}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v5, "prevFaces"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    const-string v5, "prevFaceFeatures"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lco/polarr/renderer/f;->m:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lco/polarr/renderer/f;->g:Landroid/content/res/Resources;

    iget-object v6, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {p0, v4, v6, v5, v0}, Lco/polarr/renderer/f;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;IZ)V

    iget-object v7, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget v4, p0, Lco/polarr/renderer/f;->c:I

    int-to-float v8, v4

    iget v4, p0, Lco/polarr/renderer/f;->d:I

    int-to-float v9, v4

    iget-boolean v10, p0, Lco/polarr/renderer/f;->p:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lco/polarr/renderer/render/b;->a(Lco/polarr/renderer/entities/Context;FFZZ[F)V

    const-string v4, "input render maps"

    invoke-static {v4}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lco/polarr/renderer/f;->r()V

    const-string v4, "input update others"

    invoke-static {v4}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    :cond_2
    aget v0, v3, v0

    const/4 v4, 0x1

    aget v4, v3, v4

    aget v5, v3, v5

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-static {v0, v4, v5, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_3
    const-string v0, "end update input"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0}, Lco/polarr/renderer/f;->t()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    invoke-virtual {v0}, Lco/polarr/renderer/b/b;->c()V

    return-void
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    invoke-virtual {v0}, Lco/polarr/renderer/b/b;->d()Lco/polarr/renderer/render/f;

    move-result-object v0

    iget v0, v0, Lco/polarr/renderer/render/f;->c:I

    return v0
.end method

.method public l()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "releaseGLRes"

    invoke-static {v2, v1}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "start release gl"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v1

    const-class v2, Lco/polarr/renderer/filters/ae;

    invoke-static {v1, v2}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object v1

    check-cast v1, Lco/polarr/renderer/filters/ae;

    iget-object v2, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v2}, Lco/polarr/renderer/filters/a/c;->h()Ljava/util/List;

    move-result-object v2

    const-class v3, Lco/polarr/renderer/filters/q;

    invoke-static {v2, v3}, Lco/polarr/renderer/c;->a(Ljava/util/List;Ljava/lang/Class;)Lco/polarr/renderer/filters/a/a;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/filters/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lco/polarr/renderer/filters/ae;->y_()V

    :cond_0
    const-string v1, "releaseGLRes filter1"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lco/polarr/renderer/filters/q;->p_()V

    :cond_1
    const-string v1, "releaseGLRes filter2"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lco/polarr/renderer/f;->a:Lco/polarr/renderer/filters/a/c;

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/c;->t()V

    const-string v1, "releaseGLRes filter3"

    invoke-static {v1}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, Lco/polarr/renderer/filters/a/d;->a(Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lco/polarr/renderer/filters/a/d;->j()V

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->faceMasks:[Lco/polarr/renderer/render/c;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/polarr/renderer/render/f;

    invoke-static {v2}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textures:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->textures:[I

    array-length v2, v1

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    aget v4, v1, v3

    invoke-static {v4}, Lco/polarr/renderer/b/i;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->brushTextures:[Lco/polarr/renderer/render/f;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    invoke-static {v3}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lco/polarr/renderer/f;->q:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->r:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->s:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->imageTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->dehazeTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->denoiseTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->cacheTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-boolean v0, p0, Lco/polarr/renderer/f;->v:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lco/polarr/renderer/f;->l:I

    if-gtz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->readableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    :cond_8
    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->writableTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->paintTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->retouchTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->lensBlurTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->intermediateTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->grainTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->overlayTexture:Lco/polarr/renderer/render/f;

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Lco/polarr/renderer/render/f;)V

    invoke-direct {p0}, Lco/polarr/renderer/f;->p()V

    const-string v0, "releaseGLRes pattern"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lco/polarr/renderer/f;->q()V

    const-string v0, "releaseGLRes brushes"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/polarr/renderer/f;->c()V

    iget-object v0, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lco/polarr/renderer/b/m;->a()V

    :cond_9
    const-string v0, "releaseGLRes patch"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lco/polarr/renderer/f;->f:Lco/polarr/renderer/b/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lco/polarr/renderer/b/b;->a()V

    :cond_a
    const-string v0, "releaseGLRes brush"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lco/polarr/renderer/render/b;->l()V

    const-string v0, "releaseGLRes render"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v0, p0, Lco/polarr/renderer/f;->b:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    invoke-virtual {v0}, Lco/polarr/renderer/b/p;->a()V

    const-string v0, "end release gl"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "releaseNonGLRes"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "start release non-gl"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/polarr/renderer/f;->w:[I

    invoke-direct {p0}, Lco/polarr/renderer/f;->w()V

    iget-object v0, p0, Lco/polarr/renderer/f;->t:Lco/polarr/renderer/b/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/polarr/renderer/b/m;->b()V

    :cond_0
    const-string v0, "end release non-gl"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "release"

    invoke-static {v1, v0}, Lco/polarr/renderer/b/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "start release"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/polarr/renderer/f;->l()V

    invoke-virtual {p0}, Lco/polarr/renderer/f;->m()V

    const-string v0, "end release"

    invoke-static {v0}, Lco/polarr/renderer/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public o()Lco/polarr/renderer/filters/ak;
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/f;->z:Lco/polarr/renderer/filters/ak;

    return-object v0
.end method
