.class Lcom/color/support/widget/SecurityKeyboardView$a;
.super Ljava/lang/Object;
.source "SecurityKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SecurityKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/color/support/widget/SecurityKeyboardView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->c:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->d:I

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->f:F

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->g:F

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->h:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->h:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->l(Lcom/color/support/widget/SecurityKeyboardView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->h:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->m(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/SecurityKeyboardView$a;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->h:Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->f:F

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->f:F

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->g:F

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->g:F

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
