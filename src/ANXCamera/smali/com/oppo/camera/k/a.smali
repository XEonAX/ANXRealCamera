.class public Lcom/oppo/camera/k/a;
.super Ljava/lang/Object;
.source "MonoFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/k/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/k/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;

.field private e:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/k/a;->a:I

    iput v0, p0, Lcom/oppo/camera/k/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/k/a;->e:[I

    iput p1, p0, Lcom/oppo/camera/k/a;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/oppo/camera/k/a;->d()V

    iget-object p1, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/k/a;->b:I

    iget p1, p0, Lcom/oppo/camera/k/a;->b:I

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/k/a;->e()V

    invoke-direct {p0}, Lcom/oppo/camera/k/a;->f()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 8

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oppo/camera/k/a$a;

    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result v4

    const v5, 0x7f0f012c

    const-string v6, "p4_1.cube.rgb.bin"

    const-string v7, "p4_2.cube.rgb.bin"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/k/a$a;-><init>(Lcom/oppo/camera/k/a;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/oppo/camera/k/a$a;

    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result v4

    const v5, 0x7f0f012d

    const-string v6, "p4_3.cube.rgb.bin"

    const-string v7, "p4_4.cube.rgb.bin"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/k/a$a;-><init>(Lcom/oppo/camera/k/a;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static e(I)I
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-gt v1, p0, :cond_0

    const/16 p0, 0x10

    invoke-static {p0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/e/a;->d(I)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/k/a;->a:I

    iget v1, p0, Lcom/oppo/camera/k/a;->b:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget v2, p0, Lcom/oppo/camera/k/a;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    sget-object v3, Lcom/oppo/camera/ui/preview/a/d;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/k/a;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/k/a;->e:[I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/k/a;->a:I

    iget v1, p0, Lcom/oppo/camera/k/a;->b:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/k/a;->e:[I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oppo/camera/k/a;->e:[I

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget v2, p0, Lcom/oppo/camera/k/a;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/k/a;->e:[I

    sget-object v3, Lcom/oppo/camera/ui/preview/a/d;->h:[I

    aget v3, v3, v0

    aput v3, v2, v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/k/a;->e:[I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/k/a;->a(I)I

    move-result v2

    aput v2, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/k/a$a;

    invoke-virtual {p1}, Lcom/oppo/camera/k/a$a;->a()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/k/a;->e:[I

    :cond_0
    return-void
.end method

.method public declared-synchronized a(ZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/oppo/camera/k/a;->f(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "MonoFilterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsShelterByIndex, isShelter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/k/a;->a:I

    add-int/2addr v1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/k/a$a;

    invoke-virtual {p1}, Lcom/oppo/camera/k/a$a;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/k/a$a;

    invoke-virtual {p1}, Lcom/oppo/camera/k/a$a;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)Z
    .locals 1

    iget v0, p0, Lcom/oppo/camera/k/a;->a:I

    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/oppo/camera/k/a;->a:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/k/a$a;

    invoke-virtual {p1}, Lcom/oppo/camera/k/a$a;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/k/a;->e:[I

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/oppo/camera/k/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "f_contrast_gray_face_dark"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/k/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/k/a$a;

    invoke-virtual {p1}, Lcom/oppo/camera/k/a$a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
