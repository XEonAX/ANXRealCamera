.class public Lcom/oppo/camera/Ipa/b$a;
.super Ljava/lang/Object;
.source "ImageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:J

.field public n:Ljava/lang/String;

.field public o:I

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$a;->b:[B

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$a;->c:[B

    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->h:I

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->i:I

    iput v0, p0, Lcom/oppo/camera/Ipa/b$a;->j:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$a;->k:J

    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/b$a;->l:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/oppo/camera/Ipa/b$a;->m:J

    const-string v3, ""

    iput-object v3, p0, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/camera/Ipa/b$a;->o:I

    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$a;->p:J

    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/b$a;->q:Z

    return-void
.end method
