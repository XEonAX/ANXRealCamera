.class public abstract Lcom/oppo/camera/ui/preview/a/n;
.super Ljava/lang/Object;
.source "TexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/a/n$b;,
        Lcom/oppo/camera/ui/preview/a/n$a;
    }
.end annotation


# instance fields
.field protected d:I

.field protected e:Lcom/oppo/camera/gl/GLRootView;

.field protected f:Lcom/oppo/camera/ui/preview/a/n$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/n;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n;->e:Lcom/oppo/camera/gl/GLRootView;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/GLRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n;->e:Lcom/oppo/camera/gl/GLRootView;

    return-void
.end method

.method public abstract a(Lcom/oppo/camera/gl/h;)V
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n;->f:Lcom/oppo/camera/ui/preview/a/n$b;

    return-void
.end method

.method public abstract a(Lcom/oppo/camera/ui/preview/a/p;)V
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([BII)V
    .locals 0

    return-void
.end method

.method public abstract a(I)Z
.end method

.method public abstract a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b([BII)V
    .locals 0

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public c(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/n;->e()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract d()V
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/n;->d:I

    return-void
.end method

.method public abstract e()I
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()Lcom/oppo/camera/gl/s;
.end method

.method public abstract h()Lcom/oppo/camera/gl/s;
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public r()Lcom/oppo/camera/ui/preview/a/n$a;
    .locals 1

    new-instance v0, Lcom/oppo/camera/ui/preview/a/n$a;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/n$a;-><init>(Lcom/oppo/camera/ui/preview/a/n;)V

    return-object v0
.end method
