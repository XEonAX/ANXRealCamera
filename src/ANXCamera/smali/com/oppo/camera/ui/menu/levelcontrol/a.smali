.class public Lcom/oppo/camera/ui/menu/levelcontrol/a;
.super Landroid/widget/BaseAdapter;
.source "CameraCustomListPreferenceSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/levelcontrol/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:I

.field private e:[Ljava/lang/CharSequence;

.field private f:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZI[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->a:Z

    iput-boolean p3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->b:Z

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->c:Landroid/content/Context;

    iput p4, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->d:I

    iput-object p5, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->e:[Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->f:[Ljava/lang/CharSequence;

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {p2, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->a:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->b:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    add-int/2addr v0, v4

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private b(I)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->f:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, v0, p1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;-><init>(Lcom/oppo/camera/ui/menu/levelcontrol/a;Lcom/oppo/camera/ui/menu/levelcontrol/a$1;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f080163

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f080162

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f080161

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p2, p2, Lcom/oppo/camera/ui/menu/levelcontrol/a$a;->c:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/a;->d:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/ui/menu/levelcontrol/a;->a(ILandroid/view/View;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
