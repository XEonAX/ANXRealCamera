.class public Lcom/oppo/camera/ui/modepanel/b;
.super Ljava/lang/Object;
.source "ModePanelData.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/modepanel/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/modepanel/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/modepanel/b;->d:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/modepanel/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "ModePanelData"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isVideoHighFrameRateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const/4 v3, 0x2

    const v4, 0x7f0702d9

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const/4 v3, 0x3

    const v4, 0x7f0702d7

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const v3, 0x7f0702d6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const v5, 0x7f0702db

    const/4 v6, 0x1

    invoke-direct {v1, v2, v6, v5}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    const v1, 0x7f0702d8

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v7, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v8, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-direct {v7, v8, v2, v1}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    new-instance v7, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v8, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-direct {v7, v8, v4, v3}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v4, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-direct {v3, v4, v6, v5}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v4, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-direct {v3, v4, v2, v1}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPER_MACRO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const/4 v3, 0x7

    const v4, 0x7f0702d5

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-boolean v6, p0, Lcom/oppo/camera/ui/modepanel/b;->d:Z

    return-void
.end method

.method public a(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/modepanel/b;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    const v3, 0x7f0702d4

    invoke-direct {v1, v2, p1, v3}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/camera/ui/modepanel/a;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/b;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/oppo/camera/ui/modepanel/a;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/modepanel/b;->c(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/modepanel/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/modepanel/a;->b()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/modepanel/a;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/b;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/b;->b:Ljava/util/ArrayList;

    :goto_0
    return-object p1
.end method
