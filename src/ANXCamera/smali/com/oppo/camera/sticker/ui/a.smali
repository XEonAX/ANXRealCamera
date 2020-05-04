.class public Lcom/oppo/camera/sticker/ui/a;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


# instance fields
.field private a:Lcom/oppo/camera/sticker/ui/i;

.field private b:I

.field private c:Lcom/oppo/camera/sticker/ui/c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/sticker/ui/c;I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->a:Lcom/oppo/camera/sticker/ui/i;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/sticker/ui/a;->b:I

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->c:Lcom/oppo/camera/sticker/ui/c;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/oppo/camera/sticker/ui/a;->i:I

    iput v1, p0, Lcom/oppo/camera/sticker/ui/a;->j:I

    iput v1, p0, Lcom/oppo/camera/sticker/ui/a;->k:I

    iput-boolean v1, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/a;->c:Lcom/oppo/camera/sticker/ui/c;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/oppo/camera/sticker/ui/a;->b:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06039a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/a;->k:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060397

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/a;->j:I

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06039b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/a;->i:I

    return-void
.end method

.method private a(Lcom/oppo/camera/sticker/ui/b;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/oppo/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->a:Lcom/oppo/camera/sticker/ui/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/i;->e()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->a:Lcom/oppo/camera/sticker/ui/i;

    invoke-interface {v0}, Lcom/oppo/camera/sticker/ui/i;->e()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/oppo/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/oppo/camera/sticker/ui/b;->c:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/ui/a;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/a;->b:I

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(IILandroid/graphics/drawable/Drawable;ZLcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 1

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    if-ltz p1, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "state_icon"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p2, "sticker_item"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->c:Lcom/oppo/camera/sticker/ui/c;

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->a:Lcom/oppo/camera/sticker/ui/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    return-void
.end method

.method public b(I)Lcom/oppo/camera/sticker/data/StickerItem;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "sticker_item"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/sticker/data/StickerItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    const-string v0, "GridAdapter"

    const-string v2, "getCount, myCategory only has the recycle bin sticker"

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GridAdapter_getView_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/sticker/ui/a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f0b00aa

    invoke-virtual {p2, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget v2, p0, Lcom/oppo/camera/sticker/ui/a;->i:I

    iget v3, p0, Lcom/oppo/camera/sticker/ui/a;->k:I

    iget v4, p0, Lcom/oppo/camera/sticker/ui/a;->j:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f080126

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorLoadingView;

    const v3, 0x7f0801be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/RotateImageView;

    const v4, 0x7f0800fe

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/oppo/camera/sticker/ui/b;

    invoke-direct {v5, v2, v3, v4}, Lcom/oppo/camera/sticker/ui/b;-><init>(Lcom/color/support/widget/ColorLoadingView;Lcom/oppo/camera/ui/RotateImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/oppo/camera/sticker/ui/b;

    :goto_0
    iget-boolean v2, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    if-eqz v2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object p2

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "state_icon"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/a;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "sticker_item"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/sticker/data/StickerItem;

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/sticker/ui/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0703cb

    invoke-virtual {v4, v6, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/camera/sticker/ui/a;->h:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object p3, p0, Lcom/oppo/camera/sticker/ui/a;->c:Lcom/oppo/camera/sticker/ui/c;

    if-eqz p3, :cond_3

    new-instance p3, Lcom/oppo/camera/sticker/ui/d;

    invoke-direct {p3}, Lcom/oppo/camera/sticker/ui/d;-><init>()V

    invoke-virtual {p3, v5}, Lcom/oppo/camera/sticker/ui/d;->a(Lcom/oppo/camera/sticker/ui/b;)V

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/oppo/camera/sticker/ui/d;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->isStickerNew()Z

    move-result v4

    invoke-virtual {p3, v4}, Lcom/oppo/camera/sticker/ui/d;->a(Z)V

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result v4

    invoke-virtual {p3, v4}, Lcom/oppo/camera/sticker/ui/d;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/oppo/camera/sticker/ui/d;->a(I)V

    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/a;->c:Lcom/oppo/camera/sticker/ui/c;

    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->getThumbnailFileUri()Ljava/lang/String;

    move-result-object v4

    const-string v6, "parse_url"

    invoke-virtual {v2, v4, v6, p3}, Lcom/oppo/camera/sticker/ui/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppo/camera/sticker/ui/d;)V

    :cond_3
    invoke-virtual {v3}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v5, p3}, Lcom/oppo/camera/sticker/ui/a;->a(Lcom/oppo/camera/sticker/ui/b;Ljava/lang/String;)V

    iget-object p3, v5, Lcom/oppo/camera/sticker/ui/b;->b:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p3, :cond_4

    iget-object p3, v5, Lcom/oppo/camera/sticker/ui/b;->b:Lcom/oppo/camera/ui/RotateImageView;

    iget v2, p0, Lcom/oppo/camera/sticker/ui/a;->b:I

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oppo/camera/sticker/ui/a;->l:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object p2
.end method
