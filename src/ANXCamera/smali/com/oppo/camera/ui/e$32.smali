.class Lcom/oppo/camera/ui/e$32;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/e$32;->b:Lcom/oppo/camera/ui/e;

    iput p2, p0, Lcom/oppo/camera/ui/e$32;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/e$32;->b:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/ui/e$32;->a:I

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/e$32;->b:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/ui/e$32;->a:I

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/e;->d(Lcom/oppo/camera/ui/e;I)I

    return-void
.end method
