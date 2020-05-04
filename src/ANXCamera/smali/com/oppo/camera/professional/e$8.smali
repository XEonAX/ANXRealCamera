.class Lcom/oppo/camera/professional/e$8;
.super Landroid/os/Handler;
.source "ProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$8;->a:Lcom/oppo/camera/professional/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/professional/e$8;->a:Lcom/oppo/camera/professional/e;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/professional/e;->a(ILandroid/os/Message;)V

    return-void
.end method
