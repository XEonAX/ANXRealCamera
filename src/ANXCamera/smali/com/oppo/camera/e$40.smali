.class Lcom/oppo/camera/e$40;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/Ipa/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oppo/camera/ui/control/e;Lcom/oppo/camera/Ipa/b$c;Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bi(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/c;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$c;)V

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    const-string v1, "pref_support_night_process"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p2}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Lcom/oppo/camera/Ipa/b$c;)Lcom/oppo/camera/Ipa/b$c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Lcom/oppo/camera/Ipa/b$c;)Lcom/oppo/camera/Ipa/b$c;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$40$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e$40$1;-><init>(Lcom/oppo/camera/e$40;Lcom/oppo/camera/ui/control/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ag()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/e;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/oppo/camera/v;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oppo/camera/ui/control/g;->a()V

    invoke-static {p1}, Lcom/oppo/camera/ui/control/g;->a(Lcom/oppo/camera/ui/control/e;)V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aV(Lcom/oppo/camera/e;)Ljava/util/List;

    move-result-object p1

    iget-wide v0, p2, Lcom/oppo/camera/Ipa/b$c;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aV(Lcom/oppo/camera/e;)Ljava/util/List;

    move-result-object p1

    iget-wide p2, p2, Lcom/oppo/camera/Ipa/b$c;->h:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
