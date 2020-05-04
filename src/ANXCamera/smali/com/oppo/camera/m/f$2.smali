.class Lcom/oppo/camera/m/f$2;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Lcom/oppo/camera/m/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m/f;


# direct methods
.method constructor <init>(Lcom/oppo/camera/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    iget-object v1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-static {v1}, Lcom/oppo/camera/m/f;->c(Lcom/oppo/camera/m/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/m/f;->a(Lcom/oppo/camera/m/f;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-static {p1}, Lcom/oppo/camera/m/f;->d(Lcom/oppo/camera/m/f;)V

    iget-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/m/f;->a(Lcom/oppo/camera/m/f;Z)Z

    const-string p1, "SlowVideoMode"

    const-string v0, "onProcessFinished !"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-static {v0, p1}, Lcom/oppo/camera/m/f;->a(Lcom/oppo/camera/m/f;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-static {p1}, Lcom/oppo/camera/m/f;->e(Lcom/oppo/camera/m/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/m/f;->b(Lcom/oppo/camera/m/f;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    invoke-static {p1}, Lcom/oppo/camera/m/f;->d(Lcom/oppo/camera/m/f;)V

    iget-object p1, p0, Lcom/oppo/camera/m/f$2;->a:Lcom/oppo/camera/m/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/camera/m/f;->a(Lcom/oppo/camera/m/f;Z)Z

    const-string p1, "SlowVideoMode"

    const-string v0, "onCompileFailed !"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
