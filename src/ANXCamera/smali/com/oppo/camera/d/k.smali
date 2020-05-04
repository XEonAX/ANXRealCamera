.class public Lcom/oppo/camera/d/k;
.super Lcom/oppo/camera/d/m;
.source "StickerMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/k$a;
    }
.end annotation


# static fields
.field private static final af:[I


# instance fields
.field private aA:Lcom/oppo/camera/ui/preview/a/g;

.field private aB:Lcom/oppo/camera/sticker/ui/i;

.field private aC:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final ag:Ljava/lang/Object;

.field private ah:Lcom/oppo/camera/sticker/ui/h;

.field private ai:Lcom/oppo/camera/sticker/ui/l;

.field private aj:Lcom/oppo/camera/ui/preview/a/l;

.field private ak:Ljava/lang/Float;

.field private al:Ljava/lang/Float;

.field private am:Ljava/lang/Integer;

.field private an:Ljava/lang/Integer;

.field private ao:Ljava/lang/Long;

.field private ap:Landroid/media/ImageReader;

.field private aq:Landroid/media/ImageReader;

.field private ar:Lcom/oppo/camera/b;

.field private as:I

.field private at:I

.field private au:Ljava/lang/String;

.field private av:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Lcom/oppo/camera/sticker/ui/c;

.field private ay:I

.field private az:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/d/k;->af:[I

    return-void

    :array_0
    .array-data 4
        0xf
        0x1e
        0x1e
        0x0
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ag:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    new-instance p2, Lcom/oppo/camera/d/k$a;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/d/k$a;-><init>(Lcom/oppo/camera/d/k;Lcom/oppo/camera/d/k$1;)V

    iput-object p2, p0, Lcom/oppo/camera/d/k;->aj:Lcom/oppo/camera/ui/preview/a/l;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ak:Ljava/lang/Float;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->al:Ljava/lang/Float;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->am:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->an:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ao:Ljava/lang/Long;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/d/k;->as:I

    iput p2, p0, Lcom/oppo/camera/d/k;->at:I

    iput-object p1, p0, Lcom/oppo/camera/d/k;->au:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ax:Lcom/oppo/camera/sticker/ui/c;

    iput p2, p0, Lcom/oppo/camera/d/k;->ay:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/d/k;->az:J

    new-instance p1, Lcom/oppo/camera/d/k$1;

    invoke-direct {p1, p0}, Lcom/oppo/camera/d/k$1;-><init>(Lcom/oppo/camera/d/k;)V

    iput-object p1, p0, Lcom/oppo/camera/d/k;->aA:Lcom/oppo/camera/ui/preview/a/g;

    new-instance p1, Lcom/oppo/camera/d/k$6;

    invoke-direct {p1, p0}, Lcom/oppo/camera/d/k$6;-><init>(Lcom/oppo/camera/d/k;)V

    iput-object p1, p0, Lcom/oppo/camera/d/k;->aB:Lcom/oppo/camera/sticker/ui/i;

    new-instance p1, Lcom/oppo/camera/d/k$7;

    invoke-direct {p1, p0}, Lcom/oppo/camera/d/k$7;-><init>(Lcom/oppo/camera/d/k;)V

    iput-object p1, p0, Lcom/oppo/camera/d/k;->aC:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/k;->aj:Lcom/oppo/camera/ui/preview/a/l;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/l;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->c(Lcom/oppo/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->p(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/d/k;->f(ZZ)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStickwerItemLongClick, item: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StickerMode"

    invoke-static {p3, p2}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;Landroid/view/View;Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/d/k;->a(Landroid/view/View;Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/d/k;Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 3

    iget-object p2, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string p2, "StickerMode"

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->G()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->isRecycleBin()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string p1, "onStickerItemClick, recycle_bin_sticker_id"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/l;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/oppo/camera/d/k;->as:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oppo/camera/d/k;->as:I

    new-instance p1, Lcom/oppo/camera/sticker/ui/l;

    iget-object p2, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oppo/camera/sticker/ui/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/l;->show()V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    new-instance p2, Lcom/oppo/camera/d/k$4;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/k$4;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/l;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    new-instance p2, Lcom/oppo/camera/d/k$5;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/k$5;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/l;->a(Lcom/oppo/camera/sticker/ui/l$a;)V

    :cond_3
    return v2

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {p2}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    return v0

    :cond_5
    return v2

    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStickerItemClick, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isBlurAnimRunning: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->G()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAnyModeAnimationRunning: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->y()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/d/k;)I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/k;->at:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/d/k;->at:I

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/d/k;Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->b(Lcom/oppo/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method private b(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_current_sticker_uuid"

    const-string v2, "unselected_uuid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sticker_menu_item_usetime"

    invoke-direct {p0, v2, v0}, Lcom/oppo/camera/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_1
    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cK()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->aW()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->g(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bK()V

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->g()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->b()V

    :cond_3
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sticker_menu_item_unselected"

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->a()Lcom/oppo/camera/gl/GLRootView;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/d/k$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/k$2;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/d/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/d/k;->cX()V

    return-void
.end method

.method private c(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->a()Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->b(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/a/i;->d()Z

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->au:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/k;->au:Ljava/lang/String;

    return-void
.end method

.method private cX()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/k$13;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/k$13;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cY()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    const-string v1, "pref_location_checkbox_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStickerMediator , internetPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StickerMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(IZ)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/d/k;->aj:Lcom/oppo/camera/ui/preview/a/l;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/l;)V

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->e()V

    :cond_0
    return-void
.end method

.method private cZ()Landroid/media/CamcorderProfile;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/e;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "StickerMode"

    const-string v1, "getCamcorderProfile, get CamcorderProfile fail"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/l;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    return-object p0
.end method

.method private e(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideStickerMenu, includePanle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/oppo/camera/sticker/ui/h;->a(IZZ)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    return-void
.end method

.method private f(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStickerMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", includePanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/oppo/camera/sticker/ui/h;->a(IZZ)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    :cond_0
    return-void
.end method

.method private p(Z)V
    .locals 3

    const-string v0, "StickerMode"

    const-string v1, "updateStickerImageResource"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/k;->aA:Lcom/oppo/camera/ui/preview/a/g;

    invoke-virtual {v1, v2, v0, p1}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/g;Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    return-void
.end method

.method private y(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private z(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->ch()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "16_9"

    return-object v0
.end method

.method public J()V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "closeImageReader"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method public P()Z
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->P()Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cL()Z

    move-result v0

    return v0
.end method

.method protected W()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method public X()V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onAfterStartPreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->b(Z)V

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/m;->X()V

    return-void
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "sticker"

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(IZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/d/k;->q:Z

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    const-string p1, "key_bubble_sticker"

    if-eqz p2, :cond_2

    invoke-direct {p0, v1, v1}, Lcom/oppo/camera/d/k;->f(ZZ)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x0

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v1

    invoke-interface {p1, p2, v2, v0, v1}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p2}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p2, v1, v1, v0}, Lcom/oppo/camera/sticker/ui/h;->b(ZZZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/k;->e(ZZ)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/d/k;->f(ZZ)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1, v1}, Lcom/oppo/camera/d/k;->e(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object p2, p0, Lcom/oppo/camera/d/k;->ag:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/oppo/camera/d/k;->ak:Ljava/lang/Float;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/oppo/camera/d/k;->al:Ljava/lang/Float;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/oppo/camera/d/k;->am:Ljava/lang/Integer;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/oppo/camera/d/k;->an:Ljava/lang/Integer;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/oppo/camera/d/k;->ao:Ljava/lang/Long;

    const-string p1, "StickerMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, mCurrentFocalLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ak:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentAperture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->al:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentISO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->am:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentWhiteBalanceMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->an:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentExposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ao:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "type_preview_frame"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    const-string v0, "oppo.rawsensor.test"

    const-string v1, "640x480"

    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x20

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->aC:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "type_depth_preview"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "type_depth_jpeg"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configSessionSurface, DepthJpegImageReader.size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->aq:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DepthImageReader.size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ap:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected a(Z)V
    .locals 5

    const-string v0, "StickerMode"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/k;->az:J

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->f()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/sticker/ui/h;->a(ZZ)V

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(IZ)V

    invoke-direct {p0}, Lcom/oppo/camera/d/k;->cY()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->a(IZ)V

    const-string p1, "key_bubble_sticker"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :goto_0
    const-string p1, "key_bubble_short_video"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v3

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :goto_1
    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(ZZ)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    :cond_0
    return-void
.end method

.method protected a([BZ)V
    .locals 3

    const-string p1, "StickerMode"

    const-string p2, "onAfterPictureTaken"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->i()V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/h;->b(Z)V

    :cond_1
    const-string p1, "key_bubble_short_video"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/k;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x4

    iget-object p2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v2

    invoke-interface {p2, v0, p1, v1, v2}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_2
    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/oppo/camera/sticker/data/StickerItem;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "onStickerItemChange, item: "

    const-string v2, "StickerMode"

    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->G()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_sticker_process_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, p1}, Lcom/oppo/camera/ui/preview/a/i;->b(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_current_sticker_uuid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sticker_menu_item_usetime"

    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v2, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v4, Lcom/oppo/camera/d/k$8;

    invoke-direct {v4, p0}, Lcom/oppo/camera/d/k$8;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v0}, Lcom/oppo/camera/e/f;->g(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bK()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cJ()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/k$9;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/k$9;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cK()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->aW()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->g(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bK()V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->c()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->g()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->b()V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getDownloadTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_category_e5a3fe9c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->isRecycleBin()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_6
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker_menu_item_selected"

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->a()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/d/k$10;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/d/k$10;-><init>(Lcom/oppo/camera/d/k;Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/k$11;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/k$11;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/k$12;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/k$12;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/k;->b(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/d/k;->cX()V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerItemChange, failed, index, categoryId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isBlurAnimRunning: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->G()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public aK()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewByEnterCameraType, mStickerMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->d(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public aL()V
    .locals 3

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    return-void
.end method

.method public aM()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_sticker_facebeauty_level_menu"

    return-object v0
.end method

.method public aa()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bu()Z

    move-result v0

    return v0
.end method

.method public ab()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method protected aj()V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "startShortVideoRecording"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->s()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/h;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/k;->W:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/d/k;->cZ()Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    const-string v2, "startShortVideoRecording, CamcorderProfile.get fail! "

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startShortVideoRecording, preview width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preview heigth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v2, 0x780

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0x440

    if-le v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v0, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    const/16 v1, 0x390

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v0, p0, Lcom/oppo/camera/d/k;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bT()V

    return-void

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShortVideoRecording, isDoubleFinger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->s()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVideoRecordStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const-string v3, "null"

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/oppo/camera/sticker/ui/h;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", MenuOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected ak()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopShortVideoRecording, isVideoRecordStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cR()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bT()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->W:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public an()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/d/k;->e(ZZ)V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2}, Lcom/oppo/camera/ui/c;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1, v1, v1}, Lcom/oppo/camera/ui/c;->b(ZZZ)V

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oppo/camera/d/b;->a(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/c;->h(I)V

    const-string v2, "key_bubble_sticker"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    const-string v2, "key_bubble_short_video"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4, v3, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/k;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v2, v1}, Lcom/oppo/camera/d/k;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    return-void
.end method

.method public ap()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/oppo/camera/d/k;->f(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/oppo/camera/d/k;->f(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v2}, Lcom/oppo/camera/d/b;->c(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->m(Z)V

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/m;->ap()V

    :goto_0
    return-void
.end method

.method public as()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/m;->as()Z

    move-result v0

    return v0
.end method

.method public at()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/m;->at()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x800e

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const v2, 0x7f0f0114

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->ab()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "full"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const v4, 0x4c4b40

    if-eqz v2, :cond_0

    invoke-static {v1, v4, v3}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v4, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(I)V

    return-void
.end method

.method protected b([BZ)V
    .locals 0

    const-string p1, "StickerMode"

    const-string p2, "onBeforePictureTaken"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cL()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bH()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/d/m;->bH()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_video_size_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected bM()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected bN()[I
    .locals 1

    sget-object v0, Lcom/oppo/camera/d/k;->af:[I

    return-object v0
.end method

.method public bc()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->be()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->e(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v0

    return v0
.end method

.method public bi()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    :cond_1
    const-string v1, "pref_omoji_process_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bp()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oppo/camera/d/k;->ay:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "human_generate_gif"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/d/k;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/k;->as:I

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sticker_recyclebin_click"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/d/k;->as:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/oppo/camera/d/k;->at:I

    if-lez v1, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sticker_recyclebin_deleteall"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/oppo/camera/d/k;->at:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/k;->aw:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/d/k;->a(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->av:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/d/k;->b(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/d/k;->au:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/oppo/camera/d/k;->az:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/oppo/camera/d/k;->az:J

    iget-wide v0, p0, Lcom/oppo/camera/d/k;->az:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker_mode_use_time"

    invoke-static {v1, v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const-string v5, "enterSticker"

    invoke-static {v1, v5, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iput-wide v3, p0, Lcom/oppo/camera/d/k;->az:J

    return-void
.end method

.method public bq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x438

    if-eqz v2, :cond_0

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v3, v1, v4, v5}, Lcom/oppo/camera/o/d;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "full"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v3, v1, v4, v5}, Lcom/oppo/camera/o/d;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "square"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3c0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/d/k;->g:I

    iget-object p1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iget v0, p0, Lcom/oppo/camera/d/k;->g:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/ui/h;->b(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cB()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->d(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v0

    return v0
.end method

.method protected cE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cH()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(I)V

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    invoke-direct {v0}, Lcom/oppo/camera/ui/control/c;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/m;->cH()V

    return-void
.end method

.method protected cI()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->cI()V

    return-void
.end method

.method public declared-synchronized cJ()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/b;

    invoke-direct {v0}, Lcom/oppo/camera/b;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    invoke-static {}, Lcom/oppo/camera/config/CameraConfig;->getOmojiPerformanceConfigList()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/b;->a(I[I)I

    move-result v1

    const-string v2, "StickerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perfLockAcquireForOmoji, ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", performConfig: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cK()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    invoke-virtual {v0}, Lcom/oppo/camera/b;->a()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/d/k;->ar:Lcom/oppo/camera/b;

    const-string v1, "StickerMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfLockReleaseForOmoji, ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cL()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->ch()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->m(Z)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0, v2, v2, v1}, Lcom/oppo/camera/sticker/ui/h;->a(ZZZ)V

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public ce()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->aO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->ch()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v1, v2, v3, v3}, Lcom/oppo/camera/sticker/ui/h;->a(ZZZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/k;->e(ZZ)V

    :cond_2
    :goto_0
    const-string v1, "key_bubble_sticker"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v3}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_3
    const-string v1, "beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    const-string v4, "menuClick"

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const-string v1, "sticker_mode_click_smooth_menu"

    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v3}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const-string v1, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const-string v1, "sticker_mode_click_filter_menu"

    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v3}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public cf()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/k;->f(ZZ)V

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public cg()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ch()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    return v0
.end method

.method public ci()V
    .locals 5

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_0
    const-string v0, "key_bubble_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public cn()V
    .locals 1

    invoke-super {p0}, Lcom/oppo/camera/d/m;->cn()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->v()V

    :cond_0
    return-void
.end method

.method protected co()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cr()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const-string v1, "sticker_mode_switch_camera"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "menuClick"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected cs()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/k;->e(ZZ)V

    return-void
.end method

.method public d()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->w()[Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_3

    aget-object v0, v0, v1

    return-object v0

    :cond_3
    invoke-super {p0}, Lcom/oppo/camera/d/m;->d()Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/oppo/camera/d/m;->d()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "pref_video_size_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const-string v0, "pref_support_recording_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "key_filter_index"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_burst_shot_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "func_filter_vignette"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_save_jpg_after_pause_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "pref_camera_slogan_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pref_filter_process_key"

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v2, "pref_expand_popbar_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    return p1

    :cond_2
    const-string v2, "pref_camera_videoflashmode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_3
    const-string v2, "pref_zoom_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bY()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    :goto_0
    return v1

    :cond_6
    const-string v2, "pref_support_thumbnail"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_7
    const-string v2, "pref_dual_camera"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result p1

    return p1

    :cond_8
    const-string v2, "key_short_video"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string v2, "pref_sticker_process_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_a
    const-string v2, "pref_omoji_process_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_ANIMOJI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_b
    const-string v2, "pref_support_switch_camera"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_c
    const-string v2, "pref_support_capture_preview"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    return v4

    :cond_d
    return v1

    :cond_e
    const-string v2, "pref_support_ipa_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v4

    :cond_f
    const-string v2, "pref_auto_night_scence_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object p1, p0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-nez p1, :cond_10

    return v1

    :cond_10
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_11
    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "func_torch_soft_light"

    if-eqz v2, :cond_13

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    if-nez p1, :cond_12

    move v1, v4

    :cond_12
    return v1

    :cond_13
    const-string v2, "func_face_beauty_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_14
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_15

    move v1, v4

    :cond_15
    return v1

    :cond_16
    const-string v3, "func_face_beauty_custom"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_17

    move v1, v4

    :cond_17
    return v1

    :cond_18
    const-string v3, "func_face_beauty_common"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_19

    move v1, v4

    :cond_19
    return v1

    :cond_1a
    const-string v2, "pref_camera_assistant_line_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cB()Z

    move-result p1

    if-nez p1, :cond_1b

    move v1, v4

    :cond_1b
    return v1

    :cond_1c
    const-string v2, "pref_time_lapse_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "pref_camera_tap_shutter_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1

    :cond_1d
    const-string v2, "pref_camera_gesture_shutter_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    if-nez p1, :cond_1e

    move v1, v4

    :cond_1e
    return v1

    :cond_1f
    const-string v2, "func_face_slender_process"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget p1, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->A()Z

    move-result p1

    if-nez p1, :cond_20

    move v1, v4

    :cond_20
    return v1

    :cond_21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    return v1

    :cond_23
    const-string v0, "key_support_show_no_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    if-nez p1, :cond_24

    move v1, v4

    :cond_24
    return v1

    :cond_25
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v4

    :cond_26
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_27
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->z()Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_28
    :goto_2
    return v4

    :cond_29
    :goto_3
    return v1
.end method

.method protected d(I)[I
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->c:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->d:[I

    :goto_0
    return-object p1
.end method

.method public e(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->e(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->o(Z)V

    return-void
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->b:[Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected h()V
    .locals 3

    const-string v0, "StickerMode"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ai:Lcom/oppo/camera/sticker/ui/l;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/l;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->b()V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cK()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->aW()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->g(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bK()V

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    const-string v0, "key_bubble_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_2
    invoke-super {p0}, Lcom/oppo/camera/d/m;->h()V

    return-void
.end method

.method protected j()V
    .locals 3

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v0, "key_bubble_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ax:Lcom/oppo/camera/sticker/ui/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/c;->a()V

    invoke-static {}, Lcom/oppo/camera/sticker/ui/c;->b()V

    :cond_2
    invoke-super {p0}, Lcom/oppo/camera/d/m;->j()V

    return-void
.end method

.method protected k()V
    .locals 5

    const-string v0, "StickerMode"

    const-string v1, "onInitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/k;->az:J

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->f()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/sticker/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const v2, 0x7f0703cb

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/sticker/ui/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/camera/d/k;->ax:Lcom/oppo/camera/sticker/ui/c;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/oppo/camera/sticker/ui/h;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    iget v3, p0, Lcom/oppo/camera/d/k;->g:I

    invoke-direct {v1, v2, v3, v0}, Lcom/oppo/camera/sticker/ui/h;-><init>(Landroid/app/Activity;IZ)V

    iput-object v1, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->aB:Lcom/oppo/camera/sticker/ui/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/i;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->ax:Lcom/oppo/camera/sticker/ui/c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/c;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->a()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->d()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    iget v1, p0, Lcom/oppo/camera/d/k;->g:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->b(I)V

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_2
    const-string v0, "key_bubble_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->y(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/k;->z(I)I

    move-result v4

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const v2, 0x7f0f0094

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string p1, "pref_omoji_process_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "type_still_capture_yuv_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/k;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected l()V
    .locals 6

    const-string v0, "StickerMode"

    const-string v1, "onDeinitCameraMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->o()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/oppo/camera/sticker/ui/h;->b(ZZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->e()V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f0120

    const v3, 0x7f0702fa

    const-string v4, "pref_camera_photo_ratio_key"

    const-string v5, "full"

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/k;->j(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_1
    const-string v0, "key_bubble_sticker"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_2
    const-string v0, "key_bubble_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_3
    return-void
.end method

.method public l(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->l(I)V

    return-void
.end method

.method protected m()V
    .locals 4

    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    const-string v0, "StickerMode.onBeforePreview"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sticker_menu_item_usetime"

    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->cJ()V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->g(I)V

    iget-object v2, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    iget v2, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v1, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/d/k;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->o(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStickerIndex, mPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/k;->O:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StickerMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bK()V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    const-string p1, "key_bubble_sticker"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string p1, "key_bubble_short_video"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_1
    return-void
.end method

.method protected n()Z
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onBeforeSnapping"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->h(I)Lcom/oppo/camera/ui/preview/a/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/k$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/k$3;-><init>(Lcom/oppo/camera/d/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Lcom/oppo/camera/e/d;
    .locals 4

    invoke-super {p0}, Lcom/oppo/camera/d/m;->t()Lcom/oppo/camera/e/d;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->l:Z

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->n:Z

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppo/camera/e/d;->m:Z

    iget v2, p0, Lcom/oppo/camera/d/k;->j:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->az()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->o:Z

    :cond_0
    return-object v0
.end method

.method public w()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/d/k;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->h(I)Lcom/oppo/camera/ui/preview/a/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->h(I)Lcom/oppo/camera/ui/preview/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/n;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/k;->ah:Lcom/oppo/camera/sticker/ui/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/h;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
