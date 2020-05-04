.class Lcom/oppo/camera/e$27;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;F)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    iput p2, p0, Lcom/oppo/camera/e$27;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ad(Lcom/oppo/camera/e;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ax()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v3

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    const-string v4, "func_sat_camera"

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v4

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ae(Lcom/oppo/camera/e;)Z

    move-result v5

    iget v6, p0, Lcom/oppo/camera/e$27;->a:F

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aw()F

    move-result v7

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/x;->a(Ljava/util/List;ZZZFFLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->af(Lcom/oppo/camera/e;)V

    iget-object v0, p0, Lcom/oppo/camera/e$27;->b:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ag(Lcom/oppo/camera/e;)V

    return-void
.end method
