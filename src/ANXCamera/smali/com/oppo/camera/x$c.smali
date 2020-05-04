.class Lcom/oppo/camera/x$c;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/x;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/x;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/x$c;->a:Lcom/oppo/camera/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/x;Lcom/oppo/camera/x$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/x$c;-><init>(Lcom/oppo/camera/x;)V

    return-void
.end method


# virtual methods
.method public a(F)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/x$c;->a:Lcom/oppo/camera/x;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->b(F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/x$c;->a:Lcom/oppo/camera/x;

    invoke-static {v0}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->d()Z

    move-result v0

    return v0
.end method
