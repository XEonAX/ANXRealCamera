.class Lcom/oppo/camera/professional/e$4;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    iput-object p2, p0, Lcom/oppo/camera/professional/e$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/camera/professional/e$4;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pref_camera_flashmode_key"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->E(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/camera/professional/e$4;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->F(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->G(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/camera/professional/e$4;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;ZZ)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$4;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->H(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
