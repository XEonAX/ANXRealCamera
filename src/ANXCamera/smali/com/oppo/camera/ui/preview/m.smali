.class public Lcom/oppo/camera/ui/preview/m;
.super Ljava/lang/Object;
.source "VideoRecordingTimeUI.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Ljava/lang/Float;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f0702e9
        0x7f0702e4
        0x7f0702e8
        0x7f0702e7
        0x7f0702e1
        0x7f0702e0
        0x7f0702e6
        0x7f0702e5
        0x7f0702df
        0x7f0702e3
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    iput p2, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    return-void
.end method

.method private a(FF)Landroid/view/animation/AnimationSet;
    .locals 2

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;FF)Landroid/view/animation/AnimationSet;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    return-object p1
.end method

.method private a(J)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0x36ee80

    div-long v3, p1, v1

    long-to-int v3, v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xea60

    div-long/2addr v1, v4

    long-to-int v1, v1

    rem-long/2addr p1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    long-to-int p1, p1

    if-lez v3, :cond_1

    sget-object p2, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v2, v3, 0xa

    aget p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 v3, v3, 0xa

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->i()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->j()V

    :goto_0
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v2, v1, 0xa

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 v1, v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v1, p1, 0xa

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 p1, p1, 0xa

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "VideoRecordingTimeUI"

    const-string p2, "updateNormalRecordTimeView: parameter is invalid"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    :cond_1
    return-void
.end method

.method private f()[I
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    const/4 v4, 0x2

    div-int/2addr v2, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v3

    const/4 v0, 0x1

    aput v1, v5, v0

    aput v2, v5, v4

    return-object v5
.end method

.method private g()V
    .locals 14

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->f()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v4, 0x7f0800f8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v4

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v3

    if-eqz v2, :cond_3

    array-length v5, v2

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v2, v2, v8

    iget v9, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    const/high16 v10, 0x41dc0000    # 27.5f

    const/16 v11, 0xa

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    if-eq v9, v13, :cond_2

    const/16 v13, 0x9

    if-eq v9, v12, :cond_1

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/2addr v1, v8

    div-int/2addr v6, v8

    add-int/2addr v6, v2

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/2addr v3, v8

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    div-int/2addr v7, v8

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v10}, Lcom/oppo/camera/o/d;->a(F)I

    move-result v1

    div-int/2addr v6, v8

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move v5, v12

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/2addr v3, v8

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    div-int/2addr v7, v8

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v10}, Lcom/oppo/camera/o/d;->a(F)I

    move-result v1

    div-int/2addr v6, v8

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move v5, v13

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    neg-int v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/preview/m$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/m$2;-><init>(Lcom/oppo/camera/ui/preview/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->e()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(J)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "VideoRecordingTimeUI"

    const-string p2, "updateRecordingTime: parameter is invalid"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Float;I)V
    .locals 2

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "showTimeUI"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    iput p2, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->e()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->d()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const p1, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    invoke-virtual {v1, p2}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    const-string p1, "CameraTest Video Shutter Timing Start"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    return-void
.end method

.method public a(Z)V
    .locals 6

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "hideTimeUI"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oppo/camera/ui/preview/m$1;

    invoke-direct {p1, p0}, Lcom/oppo/camera/ui/preview/m$1;-><init>(Lcom/oppo/camera/ui/preview/m;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance p1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    invoke-virtual {p1, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const-string p1, "hideTimeUI, without Animation"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    iget p1, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    const v0, 0x7f0702dc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
