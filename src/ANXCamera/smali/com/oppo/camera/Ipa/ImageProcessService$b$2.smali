.class Lcom/oppo/camera/Ipa/ImageProcessService$b$2;
.super Ljava/lang/Object;
.source "ImageProcessService.java"

# interfaces
.implements Lcom/oppo/camera/ui/control/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Ipa/b$c;

.field final synthetic b:Lcom/oppo/camera/Ipa/ImageProcessService$b;


# direct methods
.method constructor <init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;->b:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    iput-object p2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;->a:Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oppo/camera/ui/control/e;Z)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;->a:Lcom/oppo/camera/Ipa/b$c;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;->a:Lcom/oppo/camera/Ipa/b$c;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    if-eqz p1, :cond_0

    const-string p1, "ImageProcessService"

    const-string p2, "deleteThumbnailAndCache, updateThumbnail after invalid uri is deleted"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;->a:Lcom/oppo/camera/Ipa/b$c;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    invoke-interface {p1}, Lcom/oppo/camera/Ipa/c;->a()V

    :cond_0
    return-void
.end method
