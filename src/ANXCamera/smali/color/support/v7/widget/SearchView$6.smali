.class Lcolor/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$6;->a:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$6;->a:Lcolor/support/v7/widget/SearchView;

    invoke-static {v0}, Lcolor/support/v7/widget/SearchView;->a(Lcolor/support/v7/widget/SearchView;)Landroidx/c/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$6;->a:Lcolor/support/v7/widget/SearchView;

    invoke-static {v0}, Lcolor/support/v7/widget/SearchView;->a(Lcolor/support/v7/widget/SearchView;)Landroidx/c/a/a;

    move-result-object v0

    instance-of v0, v0, Lcolor/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$6;->a:Lcolor/support/v7/widget/SearchView;

    invoke-static {v0}, Lcolor/support/v7/widget/SearchView;->a(Lcolor/support/v7/widget/SearchView;)Landroidx/c/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/c/a/a;->a(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
