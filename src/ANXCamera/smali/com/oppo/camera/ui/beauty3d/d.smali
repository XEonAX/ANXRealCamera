.class public Lcom/oppo/camera/ui/beauty3d/d;
.super Ljava/lang/Object;
.source "Beauty3DEditUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/ui/OppoNumSeekBar$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/beauty3d/d$a;,
        Lcom/oppo/camera/ui/beauty3d/d$d;,
        Lcom/oppo/camera/ui/beauty3d/d$e;,
        Lcom/oppo/camera/ui/beauty3d/d$f;,
        Lcom/oppo/camera/ui/beauty3d/d$c;,
        Lcom/oppo/camera/ui/beauty3d/d$b;
    }
.end annotation


# instance fields
.field private A:Lcom/oppo/camera/ui/beauty3d/a;

.field private B:Lcom/oppo/camera/ui/beauty3d/a;

.field private C:Lcom/oppo/camera/ui/beauty3d/a;

.field private D:Lcom/oppo/camera/ui/beauty3d/a;

.field private E:Lcom/oppo/camera/ui/beauty3d/a;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Lcom/oppo/camera/ui/beauty3d/i;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/view/GestureDetector;

.field private L:Lcom/oppo/camera/ui/beauty3d/d$e;

.field private M:Lcom/oppo/camera/ui/beauty3d/d$b;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/ui/beauty3d/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private X:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private Y:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private Z:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private a:Landroid/graphics/Point;

.field private aA:Landroid/view/View$OnTouchListener;

.field private aB:Lcom/oppo/camera/ui/beauty3d/d$d;

.field private aa:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private aj:Lcom/oppo/camera/ui/beauty3d/c;

.field private ak:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private al:I

.field private am:I

.field private an:F

.field private ao:Z

.field private ap:I

.field private aq:Z

.field private ar:Z

.field private as:[I

.field private at:[I

.field private au:[I

.field private av:[I

.field private aw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private ax:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private ay:I

.field private az:I

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Point;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/ViewGroup;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroidx/recyclerview/widget/RecyclerView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Lcom/oppo/camera/ui/OppoNumSeekBar;

.field private x:Lcom/oppo/camera/ui/OppoNumSeekBar;

.field private y:Lcom/oppo/camera/ui/beauty3d/a;

.field private z:Lcom/oppo/camera/ui/beauty3d/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/beauty3d/i;Landroid/widget/RelativeLayout;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    new-instance v2, Lcom/oppo/camera/ui/beauty3d/c;

    invoke-direct {v2}, Lcom/oppo/camera/ui/beauty3d/c;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    iput-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    new-array v3, v2, [I

    const/4 v4, 0x2

    aput v4, v3, v1

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->as:[I

    new-array v3, v2, [I

    aput v2, v3, v1

    iput-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->at:[I

    new-array v2, v2, [I

    aput v1, v2, v1

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->au:[I

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$1;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$2;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aB:Lcom/oppo/camera/ui/beauty3d/d$d;

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    iput-object p3, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    new-instance p3, Lcom/oppo/camera/ui/beauty3d/d$a;

    invoke-direct {p3, p0, v0}, Lcom/oppo/camera/ui/beauty3d/d$a;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Lcom/oppo/camera/ui/beauty3d/d$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Point;

    const/16 p2, 0x190

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    const/16 p3, 0x3e8

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x2bc

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/c/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$3;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0044

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private B()V
    .locals 5

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$e;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/beauty3d/d$e;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/d$e;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->L:Lcom/oppo/camera/ui/beauty3d/d$e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$c;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0701b9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/camera/ui/beauty3d/d$c;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$b;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->N:Ljava/util/List;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aB:Lcom/oppo/camera/ui/beauty3d/d$d;

    invoke-direct {v0, p0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d$b;-><init>(Lcom/oppo/camera/ui/beauty3d/d;Ljava/util/List;Lcom/oppo/camera/ui/beauty3d/d$d;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$f;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/beauty3d/d$f;-><init>(Lcom/oppo/camera/ui/beauty3d/d;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->K()V

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    return-void
.end method

.method private D()V
    .locals 5

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->C()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private E()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    move v1, v2

    :cond_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget v4, v0, v1

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    add-int/lit8 v1, v1, 0x1

    aget v5, v5, v1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "beauty3d_style_mode"

    goto :goto_2

    :cond_6
    const-string v4, "beauty3d_style_lolita"

    goto :goto_2

    :cond_7
    const-string v4, "beauty3d_style_goose"

    goto :goto_2

    :cond_8
    const-string v4, "beauty3d_style_natural"

    :goto_2
    if-eqz v4, :cond_9

    const-string v1, "beauty3d_chose_style"

    invoke-static {v1, v4}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_high_nose_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_small_nose_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_eye_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_fix_face_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_small_face_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_cheekbone_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const/4 v3, 0x7

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "beauty3d_chin_value"

    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method private G()V
    .locals 5

    const-string v0, "Beauty3DEditUI"

    const-string v1, "showSeekBar"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->F()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->g()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v2, 0x1

    const v3, 0x7f080202

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    const/4 v4, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/oppo/camera/ui/beauty3d/d;->c(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/beauty3d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->c:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 4

    const-string v0, "Beauty3DEditUI"

    const-string v1, "hideAllSeekBar"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v2, 0x7f1001d4

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->d(I)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$6;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const v2, 0x7f0f0035

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$5;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const v2, 0x7f0f0020

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private J()V
    .locals 4

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->v()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->h()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->L()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->Z()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/d$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/beauty3d/d$7;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v1, v0, v3

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v4, v1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v5, v4

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v6, v5

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v6, 0x5

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v7, v6

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v7, 0x6

    if-eqz v0, :cond_5

    iget-object v8, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v8, v7

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    const/4 v8, 0x7

    if-eqz v0, :cond_6

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    aput v0, v9, v8

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFiveSenseParams, updateFiveSenseParams: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v2, v9, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v3, v9, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const-string v2, "com.oppo.beauty3d.custom.style"

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    :cond_7
    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;F)F
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;)Lcom/oppo/camera/ui/beauty3d/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    return-object p0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    add-int/2addr p3, v1

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    iget p3, p2, Landroid/graphics/Point;->x:I

    rsub-int p3, p3, 0x438

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    add-int/2addr p3, v1

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "Beauty3DEditUI"

    const-string p2, "updateFiveSenseViewLayout, view or point null"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/beauty3d/d;)[I
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->au:[I

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/d;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->K:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private c(II)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/beauty3d/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/beauty3d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->H()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070172

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070173

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d([I)V
    .locals 3

    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    aget v1, p1, v1

    iput v1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    if-eqz v0, :cond_7

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/a;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    aget p1, p1, v1

    iput p1, v0, Lcom/oppo/camera/ui/beauty3d/a;->a:I

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/beauty3d/d;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070175

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070176

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/ui/beauty3d/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/beauty3d/d;)F
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->an:F

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/beauty3d/d;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/beauty3d/d;)[I
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/beauty3d/d;->at:[I

    return-object p0
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->j:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->w()V

    :cond_2
    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ai:Z

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v3, 0x7f0f002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080173

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080202

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080201

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f080203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->B()V

    return-void
.end method

.method private x()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->R()I

    move-result v4

    sub-int/2addr v4, v2

    if-lez v4, :cond_1

    move v1, v4

    :cond_1
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshBottomLayout, bottomMargin: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    const-string v0, "Beauty3DEditUI"

    const-string v1, "initPreview"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->A()V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ay:I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iput-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->O:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, p1, :cond_1

    aget p1, v0, p1

    return p1

    :cond_1
    return v1
.end method

.method public a(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSeekBarProgress: progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget v0, v0, Lcom/oppo/camera/ui/beauty3d/a;->d:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/a;->b(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(I[I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->az:I

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, v0, 0x7

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 3

    iput p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    new-instance v1, Lcom/oppo/camera/ui/beauty3d/b;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-direct {v1, v2, p1, p2}, Lcom/oppo/camera/ui/beauty3d/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/OppoNumSeekBar;IZ)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged, progress: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Beauty3DEditUI"

    invoke-static {v0, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->N()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_0
    const v9, 0x7f0501d1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->bringToFront()V

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->D()V

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->e()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->b()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->r()V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/d$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/beauty3d/d$4;-><init>(Lcom/oppo/camera/ui/beauty3d/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a([I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v2, v1, 0x7

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ax:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    const-string v1, "Beauty3DEditUI"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update CheekBone"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Face"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Chin"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setFiveSenseTitles, update Nose"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    aget-object v3, p1, v2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "setFiveSenseTitles, update Eye"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aw:Landroid/util/SparseArray;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/beauty3d/d;->d([I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->f()V

    :cond_2
    return-void
.end method

.method public b(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->k()V

    iput p2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->J()V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/OppoNumSeekBar;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProgressOnActionUp, progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDownProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ap:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    new-instance v2, Lcom/oppo/camera/ui/beauty3d/b;

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result v4

    invoke-direct {v2, v3, v4, p2}, Lcom/oppo/camera/ui/beauty3d/b;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->e()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->Q:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b([I)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ar:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    aget v1, p1, v0

    rsub-int v1, v1, 0x5a0

    const/4 v2, 0x1

    aget v3, p1, v2

    rsub-int v3, v3, 0x438

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-eq v4, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    iput v1, v4, Landroid/graphics/Point;->y:I

    iput v3, v4, Landroid/graphics/Point;->x:I

    move v1, v2

    :goto_1
    const/4 v3, 0x2

    aget v4, p1, v3

    rsub-int v4, v4, 0x5a0

    const/4 v5, 0x3

    aget v6, p1, v5

    rsub-int v6, v6, 0x438

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ne v7, v4, :cond_5

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-eq v7, v6, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->y:I

    iput v6, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_6
    const/4 v4, 0x4

    aget v6, p1, v4

    rsub-int v6, v6, 0x5a0

    const/4 v7, 0x5

    aget v8, p1, v7

    rsub-int v8, v8, 0x438

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-ne v9, v6, :cond_7

    iget-object v9, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-eq v9, v8, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    iput v6, v1, Landroid/graphics/Point;->y:I

    iput v8, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_8
    const/4 v6, 0x6

    aget v8, p1, v6

    rsub-int v8, v8, 0x5a0

    const/4 v9, 0x7

    aget v10, p1, v9

    rsub-int v10, v10, 0x438

    iget-object v11, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-ne v11, v8, :cond_9

    iget-object v11, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    if-eq v11, v10, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    iput v8, v1, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_a
    const/16 v8, 0x8

    aget v10, p1, v8

    rsub-int v10, v10, 0x5a0

    const/16 v11, 0x9

    aget v12, p1, v11

    rsub-int v12, v12, 0x438

    iget-object v13, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-ne v13, v10, :cond_b

    iget-object v13, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-eq v13, v12, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    iput v10, v1, Landroid/graphics/Point;->y:I

    iput v12, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    :cond_c
    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFiveSenseViewParams, result: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p1, v0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, p1, v2

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->b(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->a:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->b:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->d:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->c:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->e:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/ui/beauty3d/d;->a(Landroid/view/View;Landroid/graphics/Point;Z)V

    :cond_d
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->y()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->x()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public c([I)V
    .locals 4

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget p1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upParams, location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTouchLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbRedo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbChangeStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Beauty3DEditUI"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    if-eq v2, p1, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update, location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    :cond_4
    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->t()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v2, 0x7f0f002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, v1, Lcom/oppo/camera/ui/beauty3d/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateStyleViewPosition, mChoseStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beauty3DEditUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-static {v0}, Lcom/oppo/camera/ui/beauty3d/d$b;->a(Lcom/oppo/camera/ui/beauty3d/d$b;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->M:Lcom/oppo/camera/ui/beauty3d/d$b;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/d$b;->e()V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->c()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->f()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->aA:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 9

    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->d()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->s()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->z()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    const v1, 0x7f080201

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v5, 0x7f0701b4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->y:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    const v4, 0x7f0800c4

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f07016f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->z:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    const/16 v5, -0x32

    const/16 v6, 0x32

    iget-object v7, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v8, 0x7f070167

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->A:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f070165

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->B:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f070166

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->E:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_5

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v5, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v6, 0x7f0701b5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v1}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->D:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    if-nez v0, :cond_6

    new-instance v0, Lcom/oppo/camera/ui/beauty3d/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    const v5, 0x7f070171

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/oppo/camera/ui/beauty3d/a;-><init>(IILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->C:Lcom/oppo/camera/ui/beauty3d/a;

    :cond_6
    return-void
.end method

.method public k()V
    .locals 4

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->x()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->u()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->K()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->H()V

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iput v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return-void
.end method

.method public l()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->D()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aq:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->f:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->g:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->I:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->P:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->k:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->l:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->m:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->o:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->p:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->q:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->r:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->s:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->t:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->u:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->v:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->J:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->w:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->x:Lcom/oppo/camera/ui/OppoNumSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->F:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->G:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->R:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->S:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->T:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->U:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->V:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->W:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->X:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Y:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->Z:Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aa:Lcom/oppo/camera/ui/menu/OppoTextView;

    return-void
.end method

.method public m()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/beauty3d/c;->b(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->a()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/beauty3d/c;->b(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Beauty3DEditAction, mValueOwner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mValueLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mSbValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Beauty3DEditUI"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    iput v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    iget v3, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {p0, v4, v3}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    :goto_1
    return-void
.end method

.method public n()V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ao:Z

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->b()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->b()Lcom/oppo/camera/ui/beauty3d/b;

    move-result-object v3

    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->a:I

    iput v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->h:I

    iget v4, v3, Lcom/oppo/camera/ui/beauty3d/b;->b:I

    iget v5, v3, Lcom/oppo/camera/ui/beauty3d/b;->c:I

    invoke-virtual {p0, v4, v5}, Lcom/oppo/camera/ui/beauty3d/d;->a(II)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->M()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->G()V

    iget-object v4, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/beauty3d/c;->a(Lcom/oppo/camera/ui/beauty3d/b;)Lcom/oppo/camera/ui/beauty3d/b;

    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->c()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->d(Z)V

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->aj:Lcom/oppo/camera/ui/beauty3d/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/beauty3d/c;->d()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/beauty3d/d;->e(Z)V

    :goto_1
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800b4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->n()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/beauty3d/d;->m()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->as:[I

    const-string v1, "com.oppo.beauty3d.custom.mode"

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->E()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->I()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const-string v1, "com.oppo.beauty3d.mode"

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/beauty3d/i;->a(Ljava/lang/String;[I)V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/beauty3d/d;->J()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/beauty3d/d;->H:Lcom/oppo/camera/ui/beauty3d/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/beauty3d/i;->a()V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800de
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080172
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()[I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    return-object v0
.end method

.method public q()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBeauty3DEditCurrParams, mChoseStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->am:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDegree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Beauty3DEditUI"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/beauty3d/d;->av:[I

    const-string v3, "com.oppo.beauty3d.custom.style"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array v1, v2, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/camera/ui/beauty3d/d;->al:I

    aput v3, v1, v2

    const-string v2, "com.oppo.beauty3d.analyses.rotatedegree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/beauty3d/d;->ak:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method
