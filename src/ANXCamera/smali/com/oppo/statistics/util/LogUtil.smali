.class public Lcom/oppo/statistics/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static D:Z = false

.field private static E:Z = true

.field private static I:Z = false

.field public static final TAG:Ljava/lang/String; = "com.coloros.statistics--"

.field private static V:Z = false

.field private static W:Z = true

.field private static isDebug:Z = false

.field public static isDebugMode:Z = false

.field private static seprateor:Ljava/lang/String; = "-->"

.field private static special:Ljava/lang/String; = "NearmeStatistics-local"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.statistics--"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.statistics--"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getSeprateor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    return-object v0
.end method

.method public static getSpecial()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.statistics--"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isD()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    return v0
.end method

.method public static isE()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    return v0
.end method

.method public static isI()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    return v0
.end method

.method public static isV()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    return v0
.end method

.method public static isW()Z
    .locals 1

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    return v0
.end method

.method public static reocrdExceptionInfo(Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.nearme.statistics.rom/exception_info.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setD(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    return-void
.end method

.method public static setDebugs(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    sget-boolean p0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/oppo/statistics/util/LogUtil;->isDebugMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->D:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    :goto_0
    return-void
.end method

.method public static setE(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->E:Z

    return-void
.end method

.method public static setI(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->I:Z

    return-void
.end method

.method public static setSeprateor(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    return-void
.end method

.method public static setSpecial(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    return-void
.end method

.method public static setV(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    return-void
.end method

.method public static setW(Z)V
    .locals 0

    sput-boolean p0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.statistics--"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->V:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.statistics--"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oppo/statistics/util/LogUtil;->W:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/statistics/util/LogUtil;->seprateor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
