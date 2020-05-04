.class Lcom/oppo/camera/d/a$4;
.super Lcom/oppo/camera/gl/t$a;
.source "BaseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e/d;

.field final synthetic b:Lcom/oppo/camera/d/a;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/a;Lcom/oppo/camera/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iput-object p2, p0, Lcom/oppo/camera/d/a$4;->a:Lcom/oppo/camera/e/d;

    invoke-direct {p0}, Lcom/oppo/camera/gl/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-static {v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/d/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-static {v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/d/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-static {v2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/d/a;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oppo/camera/ui/control/e;

    iget-object v4, p0, Lcom/oppo/camera/d/a$4;->a:Lcom/oppo/camera/e/d;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, p1, v4, v5}, Lcom/oppo/camera/ui/control/e;-><init>(Landroid/graphics/Bitmap;J)V

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capturePreviewData, onPreviewCaptured, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v0, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v0, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v0, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v1, v1, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v1, v1, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/a$4$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/a$4$1;-><init>(Lcom/oppo/camera/d/a$4;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/oppo/camera/Ipa/e$a;

    invoke-direct {v3}, Lcom/oppo/camera/Ipa/e$a;-><init>()V

    iput-object p1, v3, Lcom/oppo/camera/Ipa/e$a;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-virtual {v4}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/oppo/camera/Ipa/e$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object v4, v4, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v3, Lcom/oppo/camera/Ipa/e$a;->m:Landroid/content/ContentResolver;

    new-instance v4, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-direct {v4, v5, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v3, Lcom/oppo/camera/Ipa/e$a;->d:Landroid/util/Size;

    iput-wide v1, v3, Lcom/oppo/camera/Ipa/e$a;->i:J

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->a(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/oppo/camera/Ipa/e$a;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->bI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/oppo/camera/Ipa/e$a;->f:Ljava/lang/String;

    iput-object v0, v3, Lcom/oppo/camera/Ipa/e$a;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget p1, p1, Lcom/oppo/camera/d/a;->h:I

    iput p1, v3, Lcom/oppo/camera/Ipa/e$a;->j:I

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget p1, p1, Lcom/oppo/camera/d/a;->j:I

    iput p1, v3, Lcom/oppo/camera/Ipa/e$a;->l:I

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget p1, p1, Lcom/oppo/camera/d/a;->j:I

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget v0, v0, Lcom/oppo/camera/d/a;->h:I

    invoke-static {p1, v0}, Lcom/oppo/camera/e/a;->b(II)I

    move-result p1

    iput p1, v3, Lcom/oppo/camera/Ipa/e$a;->k:I

    iput-wide p2, v3, Lcom/oppo/camera/Ipa/e$a;->n:J

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-boolean p1, p1, Lcom/oppo/camera/d/a;->p:Z

    iput-boolean p1, v3, Lcom/oppo/camera/Ipa/e$a;->o:Z

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-boolean p1, p1, Lcom/oppo/camera/d/a;->p:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iput p1, v3, Lcom/oppo/camera/Ipa/e$a;->p:I

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->a:Lcom/oppo/camera/e/d;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v3, Lcom/oppo/camera/Ipa/e$a;->s:J

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-boolean p1, p1, Lcom/oppo/camera/d/a;->p:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object p1, p1, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/oppo/camera/Ipa/e$a;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object p1, p1, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->n()J

    move-result-wide p1

    iput-wide p1, v3, Lcom/oppo/camera/Ipa/e$a;->r:J

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-static {p1, v3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/d/a;Lcom/oppo/camera/Ipa/e$a;)Lcom/oppo/camera/Ipa/e$a;

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->bE()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget-object p1, p1, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/Ipa/e$a;)Landroid/net/Uri;

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    invoke-static {p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/d/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/d/a;I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "BaseMode"

    const-string p2, "capturePreviewData, onPreviewCaptured, X"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->a:Lcom/oppo/camera/e/d;

    iget-boolean v0, v0, Lcom/oppo/camera/e/d;->A:Z

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget v0, v0, Lcom/oppo/camera/d/a;->j:I

    iget-object v1, p0, Lcom/oppo/camera/d/a$4;->a:Lcom/oppo/camera/e/d;

    iget v1, v1, Lcom/oppo/camera/e/d;->z:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/a$4;->b:Lcom/oppo/camera/d/a;

    iget v1, v1, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a$4;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_0

    rsub-int v0, v0, 0xb4

    return v0

    :cond_0
    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_1

    rsub-int v0, v0, 0x168

    :cond_1
    return v0
.end method
