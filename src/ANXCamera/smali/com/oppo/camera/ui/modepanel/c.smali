.class public Lcom/oppo/camera/ui/modepanel/c;
.super Ljava/lang/Object;
.source "ModePanelUIControl.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/oppo/camera/ui/modepanel/d;

.field private d:Lcom/oppo/camera/ui/modepanel/d$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oppo/camera/ui/modepanel/c;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/camera/ui/modepanel/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/ui/modepanel/c;->b:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/modepanel/d;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/c;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/d;->a(Lcom/oppo/camera/ui/modepanel/d$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/oppo/camera/ui/modepanel/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/c;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/c;->b()V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/modepanel/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/c;->b()V

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/modepanel/d;->a(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/modepanel/d;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/c;->c:Lcom/oppo/camera/ui/modepanel/d;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/modepanel/d;->a(IZ)V

    :cond_0
    return-void
.end method
