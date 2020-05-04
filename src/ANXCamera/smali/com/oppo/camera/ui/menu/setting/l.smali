.class public Lcom/oppo/camera/ui/menu/setting/l;
.super Landroid/view/View;
.source "ExpandableMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/setting/l$a;,
        Lcom/oppo/camera/ui/menu/setting/l$b;
    }
.end annotation


# static fields
.field public static o:Ljava/lang/String; = "DefaultExpandPanel"


# instance fields
.field private a:Z

.field public p:Z

.field public q:Z

.field public r:Lcom/oppo/camera/ui/menu/setting/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 12

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    const v2, 0x7f010045

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/oppo/camera/ui/menu/setting/l$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l$a;-><init>(Lcom/oppo/camera/ui/menu/setting/l;Landroid/view/View;I)V

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_0
    const v8, 0x7f010046

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-instance v11, Lcom/oppo/camera/ui/menu/setting/l$a;

    invoke-direct {v11, p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l$a;-><init>(Lcom/oppo/camera/ui/menu/setting/l;Landroid/view/View;I)V

    move-object v6, p1

    move v7, p2

    invoke-static/range {v6 .. v11}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ExpandableMenuPanel"

    const-string v1, "showMenuPanel"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->setCurrentMenuKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oppo/camera/ui/menu/setting/l;->o:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/menu/setting/l$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "ExpandableMenuPanel"

    const-string v1, "hideMenuPanel"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oppo/camera/ui/menu/setting/l;->o:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/menu/setting/l$b;->a(Ljava/lang/String;Z)V

    :cond_0
    const-string p1, "DefaultExpandPanel"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->setCurrentMenuKey(Ljava/lang/String;)V

    return-void
.end method

.method public a(II)Z
    .locals 1

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/l;->k()I

    move-result p1

    if-ge p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/l;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    return p1

    :cond_1
    return v0
.end method

.method public b(ZZ)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    return v0

    :cond_1
    return v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getCurrentMenuKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/ui/menu/setting/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/l;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()I
    .locals 2

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public setCurrentMenuKey(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/oppo/camera/ui/menu/setting/l;->o:Ljava/lang/String;

    return-void
.end method

.method public setExpandMenuListener(Lcom/oppo/camera/ui/menu/setting/l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    return-void
.end method
