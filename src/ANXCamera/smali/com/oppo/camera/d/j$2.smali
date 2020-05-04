.class Lcom/oppo/camera/d/j$2;
.super Ljava/lang/Object;
.source "NightMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/j;->n()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/j$2;->a:Lcom/oppo/camera/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/d/j$2;->a:Lcom/oppo/camera/d/j;

    iget-object v1, v0, Lcom/oppo/camera/d/j;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f0134

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    iget-object v0, p0, Lcom/oppo/camera/d/j$2;->a:Lcom/oppo/camera/d/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/camera/d/j;->Y:Z

    return-void
.end method
