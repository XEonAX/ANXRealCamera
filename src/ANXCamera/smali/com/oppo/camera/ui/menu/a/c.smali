.class abstract Lcom/oppo/camera/ui/menu/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "FaceBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/a/c$b;,
        Lcom/oppo/camera/ui/menu/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oppo/camera/ui/menu/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/ui/menu/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oppo/camera/ui/menu/a/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->e:Lcom/oppo/camera/ui/menu/a/c$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/a/c;)Lcom/oppo/camera/ui/menu/a/c$b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/ui/menu/a/c;->e:Lcom/oppo/camera/ui/menu/a/c$b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    return v0
.end method

.method public abstract a(I)I
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/oppo/camera/ui/menu/a/c$a;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/a/c;->a(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oppo/camera/ui/menu/a/c$a;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/ui/menu/a/c$a;-><init>(Lcom/oppo/camera/ui/menu/a/c;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    check-cast p1, Lcom/oppo/camera/ui/menu/a/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/menu/a/c;->a(Lcom/oppo/camera/ui/menu/a/c$a;I)V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/a/c$a;I)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/a/c;->f(I)Lcom/oppo/camera/ui/menu/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    const v1, 0x7f0801f7

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/a/c$a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/b;->a()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/b;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/oppo/camera/ui/menu/a/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_2

    const v4, 0x7f050171

    goto :goto_1

    :cond_2
    const v4, 0x7f050172

    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/ui/menu/a/c;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/a/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/b;->c()I

    move-result v1

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/b;->b()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/b;->b()I

    move-result v1

    :cond_5
    if-lez v1, :cond_6

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/a/c$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/a/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/c;->e:Lcom/oppo/camera/ui/menu/a/c$b;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oppo/camera/ui/menu/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/c;->e()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/c;->e()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/menu/a/c;->a(Landroid/view/ViewGroup;I)Lcom/oppo/camera/ui/menu/a/c$a;

    move-result-object p1

    return-object p1
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/menu/a/c;->a:I

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/a/c;->d(I)V

    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/a/c;->d(I)V

    :cond_2
    return-void
.end method

.method public f(I)Lcom/oppo/camera/ui/menu/a/b;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/c;->b()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/menu/a/b;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
