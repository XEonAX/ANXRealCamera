.class public Lcom/oppo/camera/o/c;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method private static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/oppo/camera/o/c;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oppo/camera/o/c;->a:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/camera/o/c;->a(Landroid/content/Context;II)V

    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/oppo/camera/o/c;->a(Landroid/content/Context;)V

    sget-object p0, Lcom/oppo/camera/o/c;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    sget-object p0, Lcom/oppo/camera/o/c;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    sget-object p0, Lcom/oppo/camera/o/c;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showToast, e: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastUtil"

    invoke-static {p1, p0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
