.class Lcom/oppo/camera/d/e$1;
.super Landroid/os/Handler;
.source "CommonCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "CommonCapMode"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "handleMessage, MSG_CODE_CAPTURE_RAW_DONE"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-boolean p1, p1, Lcom/oppo/camera/d/e;->q:Z

    if-nez p1, :cond_1

    const-string p1, "handleMessage, raw capture is done, break"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    invoke-direct {p1}, Lcom/oppo/camera/ui/control/c;-><init>()V

    const-string v0, "button_color_inside_none"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/c;->a(I)V

    iget-object v0, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->f(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "handleMessage, MSG_CODE_UPDATE_COUNTDOWN_TIME"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-boolean p1, p1, Lcom/oppo/camera/d/e;->s:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    invoke-static {p1}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/d/e;)V

    goto :goto_0

    :cond_3
    const-string p1, "handleMessage, MSG_CODE_HIDE_PICTURE_NUM"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-boolean p1, p1, Lcom/oppo/camera/d/e;->s:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->d(Z)V

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->w()V

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->b(Z)V

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    iget-object p1, p1, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->o(Z)V

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/d/e$1;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {p1}, Lcom/oppo/camera/d/e;->bD()V

    :cond_7
    :goto_0
    return-void
.end method
