.class public Lcom/oppo/camera/u$c;
.super Ljava/lang/Object;
.source "SloganManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/util/Size;

.field public d:I

.field public e:Z

.field final synthetic f:Lcom/oppo/camera/u;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/u;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/u$c;->f:Lcom/oppo/camera/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/u$c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/camera/u$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/camera/u$c;->c:Landroid/util/Size;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oppo/camera/u$c;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oppo/camera/u$c;->e:Z

    return-void
.end method
