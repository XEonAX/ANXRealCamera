.class public Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;
.super Ljava/lang/Object;
.source "CameraMenuOption.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;
.implements Lcom/oppo/camera/ui/menu/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;,
        Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:I

.field protected e:Landroid/content/Context;

.field protected f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

.field protected g:Lcom/oppo/camera/ui/menu/setting/e;

.field protected h:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

.field protected i:Lcom/oppo/camera/ui/d;

.field protected j:I

.field private k:Z

.field private l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

.field private m:Landroid/view/ViewGroup;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:Ljava/lang/String;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/oppo/camera/ui/menu/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/menu/a;Lcom/oppo/camera/ui/menu/setting/e;Lcom/oppo/camera/ui/d;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c:Z

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i:Lcom/oppo/camera/ui/d;

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m:Landroid/view/ViewGroup;

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o:I

    const/16 v3, 0x14a

    iput v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p:I

    const/16 v3, 0x96

    iput v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->q:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s:I

    const v0, 0x400ccccd    # 2.2f

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t:F

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-static {p1}, Lcom/oppo/camera/ui/f;->a(Lcom/oppo/camera/ui/menu/a;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CameraMenuOption, getOptionKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/a;->getOptionKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraMenuOption"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-direct {p0, p6}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060288

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060289

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->s:I

    iput-object p4, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i:Lcom/oppo/camera/ui/d;

    iput p5, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    return p1
.end method

.method private n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/f;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public C()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public D()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionExpandIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public E()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()Z
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public H()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionOnOff()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getImageTitleMode()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getImageTitleColorChangeable()Z

    move-result v0

    return v0
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getGroupType()I

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/16 p1, 0x8

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationLayoutTranslationToX, startPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "endPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t:F

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->t:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->q:I

    if-ge v0, v1, :cond_3

    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a(II)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addItemViewToParent, Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)V
    .locals 3

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/ui/menu/setting/e;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected, key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraMenuOption"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-interface {p1, v0, v2, p2}, Lcom/oppo/camera/ui/menu/setting/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p2

    :cond_1
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/oppo/camera/ui/menu/setting/e;->b(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {p2}, Lcom/oppo/camera/ui/menu/a;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->L()I

    move-result p2

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n()V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", option key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v()V

    :cond_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableMenuOption, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->C()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/oppo/camera/ui/menu/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/oppo/camera/ui/menu/d;->a(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->b(I)Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    iget p3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    if-ne p3, p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/oppo/camera/ui/menu/setting/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/setting/e;->getMenuPanelEnable()Z

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {p2}, Lcom/oppo/camera/ui/menu/setting/e;->getMenuPanelAshed()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-nez p1, :cond_4

    if-nez p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d(I)V

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->C()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/setting/e;->getMenuPanelEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result p1

    if-gtz p1, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    :goto_1
    return p3

    :cond_5
    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {p2, v1, v0, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(I)V

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMenuOptionItems, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_2

    :goto_0
    array-length p1, p2

    if-ge v0, p1, :cond_1

    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/f;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i:Lcom/oppo/camera/ui/d;

    iget v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d:I

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/ui/menu/setting/f;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;I)V

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/f;->b()V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f(I)Lcom/oppo/camera/ui/menu/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/menu/setting/f;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/f;->a(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v2, v1, p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-nez p1, :cond_5

    move v2, p1

    move p1, v0

    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    :cond_5
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_3
    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->p()Z

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/f;->a(Lcom/oppo/camera/ui/menu/e;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(ZZ)V

    return-void
.end method

.method public b(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resetLayout left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v3

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    :cond_2
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMenuOptionItems, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mOptionItemList: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraMenuOption"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_2

    :goto_0
    array-length p1, p2

    if-ge v0, p1, :cond_2

    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public c(Z)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/f;->a(Lcom/oppo/camera/ui/menu/e;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setItemState, state( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidePopUpWindowBegin, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", option key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuOption"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-ne v1, p1, :cond_5

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v()V

    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v()V

    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/f;->b(Lcom/oppo/camera/ui/menu/e;)V

    return-void
.end method

.method public d(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(I)Lcom/oppo/camera/ui/menu/d;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideMenu, option key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemView: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", show: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->y()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$1;-><init>(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMenu, option key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemView: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {p1, v0, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->c:Z

    return v0
.end method

.method public i()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {v1}, Lcom/oppo/camera/ui/menu/setting/e;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(IZ)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/a;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/setting/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/a;->getOptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOptionValue fail! index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraMenuOption"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 7

    const-string v0, "CameraMenuOption"

    const-string v1, "initializeOptionItems"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->I()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v1, Lcom/oppo/camera/ui/menu/c;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i:Lcom/oppo/camera/ui/d;

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/ui/menu/c;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance v3, Lcom/oppo/camera/ui/menu/setting/f;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i:Lcom/oppo/camera/ui/d;

    iget v6, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->d:I

    invoke-direct {v3, v4, v5, v6}, Lcom/oppo/camera/ui/menu/setting/f;-><init>(Landroid/content/Context;Lcom/oppo/camera/ui/d;I)V

    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/setting/f;->b()V

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f(I)Lcom/oppo/camera/ui/menu/d;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->L()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/d;->b()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/oppo/camera/ui/menu/setting/f;->a(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/d;->c()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/ui/menu/setting/f;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/oppo/camera/ui/menu/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/menu/setting/f;->h(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/a;->getOptionSingleIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setOptionItemIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setSelectItemIndex(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setOptionItemListListener(Lcom/oppo/camera/ui/menu/BasicOptionItemList$OptionItemListListener;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOptionValueNoToPreferences, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOptionValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionOnOff()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const-string p1, "CameraMenuOption"

    const-string v1, "removeOptionItem, the remain item is 0, Error"

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionOnOff()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->b(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v0

    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "CameraMenuOption"

    const-string v1, "addOptionItem, the remain item is 0, Error"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    goto :goto_3

    :cond_4
    const/4 p1, -0x1

    :goto_3
    return p1
.end method

.method public l()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->b(ZZ)V

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a;->release()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->x:Lcom/oppo/camera/ui/menu/a;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/d;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    :cond_3
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-static {p0}, Lcom/oppo/camera/ui/menu/f;->b(Lcom/oppo/camera/ui/menu/e;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->cancel()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->r()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->e:Landroid/content/Context;

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/f;->a(Lcom/oppo/camera/ui/menu/BasicOptionItemList;)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->g:Lcom/oppo/camera/ui/menu/setting/e;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/setting/e;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->w:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    if-gez p1, :cond_4

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    goto :goto_1

    :cond_3
    :goto_0
    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->j:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->u:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->f:Lcom/oppo/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/BasicOptionItemList;->d()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->E()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method protected p()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->H()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->n:I

    return v0
.end method

.method protected r()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->m:Landroid/view/ViewGroup;

    return-void
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    return v0
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    :cond_1
    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->o:I

    return v0
.end method

.method public x()I
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()I
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->l:Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption$LayoutTranslationAnimation;->a()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
