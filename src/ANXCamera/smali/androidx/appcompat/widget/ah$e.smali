.class Landroidx/appcompat/widget/ah$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ah;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ah;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v0, v0, Landroidx/appcompat/widget/ah;->c:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v0, v0, Landroidx/appcompat/widget/ah;->c:Landroidx/appcompat/widget/ad;

    invoke-static {v0}, Landroidx/core/g/u;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v0, v0, Landroidx/appcompat/widget/ah;->c:Landroidx/appcompat/widget/ad;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ad;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v1, v1, Landroidx/appcompat/widget/ah;->c:Landroidx/appcompat/widget/ad;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ad;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v0, v0, Landroidx/appcompat/widget/ah;->c:Landroidx/appcompat/widget/ad;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ad;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget v1, v1, Landroidx/appcompat/widget/ah;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    iget-object v0, v0, Landroidx/appcompat/widget/ah;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ah$e;->a:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->D_()V

    :cond_0
    return-void
.end method
