.class public Lcom/oppo/camera/ui/control/e;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/e$b;,
        Lcom/oppo/camera/ui/control/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/oppo/camera/ui/control/e$b;

.field private static b:Lcom/oppo/camera/ui/control/e$b;

.field private static c:Lcom/oppo/camera/ui/control/e$b;

.field private static d:Ljava/lang/Object;

.field private static e:I

.field private static m:Lcom/oppo/camera/jni/FormatConverter;


# instance fields
.field private f:Landroid/net/Uri;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Landroid/graphics/Bitmap;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/e;->d:Ljava/lang/Object;

    new-instance v0, Lcom/oppo/camera/jni/FormatConverter;

    invoke-direct {v0}, Lcom/oppo/camera/jni/FormatConverter;-><init>()V

    sput-object v0, Lcom/oppo/camera/ui/control/e;->m:Lcom/oppo/camera/jni/FormatConverter;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->i:J

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/camera/ui/control/e;->k:Z

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->l:J

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->i:J

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/oppo/camera/ui/control/e;->l:J

    iput-object p1, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->i:J

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/e;->k:Z

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->l:J

    iput-object p1, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    iput-wide p5, p0, Lcom/oppo/camera/ui/control/e;->i:J

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/oppo/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thumbnail, mUri: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", thumbnail bitmap is null..."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Thumbnail"

    invoke-static {p3, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->i:J

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/control/e;->k:Z

    iput-wide v1, p0, Lcom/oppo/camera/ui/control/e;->l:J

    iput-object p1, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    iput-wide p5, p0, Lcom/oppo/camera/ui/control/e;->i:J

    iput-object p7, p0, Lcom/oppo/camera/ui/control/e;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/oppo/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thumbnail(), mUri: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", thumbnail bitmap is null..."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Thumbnail"

    invoke-static {p3, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;[Lcom/oppo/camera/ui/control/e;)I
    .locals 13

    invoke-static {p0}, Lcom/oppo/camera/ui/control/e;->a(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    invoke-static {p0}, Lcom/oppo/camera/ui/control/e;->d(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    invoke-static {p0}, Lcom/oppo/camera/ui/control/e;->e(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/ui/control/e;->c:Lcom/oppo/camera/ui/control/e$b;

    sget-object v0, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    const/4 v1, 0x0

    const-string v2, "Thumbnail"

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/ui/control/e;->c:Lcom/oppo/camera/ui/control/e$b;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", video: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/ui/control/e;->h()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/oppo/camera/ui/control/e;->h()I

    move-result v0

    const-string v3, ", height: "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_6

    :try_start_0
    sget-object v0, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v0, v0, Lcom/oppo/camera/ui/control/e$b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    :try_start_1
    sget-object v7, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v7, v7, Lcom/oppo/camera/ui/control/e$b;->e:Ljava/lang/String;

    invoke-static {v7}, Lcom/oppo/camera/ui/control/e;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    sget-object v7, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v0, v6

    :goto_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    :goto_1
    if-nez v0, :cond_3

    sget-object v8, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v8, v8, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    sget-object v9, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v9, v9, Lcom/oppo/camera/ui/control/e$b;->g:Ljava/lang/String;

    sget-object v10, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget v10, v10, Lcom/oppo/camera/ui/control/e$b;->i:I

    sget-object v11, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget v11, v11, Lcom/oppo/camera/ui/control/e$b;->j:I

    invoke-static {v8, v9, v10, v11}, Lcom/oppo/camera/o/d;->a(Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastThumbnailFromContentResolver, uri: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v7, v7, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", path: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v7, v7, Lcom/oppo/camera/ui/control/e$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", width: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget v7, v7, Lcom/oppo/camera/ui/control/e$b;->i:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget v3, v3, Lcom/oppo/camera/ui/control/e$b;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object v0, v0, Lcom/oppo/camera/ui/control/e$b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/ui/control/e;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    goto :goto_2

    :cond_3
    move-object v3, v7

    :goto_2
    if-nez v0, :cond_5

    const-string p1, "getLastThumbnailFromContentResolver, bitmap null"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object p1, p1, Lcom/oppo/camera/ui/control/e$b;->g:Ljava/lang/String;

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    array-length v0, p1

    sub-int/2addr v0, v5

    aget-object p1, p1, v0

    const-string v0, "jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_2
    sget-object p1, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object p1, p1, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, delete image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object p1, p1, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLastThumbnailFromContentResolver, Failed to delete image: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    iget-object p1, p1, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return v1

    :cond_5
    move-object v7, v0

    move-object v0, v3

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/oppo/camera/ui/control/e;->h()I

    move-result v0

    if-ne v0, v5, :cond_7

    :try_start_3
    sget-object v0, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    iget-object v0, v0, Lcom/oppo/camera/ui/control/e$b;->e:Ljava/lang/String;

    sget v7, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v0, v6, v7}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v0, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    if-eqz v6, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLastThumbnailFromContentResolver, sVideo.mId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    iget-wide v8, v8, Lcom/oppo/camera/ui/control/e$b;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bitmap width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lastMedia.orientation: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oppo/camera/ui/control/e$b;->b:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_7
    invoke-static {}, Lcom/oppo/camera/ui/control/e;->h()I

    move-result v0

    if-ne v0, v4, :cond_9

    sget-object v0, Lcom/oppo/camera/ui/control/e;->c:Lcom/oppo/camera/ui/control/e$b;

    :cond_8
    :goto_4
    move-object v7, v6

    goto :goto_5

    :cond_9
    move-object v0, v6

    move-object v7, v0

    :goto_5
    if-eqz v0, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastThumbnailFromContentResolver, thumbnail uri: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_c

    iget-object v3, v0, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    invoke-static {v3, p0}, Lcom/oppo/camera/o/d;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    iget-object v3, v0, Lcom/oppo/camera/ui/control/e$b;->g:Ljava/lang/String;

    iget v6, v0, Lcom/oppo/camera/ui/control/e$b;->i:I

    iget v8, v0, Lcom/oppo/camera/ui/control/e$b;->j:I

    invoke-static {p0, v3, v6, v8}, Lcom/oppo/camera/o/d;->a(Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iget-object v6, v0, Lcom/oppo/camera/ui/control/e$b;->d:Landroid/net/Uri;

    iget v8, v0, Lcom/oppo/camera/ui/control/e$b;->b:I

    iget-object v9, v0, Lcom/oppo/camera/ui/control/e$b;->e:Ljava/lang/String;

    iget-wide v10, v0, Lcom/oppo/camera/ui/control/e$b;->c:J

    iget-object v12, v0, Lcom/oppo/camera/ui/control/e$b;->h:Ljava/lang/String;

    invoke-static/range {v6 .. v12}, Lcom/oppo/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;JLjava/lang/String;)Lcom/oppo/camera/ui/control/e;

    move-result-object p0

    aput-object p0, p1, v1

    return v5

    :cond_c
    const-string p0, "getLastThumbnailFromContentResolver, THUMBNAIL_DELETED"

    invoke-static {v2, p0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static a(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oppo/camera/o/d;->e(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const-wide/16 p0, -0x1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    throw p0

    :catch_1
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 p0, 0x0

    :catch_3
    :goto_1
    invoke-static {p0, p2}, Lcom/oppo/camera/ui/control/e;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;
    .locals 5

    invoke-static {p0}, Lcom/oppo/camera/ui/control/e;->b(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;

    move-result-object v0

    invoke-static {p0}, Lcom/oppo/camera/ui/control/e;->c(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;

    move-result-object p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iget-wide v1, p0, Lcom/oppo/camera/ui/control/e$b;->c:J

    iget-wide v3, v0, Lcom/oppo/camera/ui/control/e$b;->c:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    if-nez p0, :cond_3

    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "createThumbnail(), use data cereate bitmap is null... "

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/oppo/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oppo/camera/ui/control/e;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbnail, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/ui/control/e;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/oppo/camera/ui/control/e;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;JLjava/lang/String;)Lcom/oppo/camera/ui/control/e;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbnail, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Thumbnail"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/camera/ui/control/e;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/oppo/camera/ui/control/e;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static a([BIILandroid/net/Uri;Ljava/lang/String;J)Lcom/oppo/camera/ui/control/e;
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    if-le p2, v1, :cond_0

    move p2, v1

    :cond_0
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    array-length v1, p0

    invoke-static {p0, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget p2, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, p2}, Lcom/oppo/camera/ui/control/e;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p3

    move v2, p1

    move-object v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/oppo/camera/ui/control/e;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;ILjava/lang/String;J)Lcom/oppo/camera/ui/control/e;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Thumbnail"

    const-string v1, "rotateImage"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v7, p1, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x4

    div-int/2addr v1, v2

    sget v3, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    sget v3, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget v0, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    invoke-static {p0, v0}, Lcom/oppo/camera/ui/control/e;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;
    .locals 19

    const-string v0, "_data"

    const-string v1, "Thumbnail"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "limit"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id"

    const-string v7, "orientation"

    const-string v8, "datetaken"

    const-string v9, "_data"

    const-string v10, "title"

    const-string v11, "_data"

    const-string v12, "width"

    const-string v13, "height"

    const-string v14, "mime_type"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v3

    const-string v4, " AND cshot_id != 1 "

    const-string v7, ")"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(bucket_id IN ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->k:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(bucket_id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->k:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    const-string v9, "datetaken DESC,_id DESC"

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLatestImage, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/oppo/camera/ui/control/e$b;

    const-string v6, "orientation"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v6, "datetaken"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "title"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "mime_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v0, "width"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v0, "height"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object v6, v5

    invoke-direct/range {v6 .. v18}, Lcom/oppo/camera/ui/control/e$b;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_2
    :try_start_2
    const-string v2, "getLatestImage, fail: "

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-object v3

    :goto_4
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    move v13, v3

    goto :goto_0

    :cond_1
    move v13, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v0, p1, :cond_3

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v13, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v1, v3

    :cond_2
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v7

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v0, v8

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v11, v12, v2}, Lcom/oppo/camera/o/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v4, Lcom/oppo/camera/ui/control/e;->m:Lcom/oppo/camera/jni/FormatConverter;

    mul-int v6, v7, v1

    mul-int v10, v11, v1

    move-object v5, p0

    move-object v9, p1

    invoke-virtual/range {v4 .. v13}, Lcom/oppo/camera/jni/FormatConverter;->scaleArea(Landroid/graphics/Bitmap;IIILandroid/graphics/Bitmap;IIII)V

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbnailBitmapFromCache, title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/oppo/camera/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oppo/camera/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/l/a;->f(Ljava/lang/String;)Z

    :cond_0
    const-wide/32 v2, 0x3200000

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v4, v4, v2, v3}, Lb/a/a;->a(Ljava/io/File;IIJ)Lb/a/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_2

    :try_start_1
    const-string p0, "getThumbnailBitmapFromCache, diskLruCache null"

    invoke-static {v1, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lb/a/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    :try_start_3
    invoke-virtual {v0, p0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$c;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p0, :cond_5

    :try_start_4
    const-string v2, "getThumbnailBitmapFromCache, snapShot null"

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Lb/a/a$c;->close()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/a/a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v5

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lb/a/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v2, v3}, Lcom/oppo/camera/ui/control/e;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lb/a/a$c;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lb/a/a;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    return-object v2

    :catchall_0
    move-exception v2

    move-object v5, v1

    move-object v6, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v6

    goto/16 :goto_b

    :catch_3
    move-exception v2

    move-object v6, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_b

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v5

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v2, v0

    move-object v0, v5

    goto :goto_b

    :catch_5
    move-exception p0

    move-object v2, v0

    move-object v0, v5

    move-object v1, v0

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v0, v5

    move-object v2, v0

    goto :goto_b

    :catch_6
    move-exception p0

    move-object v0, v5

    move-object v1, v0

    move-object v2, v1

    :goto_7
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_7
    move-exception p0

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/a/a$c;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lb/a/a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    :goto_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_a
    return-object v5

    :catchall_4
    move-exception p0

    move-object v5, v1

    :goto_b
    if-eqz v5, :cond_c

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :cond_c
    :goto_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lb/a/a$c;->close()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lb/a/a;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_e
    throw p0
.end method

.method private static c(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;
    .locals 28

    const-string v0, "_data"

    const-string v1, "Thumbnail"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "limit"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id"

    const-string v5, "orientation"

    const-string v6, "datetaken"

    const-string v7, "_data"

    const-string v8, "title"

    const-string v9, "_data"

    const-string v10, "width"

    const-string v11, "height"

    const-string v12, "mime_type"

    const-string v13, "cshot_id"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id in (SELECT _id FROM images WHERE cshot_id > 1) AND (_data like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oppo/camera/v;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%\'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " OR _data like \'"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oppo/camera/v;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%\')"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "datetaken DESC"

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object v5, v3

    move-object v6, v10

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v15, :cond_4

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "( cshot_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cshot_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND (_data like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oppo/camera/v;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oppo/camera/v;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "datetaken ASC"

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object v5, v3

    move-object v6, v10

    :try_start_2
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    new-instance v6, Lcom/oppo/camera/ui/control/e$b;

    const-string v7, "orientation"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v7, "datetaken"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v2, "title"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v0, "mime_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string v0, "width"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string v0, "height"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move-object v15, v6

    move-wide/from16 v16, v4

    invoke-direct/range {v15 .. v27}, Lcom/oppo/camera/ui/control/e$b;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_5

    :goto_0
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v15

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v15

    :goto_1
    :try_start_6
    const-string v2, "getLatestBurstImage, getBurstMin, fail: "

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_3

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v15, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v15, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    move-object v3, v15

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v15, v14

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v15, v14

    :goto_4
    :try_start_8
    const-string v2, "getLatestBurstImage, fail: "

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    return-object v14

    :goto_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private static d(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;
    .locals 26

    const-string v1, "Thumbnail"

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "mime_type"

    const-string v9, "datetaken"

    const-string v10, "_data"

    const-string v3, "_id"

    filled-new-array {v3, v10, v9, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v3

    const-string v6, " > 0"

    const-string v7, "duration"

    const-string v8, ") and "

    const-string v12, "bucket_id IN ("

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/oppo/camera/v;->m:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/oppo/camera/v;->g:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/oppo/camera/v;->m:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastVideoThumbnail, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/oppo/camera/ui/control/e$b;

    const/16 v16, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v25}, Lcom/oppo/camera/ui/control/e$b;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v12

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v12

    :goto_2
    :try_start_2
    const-string v2, "getLastVideoThumbnail, fail"

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-object v12

    :goto_4
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static e(Landroid/content/ContentResolver;)Lcom/oppo/camera/ui/control/e$b;
    .locals 26

    const-string v1, "Thumbnail"

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "mime_type"

    const-string v9, "datetaken"

    const-string v10, "_data"

    const-string v3, "_id"

    filled-new-array {v3, v10, v9, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v3

    const-string v6, " AND mime_type like \'model/gltf-binary\'"

    const-string v7, ")"

    const-string v8, "bucket_id IN ("

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->m:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->g:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/v;->m:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastVideoThumbnail, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/oppo/camera/ui/control/e$b;

    const/16 v16, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v25}, Lcom/oppo/camera/ui/control/e$b;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v12

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v12

    :goto_2
    :try_start_2
    const-string v2, "getLastVideoThumbnail, fail"

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-object v12

    :goto_4
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static h()I
    .locals 9

    sget-object v0, Lcom/oppo/camera/ui/control/e;->a:Lcom/oppo/camera/ui/control/e$b;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/oppo/camera/ui/control/e$b;->c:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    sget-object v0, Lcom/oppo/camera/ui/control/e;->b:Lcom/oppo/camera/ui/control/e$b;

    if-eqz v0, :cond_1

    iget-wide v5, v0, Lcom/oppo/camera/ui/control/e$b;->c:J

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    sget-object v0, Lcom/oppo/camera/ui/control/e;->c:Lcom/oppo/camera/ui/control/e$b;

    if-eqz v0, :cond_2

    iget-wide v7, v0, Lcom/oppo/camera/ui/control/e$b;->c:J

    goto :goto_2

    :cond_2
    move-wide v7, v1

    :goto_2
    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    sput v0, Lcom/oppo/camera/ui/control/e;->e:I

    goto :goto_3

    :cond_3
    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    cmp-long v0, v5, v1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    sput v0, Lcom/oppo/camera/ui/control/e;->e:I

    goto :goto_3

    :cond_4
    cmp-long v0, v7, v5

    if-lez v0, :cond_5

    cmp-long v0, v7, v3

    if-lez v0, :cond_5

    cmp-long v0, v7, v1

    if-lez v0, :cond_5

    const/4 v0, 0x2

    sput v0, Lcom/oppo/camera/ui/control/e;->e:I

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    sput v0, Lcom/oppo/camera/ui/control/e;->e:I

    :goto_3
    sget v0, Lcom/oppo/camera/ui/control/e;->e:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/ui/control/e;->l:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/ui/control/e;->l:J

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/ui/control/e;->i:J

    return-wide v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->j:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/control/e;->f:Landroid/net/Uri;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/control/e;->g:Ljava/lang/String;

    return-object v0
.end method
