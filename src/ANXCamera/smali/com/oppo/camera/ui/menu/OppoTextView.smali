.class public Lcom/oppo/camera/ui/menu/OppoTextView;
.super Landroid/widget/TextView;
.source "OppoTextView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->c:Z

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    invoke-static {}, Lcom/oppo/camera/o/d;->t()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    iget p2, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setRotation(F)V

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    rem-int/lit16 p1, p1, 0xb4

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setEms(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setEms(I)V

    :goto_1
    iget p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setRotation(F)V

    iput-boolean p2, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNoRotateHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getNoRotateWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewHeight()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->measure(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    iget v1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    :goto_1
    return v0
.end method

.method public getViewWidth()I
    .locals 2

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->measure(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    iget v1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getNoRotateWidth()I

    move-result v0

    return v0

    :cond_4
    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->h:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    :goto_1
    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    :try_start_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/OppoTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    iget p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->f:I

    iget p2, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->g:I

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->a:Z

    return-void
.end method

.method public setVerticalDraw(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/OppoTextView;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setIncludeFontPadding(Z)V

    const/4 p1, 0x0

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/menu/OppoTextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method
