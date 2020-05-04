.class public Lcom/oppo/camera/ui/beauty3d/f;
.super Ljava/lang/Object;
.source "Beauty3DGuideScanUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:Landroid/animation/ObjectAnimator;

.field private B:Landroid/animation/ObjectAnimator;

.field private C:Landroid/animation/ObjectAnimator;

.field private D:Landroid/animation/ObjectAnimator;

.field private E:Landroid/animation/ObjectAnimator;

.field private F:Landroid/animation/ObjectAnimator;

.field private G:Landroid/animation/ObjectAnimator;

.field private H:Landroid/animation/AnimatorSet;

.field private I:Z

.field private J:Landroid/animation/TimeInterpolator;

.field private K:Landroid/animation/TimeInterpolator;

.field private L:Landroid/animation/TimeInterpolator;

.field private M:[I

.field private N:[I

.field private O:Landroid/os/Handler;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/oppo/camera/ui/beauty3d/h;

.field private t:Lcom/oppo/camera/ui/beauty3d/h;

.field private u:Lcom/oppo/camera/ui/beauty3d/e;

.field private v:Landroid/graphics/Point;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/Button;

.field private y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->i:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->l:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->v:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->I:Z

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3f147ae1    # 0.58f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->J:Landroid/animation/TimeInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->K:Landroid/animation/TimeInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v5, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->L:Landroid/animation/TimeInterpolator;

    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->M:[I

    const/16 v1, 0x18

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->N:[I

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/f$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/f$1;-><init>(Lcom/oppo/camera/ui/beauty3d/f;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    return-void

    :array_0
    .array-data 4
        0x7f070179
        0x7f07017a
        0x7f07017b
        0x7f07017c
        0x7f07017d
        0x7f07017e
        0x7f07017f
        0x7f070180
        0x7f070181
        0x7f070182
        0x7f070183
        0x7f070184
        0x7f070185
        0x7f070186
        0x7f070187
        0x7f070188
        0x7f070189
        0x7f07018a
        0x7f07018b
        0x7f07018c
        0x7f07018d
        0x7f07018e
        0x7f07018f
        0x7f070190
        0x7f070191
        0x7f070192
        0x7f070193
        0x7f070194
        0x7f070195
        0x7f070196
    .end array-data

    :array_1
    .array-data 4
        0x7f070199
        0x7f07019a
        0x7f07019b
        0x7f07019c
        0x7f07019d
        0x7f07019e
        0x7f07019f
        0x7f0701a0
        0x7f0701a1
        0x7f0701a2
        0x7f0701a3
        0x7f0701a4
        0x7f0701a5
        0x7f0701a6
        0x7f0701a7
        0x7f0701a8
        0x7f0701a9
        0x7f0701aa
        0x7f0701ab
        0x7f0701ac
        0x7f0701ad
        0x7f0701ae
        0x7f0701af
        0x7f0701b0
    .end array-data
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/f;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private a(IZLandroid/widget/TextView;ZII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    const v2, 0x7f0800fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    move-object v1, p0

    move-object v3, p3

    move-object v4, v0

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout$LayoutParams;II)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p2, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, v2, p3}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_3
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput p6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    :goto_0
    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->p()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xc

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput p4, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput p5, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/beauty3d/f;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/f;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    return-object p0
.end method

.method private c(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBeauty3DControlPanelBgColor, color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DGuideScanUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0xc8

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05001d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->I:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/beauty3d/f;)Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    return-object p0
.end method

.method private d(I)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/oppo/camera/ui/beauty3d/h;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->N:[I

    const/16 v4, 0x29

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/oppo/camera/ui/beauty3d/h;-><init>(Landroid/widget/ImageView;[IIZ)V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const-string p1, "Beauty3DGuideScanUI"

    const-string v0, "startScanLoadAnim, mScanLoadAnimation start"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->d()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    const v2, 0x7f080180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f070178

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->L:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "startScanLoadAnim, scaleAnim start"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method static synthetic e(Lcom/oppo/camera/ui/beauty3d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->m()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/beauty3d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->r()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/beauty3d/f;)Lcom/oppo/camera/ui/beauty3d/e;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/beauty3d/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->I:Z

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/beauty3d/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0024

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/ui/beauty3d/f;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0025

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f080182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f080183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->J:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->d()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0027

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->i:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->i:Z

    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0026

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->k:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->k:Z

    :cond_0
    return-void
.end method

.method private p()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v0

    :cond_0
    return v0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/h;->a()V

    :cond_1
    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->t:Lcom/oppo/camera/ui/beauty3d/h;

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "Beauty3DGuideScanUI"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string p1, "onViewDismiss, mRootView.removeGuideView."

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/e;->a()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string p1, "onViewDismiss, mRootPreviewView.removeScanView."

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->i:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->k:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->q()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->k()V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/beauty3d/f;->a(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/f;->b(IZ)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->l()V

    return-void
.end method

.method public a(IZII)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->i()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGuideView, mbGuideAdd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DGuideScanUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/ui/beauty3d/f;->a(IZLandroid/widget/TextView;ZII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->g:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Beauty3DGuideScanUI"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "playFadeOutArrowAnim, animator is Running"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "playFadeOutArrowAnim"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p2, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/f$3;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/ui/beauty3d/f$3;-><init>(Lcom/oppo/camera/ui/beauty3d/f;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->J:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string v0, "Beauty3DGuideScanUI"

    const-string v1, "playStartArrowAnim"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080183

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_2

    new-array v1, v4, [F

    aput v3, v1, v6

    int-to-float v0, v0

    aput v0, v1, v5

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-array v0, v4, [F

    aput v3, v0, v6

    const/16 v1, -0x64

    int-to-float v1, v1

    aput v1, v0, v5

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v1, v6

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->K:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a(Lcom/oppo/camera/ui/beauty3d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, -0x1e

    const/4 v8, 0x6

    const-string v9, "translationX"

    const/4 v10, 0x0

    const/16 v11, 0x1e

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    new-array v8, v8, [F

    aput v10, v8, v1

    int-to-float v1, v11

    aput v1, v8, v2

    int-to-float v2, v7

    aput v2, v8, v6

    aput v1, v8, v5

    aput v2, v8, v4

    aput v10, v8, v3

    invoke-static {v0, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    new-array v8, v8, [F

    aput v10, v8, v1

    int-to-float v1, v7

    aput v1, v8, v2

    int-to-float v2, v11

    aput v2, v8, v6

    aput v1, v8, v5

    aput v2, v8, v4

    aput v10, v8, v3

    invoke-static {v0, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->n()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/beauty3d/f;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stop3DScan, mbExiting: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Beauty3DGuideScanUI"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->l:Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->J:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/f$2;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/ui/beauty3d/f$2;-><init>(Lcom/oppo/camera/ui/beauty3d/f;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->m()V

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->r()V

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/f;->c()V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/beauty3d/e;->a(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->d:Z

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->O:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->o()V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    const v0, 0x7f08017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    const v0, 0x7f0801b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/widget/TextView;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    const p2, 0x7f050027

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->c(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->w:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->x:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(IZII)V
    .locals 8

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->j()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->k()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showBeauty3DScanView, mbScanAdd: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Beauty3DGuideScanUI"

    invoke-static {v0, p4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    const/4 v1, 0x1

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v2, 0x7f08017e

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    if-nez p4, :cond_1

    new-instance p4, Lcom/oppo/camera/ui/beauty3d/h;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->M:[I

    const/16 v4, 0x21

    invoke-direct {p4, v2, v3, v4, v1}, Lcom/oppo/camera/ui/beauty3d/h;-><init>(Landroid/widget/ImageView;[IIZ)V

    iput-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->s:Lcom/oppo/camera/ui/beauty3d/h;

    :cond_1
    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v2, 0x7f08008b

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    iput-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v2, 0x7f080180

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v3, 0x7f080181

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v4, 0x7f08017f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    if-nez p2, :cond_2

    const/16 p3, 0x8

    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const v4, 0x7f0600b1

    const/16 v5, 0xa

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    const v7, 0x7f08005a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput p3, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    iget-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/camera/ui/beauty3d/f;->v:Landroid/graphics/Point;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/oppo/camera/ui/beauty3d/f;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    invoke-virtual {p4, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/f;->b(IZ)V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/beauty3d/f;->a(Z)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()V
    .locals 3

    const-string v0, "Beauty3DGuideScanUI"

    const-string v1, "onScanViewHide"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/f;->f()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/f;->g()V

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->y:Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/beauty3d/OppoCircleProgressView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->G:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const-string v1, "onScanViewHide, reset scanCircle"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    const v1, 0x7f080180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f070197

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 3

    const-string v0, "translationX"

    const-string v1, "Beauty3DGuideScanUI"

    const v2, 0x7f0f0059

    if-eq p1, v2, :cond_5

    const v2, 0x7f0f0023

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x7f0f005a

    if-eq p1, v2, :cond_4

    const v2, 0x7f0f0024

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0f005b

    if-ne p1, v0, :cond_2

    const-string p1, "updateArrow, turn up"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    const-string v0, "translationY"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_0
    const-string p1, "updateArrow, turn right"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->D:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "updateArrow, turn left"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->E:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->F:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public c(IZII)Z
    .locals 8

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/ui/beauty3d/f;->a(IZLandroid/widget/TextView;ZII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->e:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->m:Landroid/view/View;

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->n:Landroid/view/View;

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->b:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->c:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(ZZ)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    const-string v0, "Beauty3DGuideScanUI"

    const-string v1, "scanComplete"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "scanComplete,isRunning return"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    new-array v4, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->L:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/f;->z:Landroid/widget/ImageView;

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    const-string v6, "alpha"

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/f$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/f$4;-><init>(Lcom/oppo/camera/ui/beauty3d/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/f;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/f;->l()V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    if-eqz p1, :cond_0

    new-array v2, v1, [I

    aput v1, v2, v0

    const-string v0, "com.oppo.beauty3d.scan.state"

    invoke-interface {p1, v0, v2}, Lcom/oppo/camera/ui/beauty3d/e;->a(Ljava/lang/String;[I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    const-string p1, "Beauty3DGuideScanUI"

    const-string v0, "onClick, startScan, disMiss Guide."

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/f;->u:Lcom/oppo/camera/ui/beauty3d/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/e;->b()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/f;->a(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1, v1}, Lcom/oppo/camera/ui/beauty3d/f;->a(ZZ)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08017d -> :sswitch_3
        0x7f0801ab -> :sswitch_2
        0x7f0801b8 -> :sswitch_1
        0x7f0801b9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
