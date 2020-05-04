.class Lcolor/support/v7/widget/a$2;
.super Ljava/lang/Object;
.source "ColorActionMenuViewV6.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcolor/support/v7/widget/a;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iput-object p2, p0, Lcolor/support/v7/widget/a$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    new-instance v0, Lcom/color/support/widget/popupwindow/a;

    invoke-virtual {p1}, Lcolor/support/v7/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/popupwindow/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/a;->a(Z)V

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {p1}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {p1}, Lcolor/support/v7/widget/a;->b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->b(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/i;

    invoke-static {v0, v1}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;Landroidx/appcompat/view/menu/i;)Landroidx/appcompat/view/menu/i;

    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/color/support/widget/popupwindow/c;

    iget-object v3, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v3}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v4}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v1}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v4}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/color/support/widget/popupwindow/c;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/color/support/widget/popupwindow/c;

    iget-object v3, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v3}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v1}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v3}, Lcolor/support/v7/widget/a;->c(Lcolor/support/v7/widget/a;)Landroidx/appcompat/view/menu/i;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/color/support/widget/popupwindow/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    invoke-static {v0}, Lcolor/support/v7/widget/a;->a(Lcolor/support/v7/widget/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/a;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    new-instance v0, Lcolor/support/v7/widget/a$2$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/a$2$1;-><init>(Lcolor/support/v7/widget/a$2;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/a;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-object p1, p0, Lcolor/support/v7/widget/a$2;->b:Lcolor/support/v7/widget/a;

    iget-object p1, p1, Lcolor/support/v7/widget/a;->c:Lcom/color/support/widget/popupwindow/a;

    iget-object v0, p0, Lcolor/support/v7/widget/a$2;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/a;->a(Landroid/view/View;)V

    return-void
.end method
