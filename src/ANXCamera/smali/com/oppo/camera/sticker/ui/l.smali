.class public Lcom/oppo/camera/sticker/ui/l;
.super Landroid/app/Dialog;
.source "StickerRecycleBinDialog.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$c;
.implements Lcom/oppo/camera/sticker/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/sticker/ui/l$a;
    }
.end annotation


# instance fields
.field a:Lcolor/support/v7/widget/Toolbar;

.field private b:Landroid/widget/GridView;

.field private c:Lcom/oppo/camera/sticker/ui/k;

.field private d:Lcom/oppo/camera/sticker/ui/l$a;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100155

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->b:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->d:Lcom/oppo/camera/sticker/ui/l$a;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/ui/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/l;->d()V

    return-void
.end method

.method private b()V
    .locals 6

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->d()Z

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/Toolbar;->setDividerColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/Toolbar;->setBottomDividerBackground(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/Toolbar;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    const v2, 0x7f0f0238

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Lcolor/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    :cond_0
    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->b:Landroid/widget/GridView;

    new-instance v0, Lcom/oppo/camera/sticker/ui/k;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v3, v4, v5}, Lcom/oppo/camera/sticker/g;->a(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/oppo/camera/sticker/ui/k;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/sticker/ui/k;->a(Lcom/oppo/camera/sticker/ui/k$a;)V

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->b:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/sticker/ui/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/l;->e()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/k;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Lcolor/support/v7/app/b$a;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->d(I)Lcolor/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/sticker/ui/l$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/ui/l$2;-><init>(Lcom/oppo/camera/sticker/ui/l;)V

    const v2, 0x7f0f0236

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0f0234

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/k;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oppo/camera/sticker/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/h;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string v0, "StickerRecycleBinDialog"

    const-string v1, "deleteSelectedStickers, size is 0!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/oppo/camera/sticker/ui/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oppo/camera/sticker/ui/l$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/ui/l$1;-><init>(Lcom/oppo/camera/sticker/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/ui/k;->d()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0501e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0501e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/l;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0239

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0237

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/k;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/k;->a(Lcom/oppo/camera/sticker/data/StickerItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/k;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/k;->d()I

    move-result p1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0238

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->a:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->a()V

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/ui/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->d:Lcom/oppo/camera/sticker/ui/l$a;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0801bb

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801c4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/l;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/k;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/ui/k;->a()V

    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/l;->d:Lcom/oppo/camera/sticker/ui/l$a;

    invoke-interface {p1}, Lcom/oppo/camera/sticker/ui/l$a;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->dismiss()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/l;->c:Lcom/oppo/camera/sticker/ui/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/k;->f()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0501e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setUiOptions(I)V

    const p1, 0x7f0b0062

    invoke-virtual {p0, p1}, Lcom/oppo/camera/sticker/ui/l;->setContentView(I)V

    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/l;->b()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
