.class public Lcom/oppo/camera/ui/menu/levelcontrol/d;
.super Lcom/oppo/camera/ui/menu/setting/l;
.source "FilterEffectMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/levelcontrol/d$a;,
        Lcom/oppo/camera/ui/menu/levelcontrol/d$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

.field private f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

.field private g:Landroid/os/Handler;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->g:Landroid/os/Handler;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i:Ljava/util/List;

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->m:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->t:I

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/d$a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l:I

    return p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->m:I

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/menu/levelcontrol/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/menu/levelcontrol/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j:I

    return p0
.end method

.method private l()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060200

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v1

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060201

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->f()I

    move-result v1

    invoke-virtual {v3, v4, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->s:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setCameraEntryType(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    new-instance v1, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d$b;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/d;Lcom/oppo/camera/ui/menu/levelcontrol/d$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->setThreeDScrollBarTextureViewCallback(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$a;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    if-eqz v0, :cond_2

    const-string v1, "filter"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b:Landroid/app/Activity;

    const v0, 0x7f08006b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->c:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEffectMenuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b(I)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->m:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c(I)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j:I

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->q:Z

    const-string v1, "FilterEffectMenu"

    if-eqz v0, :cond_0

    const-string p1, "showMenuPanel, ExitAnimatorSet.isRunning, return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->t:I

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    const-string v2, "filter"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(Z)V

    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "showMenuPanel, mMenuListener null, return!"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i:Ljava/util/List;

    iput p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "FilterEffectMenu"

    const-string v0, "hideMenuPanel, anim isRunning, return."

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const-string p2, "FilterEffectMenu"

    const-string v0, "hideAnimator"

    invoke-static {p2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->g:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d$a;->b()V

    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    return-void
.end method

.method public a(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k()I

    move-result p1

    if-ge p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    return p1

    :cond_1
    :goto_0
    const-string p1, "FilterEffectMenu"

    const-string p2, "onSingleTapUp, onClick, anim isRunning."

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->p:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->q:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(ZZ)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->m:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show, isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterEffectMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show failed, mCurrMenuNames: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-virtual {p0, p1, v1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-virtual {p0, p1, v1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    const-string p2, "FilterEffectMenu"

    const-string v0, "hideWithoutAnim"

    invoke-static {p2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->g:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Landroid/view/View;IZ)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->clearAnimation()V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->q:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->p:Z

    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    return v1

    :cond_1
    :goto_0
    const-string v0, "FilterEffectMenu"

    const-string v2, "onBackPressed, onClick, anim isRunning."

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->q:Z

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

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f()V

    :cond_0
    return-void
.end method

.method public getTextureHeight()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->m:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->l:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->p:Z

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

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCameraEntryType(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->s:I

    return-void
.end method

.method public setFilterEffectMenuListener(Lcom/oppo/camera/ui/menu/levelcontrol/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/d;->f:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    return-void
.end method
