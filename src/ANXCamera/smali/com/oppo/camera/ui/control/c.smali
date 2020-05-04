.class public Lcom/oppo/camera/ui/control/c;
.super Ljava/lang/Object;
.source "MainShutterButtonInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const-string v1, "button_color_inside_none"

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    const-string v1, "button_shape_ring_none"

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const-string p1, "button_color_inside_none"

    iput-object p1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    const-string p1, "button_shape_ring_none"

    iput-object p1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    iput-object p2, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    const-string p1, "button_shape_ring_none"

    iput-object p1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    iput-object p2, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    iput-object p2, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    iput p4, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/c;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/control/c;->d:I

    return v0
.end method
