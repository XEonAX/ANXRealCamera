.class Lcom/color/support/widget/f$a$1;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/f$a;
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

    iput-object p1, p0, Lcom/color/support/widget/f$a$1;->a:Lcom/color/support/widget/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/f$a$1;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;)Lcolor/support/v7/app/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/f$a$1;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;)Lcolor/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/f$a$1;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/f;->b(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$c;

    move-result-object p1

    const/4 p2, -0x2

    iget-object p3, p0, Lcom/color/support/widget/f$a$1;->a:Lcom/color/support/widget/f$a;

    invoke-static {p3}, Lcom/color/support/widget/f$a;->b(Lcom/color/support/widget/f$a;)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/color/support/widget/f$c;->a(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
