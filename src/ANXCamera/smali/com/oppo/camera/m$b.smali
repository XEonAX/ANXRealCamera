.class public Lcom/oppo/camera/m$b;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m$b;->a:Lcom/oppo/camera/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m$b;->a:Lcom/oppo/camera/m;

    invoke-static {v0}, Lcom/oppo/camera/m;->a(Lcom/oppo/camera/m;)[Lcom/oppo/camera/m$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m$b;->a:Lcom/oppo/camera/m;

    invoke-virtual {v0}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m$b;->a:Lcom/oppo/camera/m;

    invoke-static {v0}, Lcom/oppo/camera/m;->e(Lcom/oppo/camera/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m$b;->a:Lcom/oppo/camera/m;

    invoke-static {v0}, Lcom/oppo/camera/m;->f(Lcom/oppo/camera/m;)V

    :cond_0
    return-void
.end method
