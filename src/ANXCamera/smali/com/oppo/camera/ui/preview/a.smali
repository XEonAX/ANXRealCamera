.class public Lcom/oppo/camera/ui/preview/a;
.super Ljava/lang/Object;
.source "AISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/a$b;,
        Lcom/oppo/camera/ui/preview/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/oppo/camera/i;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/oppo/camera/ui/preview/a$a;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/oppo/camera/ui/preview/a$b;

.field private m:Landroid/view/View$OnLayoutChangeListener;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oppo/camera/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->c:Lcom/oppo/camera/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/oppo/camera/ui/preview/a;->c:Lcom/oppo/camera/i;

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a(II)Lcom/oppo/camera/ui/preview/a$a;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/preview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/preview/a$a;-><init>(Lcom/oppo/camera/ui/preview/a;Lcom/oppo/camera/ui/preview/a$1;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0074

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0069

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0070

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0076

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0063

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0071

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0075

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0078

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0077

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataByAIScene, subCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AISceneUI"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const v0, 0x7f0f0073

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    goto :goto_0

    :pswitch_c
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006e

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_d
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006d

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_e
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006c

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_f
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006b

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_10
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006a

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_11
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0068

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_12
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0067

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_13
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f007a

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_14
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0066

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_15
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0065

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    :pswitch_16
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0064

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a;)Lcom/oppo/camera/ui/preview/a$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()V
    .locals 11

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001c

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xf0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3eb33333    # 0.35f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v8, v9, v10, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/oppo/camera/ui/preview/a$1;

    invoke-direct {v6, p0}, Lcom/oppo/camera/ui/preview/a$1;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ed70a3d    # 0.42f

    const v7, 0x3f147ae1    # 0.58f

    invoke-direct {v5, v6, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/preview/a$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a$2;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/oppo/camera/ui/preview/a$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a$3;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->l()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    return-void
.end method

.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->d(I)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    const/16 v3, 0x5a

    const/16 v4, 0xa

    if-eq p1, v3, :cond_2

    const/16 v3, 0x10e

    const/16 v5, 0xb

    if-eq p1, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iget v2, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x4479c000    # 999.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setZ(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    :cond_3
    return-void
.end method

.method public a(III)V
    .locals 4

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    iput p3, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/preview/a;->d(I)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->h()V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/ui/preview/a;->a(II)Lcom/oppo/camera/ui/preview/a$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->k()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->j()V

    :goto_2
    return-void
.end method

.method public a(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->l()V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->h()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->e(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/ui/preview/a;->a(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->k()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method
