.class public Lcom/oppo/camera/ui/modepanel/f;
.super Ljava/lang/Object;
.source "MoreUIControl.java"

# interfaces
.implements Lcom/oppo/camera/ui/modepanel/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/modepanel/f$c;,
        Lcom/oppo/camera/ui/modepanel/f$a;,
        Lcom/oppo/camera/ui/modepanel/f$e;,
        Lcom/oppo/camera/ui/modepanel/f$d;,
        Lcom/oppo/camera/ui/modepanel/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:I

.field private d:Lcom/oppo/camera/ui/modepanel/b;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

.field private h:Lcom/oppo/camera/ui/modepanel/e;

.field private i:Lcom/oppo/camera/ui/modepanel/f$b;

.field private j:Landroid/view/GestureDetector;

.field private k:Landroid/view/GestureDetector;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/a/a/f;

.field private s:Lcom/a/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->i:Lcom/oppo/camera/ui/modepanel/f$b;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->j:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->k:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/modepanel/f;->l:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/modepanel/f;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/oppo/camera/ui/modepanel/f;->c:I

    new-instance p1, Lcom/oppo/camera/ui/modepanel/b;

    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oppo/camera/ui/modepanel/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06029a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->m:I

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060299

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->n:I

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06029e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->o:I

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->p:I

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060085

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/modepanel/f;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->j:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/modepanel/f;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->j:Landroid/view/GestureDetector;

    return-object p1
.end method

.method private a(F)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;->setTranslationX(F)V

    iget v0, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/modepanel/f;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/modepanel/f;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/modepanel/f;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/modepanel/f;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->k:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/ui/modepanel/f;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->k:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/modepanel/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->g()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/modepanel/f;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    return p0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/modepanel/f;)Lcom/a/a/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->f:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MoreUIControl"

    const-string v1, "initMoreModeView"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->f:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Lcom/oppo/camera/ui/modepanel/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/oppo/camera/ui/modepanel/f;->c:I

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/ui/modepanel/e;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/modepanel/b;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/e;->a(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/modepanel/e;->a(Lcom/oppo/camera/ui/modepanel/e$a;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iget v0, p0, Lcom/oppo/camera/ui/modepanel/f;->c:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/e;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const v0, 0x7f08013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v0, Lcom/oppo/camera/ui/modepanel/f$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->a:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v3}, Lcom/oppo/camera/ui/modepanel/f$a;-><init>(Lcom/oppo/camera/ui/modepanel/f;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v0, Lcom/oppo/camera/ui/modepanel/f$c;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/ui/modepanel/f$c;-><init>(Lcom/oppo/camera/ui/modepanel/f;Lcom/oppo/camera/ui/modepanel/f$1;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    new-instance v0, Lcom/oppo/camera/ui/modepanel/f$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/modepanel/f$1;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    new-instance v0, Lcom/oppo/camera/ui/modepanel/f$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/modepanel/f$2;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->i()V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/f;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/modepanel/f;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/ui/modepanel/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->e()V

    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/f$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->i:Lcom/oppo/camera/ui/modepanel/f$b;

    return-object p0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/ui/modepanel/f;->q:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v1

    new-instance v2, Lcom/oppo/camera/ui/modepanel/f$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/modepanel/f$3;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    invoke-virtual {v1, v2}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/modepanel/f$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/modepanel/f$4;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/ui/modepanel/f;)Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/modepanel/f;->g:Lcom/oppo/camera/ui/modepanel/NonFlingRecycleView;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/ui/modepanel/f;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/modepanel/f;->m:I

    return p0
.end method

.method static synthetic l(Lcom/oppo/camera/ui/modepanel/f;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/modepanel/f;->n:I

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/ui/modepanel/f;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/modepanel/f;->o:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, more itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreUIControl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->i:Lcom/oppo/camera/ui/modepanel/f$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/modepanel/f$b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/modepanel/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->i:Lcom/oppo/camera/ui/modepanel/f$b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/modepanel/f;->l:Z

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/b;->a(I)V

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->b:Landroid/view/ViewGroup;

    const-string v1, "MoreUIControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "isMoreModeShow, mRootParent is null so return."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    if-nez v3, :cond_1

    const-string v0, "isMoreModeShow, mMoreView is null so return."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public b(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    const-string v1, "MoreUIControl"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hideMoreView, MoreMode is executing the enter animation"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->h()Lcom/a/a/f;

    :cond_1
    const-string v0, "hideMoreView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->h()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->e()V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/b;->a()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/b;->b(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    iput-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->r:Lcom/a/a/f;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/f;->a()V

    iput-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/modepanel/f;->f(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    const-string v1, "MoreUIControl"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showMoreView, MoreMode is executing the end animation"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->s:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->h()Lcom/a/a/f;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "showMoreView, MoreMode has been shown"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iget v1, p0, Lcom/oppo/camera/ui/modepanel/f;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/e;->e(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/f;->f()V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/modepanel/f;->l:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/oppo/camera/ui/modepanel/f;->l:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/f;->d:Lcom/oppo/camera/ui/modepanel/b;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/modepanel/b;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/e;->a(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/modepanel/e;->e()V

    return-void
.end method

.method public e(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/modepanel/f;->c:I

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/f;->h:Lcom/oppo/camera/ui/modepanel/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/e;->a(I)V

    :cond_0
    return-void
.end method
