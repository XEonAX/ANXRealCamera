.class Lcom/oppo/camera/ui/menu/levelcontrol/f$1;
.super Ljava/lang/Object;
.source "GLProducerRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/gl/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/levelcontrol/f;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/levelcontrol/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;->a:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;->a:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)Lcom/oppo/camera/ui/menu/levelcontrol/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;->a:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/f;)Lcom/oppo/camera/ui/menu/levelcontrol/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/f$1;->a:Lcom/oppo/camera/ui/menu/levelcontrol/f;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->g()V

    return-void
.end method
