.class Lcom/oppo/camera/ui/menu/a/d;
.super Ljava/lang/Object;
.source "FaceBeautyCommonMenu.java"

# interfaces
.implements Lcom/oppo/camera/ui/menu/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

.field private e:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/d;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/d;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/d;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06022a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06020c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/menu/a/d;->a:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06020f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/menu/a/d;->b:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/camera/ui/menu/a/d;->c:I

    new-instance v4, Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-direct {v4, p1}, Lcom/oppo/camera/ui/OppoNumAISeekBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->setPadding(IIII)V

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->setOnProgressChangedListener(Lcom/oppo/camera/ui/OppoNumSeekBar$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IZI)V
    .locals 2

    const/4 v0, 0x0

    const v1, -0x186a0

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    const/16 v1, 0x64

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/OppoNumAISeekBar;->b(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->d(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->c(I)Lcom/oppo/camera/ui/OppoNumSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->d:Lcom/oppo/camera/ui/OppoNumAISeekBar;

    return-object v0
.end method

.method public c()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oppo/camera/ui/menu/a/d;->b:I

    iget v2, p0, Lcom/oppo/camera/ui/menu/a/d;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    const v2, 0x7f0800e5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oppo/camera/ui/menu/a/d;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/d;->e:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method
