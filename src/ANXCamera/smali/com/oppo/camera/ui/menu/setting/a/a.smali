.class public Lcom/oppo/camera/ui/menu/setting/a/a;
.super Ljava/lang/Object;
.source "ActivityDelegate.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/oppo/camera/ui/menu/setting/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->a:Landroid/app/Activity;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->a:Landroid/app/Activity;

    check-cast p1, Lcom/oppo/camera/ui/menu/setting/a;

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->b:Lcom/oppo/camera/ui/menu/setting/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/app/e;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->b:Lcom/oppo/camera/ui/menu/setting/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/setting/a;->c()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/menu/setting/a/b;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public b(Landroidx/appcompat/app/e;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->b:Lcom/oppo/camera/ui/menu/setting/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/setting/a;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->b:Lcom/oppo/camera/ui/menu/setting/a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/setting/a;->M_()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/a/a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/setting/a/c;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
