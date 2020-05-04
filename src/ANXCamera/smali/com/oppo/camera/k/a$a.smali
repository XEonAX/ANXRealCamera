.class Lcom/oppo/camera/k/a$a;
.super Ljava/lang/Object;
.source "MonoFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/k/a;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/k/a;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/k/a$a;->a:Lcom/oppo/camera/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/k/a$a;->b:I

    iput p1, p0, Lcom/oppo/camera/k/a$a;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/k/a$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/camera/k/a$a;->e:Ljava/lang/String;

    iput p2, p0, Lcom/oppo/camera/k/a$a;->b:I

    iput p3, p0, Lcom/oppo/camera/k/a$a;->c:I

    iput-object p4, p0, Lcom/oppo/camera/k/a$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/oppo/camera/k/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/k/a$a;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a$a;->e:Ljava/lang/String;

    return-object v0
.end method
