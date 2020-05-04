.class Lcolor/support/v7/widget/Toolbar$a;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g;

.field b:Landroidx/appcompat/view/menu/i;

.field final synthetic c:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/Toolbar;Lcolor/support/v7/widget/Toolbar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$a;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->d(Landroidx/appcompat/view/menu/i;)Z

    :cond_0
    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar$a;->b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z

    :cond_2
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 2

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->b(Lcolor/support/v7/widget/Toolbar;)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->c(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_0

    invoke-static {v0}, Lcolor/support/v7/widget/Toolbar;->c(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->m()Lcolor/support/v7/widget/Toolbar$b;

    move-result-object p1

    const v0, 0x800003

    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-static {v1}, Lcolor/support/v7/widget/Toolbar;->d(Lcolor/support/v7/widget/Toolbar;)I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Lcolor/support/v7/widget/Toolbar$b;->a:I

    const/4 v0, 0x2

    iput v0, p1, Lcolor/support/v7/widget/Toolbar$b;->c:I

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, v0, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcolor/support/v7/widget/Toolbar;->a(Lcolor/support/v7/widget/Toolbar;Z)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/i;->e(Z)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/c;

    invoke-interface {p1}, Landroidx/appcompat/view/c;->a()V

    :cond_2
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 2

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/c;

    invoke-interface {p1}, Landroidx/appcompat/view/c;->b()V

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->c(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Lcolor/support/v7/widget/Toolbar;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcolor/support/v7/widget/Toolbar;->a(Lcolor/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$a;->c:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/i;->e(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
