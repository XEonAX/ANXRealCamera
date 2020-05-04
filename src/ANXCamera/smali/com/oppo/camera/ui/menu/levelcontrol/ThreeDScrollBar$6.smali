.class Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;
.super Ljava/lang/Object;
.source "ThreeDScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/levelcontrol/e;

.field final synthetic b:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;Lcom/oppo/camera/ui/menu/levelcontrol/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->b:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->a:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->b:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Lcom/oppo/camera/ui/menu/levelcontrol/f;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->a:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->b:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    invoke-static {v2}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;)Lcom/oppo/camera/ui/menu/levelcontrol/f;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->a:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->a(Lcom/oppo/camera/ui/menu/levelcontrol/e;Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->b:Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar$6;->a:Lcom/oppo/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(I)V

    return-void
.end method
