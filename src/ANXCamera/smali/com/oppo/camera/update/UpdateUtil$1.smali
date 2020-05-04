.class Lcom/oppo/camera/update/UpdateUtil$1;
.super Ljava/lang/Object;
.source "UpdateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/update/UpdateUtil;->startUpdate(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/camera/update/UpdateUtil;

.field final synthetic val$isUpdateApp:Z

.field final synthetic val$isUpdateHardware:Z

.field final synthetic val$isUpdateLocal:Z


# direct methods
.method constructor <init>(Lcom/oppo/camera/update/UpdateUtil;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->this$0:Lcom/oppo/camera/update/UpdateUtil;

    iput-boolean p2, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateHardware:Z

    iput-boolean p3, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateApp:Z

    iput-boolean p4, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateLocal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/oppo/camera/update/UpdateUtil;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateHardware:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->this$0:Lcom/oppo/camera/update/UpdateUtil;

    invoke-static {v1}, Lcom/oppo/camera/update/UpdateUtil;->access$100(Lcom/oppo/camera/update/UpdateUtil;)V

    :cond_0
    iget-boolean v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateApp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->this$0:Lcom/oppo/camera/update/UpdateUtil;

    invoke-static {v1}, Lcom/oppo/camera/update/UpdateUtil;->access$200(Lcom/oppo/camera/update/UpdateUtil;)V

    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->val$isUpdateLocal:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/update/UpdateUtil$1;->this$0:Lcom/oppo/camera/update/UpdateUtil;

    invoke-static {v1}, Lcom/oppo/camera/update/UpdateUtil;->access$300(Lcom/oppo/camera/update/UpdateUtil;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
