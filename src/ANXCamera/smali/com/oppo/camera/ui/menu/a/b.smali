.class Lcom/oppo/camera/ui/menu/a/b;
.super Ljava/lang/Object;
.source "BeautyMenuItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/b;->a:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/b;->b:I

    iput v0, p0, Lcom/oppo/camera/ui/menu/a/b;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/menu/a/b;->a:I

    iput p2, p0, Lcom/oppo/camera/ui/menu/a/b;->b:I

    iput p3, p0, Lcom/oppo/camera/ui/menu/a/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a/b;->b:I

    return v0
.end method
