.class Lcom/oppo/camera/k/b$4;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/k/b;->B(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/k/b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/k/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    iput p2, p0, Lcom/oppo/camera/k/b$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->h(Lcom/oppo/camera/k/b;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->i(Lcom/oppo/camera/k/b;)V

    iget v0, p0, Lcom/oppo/camera/k/b$4;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->c(Lcom/oppo/camera/k/b;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->o(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f008d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->n(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0088

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->m(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f008c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->l(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f008b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->k(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0}, Lcom/oppo/camera/k/b;->j(Lcom/oppo/camera/k/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f008a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->a(Lcom/oppo/camera/k/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/k/b$4;->b:Lcom/oppo/camera/k/b;

    invoke-static {v0, v1}, Lcom/oppo/camera/k/b;->c(Lcom/oppo/camera/k/b;Z)V

    :goto_0
    return-void
.end method
