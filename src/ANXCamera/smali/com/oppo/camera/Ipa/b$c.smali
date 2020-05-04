.class public Lcom/oppo/camera/Ipa/b$c;
.super Ljava/lang/Object;
.source "ImageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/content/ContentResolver;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Bitmap;

.field public g:I

.field public h:J

.field public i:Z

.field public j:Lcom/oppo/camera/Ipa/c;

.field public k:J

.field public l:J

.field public m:I

.field public n:Z

.field public o:Lcom/oppo/camera/ui/control/e$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/Ipa/b$c;->h:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/Ipa/b$c;->i:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    iput-wide v0, p0, Lcom/oppo/camera/Ipa/b$c;->k:J

    iput-wide v0, p0, Lcom/oppo/camera/Ipa/b$c;->l:J

    iput v2, p0, Lcom/oppo/camera/Ipa/b$c;->m:I

    iput-boolean v2, p0, Lcom/oppo/camera/Ipa/b$c;->n:Z

    iput-object v3, p0, Lcom/oppo/camera/Ipa/b$c;->o:Lcom/oppo/camera/ui/control/e$a;

    return-void
.end method
