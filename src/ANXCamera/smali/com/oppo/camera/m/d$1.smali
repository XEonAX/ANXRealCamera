.class Lcom/oppo/camera/m/d$1;
.super Ljava/lang/Object;
.source "SLVFps960Mode.java"

# interfaces
.implements Lcom/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m/d;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/oppo/camera/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/m/d$1;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SLVFps960Mode"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a;->c()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/m/d$1;->b:Z

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    iget-object p1, p1, Lcom/oppo/camera/m/d;->c:Lcom/oppo/camera/m/a$a;

    invoke-interface {p1, v4}, Lcom/oppo/camera/m/a$a;->b(Ljava/lang/String;)V

    const-string p1, "onCompileStatusChange, compile failed!"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/m/d$1;->b:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a;->c()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompileStatusChange, compile finished ! Cost: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {v1}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;)Lcom/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompileStatusChange mbStopped: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {v1}, Lcom/oppo/camera/m/d;->b(Lcom/oppo/camera/m/d;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1}, Lcom/oppo/camera/m/d;->b(Lcom/oppo/camera/m/d;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    invoke-static {p1, v0}, Lcom/oppo/camera/m/d;->a(Lcom/oppo/camera/m/d;Z)Z

    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    iget-object p1, p1, Lcom/oppo/camera/m/d;->c:Lcom/oppo/camera/m/a$a;

    invoke-interface {p1, v4}, Lcom/oppo/camera/m/a$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/m/d$1;->a:Lcom/oppo/camera/m/d;

    iget-object p1, p1, Lcom/oppo/camera/m/d;->c:Lcom/oppo/camera/m/a$a;

    invoke-interface {p1, v4}, Lcom/oppo/camera/m/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "onCompileStatusChange, compile finished, but already failed!"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iput-boolean v0, p0, Lcom/oppo/camera/m/d$1;->b:Z

    const-string p1, "onCompileStatusChange compile going..."

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
