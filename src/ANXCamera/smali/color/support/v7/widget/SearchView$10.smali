.class Lcolor/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->h()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->k()V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-static {p1}, Lcolor/support/v7/widget/SearchView;->d(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->a:Lcolor/support/v7/widget/SearchView;

    invoke-static {p1}, Lcolor/support/v7/widget/SearchView;->d(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$d;

    move-result-object p1

    invoke-interface {p1}, Lcolor/support/v7/widget/SearchView$d;->a()V

    :cond_4
    :goto_0
    return-void
.end method
