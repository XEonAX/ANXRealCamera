.class Landroidx/appcompat/widget/ad$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ad;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ad;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ad$b;->a:Landroidx/appcompat/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ad$b;->a:Landroidx/appcompat/widget/ad;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ad;->a:Landroidx/appcompat/widget/ad$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ad;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ad$b;->a:Landroidx/appcompat/widget/ad;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ad;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ad$b;->a:Landroidx/appcompat/widget/ad;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ad;->a:Landroidx/appcompat/widget/ad$b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ad;->drawableStateChanged()V

    return-void
.end method
