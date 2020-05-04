.class public Lcom/oppo/camera/e$b;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    iput-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->w(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchAnimEnd, Beauty3DState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aK()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/q;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aK()I

    move-result v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aK()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aK()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    goto/16 :goto_2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->A()V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->af()V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    iget-object v3, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aH()V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->G(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ag(Lcom/oppo/camera/e;)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    const-string v3, "key_bubble_type_custom_beuty3d"

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ba(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0600c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v4, v7, v8, v0, v3}, Lcom/oppo/camera/ui/e;->a(Landroid/view/View;III)V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v6}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;Z)Z

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3, v0}, Lcom/oppo/camera/e;->f(Lcom/oppo/camera/e;I)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aK()I

    move-result v0

    if-ne v0, v5, :cond_8

    const-string v0, "onSwitchAnimEnd, retsetBeauty3DState"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/oppo/camera/d/i;->k(I)V

    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->k(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->c(I)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->i(Z)V

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->g(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimStart, Beauty3DState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aK()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->G(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->g(Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string v1, "pref_zoom_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string v1, "pref_expand_popbar_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    const/16 v4, 0xe

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aH()V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aD()V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->aj()V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->v(Z)V

    :goto_1
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimMiddle, mAfterSwitchPrvSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    iput-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    iget-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p2

    iget-object v0, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/e;->d(II)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    iget-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
