.class Lcom/oppo/camera/m$a;
.super Landroid/database/ContentObserver;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/m;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m$a;->a:Lcom/oppo/camera/m;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
