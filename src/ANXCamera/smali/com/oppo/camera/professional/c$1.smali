.class Lcom/oppo/camera/professional/c$1;
.super Ljava/lang/Object;
.source "PanelContainer.java"

# interfaces
.implements Lcom/oppo/camera/professional/LevelPanel$ValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/c;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oppo/camera/professional/h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/professional/LevelPanel;

.field final synthetic c:Lcom/oppo/camera/professional/c;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/c;ILcom/oppo/camera/professional/LevelPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    iput p2, p0, Lcom/oppo/camera/professional/c$1;->a:I

    iput-object p3, p0, Lcom/oppo/camera/professional/c$1;->b:Lcom/oppo/camera/professional/LevelPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->c(Lcom/oppo/camera/professional/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->d(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/professional/c$a;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    iget-object v2, p0, Lcom/oppo/camera/professional/c$1;->b:Lcom/oppo/camera/professional/LevelPanel;

    iget-object v3, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v3}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/d/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/professional/c$a;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAutoValueChange(I)V
    .locals 3

    iget-object p1, p0, Lcom/oppo/camera/professional/c$1;->b:Lcom/oppo/camera/professional/LevelPanel;

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->b(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/professional/c$b;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/oppo/camera/professional/c$b;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public onBarScrolling(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->c(Lcom/oppo/camera/professional/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->d(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/professional/c$a;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    iget-object v2, p0, Lcom/oppo/camera/professional/c$1;->b:Lcom/oppo/camera/professional/LevelPanel;

    iget-object v3, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v3}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/d/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/professional/c$a;->a(ILjava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0, p1}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;Z)Z

    return-void
.end method

.method public onManualValueChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    iget v1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    invoke-static {v0, v1}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/oppo/camera/professional/c;->a(ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/oppo/camera/professional/c$1;->b:Lcom/oppo/camera/professional/LevelPanel;

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {v0}, Lcom/oppo/camera/professional/c;->b(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/professional/c$b;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/oppo/camera/professional/c$b;->a(ILjava/lang/String;Z)V

    iget p1, p0, Lcom/oppo/camera/professional/c$1;->a:I

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/professional/c;->e(I)V

    iget-object p1, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/c;->e(I)V

    :cond_0
    const/4 p1, 0x3

    iget v0, p0, Lcom/oppo/camera/professional/c$1;->a:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/professional/c$1;->c:Lcom/oppo/camera/professional/c;

    invoke-static {p1}, Lcom/oppo/camera/professional/c;->b(Lcom/oppo/camera/professional/c;)Lcom/oppo/camera/professional/c$b;

    move-result-object p1

    iget v0, p0, Lcom/oppo/camera/professional/c$1;->a:I

    invoke-interface {p1, v0}, Lcom/oppo/camera/professional/c$b;->a(I)V

    :cond_1
    return-void
.end method
