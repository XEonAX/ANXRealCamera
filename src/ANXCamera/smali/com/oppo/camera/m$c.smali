.class public Lcom/oppo/camera/m$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m$c;->a:Lcom/oppo/camera/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m$c;->a:Lcom/oppo/camera/m;

    invoke-static {v0}, Lcom/oppo/camera/m;->g(Lcom/oppo/camera/m;)V

    return-void
.end method
