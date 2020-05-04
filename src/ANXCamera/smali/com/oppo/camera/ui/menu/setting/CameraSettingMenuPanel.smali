.class public Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;
.super Landroid/widget/LinearLayout;
.source "CameraSettingMenuPanel.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/setting/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/oppo/camera/ui/d;

.field private l:Lcom/oppo/camera/i;

.field private m:Landroid/content/Context;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Lcom/oppo/camera/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060288

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Lcom/oppo/camera/i;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060288

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "CameraSettingMenuPanel"

    const-string v0, "showCameraSubSettingMenuWithAnimation null == bitmap"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-ne v3, p2, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method private b(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->M()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->M()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addContainMenuOption(), the current mode can not add option: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSettingMenuPanel"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->L()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v1, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getVisibility()I

    move-result v6

    invoke-virtual {v1, p1, v5, v6, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    :cond_5
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    iput-object p1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v3, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget v1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object p1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v3, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_2
    return-void
.end method

.method private f(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private g(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraSettingMenuPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeOptions(), length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->d:Ljava/util/List;

    invoke-virtual {p0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    if-eqz v2, :cond_9

    iget v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    goto :goto_2

    :cond_a
    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v3, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_d
    :goto_3
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/camera/ui/d;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAfterCameraResume(), mMenuList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setCameraMenuLayout(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Lcom/oppo/camera/ui/menu/g;IZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, sizeRatioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Lcom/oppo/camera/i;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    iput p4, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    invoke-static {}, Lcom/oppo/camera/config/CameraConfig;->getMenuPanelOptionList()Ljava/util/List;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0603c7

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/oppo/camera/ui/menu/g;->a(Ljava/lang/String;)Lcom/oppo/camera/ui/menu/a;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance p2, Lcom/oppo/camera/ui/menu/setting/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    iget v5, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    move-object v0, p2

    move-object v2, p4

    move-object v3, p0

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/setting/d;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/menu/a;Lcom/oppo/camera/ui/menu/setting/e;Lcom/oppo/camera/ui/d;ILjava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/setting/d;->b()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p0}, Lcom/oppo/camera/ui/menu/setting/d;->a(Landroid/view/ViewGroup;)V

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/setting/d;->A()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p4}, Lcom/oppo/camera/ui/menu/a;->getOptionTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->B()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iput-object p1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iput-object p2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iput-object p1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iput-object p2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->d:Ljava/util/List;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->M()I

    move-result v2

    if-eq p2, v2, :cond_0

    :cond_1
    invoke-virtual {v1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g(I)V

    invoke-virtual {v1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    iput-object p1, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    const/4 p1, 0x6

    iput p1, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->L()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/oppo/camera/ui/d;->a(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAfterCameraPause(), mMenuList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableCameraSettingMenuOption(), this cap mod can not enable key : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSettingMenuPanel"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iput-object p1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v1, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iput-object p2, v2, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    iput-object p1, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->e:[Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, v1, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/d;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i:Z

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v1, p1, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;I)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;)V

    iput-object p1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v3, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget v1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object p1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->b:Ljava/lang/String;

    iput v3, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$a;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_2
    return-void
.end method

.method public c(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;

    invoke-direct {v4, p0, p2, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel$1;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;ZLcom/oppo/camera/ui/menu/setting/CameraMenuOption;)V

    const-wide/16 v5, 0x12c

    invoke-static {v3, v2, v4, v5, v6}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_camera_torch_mode_key"

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v3

    const/4 v5, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v()V

    :cond_4
    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    :goto_1
    invoke-virtual {v1, v4, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(Z)V

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_setting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_subsetting_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f()V
    .locals 4

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->clearAnimation()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->i()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->removeAllViews()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->n:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->m:Landroid/content/Context;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    return-void
.end method

.method public getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->k:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getMenuPanelAshed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g:Z

    return v0
.end method

.method public getMenuPanelEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c:I

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->l:Lcom/oppo/camera/i;

    return-object v0
.end method

.method public getUnremovedMenuNum()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    iget-boolean v1, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-eqz v1, :cond_12

    sub-int v1, p4, p2

    iget v2, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    sub-int v4, p5, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    iget-object v10, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    iget-object v10, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {v10}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    if-le v3, v8, :cond_2

    if-le v9, v7, :cond_2

    sub-int v5, v3, v8

    int-to-float v5, v5

    add-int/lit8 v10, v9, -0x1

    int-to-float v10, v10

    div-float/2addr v5, v10

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutDirection()I

    move-result v10

    if-ne v7, v10, :cond_3

    move v10, v7

    goto :goto_1

    :cond_3
    move v10, v6

    :goto_1
    move v11, v2

    move v2, v6

    move v12, v2

    :goto_2
    iget-object v13, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_12

    if-eqz v10, :cond_5

    iget-object v13, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v2

    sub-int/2addr v13, v7

    if-ltz v13, :cond_4

    iget-object v14, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    :cond_4
    iget-object v13, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    :goto_3
    check-cast v13, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    goto :goto_4

    :cond_5
    iget-object v13, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    :goto_4
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_11

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getMeasuredHeight()I

    move-result v15

    sub-int v16, v4, v15

    div-int/lit8 v6, v16, 0x2

    move/from16 p2, v4

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->z()I

    move-result v4

    move/from16 p3, v11

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v11

    if-ne v7, v11, :cond_6

    return-void

    :cond_6
    if-ne v9, v7, :cond_9

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v10}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v10}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b:I

    add-int/2addr v11, v3

    sub-int/2addr v11, v14

    goto :goto_5

    :cond_8
    sub-int v11, v1, v8

    div-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_9
    move/from16 v11, p3

    :goto_5
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    :cond_a
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u()Z

    move-result v16

    if-nez v16, :cond_d

    if-eqz v4, :cond_c

    if-eq v11, v4, :cond_c

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v4

    if-nez v4, :cond_b

    if-eq v12, v11, :cond_b

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v13, v12, v11}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_6

    :cond_b
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v13, v11, v4, v6, v15}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_6

    :cond_c
    add-int v4, v11, v14

    add-int/2addr v15, v6

    invoke-virtual {v13, v11, v6, v4, v15}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    goto :goto_6

    :cond_d
    if-eq v4, v11, :cond_f

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v4

    if-nez v4, :cond_e

    if-eq v12, v11, :cond_e

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v13, v12, v11}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_6

    :cond_e
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v13, v11, v4, v6, v15}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    :cond_f
    :goto_6
    invoke-virtual {v13}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v13, v7}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    :cond_10
    int-to-float v4, v11

    int-to-float v6, v14

    add-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    move v11, v4

    goto :goto_7

    :cond_11
    move/from16 p2, v4

    move/from16 p3, v11

    move/from16 v11, p3

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_12
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha, alpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraSettingMenuPanel"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraMenuLayout(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuLayout(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->h()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setInitState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c:I

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSizeRatioType(I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingMenuPanel"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n()V

    goto :goto_1

    :cond_4
    return-void
.end method
