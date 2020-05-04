.class Lcom/oppo/camera/sticker/ui/h$10;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/sticker/ui/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oppo/camera/sticker/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMenu"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->j(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v0

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->l(Lcom/oppo/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->p()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oppo/camera/sticker/ui/h;->l(Lcom/oppo/camera/sticker/ui/h;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->r()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/h;->a(I)V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/j;->a()I

    move-result v0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v3}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-eq p1, v3, :cond_4

    add-int/lit8 v4, v0, -0x2

    if-eq p1, v4, :cond_4

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v0

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v0

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(I)V

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/h;Z)Z

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->m(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/h$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/h$c;->a(I)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(I)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->k(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/sticker/ui/StickerCategoryRecycleView;->b(I)V

    :goto_3
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0, p1}, Lcom/oppo/camera/sticker/ui/h;->a(Lcom/oppo/camera/sticker/ui/h;I)I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->h(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/j;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/ui/j;->b(I)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/sticker/ui/e;->e(I)V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {v1}, Lcom/oppo/camera/sticker/ui/h;->e(Lcom/oppo/camera/sticker/ui/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/ui/e;->a(I)Lcom/oppo/camera/sticker/ui/h$a;

    move-result-object v0

    iget-object v0, v0, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/oppo/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method public a(IFI)V
    .locals 0

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/sticker/ui/e;->b()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oppo/camera/sticker/ui/h;->b(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/i;

    move-result-object p2

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/h$10;->a:Lcom/oppo/camera/sticker/ui/h;

    invoke-static {p3}, Lcom/oppo/camera/sticker/ui/h;->i(Lcom/oppo/camera/sticker/ui/h;)Lcom/oppo/camera/sticker/ui/e;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/oppo/camera/sticker/ui/e;->a(I)Lcom/oppo/camera/sticker/ui/h$a;

    move-result-object p1

    iget-object p1, p1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/oppo/camera/sticker/ui/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerMenu"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
