.class Lcom/oppo/camera/ui/modepanel/f$c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/modepanel/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/modepanel/f;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/modepanel/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/modepanel/f;Lcom/oppo/camera/ui/modepanel/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/modepanel/f$c;-><init>(Lcom/oppo/camera/ui/modepanel/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p2}, Lcom/oppo/camera/ui/modepanel/f;->k(Lcom/oppo/camera/ui/modepanel/f;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p2}, Lcom/oppo/camera/ui/modepanel/f;->k(Lcom/oppo/camera/ui/modepanel/f;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p2}, Lcom/oppo/camera/ui/modepanel/f;->l(Lcom/oppo/camera/ui/modepanel/f;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p2}, Lcom/oppo/camera/ui/modepanel/f;->l(Lcom/oppo/camera/ui/modepanel/f;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/f$c;->a:Lcom/oppo/camera/ui/modepanel/f;

    invoke-static {p2}, Lcom/oppo/camera/ui/modepanel/f;->m(Lcom/oppo/camera/ui/modepanel/f;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
