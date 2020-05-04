.class Lcom/color/support/widget/h$5;
.super Ljava/lang/Object;
.source "ErrorEditTextHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/h;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/h;


# direct methods
.method constructor <init>(Lcom/color/support/widget/h;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0, v0}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/h;ZZZ)V

    iget-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-static {p1, v0}, Lcom/color/support/widget/h;->a(Lcom/color/support/widget/h;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-static {p1}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/h;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-static {v0}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-static {p1}, Lcom/color/support/widget/h;->a(Lcom/color/support/widget/h;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/h$5;->a:Lcom/color/support/widget/h;

    invoke-static {p1}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/color/support/widget/h;->a(Lcom/color/support/widget/h;F)F

    :cond_0
    return-void
.end method
