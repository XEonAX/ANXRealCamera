.class public Lcom/oppo/camera/m/d;
.super Lcom/oppo/camera/m/a;
.source "SLVFps960Mode.java"


# instance fields
.field private d:Z

.field private e:Lcom/b/a;

.field private final f:Lcom/b/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/m/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/ui/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/m/d;->d:Z

    new-instance p1, Lcom/oppo/camera/m/d$1;

    invoke-direct {p1, p0}, Lcom/oppo/camera/m/d$1;-><init>(Lcom/oppo/camera/m/d;)V

    iput-object p1, p0, Lcom/oppo/camera/m/d;->f:Lcom/b/b;

    invoke-direct {p0}, Lcom/oppo/camera/m/d;->j()V

    const-string p1, "SLVFps960Mode"

    const-string p2, "SLVFps960Mode, new MeicamVideoEngine"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m/d;)Lcom/b/a;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/m/d;->e:Lcom/b/a;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/m/d;Lcom/b/a;)Lcom/b/a;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/m/d;->e:Lcom/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/m/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/m/d;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/m/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oppo/camera/m/d;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/m/d;)Lcom/b/b;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/m/d;->f:Lcom/b/b;

    return-object p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/d;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/m/d$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/m/d$2;-><init>(Lcom/oppo/camera/m/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/oppo/camera/ui/control/c;
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_dial_still"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object p1

    return-object p1
.end method

.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "960FPS"

    return-object v0
.end method

.method public a(Lcom/oppo/camera/d/n;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/d/n;->d()V

    const-string p1, "SLVFps960Mode"

    const-string v0, "onInitVideoRecorder, writeAuthorEnablePlatfromVideoInterpolator"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/m/d;->d:Z

    invoke-virtual {p0}, Lcom/oppo/camera/m/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m/d;->e:Lcom/b/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/b/a;->a(I)Z

    iget-object p1, p0, Lcom/oppo/camera/m/d;->e:Lcom/b/a;

    invoke-virtual {p1, p2}, Lcom/b/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x8ca

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/d;->b:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->t()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/m/d;->b:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->u()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/m/d;->d:Z

    iget-object v0, p0, Lcom/oppo/camera/m/d;->e:Lcom/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b/a;->a()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/m/d;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/m/d$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/m/d$3;-><init>(Lcom/oppo/camera/m/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/oppo/camera/m/a;->i()V

    return-void
.end method
