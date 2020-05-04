.class Lcom/oppo/camera/sticker/ui/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/oppo/camera/sticker/ui/h;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/sticker/ui/h;II)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$b;->d:Lcom/oppo/camera/sticker/ui/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->a:I

    iput p3, p0, Lcom/oppo/camera/sticker/ui/h$b;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/ui/h$b;->c:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    const/4 p3, 0x0

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/oppo/camera/sticker/ui/h$b;->c:I

    const/4 v0, 0x6

    if-le p4, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_0

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p4, p0, Lcom/oppo/camera/sticker/ui/h$b;->c:I

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_1

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/oppo/camera/o/d;->Y()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/oppo/camera/sticker/ui/h$b;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_0
    return-void
.end method
