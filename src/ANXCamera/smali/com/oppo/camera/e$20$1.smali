.class Lcom/oppo/camera/e$20$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$20;->a(Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$20;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$20;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/e$20$1;->a:Lcom/oppo/camera/e$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/e$20$1;->a:Lcom/oppo/camera/e$20;

    iget-object v0, v0, Lcom/oppo/camera/e$20;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->Y(Lcom/oppo/camera/e;)V

    return-void
.end method
