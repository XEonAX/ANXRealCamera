.class public Lcom/oppo/camera/sticker/ui/h;
.super Ljava/lang/Object;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/sticker/ui/h$a;,
        Lcom/oppo/camera/sticker/ui/h$b;,
        Lcom/oppo/camera/sticker/ui/h$c;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Lcom/oppo/camera/sticker/ui/e;

.field private D:Lcom/oppo/camera/sticker/ui/g;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Lcom/oppo/camera/sticker/ui/f;

.field private G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

.field private H:I

.field private I:Z

.field private J:Lcom/oppo/camera/sticker/ui/h$b;

.field private K:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private L:Lcom/oppo/camera/sticker/ui/h$c;

.field private M:Landroid/widget/RelativeLayout$LayoutParams;

.field private N:Landroid/view/View$OnClickListener;

.field private O:Landroid/database/ContentObserver;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Landroid/animation/TimeInterpolator;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/AnimatorSet;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Z

.field private n:I

.field private o:Landroid/app/Activity;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lcom/oppo/camera/ui/RotateImageView;

.field private s:Lcom/oppo/camera/ui/control/MainShutterButton;

.field private t:Lcom/oppo/camera/sticker/ui/StickerPageView;

.field private u:Lcom/oppo/camera/ui/RotateImageView;

.field private v:Lcom/oppo/camera/sticker/ui/j;

.field private w:Lcom/oppo/camera/sticker/ui/i;

.field private x:Lcom/oppo/camera/sticker/ui/c;

.field private y:Z

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->e:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->f:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/sticker/ui/h;->m:Z

    iput v1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->x:Lcom/oppo/camera/sticker/ui/c;

    iput-boolean v1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->z:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->A:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->B:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    iput-boolean v1, p0, Lcom/oppo/camera/sticker/ui/h;->I:Z

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->J:Lcom/oppo/camera/sticker/ui/h$b;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->K:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->L:Lcom/oppo/camera/sticker/ui/h$c;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->M:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v2, Lcom/oppo/camera/sticker/ui/h$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/sticker/ui/h$1;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    iput-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->N:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/oppo/camera/sticker/ui/h$7;

    invoke-direct {v2, p0, v0}, Lcom/oppo/camera/sticker/ui/h$7;-><init>(Lcom/oppo/camera/sticker/ui/h;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->O:Landroid/database/ContentObserver;

    const-string v2, "StickerMenu"

    invoke-static {v2, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const v3, 0x7f08006b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    new-instance p2, Lcom/oppo/camera/sticker/ui/h$c;

    invoke-direct {p2, p0}, Lcom/oppo/camera/sticker/ui/h$c;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->L:Lcom/oppo/camera/sticker/ui/h$c;

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0603bc

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0603be

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0603b7

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0603b6

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->d:I

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "StickerMenus"

    invoke-static {p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b0064

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x6

    const v3, 0x7f0800b0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0603a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0603a3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz p3, :cond_1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/sticker/ui/h;->c(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/sticker/ui/h;->c(Z)V

    :goto_0
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p3, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const p3, 0x7f0703c7

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->z:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const p3, 0x7f0703c6

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->A:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->z:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->B:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/oppo/camera/sticker/ui/h$8;

    invoke-direct {p1, p0}, Lcom/oppo/camera/sticker/ui/h$8;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    invoke-static {p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/ui/h;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/ui/h;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/ui/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->I:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/sticker/ui/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/sticker/ui/h;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/sticker/ui/h;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerPageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/sticker/ui/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/sticker/ui/h;->I:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    return-object p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private j()Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$14;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/ui/h$14;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->l:Landroid/animation/Animator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic j(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/g;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    return-object p0
.end method

.method private k()Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/ui/h$2;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->k:Landroid/animation/Animator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    return-object p0
.end method

.method private l()I
    .locals 3

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v0

    const-string v1, "oppo.hide.navigationbar"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method static synthetic l(Lcom/oppo/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->K:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method private m()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/h$c;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->L:Lcom/oppo/camera/sticker/ui/h$c;

    return-object p0
.end method

.method static synthetic n(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    return-object p0
.end method

.method static synthetic p(Lcom/oppo/camera/sticker/ui/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    return p0
.end method

.method static synthetic q(Lcom/oppo/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLayout, mGridViewRelativeLayout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->l()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v1, "oppo.hide.navigationbar"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result v4

    if-nez p1, :cond_0

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    :goto_1
    sub-int/2addr v3, v4

    goto :goto_3

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    :goto_2
    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, -0x1

    if-ne p1, v5, :cond_2

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, -0x2

    if-ne p1, v4, :cond_3

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/lit8 v5, v5, 0x3

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/lit8 v5, v5, 0x2

    goto :goto_2

    :goto_3
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    invoke-virtual {v4, v3, v1}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", includePanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    const-wide/16 v0, 0x12c

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2, p1, p3, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p2, :cond_7

    invoke-static {p2, p1, p3, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->i()V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->k()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->j()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/oppo/camera/sticker/ui/f;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->i()V

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/sticker/ui/h$12;-><init>(Lcom/oppo/camera/sticker/ui/h;Lcom/oppo/camera/sticker/data/StickerItem;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->x:Lcom/oppo/camera/sticker/ui/c;

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$9;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/sticker/ui/h$9;-><init>(Lcom/oppo/camera/sticker/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;ZLcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0, v1, p4}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/oppo/camera/sticker/ui/j;->a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;ZLcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/sticker/ui/h$13;-><init>(Lcom/oppo/camera/sticker/ui/h;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/sticker/ui/h$a;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "StickerMenus.updateStickerCategoryMenu"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/f;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oppo/camera/sticker/ui/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/sticker/ui/f;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->M:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0800b0

    const/4 v3, -0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0603a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->M:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->M:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v8, 0x7f0b00a7

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oppo/camera/sticker/ui/e;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    iget-object v9, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    iget v10, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    invoke-direct {v1, v8, v9, v10}, Lcom/oppo/camera/sticker/ui/e;-><init>(Landroid/content/Context;Lcom/oppo/camera/sticker/ui/g;I)V

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/sticker/ui/e;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    const v8, 0x7f080004

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->L:Lcom/oppo/camera/sticker/ui/h$c;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->setStickerCategoryInterface(Lcom/oppo/camera/sticker/ui/g;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-direct {v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->K:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->K:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    const/16 v8, 0x64

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->setItemViewCacheSize(I)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->K:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$b;

    iget v8, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    iget v9, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    invoke-direct {v1, p0, v8, v9}, Lcom/oppo/camera/sticker/ui/h$b;-><init>(Lcom/oppo/camera/sticker/ui/h;II)V

    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->J:Lcom/oppo/camera/sticker/ui/h$b;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->J:Lcom/oppo/camera/sticker/ui/h$b;

    invoke-virtual {v1, v8}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result v1

    if-gt v1, v4, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    iget v8, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/2addr v1, v8

    iget v9, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->d:I

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/lit8 v4, v1, 0x6

    iget v8, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/2addr v8, v6

    add-int/2addr v4, v8

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->d:I

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    sub-int/2addr v1, v4

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    move-object v4, v8

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result v1

    if-gt v1, v7, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oppo/camera/sticker/ui/f;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-object v6, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6, v4}, Lcom/oppo/camera/sticker/ui/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v6, p0, Lcom/oppo/camera/sticker/ui/h;->M:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v4, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    iget v8, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/2addr v2, v8

    iget v9, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/oppo/camera/sticker/ui/h;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/oppo/camera/sticker/ui/h;->a:I

    mul-int/lit8 v4, v2, 0x6

    iget v8, p0, Lcom/oppo/camera/sticker/ui/h;->b:I

    mul-int/2addr v8, v6

    add-int/2addr v4, v8

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/oppo/camera/sticker/ui/h;->d:I

    iget v4, p0, Lcom/oppo/camera/sticker/ui/h;->c:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/sticker/ui/e;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/e;->e()V

    :cond_7
    :goto_2
    if-nez p3, :cond_9

    iget p3, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    if-eq p3, v3, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_8

    goto :goto_3

    :cond_8
    move p2, v5

    goto :goto_5

    :cond_9
    :goto_3
    iget p3, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    if-ne v3, p3, :cond_a

    iput v5, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    goto :goto_4

    :cond_a
    iput p2, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    :goto_4
    move p2, v7

    :goto_5
    iget p3, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_d

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p3, v1}, Lcom/oppo/camera/sticker/ui/e;->e(I)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->G:Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p3, v1}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(I)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    if-eqz p3, :cond_b

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p3, v1}, Lcom/oppo/camera/sticker/ui/j;->b(I)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/j;->d()I

    move-result v1

    invoke-virtual {p3, v1, v5}, Lcom/oppo/camera/sticker/ui/StickerPageView;->a(IZ)V

    :cond_b
    if-eqz p2, :cond_c

    iput-boolean v7, p0, Lcom/oppo/camera/sticker/ui/h;->I:Z

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->L:Lcom/oppo/camera/sticker/ui/h$c;

    iget p3, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p2, p3}, Lcom/oppo/camera/sticker/ui/h$c;->a(I)V

    :cond_c
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->J:Lcom/oppo/camera/sticker/ui/h$b;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oppo/camera/sticker/ui/h$b;->a(I)V

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/sticker/ui/h$a;

    iget-object p1, p1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    :cond_d
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStickerMenuOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StickerMenus.onResume"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->a()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/oppo/camera/sticker/ui/h;->a(IZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->d()V

    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/sticker/ui/h;->a(ZZZZZ)V

    return-void
.end method

.method public a(ZZZZZ)V
    .locals 5

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Lcom/oppo/camera/sticker/ui/i;->b()V

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p2, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    invoke-static {p2, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p2, :cond_5

    iget-boolean v4, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    invoke-virtual {p2, v4}, Lcom/oppo/camera/sticker/ui/f;->a(Z)V

    :cond_5
    iget-boolean p2, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {p2, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->k()Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oppo/camera/sticker/ui/h$6;

    invoke-direct {p2, p0, p4}, Lcom/oppo/camera/sticker/ui/h$6;-><init>(Lcom/oppo/camera/sticker/ui/h;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    if-eqz p5, :cond_8

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean p3, p0, Lcom/oppo/camera/sticker/ui/h;->m:Z

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/oppo/camera/sticker/ui/h;->b(ZZZ)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->e()V

    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/ui/j;->c(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/sticker/ui/e;->f(I)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/a/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->z:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->B:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStickerPanelEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/j;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(ZZZ)V
    .locals 3

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p3, :cond_5

    invoke-virtual {p3, v0}, Lcom/oppo/camera/sticker/ui/f;->setVisibility(I)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    invoke-virtual {p3, v1}, Lcom/oppo/camera/sticker/ui/f;->a(Z)V

    :cond_5
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p3, :cond_6

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    if-eqz v1, :cond_6

    invoke-virtual {p3, v0}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_6
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p3, v2}, Lcom/oppo/camera/ui/RotateImageView;->setTranslationY(F)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p3, v2}, Lcom/oppo/camera/ui/RotateImageView;->setTranslationX(F)V

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p3, v1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setTranslationY(F)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setScaleX(F)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setScaleY(F)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_9

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/oppo/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Lcom/oppo/camera/sticker/ui/i;->b(Z)V

    :cond_a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->m:Z

    return-void
.end method

.method public c()V
    .locals 13

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    const-string v1, "StickerMenus.initEffectMenuPanel"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->l()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v4, "oppo.hide.navigationbar"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v4

    :goto_0
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b00a9

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const v5, 0x7f0800af

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const v6, 0x7f0800b0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const v8, 0x7f0801a8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v7, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v7, 0x0

    aput v7, v5, v3

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->m()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x1

    aput v8, v5, v9

    const-string v8, "translationY"

    invoke-static {v0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->s:Lcom/oppo/camera/ui/control/MainShutterButton;

    new-array v5, v4, [F

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->m()I

    move-result v12

    int-to-float v12, v12

    aput v12, v5, v3

    aput v7, v5, v9

    invoke-static {v0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/i;->e()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v2

    :cond_1
    move-object v10, v2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/sticker/ui/StickerPageView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    new-instance v0, Lcom/oppo/camera/sticker/ui/j;

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    iget v9, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    iget-object v11, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    iget-object v12, p0, Lcom/oppo/camera/sticker/ui/h;->x:Lcom/oppo/camera/sticker/ui/c;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oppo/camera/sticker/ui/j;-><init>(Landroid/app/Activity;ILcom/oppo/camera/sticker/data/StickerItem;Lcom/oppo/camera/sticker/ui/i;Lcom/oppo/camera/sticker/ui/c;)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    iget v2, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/j;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/ui/j;->d()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/sticker/ui/StickerPageView;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->D:Lcom/oppo/camera/sticker/ui/g;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->setStickerCategoryInterface(Lcom/oppo/camera/sticker/ui/g;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    new-instance v2, Lcom/oppo/camera/sticker/ui/h$10;

    invoke-direct {v2, p0}, Lcom/oppo/camera/sticker/ui/h$10;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    new-instance v0, Lcom/oppo/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oppo/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const v5, 0x7f0603a8

    if-nez v2, :cond_2

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0603a7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->p:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    iget-boolean v2, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    new-instance v2, Lcom/oppo/camera/sticker/ui/h$11;

    invoke-direct {v2, p0}, Lcom/oppo/camera/sticker/ui/h$11;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/i;->e()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v2

    :cond_5
    move-object v7, v2

    new-instance v0, Lcom/oppo/camera/sticker/ui/j;

    iget-object v5, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    iget v6, p0, Lcom/oppo/camera/sticker/ui/h;->n:I

    iget-object v8, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    iget-object v9, p0, Lcom/oppo/camera/sticker/ui/h;->x:Lcom/oppo/camera/sticker/ui/c;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/oppo/camera/sticker/ui/j;-><init>(Landroid/app/Activity;ILcom/oppo/camera/sticker/data/StickerItem;Lcom/oppo/camera/sticker/ui/i;Lcom/oppo/camera/sticker/ui/c;)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    iget v2, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/j;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/StickerPageView;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->t:Lcom/oppo/camera/sticker/ui/StickerPageView;

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->v:Lcom/oppo/camera/sticker/ui/j;

    invoke-virtual {v2}, Lcom/oppo/camera/sticker/ui/j;->d()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/sticker/ui/StickerPageView;->a(IZ)V

    :goto_3
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$3;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/sticker/ui/h$3;-><init>(Lcom/oppo/camera/sticker/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const v0, 0x7f0703c4

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const v0, 0x7f0703c3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    const-string v0, "StickerMenu"

    const-string v1, "registerNavigationBarObserver"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/h;->O:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public d(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show, isAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/h;->m:Z

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->E:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lcom/oppo/camera/sticker/ui/i;->a(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/h;->c()V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->i:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    const-wide/16 v3, 0x12c

    const/4 v1, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    iget-boolean p1, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->u:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result p1

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p1, :cond_7

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/ui/f;->a(Z)V

    :cond_7
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/h;->j()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oppo/camera/sticker/ui/h$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/sticker/ui/h$5;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->r:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->w:Lcom/oppo/camera/sticker/ui/i;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/oppo/camera/sticker/ui/i;->a()V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->C:Lcom/oppo/camera/sticker/ui/e;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result p1

    if-le p1, v0, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Lcom/oppo/camera/sticker/ui/f;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h;->F:Lcom/oppo/camera/sticker/ui/f;

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/ui/h;->y:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/ui/f;->a(Z)V

    :cond_c
    iget p1, p0, Lcom/oppo/camera/sticker/ui/h;->H:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/sticker/ui/h;->a(I)V

    :cond_d
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "StickerMenu"

    const-string v1, "unregisterNavigationBarObserver"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h;->O:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/ui/h;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

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

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->o:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/sticker/ui/h$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/ui/h$4;-><init>(Lcom/oppo/camera/sticker/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
