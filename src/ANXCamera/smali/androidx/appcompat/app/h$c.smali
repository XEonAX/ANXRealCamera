.class Landroidx/appcompat/app/h$c;
.super Landroidx/appcompat/view/i;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/h;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/widget/ab;

    invoke-interface {v0}, Landroidx/appcompat/widget/ab;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    iget-boolean p2, p2, Landroidx/appcompat/app/h;->b:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    iget-object p2, p2, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/widget/ab;

    invoke-interface {p2}, Landroidx/appcompat/widget/ab;->m()V

    iget-object p2, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroidx/appcompat/app/h;->b:Z

    :cond_0
    return p1
.end method
