.class Lcom/color/support/widget/ColorLockPatternView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLockPatternView;->a(Lcom/color/support/widget/ColorLockPatternView$b;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorLockPatternView$b;

.field final synthetic b:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$4;->b:Lcom/color/support/widget/ColorLockPatternView;

    iput-object p2, p0, Lcom/color/support/widget/ColorLockPatternView$4;->a:Lcom/color/support/widget/ColorLockPatternView$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$4;->a:Lcom/color/support/widget/ColorLockPatternView$b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/color/support/widget/ColorLockPatternView$b;->f:Landroid/animation/ValueAnimator;

    return-void
.end method
