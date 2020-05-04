.class Lcom/oppo/camera/k$a;
.super Landroid/os/AsyncTask;
.source "GestureEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/k;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/k;Landroid/content/Context;II)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/k$a;->d:Z

    invoke-static {p1, p2}, Lcom/oppo/camera/k;->a(Lcom/oppo/camera/k;Landroid/content/Context;)Landroid/content/Context;

    iput p3, p0, Lcom/oppo/camera/k$a;->b:I

    iput p4, p0, Lcom/oppo/camera/k$a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v1}, Lcom/oppo/camera/k;->c(Lcom/oppo/camera/k;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    new-instance v0, Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;-><init>(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const-string p1, "GestureEngineManager"

    iget-object v0, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v0}, Lcom/oppo/camera/k;->b(Lcom/oppo/camera/k;)V

    iget-object v0, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v0}, Lcom/oppo/camera/k;->c(Lcom/oppo/camera/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    new-instance v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    iget v4, p0, Lcom/oppo/camera/k$a;->b:I

    iget v5, p0, Lcom/oppo/camera/k$a;->c:I

    iget-object v6, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v6}, Lcom/oppo/camera/k;->c(Lcom/oppo/camera/k;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;-><init>(IILandroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/oppo/camera/k;->a(Lcom/oppo/camera/k;Lcom/crunchfish/touchless_a3d/TouchlessA3D;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    iget-object v2, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v2}, Lcom/oppo/camera/k;->d(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    move-result-object v2

    const/16 v3, 0x3ea

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->setParameter(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture detect engine has be inited mImageWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/k$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mImageHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/k$a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/crunchfish/touchless_a3d/exception/LicenseNotValidException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/crunchfish/touchless_a3d/exception/LicenseServerUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    const-string v2, "hand_wink.json"

    invoke-direct {p0, v2}, Lcom/oppo/camera/k$a;->a(Ljava/lang/String;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/k;->a(Lcom/oppo/camera/k;Lcom/crunchfish/touchless_a3d/gesture/Gesture;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    iget-object v0, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v0}, Lcom/oppo/camera/k;->f(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v2}, Lcom/oppo/camera/k;->e(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;->registerListener(Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;)V

    iget-object v0, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v0}, Lcom/oppo/camera/k;->d(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/k$a;->a:Lcom/oppo/camera/k;

    invoke-static {v2}, Lcom/oppo/camera/k;->f(Lcom/oppo/camera/k;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->registerGesture(Lcom/crunchfish/touchless_a3d/gesture/Gesture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureEngineLoadTask IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureEngineLoadTask LicenseServerUnavailableException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/oppo/camera/k$a;->d:Z

    return-object v1

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureEngineLoadTask LicenseNotValidException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/oppo/camera/k$a;->d:Z

    return-object v1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-boolean p1, p0, Lcom/oppo/camera/k$a;->d:Z

    if-nez p1, :cond_0

    const-string p1, "GestureEngineManager"

    const-string v0, "Gesture engine init fail"

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/k$a;->a(Ljava/lang/Void;)V

    return-void
.end method
