.class public Lcom/oppo/camera/entry/EntryProvider;
.super Landroid/content/ContentProvider;
.source "EntryProvider.java"

# interfaces
.implements Lcom/oppo/camera/c;


# instance fields
.field a:Lcom/oppo/camera/entry/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    if-nez p2, :cond_0

    new-instance p2, Lcom/oppo/camera/entry/c;

    invoke-direct {p2}, Lcom/oppo/camera/entry/c;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p0}, Lcom/oppo/camera/entry/EntryProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/MyApplication;

    invoke-virtual {p2}, Lcom/oppo/camera/MyApplication;->d()V

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p2}, Lcom/oppo/camera/entry/c;->a()V

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p2}, Lcom/oppo/camera/entry/c;->b()V

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p2}, Lcom/oppo/camera/entry/c;->c()V

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p2}, Lcom/oppo/camera/entry/c;->d()V

    iget-object p2, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    invoke-virtual {p2}, Lcom/oppo/camera/entry/c;->e()V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "query, uri path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EntryProvider"

    invoke-static {p3, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p2, "static_info"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/entry/EntryProvider;->a:Lcom/oppo/camera/entry/c;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
