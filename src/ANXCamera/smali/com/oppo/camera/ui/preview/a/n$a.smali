.class public Lcom/oppo/camera/ui/preview/a/n$a;
.super Ljava/lang/Object;
.source "TexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/oppo/camera/gl/h;

.field public b:Lcom/oppo/camera/gl/g;

.field public c:Lcom/oppo/camera/gl/s;

.field public d:I

.field public e:I

.field public f:I

.field final synthetic g:Lcom/oppo/camera/ui/preview/a/n;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/preview/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->g:Lcom/oppo/camera/ui/preview/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->b:Lcom/oppo/camera/gl/g;

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->e:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/a/n$a;->f:I

    return-void
.end method
