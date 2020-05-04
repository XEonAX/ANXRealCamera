.class public Lcom/oppo/camera/ui/control/b;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;
.implements Lcom/oppo/camera/ui/menu/b/c$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/b$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oppo/camera/ui/RotateImageView;

.field private B:Lcom/oppo/camera/ui/control/ShutterButton;

.field private C:Lcom/oppo/camera/ui/control/MainShutterButton;

.field private D:Lcom/oppo/camera/ui/control/ShutterButton;

.field private E:Lcom/oppo/camera/ui/control/ShutterButton;

.field private F:Lcom/oppo/camera/ui/control/ShutterButton;

.field private G:Lcom/oppo/camera/ui/control/ThumbImageView;

.field private H:Lcom/oppo/camera/ui/control/e;

.field private I:Lcom/oppo/camera/ui/control/f;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Lcom/oppo/camera/ui/control/d;

.field private M:Lcom/oppo/camera/ui/menu/b/c;

.field private N:Lcom/oppo/camera/ui/menu/b/d;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:Landroid/content/ContentResolver;

.field private R:Lcom/oppo/camera/ui/control/e;

.field private S:Lcom/a/a/f;

.field private T:Lcom/a/a/f;

.field private U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

.field private a:Z

.field private b:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:J

.field private q:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/oppo/camera/ui/control/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/app/Activity;

.field private t:Lcom/oppo/camera/ui/control/a;

.field private u:Lcom/oppo/camera/ui/d;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcom/oppo/camera/ui/RotateImageView;

.field private z:Lcom/oppo/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    iput p2, p0, Lcom/oppo/camera/ui/control/b;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/b;->p:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    new-instance v1, Lcom/oppo/camera/ui/menu/b/d;

    invoke-direct {v1}, Lcom/oppo/camera/ui/menu/b/d;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    iput p2, p0, Lcom/oppo/camera/ui/control/b;->P:I

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    new-instance p2, Lcom/oppo/camera/ui/control/b$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/control/b$1;-><init>(Lcom/oppo/camera/ui/control/b;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/b;->U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    new-instance p2, Lcom/oppo/camera/ui/control/b$2;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/control/b$2;-><init>(Lcom/oppo/camera/ui/control/b;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/b;->V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    iput-object p3, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    return-void
.end method

.method private K()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private L()V
    .locals 5

    const-string v0, "CameraControlUI"

    const-string v1, "initHeadline"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {}, Lcom/oppo/camera/o/d;->K()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v2, Lcom/oppo/camera/ui/menu/b/c;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/oppo/camera/ui/menu/b/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/menu/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v3

    invoke-static {}, Lcom/oppo/camera/o/d;->K()I

    move-result v4

    invoke-virtual {v2, v3, v4, p0}, Lcom/oppo/camera/ui/menu/b/c;->a(IILcom/oppo/camera/ui/menu/b/c$e;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    iget v3, p0, Lcom/oppo/camera/ui/control/b;->n:I

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/menu/b/d;->a(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/b/d;->a()V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/b/c;->getHeadlineBackground()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    :cond_0
    const-string v1, "initHeadline X"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private M()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009e

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {}, Lcom/oppo/camera/o/d;->G()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->x:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    :cond_1
    return-void
.end method

.method private O()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPauseResumeClicked, mbVideoRecordingPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-nez v0, :cond_0

    const-string v0, "onVideoPauseResumeClicked, mCameraControlButtonListener is null."

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/ui/control/b;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const-string v0, "onVideoPauseResumeClicked, onVideoPauseResumeClicked time less than 1000ms"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    const-string v1, "button_shape_dial_rotate"

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->g()V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    iput-wide v2, p0, Lcom/oppo/camera/ui/control/b;->p:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getRingShape()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->f()V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    iput-wide v2, p0, Lcom/oppo/camera/ui/control/b;->p:J

    :cond_5
    :goto_0
    return-void
.end method

.method private P()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private Q()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    return-void
.end method

.method private R()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/b;)Lcom/oppo/camera/ui/control/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/b;)I
    .locals 0

    iget p0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/control/b;)Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/control/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/control/b;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/control/b;->Q:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private o(Z)V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    const v1, 0x7f0703db

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v5, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oppo/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://media/external/video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/control/ThumbImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/ui/control/b;->i:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v0, p1, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_1

    :cond_4
    const-string p1, "CameraControlUI"

    const-string v0, "updateThumbnailView, mLastThumbnail is null"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private p(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/control/g;->a(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnail(), mLastThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->o(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->q(Z)V

    :goto_0
    return-void
.end method

.method private q(Z)V
    .locals 2

    const-string v0, "CameraControlUI"

    const-string v1, "getLastThumbnailUncached()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/oppo/camera/ui/control/b$a;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/ui/control/b$a;-><init>(Lcom/oppo/camera/ui/control/b;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public A()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->getButtonType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->d()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->e()V

    :cond_0
    return-void
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->r()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public H()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->Q()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    new-instance v1, Lcom/oppo/camera/ui/control/b$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/b$3;-><init>(Lcom/oppo/camera/ui/control/b;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public I()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->R()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    new-instance v1, Lcom/oppo/camera/ui/control/b$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/control/b$4;-><init>(Lcom/oppo/camera/ui/control/b;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->a()Z

    move-result v0

    return v0
.end method

.method public a(BZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, bgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v0, 0x7f05001d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/16 p2, 0xc8

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/b;->P:I

    return-void
.end method

.method public a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/camera/ui/menu/b/c;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->b()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->c()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->K()V

    :cond_0
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->b()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->N:Lcom/oppo/camera/ui/menu/b/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/d;->c()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Ljava/util/List;I)V

    :cond_4
    if-eqz p3, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->x()V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p1}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x12c

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 3

    const-string v0, "CameraControlUI"

    if-nez p1, :cond_0

    const-string p1, "onShutterButtonClick, ShutterButton is null."

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onShutterButtonClick, moreTab is showing...."

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    const-string v1, "onShutterButtonClick, camera menu is popup...."

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v1, 0x7f08006f

    const/4 v2, 0x3

    if-eq p1, v1, :cond_5

    const v0, 0x7f0801a8

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->i()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->f()V

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    const-string p1, "onShutterButtonClick, camera_from_other_app_close_btn"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/ShutterButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/control/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->b(Lcom/oppo/camera/ui/control/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->b()V

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oppo/camera/ui/control/ShutterButton;->clearAnimation()V

    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/oppo/camera/ui/control/b;->e(ZZ)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b/c;->onPause()V

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(Lcom/oppo/camera/ui/control/c;Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->o()V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->getShutterButtonInfo()Lcom/oppo/camera/ui/control/c;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "onPause, null == currentButtonInfo"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;)V
    .locals 3

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/e;Z)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->q:Landroid/os/AsyncTask;

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->R:Lcom/oppo/camera/ui/control/e;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/control/b;->o(Z)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    const-string p2, "CameraControlUI"

    if-eqz p1, :cond_5

    const-string p1, "CameraTest Thumbnail Updated"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateThumbnailView, mbFirstCallHasExcuted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mLastThumbnail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->g:Z

    new-instance p1, Lcom/oppo/camera/v$a;

    invoke-direct {p1}, Lcom/oppo/camera/v$a;-><init>()V

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/control/e;->d()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/oppo/camera/v$a;->l:J

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/oppo/camera/v$a;->w:Z

    iput-boolean v1, p1, Lcom/oppo/camera/v$a;->x:Z

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    invoke-interface {p2, p1}, Lcom/oppo/camera/ui/control/f;->a(Lcom/oppo/camera/v$a;)V

    :cond_6
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/control/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumeMessage, mCameraEntryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowBeauty3D: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowModeTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPanelMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->k:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/b/c;->onResume()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/control/b;->f(I)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_support_thumbnail"

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/control/b;->g(I)V

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    return-void
.end method

.method public b(IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControlPanelBgColor, previewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/oppo/camera/ui/control/b;->a(BZ)V

    :goto_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CameraControlUI"

    const-string v0, "onShutterButtonLongClick, moreTab is showing...."

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f0801a8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->g()V

    :cond_2
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oppo/camera/ui/control/c;Z)V
    .locals 5

    const-string v0, "CameraControlUI"

    const-string v1, "resetShutterButton"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const-string v0, "button_color_inside_red"

    invoke-direct {p1, v4, v0}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setClickable(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setPressed(Z)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraShutterButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {v1}, Lcom/oppo/camera/ui/d;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c()V
    .locals 6

    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->m:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/b;->d()V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->U:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/MainShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v4, 0x7f0801d3

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->V:Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v4, 0x7f08016f

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v5, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v5}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v5, 0x7f08020c

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    iget v2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/control/ThumbImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703db

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/oppo/camera/ui/control/b;->o:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/oppo/camera/ui/control/ShutterButton;->setOnShutterButtonListener(Lcom/oppo/camera/ui/control/ShutterButton$OnShutterButtonListener;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    iget-object v2, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/control/ShutterButton;->setCameraUIListener(Lcom/oppo/camera/ui/d;)V

    iget v1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "button_color_inside_red"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->requestFocus()Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->L()V

    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    iget v2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-eq v0, v2, :cond_7

    const/4 v0, 0x2

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->a(IZ)V

    :cond_8
    return-void
.end method

.method public c(Lcom/oppo/camera/ui/control/ShutterButton;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/ShutterButton;->getId()I

    move-result p1

    const v0, 0x7f0801a8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->h()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->g(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->e(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSwitchCameraButton, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v3, 0x7f0800af

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->G()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->P()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloseFromOtherAppButtonVisibility(), visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->g(I)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->a(Z)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableThumbView(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setClickable(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/b/c;->a(IZ)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraShutterButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    const-string v0, "pref_support_switch_camera"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->g(I)V

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->e(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    return-void
.end method

.method public f(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchCameraButtonVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    return-void
.end method

.method public f(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecording isEnableThumbView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p2}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p2}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget p2, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/control/b;->f(I)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703db

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbViewVisibilityWithAnimation, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "CameraControlUI"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->a()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->r:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1, v2, v2}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->a()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/e;->f()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->g()V

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->N()V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    iput-boolean v2, p0, Lcom/oppo/camera/ui/control/b;->a:Z

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->T:Lcom/a/a/f;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/b;->S:Lcom/a/a/f;

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setShutterButtonTime(I)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->b()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/d;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->L:Lcom/oppo/camera/ui/control/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/control/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/ShutterButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->c()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 4

    const-string v0, "CameraControlUI"

    const-string v1, "startVideoRecording()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/control/b;->d(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v3, "pref_support_recording_capture"

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->E:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->G:Lcom/oppo/camera/ui/control/ThumbImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/oppo/camera/ui/control/b;->a(IZ)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz p1, :cond_2

    const v0, 0x7f0701c5

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/ShutterButton;->setImageResource(I)V

    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/b;->p:J

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->F:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    return-void
.end method

.method public j(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/d;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/control/b;->p(Z)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/oppo/camera/ui/control/ShutterButton;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    return-object v0
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/control/b;->i:Z

    return-void
.end method

.method public m()Lcom/oppo/camera/ui/control/e;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    return-object v0
.end method

.method public m(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->s:Landroid/app/Activity;

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/b;->o:I

    return v0
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->M:Lcom/oppo/camera/ui/menu/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/b/c;->setMultiFinger(Z)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setScaleX(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setScaleY(F)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->D:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->j:Z

    const-string v1, "CameraControlUI"

    if-eqz v0, :cond_0

    const-string p1, "onClick, Activity is paused, so return!"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_0

    const-string p1, "onClick, default"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "onClick, video_pause_resume"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->O()V

    goto :goto_0

    :sswitch_1
    const-string v0, "onClick, thumbnail"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->H:Lcom/oppo/camera/ui/control/e;

    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/control/f;->a(Lcom/oppo/camera/ui/control/e;Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->j()V

    goto :goto_0

    :sswitch_3
    const-string p1, "onClick, done_button"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->a()V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->c()V

    goto :goto_0

    :sswitch_4
    const-string p1, "onClick, btn_retake"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oppo/camera/ui/control/b;->n:I

    if-ne p1, v2, :cond_2

    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/4 v0, 0x1

    const-string v1, "button_color_inside_red"

    invoke-direct {p1, v0, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/MainShutterButton;->setButtonTypeAndInvalidate(Lcom/oppo/camera/ui/control/c;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->d()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->b()V

    goto :goto_0

    :sswitch_5
    const-string p1, "onClick, btn_play"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/control/b;->t:Lcom/oppo/camera/ui/control/a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->e()V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080063 -> :sswitch_5
        0x7f080064 -> :sswitch_4
        0x7f0800c3 -> :sswitch_3
        0x7f08016f -> :sswitch_2
        0x7f0801e8 -> :sswitch_1
        0x7f08020c -> :sswitch_0
    .end sparse-switch
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 3

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->M()V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    iget-object v1, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->u:Lcom/oppo/camera/ui/d;

    const-string v1, "pref_support_switch_camera"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/b;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->K:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    invoke-direct {p0}, Lcom/oppo/camera/ui/control/b;->M()V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->y:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->z:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->A:Lcom/oppo/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->B:Lcom/oppo/camera/ui/control/ShutterButton;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->b(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/control/b;->c(ZZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/b;->f(I)V

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/b;->l:Z

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->performClick()Z

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->C:Lcom/oppo/camera/ui/control/MainShutterButton;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/MainShutterButton;->f()V

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "CameraControlUI"

    const-string v1, "initThumbnail()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oppo/camera/ui/control/b;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->I:Lcom/oppo/camera/ui/control/f;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/control/b;->p(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/control/b;->a(Lcom/oppo/camera/ui/control/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/b;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    invoke-static {}, Lcom/oppo/camera/o/d;->F()I

    move-result v0

    return v0
.end method
