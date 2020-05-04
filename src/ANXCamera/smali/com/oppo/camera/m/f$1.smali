.class Lcom/oppo/camera/m/f$1;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/m/f;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/m/f;


# direct methods
.method constructor <init>(Lcom/oppo/camera/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m/f$1;->a:Lcom/oppo/camera/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/m/f$1;->a:Lcom/oppo/camera/m/f;

    invoke-static {v0}, Lcom/oppo/camera/m/f;->a(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f$1;->a:Lcom/oppo/camera/m/f;

    invoke-static {v0}, Lcom/oppo/camera/m/f;->b(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;

    move-result-object v1

    const v2, 0x7f0f016d

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_0
    return-void
.end method
