.class Lcom/oppo/camera/Ipa/ImageProcessService$b$1;
.super Ljava/lang/Object;
.source "ImageProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Ipa/b$a;

.field final synthetic b:Lcom/oppo/camera/Ipa/b;

.field final synthetic c:Lcom/oppo/camera/Ipa/ImageProcessService$b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$a;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->c:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    iput-object p2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    iput-object p3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->b:Lcom/oppo/camera/Ipa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/i/a;->b()V

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->c:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    invoke-static {v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppo/camera/Ipa/a/e;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/a/e;-><init>()V

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->b:Lcom/oppo/camera/Ipa/b;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->b:Lcom/oppo/camera/Ipa/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->c:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->b:Lcom/oppo/camera/Ipa/b;

    invoke-static {v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-boolean v0, v0, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v0, v0, Lcom/oppo/camera/Ipa/b$a;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->c:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;->b:Lcom/oppo/camera/Ipa/b;

    invoke-static {v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b;)V

    :cond_1
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/i/a;->c()V

    return-void
.end method
