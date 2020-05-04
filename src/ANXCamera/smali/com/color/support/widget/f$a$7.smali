.class Lcom/color/support/widget/f$a$7;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/f$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/f$a;


# direct methods
.method constructor <init>(Lcom/color/support/widget/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v1

    invoke-static {v1}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/widget/f$a$7;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
