.class Lcom/oppo/camera/professional/e$7;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->cI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Lcom/a/a/f;

.field final synthetic c:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;Lcom/a/a/f;Lcom/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    iput-object p2, p0, Lcom/oppo/camera/professional/e$7;->a:Lcom/a/a/f;

    iput-object p3, p0, Lcom/oppo/camera/professional/e$7;->b:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->a:Lcom/a/a/f;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v2, v3}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->b:Lcom/a/a/f;

    invoke-virtual {p1, v2, v3}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->b(Lcom/oppo/camera/professional/e;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->c(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/professional/c;->e()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result p1

    iget-object v2, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v2}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v3}, Lcom/oppo/camera/professional/e;->e(Lcom/oppo/camera/professional/e;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v1}, Lcom/oppo/camera/professional/e;->c(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/oppo/camera/professional/c;->a(ZI)V

    iget-object v1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v1, p2}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;Z)V

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0, p2}, Lcom/oppo/camera/professional/e;->b(Lcom/oppo/camera/professional/e;Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->f(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c$a;

    move-result-object v0

    const-string v1, "auto_off"

    invoke-interface {v0, p1, v1, p2}, Lcom/oppo/camera/professional/c$a;->a(ILjava/lang/String;Z)V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0, p2}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v3}, Lcom/oppo/camera/professional/e;->c(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/oppo/camera/professional/c;->a(ZI)V

    iget-object v3, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v3, v1}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;Z)V

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/professional/e;->b(Lcom/oppo/camera/professional/e;Z)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->f(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c$a;

    move-result-object v0

    const-string v3, "auto"

    invoke-interface {v0, p1, v3, v1}, Lcom/oppo/camera/professional/c$a;->a(ILjava/lang/String;Z)V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->c:Lcom/oppo/camera/professional/e;

    invoke-static {p1}, Lcom/oppo/camera/professional/e;->d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, p2, v1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->a:Lcom/a/a/f;

    const-wide v0, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    iget-object p1, p0, Lcom/oppo/camera/professional/e$7;->b:Lcom/a/a/f;

    const-wide v0, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_5
    :goto_0
    return p2
.end method
