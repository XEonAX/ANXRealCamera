.class Lcom/oppo/camera/ui/e$3;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->a(Ljava/util/concurrent/ConcurrentHashMap;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$3;->c:Lcom/oppo/camera/ui/e;

    iput-object p2, p0, Lcom/oppo/camera/ui/e$3;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/oppo/camera/ui/e$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/oppo/camera/ui/e$3;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/e$3;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method