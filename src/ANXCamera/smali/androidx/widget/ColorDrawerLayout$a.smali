.class final Landroidx/widget/ColorDrawerLayout$a;
.super Landroidx/core/g/a;
.source "ColorDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/ColorDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/g/a/d;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroidx/core/g/a/d;)V

    invoke-static {p1}, Landroidx/widget/ColorDrawerLayout;->l(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/core/g/a/d;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
