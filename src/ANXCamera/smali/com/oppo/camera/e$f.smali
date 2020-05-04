.class public Lcom/oppo/camera/e$f;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:[B

.field public b:Landroid/util/Size;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/oppo/camera/d/a$a;

.field public f:Z

.field public g:Z

.field public h:Landroid/graphics/Bitmap;

.field final synthetic i:Lcom/oppo/camera/e;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/e$f;->i:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/e$f;->a:[B

    iput-object p1, p0, Lcom/oppo/camera/e$f;->b:Landroid/util/Size;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/e$f;->c:I

    iput-object p1, p0, Lcom/oppo/camera/e$f;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/camera/e$f;->e:Lcom/oppo/camera/d/a$a;

    iput-boolean v0, p0, Lcom/oppo/camera/e$f;->f:Z

    iput-boolean v0, p0, Lcom/oppo/camera/e$f;->g:Z

    iput-object p1, p0, Lcom/oppo/camera/e$f;->h:Landroid/graphics/Bitmap;

    return-void
.end method
