.class Lcom/color/support/widget/ColorNumberPicker$f;
.super Ljava/lang/Object;
.source "ColorNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorNumberPicker;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->b:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->e:I

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->d:I

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->c(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v3}, Lcom/color/support/widget/ColorNumberPicker;->d(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker$f;->a()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->e:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->d:I

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker$f;->a()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->e:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->d:I

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 6

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->d:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->c(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->c(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v3}, Lcom/color/support/widget/ColorNumberPicker;->d(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->d:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v3}, Lcom/color/support/widget/ColorNumberPicker;->d(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->a(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->b(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorNumberPicker$f;->a:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    :goto_0
    return-void
.end method
