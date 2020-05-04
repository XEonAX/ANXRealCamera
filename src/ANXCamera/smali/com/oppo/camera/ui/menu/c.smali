.class public Lcom/oppo/camera/ui/menu/c;
.super Lcom/oppo/camera/ui/menu/BasicOptionItemList;
.source "OptionItemIconTextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/c$a;
    }
.end annotation


# instance fields
.field private w:Lcom/oppo/camera/ui/RotateImageView;

.field private x:Z

.field private y:Lcom/oppo/camera/ui/h;

.field private z:Lcom/oppo/camera/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/c;->x:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/c;->z:Lcom/oppo/camera/ui/d;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/c;->z:Lcom/oppo/camera/ui/d;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->D()I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/c;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/h;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/h;-><init>(FF)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    new-instance v1, Lcom/oppo/camera/ui/menu/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/menu/c$a;-><init>(Lcom/oppo/camera/ui/menu/c;Lcom/oppo/camera/ui/menu/c$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/h;->a(Lcom/oppo/camera/ui/h$a;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/h;->setDuration(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/c;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/c;->h()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/h;->a()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/c;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/h;->a(IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(Landroid/view/View;II)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->q:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->getItemsMeasureHeight()I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/c;->m:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/menu/c;->a(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/c;->b:I

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->o:Lcom/oppo/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/c;->o:Lcom/oppo/camera/ui/menu/BasicOptionItemList$ItemClickListener;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected b()V
    .locals 7

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/c;->r:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->r:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->u:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;-><init>(Lcom/oppo/camera/ui/menu/BasicOptionItemList;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/c;->u:Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->r:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/c;->u:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->r:Landroid/view/animation/AnimationSet;

    const-wide/16 v5, 0xf0

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->r:Landroid/view/animation/AnimationSet;

    const-wide/16 v5, 0x32

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->v:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;-><init>(Lcom/oppo/camera/ui/menu/BasicOptionItemList;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/c;->v:Landroid/view/animation/Animation$AnimationListener;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/c;->v:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->clearAnimation()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->t:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/c;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->clearAnimation()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->p:Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/c;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/c;->y:Lcom/oppo/camera/ui/h;

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->g()V

    return-void
.end method

.method public getItemsMeasureHeight()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result v0

    if-le v1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getMeasuredHeight()I

    move-result v0

    move v1, v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getItemsMeasureWidth()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    sub-int/2addr p4, p1

    iget p2, p0, Lcom/oppo/camera/ui/menu/c;->d:I

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/c;->getItemsMeasureWidth()I

    move-result p2

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p4, p2

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    iget-object p3, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s()I

    move-result v0

    invoke-virtual {p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t()I

    move-result v1

    sub-int v2, p5, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcom/oppo/camera/o/d;->U()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/c;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, v2, v3, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(IIII)V

    add-int/2addr v0, p4

    add-int/2addr p2, v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->onMeasure(II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p2

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/RotateImageView;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOptionItemIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/c;->w:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setSelectItemIndex(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/menu/c;->k:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/oppo/camera/ui/menu/c;->k:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/c;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/oppo/camera/ui/menu/c;->k:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
