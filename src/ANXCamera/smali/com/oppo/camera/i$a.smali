.class public Lcom/oppo/camera/i$a;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/i;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/oppo/camera/i;)V
    .locals 1

    iput-object p1, p0, Lcom/oppo/camera/i$a;->a:Lcom/oppo/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Lcom/oppo/camera/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/oppo/camera/i;->b(Lcom/oppo/camera/i;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/i$a;->a:Lcom/oppo/camera/i;

    invoke-static {p2}, Lcom/oppo/camera/i;->c(Lcom/oppo/camera/i;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/i$a;->a:Lcom/oppo/camera/i;

    invoke-static {p2}, Lcom/oppo/camera/i;->c(Lcom/oppo/camera/i;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FZ)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;IZ)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;JZ)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;ZZ)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/oppo/camera/i;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public apply()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;ZZ)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;FZ)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;IZ)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;JZ)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/i$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/oppo/camera/i$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
