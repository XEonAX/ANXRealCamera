.class public Lcom/oppo/camera/ui/RotableTextView;
.super Landroid/widget/TextView;
.source "RotableTextView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotableTextView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    :goto_0
    if-ltz p1, :cond_1

    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_1
    iget p2, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iget-boolean p1, p0, Lcom/oppo/camera/ui/RotableTextView;->e:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iget p2, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_2
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    iget-wide v0, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotableTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    iget v0, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    if-eq p1, v0, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/ui/RotableTextView;->g:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-wide v2, p0, Lcom/oppo/camera/ui/RotableTextView;->f:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    iget v0, p0, Lcom/oppo/camera/ui/RotableTextView;->b:I

    iget-boolean v1, p0, Lcom/oppo/camera/ui/RotableTextView;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    mul-int/lit16 p1, p1, 0x10e

    div-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_1
    iput v0, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/RotableTextView;->invalidate()V

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    :cond_3
    :goto_2
    iget p1, p0, Lcom/oppo/camera/ui/RotableTextView;->a:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/RotableTextView;->setRotation(F)V

    return-void
.end method
