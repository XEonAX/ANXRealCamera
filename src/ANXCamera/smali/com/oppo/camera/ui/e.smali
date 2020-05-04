.class public Lcom/oppo/camera/ui/e;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/c;
.implements Lcom/oppo/camera/ui/preview/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/e$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private C:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private D:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private E:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

.field private G:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private H:Landroid/view/View;

.field private I:Lcom/oppo/camera/ui/CameraScreenHintView;

.field private J:Landroid/widget/PopupWindow;

.field private K:Landroid/widget/PopupWindow;

.field private L:Landroid/widget/PopupWindow;

.field private M:Landroid/widget/PopupWindow;

.field private N:Landroid/widget/RelativeLayout;

.field private O:Landroid/widget/RelativeLayout;

.field private P:Landroid/animation/AnimatorSet;

.field private Q:Landroid/animation/AnimatorSet;

.field private R:B

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/ui/menu/setting/l;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/oppo/camera/ui/preview/a;

.field private V:Lcom/oppo/camera/ui/preview/i;

.field private W:Lcom/oppo/camera/ui/modepanel/c;

.field private X:Lcom/oppo/camera/ui/menu/setting/l;

.field private Y:Lcom/oppo/camera/ui/RotateImageView;

.field private Z:Lcom/oppo/camera/ui/menu/a/g;

.field private aa:Landroid/animation/ObjectAnimator;

.field private ab:Z

.field private ac:Lcom/oppo/camera/ui/modepanel/f;

.field private ad:Lcom/oppo/camera/ui/preview/a/g;

.field private ae:Lcom/oppo/camera/ui/preview/a$b;

.field private af:Lcom/oppo/camera/ui/a;

.field private ag:Landroid/view/View$OnLayoutChangeListener;

.field private ah:Landroid/view/View$OnLayoutChangeListener;

.field private ai:Landroid/os/Handler;

.field private aj:Landroid/view/View$OnClickListener;

.field private ak:Lcom/oppo/camera/ui/menu/a/g$a;

.field private al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

.field private am:Lcom/oppo/camera/ui/menu/setting/l$b;

.field private g:Landroid/app/Activity;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/oppo/camera/ui/control/b;

.field private m:Lcom/oppo/camera/ui/preview/d;

.field private n:Lcom/oppo/camera/i;

.field private o:Lcom/oppo/camera/ui/preview/m;

.field private p:Lcom/oppo/camera/ui/preview/f;

.field private q:Lcom/oppo/camera/ui/menu/setting/i;

.field private r:Lcom/oppo/camera/ui/menu/setting/i;

.field private s:Lcom/oppo/camera/ui/d;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->h:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->i:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->j:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->k:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const/4 v2, 0x1

    iput v2, p0, Lcom/oppo/camera/ui/e;->t:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->u:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->v:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->w:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->x:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->y:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->z:I

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    iput-byte v1, p0, Lcom/oppo/camera/ui/e;->R:B

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->ab:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    new-instance v0, Lcom/oppo/camera/ui/e$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$1;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ad:Lcom/oppo/camera/ui/preview/a/g;

    new-instance v0, Lcom/oppo/camera/ui/e$12;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$12;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    new-instance v0, Lcom/oppo/camera/ui/e$23;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$23;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    new-instance v0, Lcom/oppo/camera/ui/e$34;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$34;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ag:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/oppo/camera/ui/e$36;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$36;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ah:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/oppo/camera/ui/e$37;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$37;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/ui/e$38;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$38;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->aj:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/oppo/camera/ui/e$39;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$39;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ak:Lcom/oppo/camera/ui/menu/a/g$a;

    new-instance v0, Lcom/oppo/camera/ui/e$40;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$40;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    new-instance v0, Lcom/oppo/camera/ui/e$33;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$33;-><init>(Lcom/oppo/camera/ui/e;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->am:Lcom/oppo/camera/ui/menu/setting/l$b;

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iput-object p3, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    new-instance p1, Lcom/oppo/camera/ui/control/b;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-direct {p1, p2, v0, v3}, Lcom/oppo/camera/ui/control/b;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    new-instance p1, Lcom/oppo/camera/ui/preview/d;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p0}, Lcom/oppo/camera/ui/preview/d;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/d$b;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    new-instance p1, Lcom/oppo/camera/ui/menu/setting/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p3, v1}, Lcom/oppo/camera/ui/menu/setting/i;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Z)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    new-instance p1, Lcom/oppo/camera/ui/menu/setting/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, p2, v0, p3, v2}, Lcom/oppo/camera/ui/menu/setting/i;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Z)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    return-void
.end method

.method private Q(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/camera/ui/e;->u:I

    iput v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ae()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->C()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput v3, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    :goto_0
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method private R(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setMoreMode(Z)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/e;->y:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/levelcontrol/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/preview/i;)Lcom/oppo/camera/ui/preview/i;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    return-object p1
.end method

.method private a(ZIZZ)V
    .locals 0

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->ab:Z

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/oppo/camera/ui/e;->a(IZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->f()V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p2, p3, p3}, Lcom/oppo/camera/ui/control/b;->a(ZZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->k:Z

    return p1
.end method

.method private aX()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_2
    return-void
.end method

.method private aY()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_4
    return-void
.end method

.method private aZ()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->Q(Z)V

    return-void
.end method

.method private b(ZI)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->e()V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->ab:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->K(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->e()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/b;->e()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/e;->j:Z

    return p0
.end method

.method private ba()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "updateFaceBeautyEnterButton"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->x()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const v1, 0x7f0702ba

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const v1, 0x7f0702bb

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bb()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/modepanel/c;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/b;->A()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/modepanel/c;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    new-instance v1, Lcom/oppo/camera/ui/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/e$a;-><init>(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/c;->a(Lcom/oppo/camera/ui/modepanel/d$a;)V

    :cond_0
    return-void
.end method

.method private bc()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    const v2, 0x7f05001d

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v4, 0x7f0800b0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v5

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v4, 0x7f080150

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v5

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private bd()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/e;->x:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->v(I)V

    :cond_0
    return-void
.end method

.method private be()Z
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f0f018a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_tap_shutter_key"

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_camera_tap_shutter_key"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private bf()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v3, "addUpModeHintView"

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b002e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setChangeHintColor(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_3
    return-void
.end method

.method private bg()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "exitFromMoreMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "exitFromMoreMode, not in MoreMode"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "exitFromMoreMode, Multiple finger operation in Headline"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->n(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->O(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->P(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->z()V

    :cond_2
    return-void
.end method

.method private bh()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/modepanel/f;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/modepanel/f;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    new-instance v1, Lcom/oppo/camera/ui/e$35;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$35;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->a(Lcom/oppo/camera/ui/modepanel/f$b;)V

    :cond_0
    return-void
.end method

.method private bi()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->a()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    return-void
.end method

.method private bj()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "showSettingMenu"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->v(I)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->R(Z)V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/e;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/e;->x:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/ui/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bd()V

    return-void
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    const-string p1, "CameraUIManager"

    const-string p2, "updateBubbleValue, mPreference null"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f(II)Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const p1, 0x7f08006e

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p2, 0x7f100101

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-object p1
.end method

.method static synthetic f(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method private f(IZ)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyEnterButtonVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_0
    const-wide/16 v0, 0xa0

    if-nez p1, :cond_1

    move-wide v9, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-wide v9, v2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x50

    :goto_1
    move-wide v7, v0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v6, 0x0

    const v0, 0x7f01002c

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    move v5, p1

    invoke-static/range {v4 .. v11}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/a$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/a/g;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    return-void
.end method

.method static synthetic l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    return-object p0
.end method

.method static synthetic m(Lcom/oppo/camera/ui/e;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic n(Lcom/oppo/camera/ui/e;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    return-object p0
.end method

.method static synthetic p(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/i;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/ui/e;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/e;->v:I

    return p0
.end method

.method static synthetic r(Lcom/oppo/camera/ui/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method private u(I)V
    .locals 1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->D(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->m(Z)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/oppo/camera/ui/e;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private v(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    iget v2, p0, Lcom/oppo/camera/ui/e;->y:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/preview/a;->a(III)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private w(I)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/e;->z:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic w(Lcom/oppo/camera/ui/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/e;->ab:Z

    return p0
.end method

.method static synthetic x(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/modepanel/f;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bj()V

    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bg()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->H()V

    :cond_0
    return-void
.end method

.method public A(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->e(Z)V

    :cond_0
    return-void
.end method

.method public B(Z)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/e$7;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$7;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->a()Z

    move-result v0

    return v0
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/i;->b()V

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    return-void
.end method

.method public D()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/i;->c()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    :cond_0
    return-void
.end method

.method public D(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->e(Z)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public E(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenTorch, preflashing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenTorchView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aw()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f05017a

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f050175

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->r(Z)V

    return-void
.end method

.method public F()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->M(Z)V

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ab()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->e()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->g()V

    :cond_2
    return-void
.end method

.method public F(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->h()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/modepanel/f;->d()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->d()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->f()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->d()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    :cond_5
    return-void
.end method

.method public G(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->h(Z)V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->b()V

    :cond_0
    return-void
.end method

.method public H(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_1
    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->i()V

    :cond_0
    return-void
.end method

.method public I(Z)V
    .locals 3

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/oppo/camera/ui/e;->k(ZZ)V

    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->j(ZZ)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->h(I)V

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/ui/e;->b(IZ)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(I)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->a(I)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->K(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    invoke-virtual {p0, v2, v2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->e(I)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->o(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->l(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    :goto_0
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->j()V

    :cond_0
    return-void
.end method

.method public J(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    return v0
.end method

.method public L(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->l()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->a()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/e;->x:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->k:Z

    return-void
.end method

.method public N()Lcom/oppo/camera/ui/control/e;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->m()Lcom/oppo/camera/ui/control/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public N(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->f(Z)V

    return-void
.end method

.method public O()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "backToLastHeadlineIndex"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->g(Z)V

    :cond_0
    return-void
.end method

.method public P()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->u()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public P(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->R(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bj()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v1, :cond_0

    const-string v2, "func_face_beauty_process"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_0
    return-void
.end method

.method public Q()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->v()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public R()Z
    .locals 1

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    return v0
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->f()V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->g()V

    :cond_0
    return-void
.end method

.method public U()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->i()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->i()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public X()I
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v0

    return v0
.end method

.method public Y()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "afterEnterCameraStartPreviewDone"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->x()V

    :cond_0
    return-void
.end method

.method public a()Lcom/oppo/camera/gl/GLRootView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->D()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v0

    return-object v0
.end method

.method public a(BZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/e$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$5;-><init>(Lcom/oppo/camera/ui/e;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IIZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oppo/camera/ui/e$10;

    invoke-direct {v1, p0, p1, p5, p3}, Lcom/oppo/camera/ui/e$10;-><init>(Lcom/oppo/camera/ui/e;IZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_2

    new-instance p3, Lcom/oppo/camera/ui/e$11;

    invoke-direct {p3, p0, p2, p4}, Lcom/oppo/camera/ui/e$11;-><init>(Lcom/oppo/camera/ui/e;IZ)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/ui/control/b;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/control/b;->a(ILjava/lang/String;Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/modepanel/f;->c()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->P(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->z()V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_filter_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_portrait_new_style_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const-string p2, "pref_video_filter_menu"

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V

    :cond_4
    return-void
.end method

.method public a(IZ)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->J(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->K(Z)V

    :goto_0
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGradienterView, orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "professional"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/i;->setOrientation(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/i;->b()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->V:Lcom/oppo/camera/ui/preview/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/i;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, p1, p3, v3}, Lcom/oppo/camera/ui/menu/setting/i;->b(IZZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, p1, p3, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(IZZ)V

    :cond_3
    return-void
.end method

.method public a(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/m;->a(JZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f0195

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ax()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_3

    const-string p2, "func_torch_soft_light"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aw()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "pref_high_resolution_key"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2, v2}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "CameraUIManager"

    const-string v1, "showPostCaptureAlert"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ay()V

    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->l(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    :goto_0
    invoke-virtual {p0, v0, v0, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-static {v1}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/i;->b(F)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->z()V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/e;->a(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-static {v1}, Lcom/oppo/camera/o/d;->d(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v3, v0}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->q()V

    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(ZZ)V

    :cond_7
    invoke-virtual {p0, v0, v2, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->i(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aJ()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/e$4;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$4;-><init>(Lcom/oppo/camera/ui/e;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/util/Size;Z)V

    :cond_0
    const/4 p2, 0x4

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/util/Size;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Landroid/view/View;III)V
    .locals 6

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const-string v0, "CameraUIManager"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showBubble, mCameraRootView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x3

    const/16 v1, 0x55

    const-string v2, ", exception: "

    const-string v3, "showBubble, type: "

    const v4, 0x7f08006c

    if-eq p2, p1, :cond_a

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/4 p1, 0x5

    if-eq p2, p1, :cond_4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    if-nez p1, :cond_2

    const p1, 0x7f0701c8

    const v1, 0x7f0f001e

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/camera/ui/e$21;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$21;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/oppo/camera/ui/e$22;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$22;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const/16 v4, 0x53

    invoke-virtual {p1, v1, v4, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    if-nez p1, :cond_5

    const p1, 0x7f0701ca

    const v5, 0x7f0f0027

    invoke-direct {p0, p1, v5}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v4, Lcom/oppo/camera/ui/e$19;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$19;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/oppo/camera/ui/e$20;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$20;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v1, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    if-nez p1, :cond_8

    const p1, 0x7f0701c9

    const v1, 0x7f0f008e

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/camera/ui/e$17;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$17;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/oppo/camera/ui/e$18;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/e$18;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    const/16 v4, 0x51

    invoke-virtual {p1, v1, v4, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    if-nez p1, :cond_b

    const p1, 0x7f0701cb

    const v5, 0x7f0f008f

    invoke-direct {p0, p1, v5}, Lcom/oppo/camera/ui/e;->f(II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v4, Lcom/oppo/camera/ui/e$15;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$15;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/oppo/camera/ui/e$16;

    invoke-direct {v4, p0}, Lcom/oppo/camera/ui/e$16;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v1, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0801dc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/RotateImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->a(Lcom/oppo/camera/ui/RotateImageView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/a;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/e$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/ui/e$9;-><init>(Lcom/oppo/camera/ui/e;Lcom/oppo/camera/ui/control/c;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/d;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/d;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/f;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 4

    const-string v0, "CameraUIManager"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UIManager.onCreate"

    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->h:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/ui/preview/a/i;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->c()V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->a()V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->a()V

    :cond_3
    new-instance p1, Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-direct {p1, v1, v2, v3}, Lcom/oppo/camera/ui/preview/a;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oppo/camera/i;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ae:Lcom/oppo/camera/ui/preview/a$b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->a(Lcom/oppo/camera/ui/preview/a$b;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ag:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->a(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a;->c(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a;->e()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/e;->z:I

    new-instance p1, Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setCameraEntryType(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->al:Lcom/oppo/camera/ui/menu/levelcontrol/d$a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setFilterEffectMenuListener(Lcom/oppo/camera/ui/menu/levelcontrol/d$a;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f0800e5

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->aj:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/oppo/camera/ui/menu/a/g;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->ak:Lcom/oppo/camera/ui/menu/a/g$a;

    iget v3, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-direct {p1, v1, v2, v3}, Lcom/oppo/camera/ui/menu/a/g;-><init>(Landroid/app/Activity;Lcom/oppo/camera/ui/menu/a/g$a;I)V

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bc()V

    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bb()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bh()V

    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Lcom/oppo/camera/ui/preview/e$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Float;I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/preview/m;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/oppo/camera/ui/preview/m;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(Ljava/lang/Float;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->i(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(I)V

    const-string p1, "pref_portrait_new_style_menu"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "pref_filter_menu"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "pref_video_filter_menu"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 6

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bf()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0501d1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-eq p2, v1, :cond_0

    iget-boolean p2, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/b;->b()V

    :cond_0
    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p3, 0x1

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->k()V

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->w(Z)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/oppo/camera/ui/e;->c(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string p2, "pref_filter_process_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->k(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->j(Z)V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->i(Z)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v0, "func_face_beauty_process"

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/e;->m(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2, p2, p2, p2}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->d(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/ui/menu/setting/l;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addMenuToExpandMenuMap, Map size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraUIManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
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

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(Ljava/util/List;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0801dc

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    if-nez p2, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    new-instance v2, Lcom/oppo/camera/ui/e$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/oppo/camera/ui/e$3;-><init>(Lcom/oppo/camera/ui/e;Landroid/view/View;Z)V

    const-wide/16 v4, 0x12c

    invoke-static {v1, v3, v2, v4, v5}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/e$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/camera/ui/e$2;-><init>(Lcom/oppo/camera/ui/e;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/e$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/ui/e$6;-><init>(Lcom/oppo/camera/ui/e;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/e$13;

    invoke-direct {v0, p0, p3}, Lcom/oppo/camera/ui/e$13;-><init>(Lcom/oppo/camera/ui/e;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/oppo/camera/ui/e$14;

    invoke-direct {p2, p0, p3}, Lcom/oppo/camera/ui/e$14;-><init>(Lcom/oppo/camera/ui/e;Z)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(ZZZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needClose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showEnterButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/16 p3, 0x8

    invoke-virtual {p2, p3, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(IZ)V

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p3, p1}, Lcom/oppo/camera/ui/e;->f(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZZZZZ)V
    .locals 6

    const-string v0, "CameraUIManager"

    const-string v1, "onResumeMessage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v2

    invoke-virtual {v1, p3, v2, p5, p6}, Lcom/oppo/camera/ui/control/b;->a(ZZZZ)V

    :cond_0
    iget-object p5, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/oppo/camera/ui/menu/setting/i;->b()V

    :cond_1
    iget-object p5, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/oppo/camera/ui/menu/setting/i;->b()V

    :cond_2
    iget-boolean p5, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez p5, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    invoke-virtual {p0, p4}, Lcom/oppo/camera/ui/e;->v(Z)V

    :cond_3
    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    const/4 p3, 0x2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/d;->s()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne p2, p3, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ab()V

    :cond_5
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/preview/d;->b()V

    :cond_6
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    :cond_7
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    :cond_8
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    :cond_9
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    :cond_a
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/oppo/camera/ui/CameraScreenHintView;->b()V

    :cond_b
    sget-boolean p2, Lcom/oppo/camera/Camera;->a:Z

    if-nez p2, :cond_c

    const p2, 0x7f0f00f3

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->b(I)V

    :cond_c
    sget-boolean p2, Lcom/oppo/camera/Camera;->b:Z

    if-nez p2, :cond_d

    const p2, 0x7f0f00e1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->b(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->ay()V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->G(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const p4, 0x7f0f018a

    invoke-virtual {p2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, p4, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {p2, p4}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_e

    const-string p2, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->be()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-byte p1, p0, Lcom/oppo/camera/ui/e;->R:B

    if-eq p1, p3, :cond_e

    iput-byte p4, p0, Lcom/oppo/camera/ui/e;->R:B

    :cond_e
    iget-byte p1, p0, Lcom/oppo/camera/ui/e;->R:B

    if-ne p1, p4, :cond_f

    const v1, 0x7f0f0188

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    iput-byte p3, p0, Lcom/oppo/camera/ui/e;->R:B

    :cond_f
    return-void
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a([Landroid/hardware/camera2/params/Face;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/util/Size;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/util/Size;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public aA()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->e()V

    :cond_0
    return-void
.end method

.method public aB()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->j()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aC()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->j(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :cond_1
    return-void
.end method

.method public aD()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->B(Z)V

    :cond_0
    return-void
.end method

.method public aE()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->H()V

    :cond_0
    return-void
.end method

.method public aF()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->I()V

    :cond_0
    return-void
.end method

.method public aG()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/c;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aH()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->k()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/b;->e(Z)V

    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/b;->d(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/b;->i(Z)V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CameraUIManager"

    const-string v3, "showAllCameraView, mEffectLevelMenu is open, hideRollGLSurfaceView"

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    return-void
.end method

.method public aI()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->M(Z)V

    return-void
.end method

.method public aJ()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->b()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aK()V

    :cond_0
    return-void
.end method

.method public aK()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    :cond_0
    return-void
.end method

.method public aL()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->M()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public aM()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->I()V

    return-void
.end method

.method public aN()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    const-string v3, "CameraUIManager"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-nez v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideUpModeHintView, mAISceneUI.isShown: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUpModeHintView.isShow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideUpModeHintView, mUpHintView.isShown: true, mUpModeHintView.isShow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->isShown()Z

    move-result v2

    if-ne v0, v2, :cond_6

    return-void

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->c()Z

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(ZZ)V

    :cond_8
    :goto_5
    return-void
.end method

.method public aO()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->k()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aP()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v2, "func_face_beauty_process"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    :cond_0
    return-void
.end method

.method public aQ()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aR()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "hideMoreView"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    :cond_0
    return-void
.end method

.method public aS()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "onMoreModeShown"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->R(Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->d()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bi()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->p(Z)V

    invoke-virtual {p0, v0, v0, v1}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->i(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->F(Z)V

    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->z()V

    :cond_2
    return-void
.end method

.method public aT()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aU()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aV()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/f;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aW()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aa()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->B()V

    :cond_0
    return-void
.end method

.method public ab()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "hidePostCaptureAlert"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->r()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->k(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->m(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/b;->r()V

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->a(I)V

    return-void
.end method

.method public ac()V
    .locals 3

    const-string v0, "CameraUIManager"

    const-string v1, "hideVideoAlert"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/d;->t()V

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->t()V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_2
    return-void
.end method

.method public ad()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->A()V

    :cond_0
    return-void
.end method

.method public ae()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->l()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public af()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->b()V

    :cond_0
    return-void
.end method

.method public ag()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->i()V

    :cond_0
    return-void
.end method

.method public ah()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->m()V

    :cond_0
    return-void
.end method

.method public ai()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->n()V

    :cond_0
    return-void
.end method

.method public aj()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ak()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public al()V
    .locals 1

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_0
    return-void
.end method

.method public am()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->l()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public an()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->y()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ao()V
    .locals 8

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->l()V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->i()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    const v7, 0x7f0501d2

    const v6, 0x7f0703ad

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f0f0193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    return-void
.end method

.method public ap()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->o()V

    :cond_0
    return-void
.end method

.method public aq()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->p()V

    :cond_0
    return-void
.end method

.method public ar()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->v()V

    :cond_0
    return-void
.end method

.method public as()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->bg()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, v1, v2}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public at()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v2, 0x7f0f0114

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/oppo/camera/ui/e$8;

    invoke-direct {v2, p0, v0}, Lcom/oppo/camera/ui/e$8;-><init>(Lcom/oppo/camera/ui/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    const v1, 0x7f0702c9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IZZ)V

    :cond_2
    return-void
.end method

.method public au()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "beforeCameraShutterButtonClick(), screen torch is filling.."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public av()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->H()V

    :cond_0
    return-void
.end method

.method public aw()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009f

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public ax()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public ay()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "stopScreenTorch"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public az()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->b(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(I)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public b(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/f;->a(JZ)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "CameraUIManager"

    const-string v1, "showVideoAlert"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/preview/d;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->s()V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f06041b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p1, v3, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(ZZ)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_3
    invoke-virtual {p0, v0, v0, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    return-void
.end method

.method public b(Landroid/util/Size;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEffectMenuPreviewSizeChanged, previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->getTextureWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->getTextureHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v3, p0, Lcom/oppo/camera/ui/e;->w:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    move v2, p1

    move p1, v4

    :goto_0
    if-ne v0, p1, :cond_1

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(II)V

    :cond_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToModeType, buttonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insideColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->k:Z

    iput v0, p0, Lcom/oppo/camera/ui/e;->x:I

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->B(Z)V

    :cond_1
    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->d()V

    :cond_3
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 6

    const-string v0, "CameraUIManager"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->j:Z

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/oppo/camera/ui/e;->R:B

    iput v1, p0, Lcom/oppo/camera/ui/e;->y:I

    iput v1, p0, Lcom/oppo/camera/ui/e;->x:I

    iput-boolean v1, p0, Lcom/oppo/camera/ui/e;->k:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->be()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v5, 0x7f0f018a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_tap_shutter_key"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_camera_tap_shutter_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/i;->c()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->L(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/setting/i;->c()V

    :cond_3
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->e()V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/c;Z)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/d;->d()V

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/m;->a()V

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->p(Z)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->a()V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b()V

    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, v1, v0, v1}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v2, :cond_11

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    :cond_11
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_12

    iget v2, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v2, :cond_12

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    :cond_12
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_13
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    if-eq v0, p1, :cond_15

    :cond_14
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_15
    iput-object v3, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aY()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->D()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->g()V

    :cond_16
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/e;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public b(ZZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showEnterButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-nez v0, :cond_0

    const-string p1, "closeFaceBeautyMenu, return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/g;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/a/g;->b(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->b()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oppo/camera/ui/e;->a(ZIZZ)V

    const/4 p3, 0x2

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    new-array p2, p3, [F

    fill-array-data p2, :array_0

    const-string p3, "alpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const p3, 0x7f01002c

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0xa0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/oppo/camera/ui/e$25;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/e$25;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1, v1, p2}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string p2, "pref_subsetting_key"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    return v1

    :cond_4
    return p2
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/oppo/camera/ui/preview/e;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->w()Lcom/oppo/camera/ui/preview/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(F)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result v6

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq p2, v7, :cond_1

    if-ne p1, v7, :cond_2

    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result p2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v6

    sub-int/2addr p2, v6

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int v6, p2, v6

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCoverViewHeight, bottomTargetHeight: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v7, "CameraUIManager"

    invoke-static {v7, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne v0, v6, :cond_4

    return-void

    :cond_4
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    if-ne p1, v4, :cond_6

    invoke-static {}, Lcom/oppo/camera/o/d;->C()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    :cond_6
    move p1, v5

    :goto_2
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne p2, p1, :cond_8

    return-void

    :cond_8
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public c(IZ)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_type_add_beuty3d"

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->L:Landroid/widget/PopupWindow;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_type_custom_beuty3d"

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->M:Landroid/widget/PopupWindow;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_5
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_short_video"

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->K:Landroid/widget/PopupWindow;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    if-eqz p2, :cond_8

    const-string p1, "key_bubble_sticker"

    invoke-direct {p0, p1, v2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oppo/camera/ui/e;->J:Landroid/widget/PopupWindow;

    :cond_8
    :goto_0
    return-void
.end method

.method public c(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/b;->t()V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/oppo/camera/ui/e;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->b()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->S:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/oppo/camera/ui/e;->a(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLastThumbNailView(), animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->k(Z)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public c(ZZZ)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->d(Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/m;->a(Z)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/ui/control/b;->f(ZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->al()V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->g(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->z()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->e(I)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    if-eq p2, v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_1

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    new-array p2, v2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oppo/camera/ui/e$26;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$26;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [I

    const/4 v5, 0x0

    aput p1, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/ui/e$27;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$27;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oppo/camera/ui/e$28;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$28;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    new-array v6, v2, [Landroid/animation/Animator;

    aput-object p1, v6, v5

    aput-object p2, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    new-array p2, v2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oppo/camera/ui/e$29;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$29;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [I

    aput p1, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/ui/e$30;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$30;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oppo/camera/ui/e$31;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$31;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->N:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eq p2, v1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(IZ)V
    .locals 5

    const-string v0, "CameraUIManager"

    const-string v1, "afterOpenCameraUpdateUI"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, p1, v3, v4}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZZ)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-virtual {v0, p1, v3, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZZ)V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/e;->h:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v3, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(I)V

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->j()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/oppo/camera/ui/d;->j()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAllCameraView, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->o(Z)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->x()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/d;->a(II)V

    :cond_0
    return-void
.end method

.method public e(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needControlAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(IZ)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aX()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/camera/ui/e;->t:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_1
    const v9, 0x7f0501d2

    const v8, 0x7f0703ae

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/m;->b(Z)V

    :cond_0
    return-void
.end method

.method public e(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->h()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->h()V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public f(ZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->j(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->z()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(I)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public g(ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->e(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/b;->f()V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->B()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public h(I)V
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "hideAllCameraView"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->b(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/i;->j()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(ZZ)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->c(Z)V

    iget p1, p0, Lcom/oppo/camera/ui/e;->t:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/b;->d(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->i(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    return-void
.end method

.method public h(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CameraScreenHintView;

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->af:Lcom/oppo/camera/ui/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setCameraScreenHintListener(Lcom/oppo/camera/ui/a;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/e;->w(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ah:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_rotate_hint_view"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setSupportRotateScreen(I)V

    :cond_3
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->h(I)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->aZ()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/CameraScreenHintView;->getViewGap()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(IIIZ)V

    :cond_0
    iget-object v5, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v5, :cond_1

    const v10, 0x7f0501d1

    const v9, 0x7f0501df

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/oppo/camera/ui/CameraScreenHintView;->a(Ljava/lang/String;ZZII)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public i(ZZ)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/d;->C()V

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->d(Z)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/b;->j(Z)V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->g(Z)V

    return-void
.end method

.method public j()Lcom/oppo/camera/ui/CameraScreenHintView;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    return-object v0
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/preview/f;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/oppo/camera/ui/preview/f;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->p:Lcom/oppo/camera/ui/preview/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/preview/f;->a(Ljava/lang/Float;I)V

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->W:Lcom/oppo/camera/ui/modepanel/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(IZ)V

    :cond_0
    return-void
.end method

.method public j(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->b(ZZ)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->G()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultExpandPanel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/e;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/l;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(IZ)V

    :cond_0
    return-void
.end method

.method public k(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->c(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/i;->c(ZZ)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->w()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/e;->w:I

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->d(I)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/l;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public l(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/l;

    iget-object v0, v0, Lcom/oppo/camera/ui/menu/setting/l;->r:Lcom/oppo/camera/ui/menu/setting/l$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/l;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->am:Lcom/oppo/camera/ui/menu/setting/l$b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/l;->setExpandMenuListener(Lcom/oppo/camera/ui/menu/setting/l$b;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/setting/l;

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/e;->t:I

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->b(I)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->d(I)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/e;->t:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/d;->b(I)V

    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/a/g;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/ui/e;->f(IZ)V

    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/e;->ba()V

    :cond_2
    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->X:Lcom/oppo/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/l;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_portrait_new_style_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_filter_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->e(I)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFaceBeautyMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->aa:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "openFaceBeautyMenu, mCloseFaceAlphaButtonAnimator.isRunning()"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-nez v0, :cond_1

    const-string p1, "openFaceBeautyMenu, return"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/a/g;->a(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aq()V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v3, 0x7f0f00d0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->w()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/e;->b(ZI)V

    iget-object v3, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v3, v0}, Lcom/oppo/camera/ui/menu/a/g;->a(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/a/g;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v5}, Lcom/oppo/camera/ui/control/b;->A()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v2}, Lcom/oppo/camera/ui/d;->p()I

    move-result v2

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/ui/menu/a/g;->a(ZZ)V

    :cond_4
    const/4 v1, 0x2

    if-eq v1, v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    const v1, 0x7f01002c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/oppo/camera/ui/e$24;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/e$24;-><init>(Lcom/oppo/camera/ui/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public n()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getHintTextView()Lcom/oppo/camera/ui/menu/OppoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 2

    iput p1, p0, Lcom/oppo/camera/ui/e;->u:I

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/b;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->e(I)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->e(I)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/d;->c(I)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->o:Lcom/oppo/camera/ui/preview/m;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->B:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->D:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->G:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->I:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->setOrientation(I)V

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz p1, :cond_d

    iget v0, p0, Lcom/oppo/camera/ui/e;->u:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/modepanel/f;->e(I)V

    :cond_d
    return-void
.end method

.method public o(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFaceBeautyMenu, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->j(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->b(Z)V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->o(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/e;->u(I)V

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/e;->v:I

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/b;->a(I)V

    :cond_2
    return-void
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/e;->C:Lcom/oppo/camera/ui/CameraScreenHintView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CameraScreenHintView;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->k(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->F:Lcom/oppo/camera/ui/menu/levelcontrol/d;

    invoke-virtual {v0, v2, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->a(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/e;->e(IZ)V

    return-void
.end method

.method public q(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->b(I)V

    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/e;->ab:Z

    return-void
.end method

.method public r()Lcom/oppo/camera/ui/preview/a/g;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ad:Lcom/oppo/camera/ui/preview/a/g;

    return-object v0
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->c(I)V

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "removeHighFpsHintView"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/e;->E:Lcom/oppo/camera/ui/CameraScreenHintView;

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_night_process"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/ui/e;->x:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    if-ne v1, p1, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/e;->y:I

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->ai:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->g:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/e$32;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/e$32;-><init>(Lcom/oppo/camera/ui/e;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->D()V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    if-eqz v0, :cond_0

    const-string v0, "CameraUIManager"

    const-string v1, "showMoreView"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->ac:Lcom/oppo/camera/ui/modepanel/f;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/f;->d(I)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 5

    const-string v0, "pref_subsetting_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v2}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aJ()V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/e;->p(Z)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aN()V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->F()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->E()V

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->U:Lcom/oppo/camera/ui/preview/a;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->G()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/e;->v(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/menu/setting/i;->c(I)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->E()V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/d;->y()V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->H()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->d(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    iget-object v2, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/control/b;->d(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/e;->u(I)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_filter_process_key"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->k(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/e;->s:Lcom/oppo/camera/ui/d;

    const-string v1, "func_face_beauty_process"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/e;->m(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :goto_1
    iget p1, p0, Lcom/oppo/camera/ui/e;->v:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/e;->e(IZ)V

    :goto_2
    return-void
.end method

.method public w(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->q:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Z)V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->Z:Lcom/oppo/camera/ui/menu/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->c(Z)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->m:Lcom/oppo/camera/ui/preview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/d;->g(Z)V

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->r:Lcom/oppo/camera/ui/menu/setting/i;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i;->f()Z

    move-result v0

    return v0
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->n:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/e;->l:Lcom/oppo/camera/ui/control/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b;->l(Z)V

    return-void
.end method
