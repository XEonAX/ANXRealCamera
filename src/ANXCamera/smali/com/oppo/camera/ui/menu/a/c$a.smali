.class public Lcom/oppo/camera/ui/menu/a/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "FaceBeautyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic q:Lcom/oppo/camera/ui/menu/a/c;

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/menu/a/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/c$a;->q:Lcom/oppo/camera/ui/menu/a/c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/c$a;->r:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c$a;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c$a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/a/c$a;->r:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c$a;->q:Lcom/oppo/camera/ui/menu/a/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/a/c;->a(Lcom/oppo/camera/ui/menu/a/c;)Lcom/oppo/camera/ui/menu/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c$a;->q:Lcom/oppo/camera/ui/menu/a/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/a/c;->a(Lcom/oppo/camera/ui/menu/a/c;)Lcom/oppo/camera/ui/menu/a/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/a/c$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a/c$a;->q:Lcom/oppo/camera/ui/menu/a/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/a/c;->a(Lcom/oppo/camera/ui/menu/a/c;)Lcom/oppo/camera/ui/menu/a/c$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/a/c$a;->f()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/oppo/camera/ui/menu/a/c$b;->a(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
