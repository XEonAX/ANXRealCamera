.class Landroidx/viewpager2/adapter/a$a;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/a;

.field private b:Landroidx/viewpager2/widget/ViewPager2;

.field private c:J


# virtual methods
.method a(Z)V
    .locals 8

    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->b()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1}, Landroidx/viewpager2/adapter/a;->b()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a;->b(I)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {p1, v0, v1}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->w()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iput-wide v0, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    iget-object p1, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v3, v3, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v3}, Landroidx/b/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v3, v3, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v3, v0}, Landroidx/b/d;->b(I)J

    move-result-wide v3

    iget-object v5, p0, Landroidx/viewpager2/adapter/a$a;->a:Landroidx/viewpager2/adapter/a;

    iget-object v5, v5, Landroidx/viewpager2/adapter/a;->c:Landroidx/b/d;

    invoke-virtual {v5, v0}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->w()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v6, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v6, v3, v6

    if-eqz v6, :cond_7

    sget-object v6, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {p1, v5, v6}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/k;

    goto :goto_1

    :cond_7
    move-object v2, v5

    :goto_1
    iget-wide v6, p0, Landroidx/viewpager2/adapter/a$a;->c:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->b(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    sget-object v0, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/k;

    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/k;->h()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()V

    :cond_b
    :goto_4
    return-void
.end method
