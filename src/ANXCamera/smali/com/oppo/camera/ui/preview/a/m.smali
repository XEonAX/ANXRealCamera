.class public Lcom/oppo/camera/ui/preview/a/m;
.super Lcom/oppo/camera/ui/preview/a/n;
.source "StickerTexturePreview.java"


# static fields
.field private static H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oppo/camera/sticker/b;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Lcom/sensetime/stmobile/STMobileHumanActionNative;


# instance fields
.field private A:Z

.field private B:Z

.field private C:F

.field private final D:Ljava/lang/Object;

.field private final E:Ljava/lang/Object;

.field private F:Lcom/oppo/camera/sticker/d;

.field private G:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/oppo/camera/sticker/b;",
            "Ljava/util/List<",
            "Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:I

.field private b:I

.field private c:I

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/s;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/oppo/camera/gl/s;

.field private p:Lcom/oppo/camera/gl/s;

.field private q:Lcom/oppo/camera/gl/s;

.field private r:Z

.field private s:Z

.field private t:Lcom/oppo/camera/ui/preview/a/p;

.field private u:Lcom/oppo/camera/gl/s;

.field private v:Lcom/sensetime/stmobile/STSoundPlayManager;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->k:Z

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->B:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->D:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->F:Lcom/oppo/camera/sticker/d;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    return-void
.end method

.method private a(ILcom/oppo/camera/gl/s;)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, p1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/sticker/b;

    iget-object v4, v0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v5

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->d()I

    move-result v6

    iget v2, v0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    invoke-virtual {v3, v2}, Lcom/oppo/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v7

    iget v8, v0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->e()I

    move-result v9

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->f()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result v15

    invoke-virtual/range {v5 .. v15}, Lcom/sensetime/stmobile/STMobileStickerNative;->processTexture(ILcom/sensetime/stmobile/model/STHumanAction;IIIIIZLcom/sensetime/stmobile/model/STStickerInputParams;I)I

    move-result v2

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string v3, "oppo.dump.preview"

    const-string v4, "false"

    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FORE"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/oppo/camera/o/d;->a(Lcom/oppo/camera/gl/s;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    goto :goto_0

    :cond_1
    return v2
.end method

.method private a(Lcom/oppo/camera/gl/s;)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "processNoFrontTexture"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/sticker/b;

    iget-object v5, v0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v5}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/oppo/camera/gl/s;->d()I

    move-result v7

    iget v3, v0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    invoke-virtual {v4, v3}, Lcom/oppo/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v8

    iget v9, v0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v10

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v16

    invoke-virtual/range {v6 .. v16}, Lcom/sensetime/stmobile/STMobileStickerNative;->processTexture(ILcom/sensetime/stmobile/model/STHumanAction;IIIIIZLcom/sensetime/stmobile/model/STStickerInputParams;I)I

    move-result v3

    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const-string v5, "oppo.dump.preview"

    const-string v6, "false"

    invoke-static {v5, v6}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v4

    const-string v5, "NONFORE"

    invoke-static {v4, v5}, Lcom/oppo/camera/o/d;->a(Lcom/oppo/camera/gl/s;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v3
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "StickerTexturePreview"

    const-string v0, "getExtendedInfoMap, item is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oppo/camera/sticker/g;->a(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItem;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/sticker/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getFileContentUri()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, v0

    move v0, v4

    move v5, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_1

    const-string v7, "StickerTexturePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaterialInfoMap, Just support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " materials."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/b;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v6}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    goto :goto_1

    :cond_2
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v6}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/oppo/camera/gl/s;

    move v5, v9

    :goto_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    iget v9, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    iget v11, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    invoke-static {v9, v11}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v9

    invoke-static {v8, v9}, Lcom/oppo/camera/sticker/c;->a(Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    :goto_2
    iget v9, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    invoke-virtual {v6}, Lcom/oppo/camera/gl/s;->e()I

    move-result v11

    div-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Lcom/oppo/camera/sticker/b;->a(F)V

    invoke-virtual {v0, v6}, Lcom/oppo/camera/sticker/b;->a(Lcom/oppo/camera/gl/s;)V

    invoke-direct {p0, v0, v8}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/sticker/b;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v8

    move v0, v10

    goto/16 :goto_0

    :cond_5
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaterialInfoMap, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", extendedInfoMap: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerTexturePreview"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IIIIILjava/nio/ByteBuffer;)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v3, v1, v2

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v5, 0xde1

    move v6, p1

    invoke-static {v4, v3, v5, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p6

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;)V
    .locals 12

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/preview/a/m;->b(Lcom/oppo/camera/gl/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/b;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->e()I

    move-result v4

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->f()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/oppo/camera/sticker/c;->a(Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;II)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->f()I

    move-result v4

    invoke-static {v3, v4, v11}, Lcom/oppo/camera/sticker/c;->a(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v8

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const-string v3, "oppo.dump.preview"

    const-string v4, "false"

    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OUTPUT"

    invoke-static {p2, v3}, Lcom/oppo/camera/o/d;->a(Lcom/oppo/camera/gl/s;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;I)V
    .locals 7

    invoke-interface {p1, p2}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->g()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->h()I

    move-result p2

    int-to-float v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/gl/h;->a(FFFFI)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;)V
    .locals 8

    const-string v0, "doHumanActionDetect"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/a/m;->b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;)V

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v2

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->g()I

    move-result v5

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->h()I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/ui/preview/a/m;->a(IIIIILjava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x6

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/oppo/camera/sticker/c;->a(Ljava/util/Map;)J

    move-result-wide v3

    iget v5, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    iget v6, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    iget v7, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->humanActionDetect([BIJIII)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/sensetime/stmobile/model/STHumanAction;)V

    const-string p1, "doHumanActionDetect"

    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    invoke-interface {p1, p2, p4, p5}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/b;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStickerNative, sticker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/sensetime/stmobile/STMobileStickerNative;->changeStickerFromBuffer([BI)I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStickerNative failed, bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->o()V

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileStickerNative;->getTriggerAction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/preview/a/m;->b(J)V

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileStickerNative;->getTriggerAction()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/sticker/b;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/b;Ljava/lang/String;J)V
    .locals 0

    if-nez p2, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/oppo/camera/sticker/b;->a(J)V

    return-void
.end method

.method private a(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/b;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/sticker/b;->b(Lcom/sensetime/stmobile/model/STHumanAction;)V

    invoke-virtual {v1, p1}, Lcom/oppo/camera/sticker/b;->a(Lcom/sensetime/stmobile/model/STHumanAction;)V

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    invoke-virtual {v1, v2}, Lcom/oppo/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/m;->b(Lcom/sensetime/stmobile/model/STHumanAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(J)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->s()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v2

    if-ltz v6, :cond_2

    and-long v6, p1, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    and-long v6, p1, v4

    cmp-long v1, v6, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    move p2, p1

    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    invoke-interface {p2, p1}, Lcom/oppo/camera/ui/preview/a/n$b;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p2, p1

    :goto_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    if-eqz v0, :cond_8

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    invoke-interface {p2, p1}, Lcom/oppo/camera/ui/preview/a/n$b;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method private b(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;)V
    .locals 6

    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v4

    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IIII)V

    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method private b(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 10

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faceCount:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    :goto_0
    iget v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faceCount:I

    if-ge v0, v5, :cond_3

    iget-object v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faces:[Lcom/sensetime/stmobile/model/STMobileFaceInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/sensetime/stmobile/model/STMobileFaceInfo;->faceAction:J

    move v7, v3

    :goto_1
    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v5

    cmp-long v8, v8, v1

    if-lez v8, :cond_1

    iput-boolean v4, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->o()V

    return-void

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/sensetime/stmobile/model/STHumanAction;->handCount:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v3

    :goto_2
    iget v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->handCount:I

    if-ge v0, v5, :cond_6

    iget-object v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->hands:[Lcom/sensetime/stmobile/model/STMobileHandInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/sensetime/stmobile/model/STMobileHandInfo;->handAction:J

    move v7, v3

    :goto_3
    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, p0, Lcom/oppo/camera/ui/preview/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v5

    cmp-long v8, v8, v1

    if-lez v8, :cond_4

    iput-boolean v4, p0, Lcom/oppo/camera/ui/preview/a/m;->A:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->o()V

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method private b(Lcom/oppo/camera/gl/s;)Z
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/sticker/b;

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v5

    goto :goto_1

    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    move v2, v5

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    move v1, v5

    :cond_4
    return v1
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0225

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0230

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0231

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0228

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0229

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0226

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0227

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x800

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0232

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x200

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f0233

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f0f022a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "initGLRes"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const-string v0, "StickerTexturePreview"

    const-string v1, "initGLRes"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->x()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/sensetime/stmobile/STSoundPlayManager;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sensetime/stmobile/STSoundPlayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "initGLRes"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    :goto_0
    :try_start_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->setPauseState(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "StickerTexturePreview"

    const-string v1, "checkStickerMusicPauseState, non selected sticker!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private w()V
    .locals 4

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/b;

    if-eqz v1, :cond_0

    const-string v2, "StickerTexturePreview"

    const-string v3, "destroyStInstance"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensetime/stmobile/STMobileStickerNative;->destroyInstance()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private x()V
    .locals 4

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/b;

    invoke-direct {v1}, Lcom/oppo/camera/sticker/b;-><init>()V

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v2

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensetime/stmobile/STMobileStickerNative;->createInstance(Landroid/content/Context;)I

    const-string v2, "StickerTexturePreview"

    const-string v3, "createStInstance"

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oppo/camera/ui/preview/a/m;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()Lcom/oppo/camera/gl/s;
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/b;

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/b;->e()Lcom/oppo/camera/gl/s;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->F:Lcom/oppo/camera/sticker/d;

    return-object v0
.end method

.method public a(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/a/m;->d:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x140

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e0

    :goto_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/m;->c:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    if-lt p1, p2, :cond_2

    int-to-float v0, p1

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/m;->c:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    mul-int/2addr p2, v1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    goto :goto_1

    :cond_2
    int-to-float v0, p2

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/m;->c:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->C:F

    iput v1, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    mul-int/2addr p1, v1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    :cond_3
    :goto_1
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;)V
    .locals 6

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->t()V

    const-string v0, "Sticker.prepareTextures"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    const-string v2, "prepareTextures, texture id: "

    const-string v3, "StickerTexturePreview"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/gl/s;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a/m;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process, frameInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    if-eqz v2, :cond_8

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->k:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/m;->k:Z

    goto :goto_0

    :cond_1
    const-string p1, "StickerTexturePreview"

    const-string v1, "process, non selected sticker!"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    iget v1, p0, Lcom/oppo/camera/ui/preview/a/m;->l:I

    if-eqz v1, :cond_6

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/m;->m:I

    :goto_1
    iget-object v1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    iget-object v2, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    invoke-direct {p0, v1, v2, v4}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;Lcom/oppo/camera/gl/s;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->D:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/s;)I

    move-result v1

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->y()Lcom/oppo/camera/gl/s;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object p1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    invoke-direct {p0, p1, v4}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/ui/preview/a/m;->a(ILcom/oppo/camera/gl/s;)I

    move-result p1

    move v1, p1

    goto :goto_2

    :cond_7
    iget-object p1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-direct {p0, p1, v4}, Lcom/oppo/camera/ui/preview/a/m;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/s;)V

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/oppo/camera/sticker/b/b;->a()V

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    if-nez p1, :cond_9

    const-string p1, "StickerTexturePreview"

    const-string v2, "process, mRequest is null"

    invoke-static {p1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process, result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StickerTexturePreview"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-nez v1, :cond_b

    move v0, v3

    :cond_b
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/m;->l:I

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->w()V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/ui/preview/a/m$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/m$1;-><init>(Lcom/oppo/camera/ui/preview/a/m;)V

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "StickerTexturePreview"

    const-string v1, "destroyEngine"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->p()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public h()Lcom/oppo/camera/gl/s;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public i()Z
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->t:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "Sticker.onPreviewEffectChanged"

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->v()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/m;->B:Z

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a/m;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a/m;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/m;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v2

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMaterialInfos, mbTextureInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 6

    const-string v0, "StickerTexturePreview"

    const-string v1, "newTextures"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sticker.newTextures"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/oppo/camera/gl/s;

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/m;->a:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/m;->b:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/m;->g:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/m;->h:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycleTextures, mbGLInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbTextureInited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "Sticker.eglInit"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v3, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v3}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->reset()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->k:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->j:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/m;->u()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->y:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->z:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/m;->o()V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->s:Z

    const-string v0, "Sticker.eglInit"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    if-eqz v0, :cond_b

    const-string v0, "Sticker.recycleTextures"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/s;

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycleTextures, texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StickerTexturePreview"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->l()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->o:Lcom/oppo/camera/gl/s;

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->p:Lcom/oppo/camera/gl/s;

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->q:Lcom/oppo/camera/gl/s;

    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/m;->u:Lcom/oppo/camera/gl/s;

    :cond_a
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/m;->r:Z

    const-string v0, "Sticker.recycleTextures"

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->pauseSound()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->v:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->resumeSound()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/m;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/n$b;->a()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "StickerTexturePreview"

    const-string v1, "destroyHumanAction"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->reset()V

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->destroyInstance()V

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->destroyInstanceImage()V

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 8

    const-string v0, "StickerTexturePreview"

    const-string v1, "initNativeInstance"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-direct {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    sget-object v0, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    sget v3, Lcom/oppo/camera/sticker/c;->a:I

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "M_SenseME_Action_5.2.12.model"

    invoke-virtual {v0, v5, v3, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstanceFromAssetFile(Ljava/lang/String;ILandroid/content/res/AssetManager;)I

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    sget-object v4, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v3, v6}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    sget-object v4, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/high16 v6, 0x43a00000    # 320.0f

    invoke-virtual {v4, v1, v6}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    sget-object v4, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/16 v6, 0x14

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v4, v6, v7}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    sget-object v4, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/4 v6, 0x3

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v4, v6, v7}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    :cond_0
    sget-object v4, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    sget v6, Lcom/oppo/camera/sticker/c;->b:I

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstanceImage(Ljava/lang/String;ILandroid/content/res/AssetManager;)I

    move-result v4

    if-nez v4, :cond_2

    sget-object v5, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v3, v6}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParamImage(IF)I

    sget-object v3, Lcom/oppo/camera/ui/preview/a/m;->I:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/high16 v5, 0x44200000    # 640.0f

    invoke-virtual {v3, v1, v5}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParamImage(IF)I

    goto :goto_0

    :cond_1
    move v0, v2

    move v4, v0

    :cond_2
    :goto_0
    if-nez v4, :cond_3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method
