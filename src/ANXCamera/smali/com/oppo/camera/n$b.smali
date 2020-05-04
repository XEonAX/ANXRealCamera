.class Lcom/oppo/camera/n$b;
.super Ljava/lang/Object;
.source "NetLocationPermissionDialog.java"

# interfaces
.implements Lcom/color/support/widget/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/n;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/n;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/n$b;->a:Lcom/oppo/camera/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/n;Lcom/oppo/camera/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppo/camera/n$b;-><init>(Lcom/oppo/camera/n;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelected, isCheck: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whichButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetLocationPermissionDialog"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_net_location_checkbox_key"

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/n$b;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_location_checkbox_key"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/n$b;->a:Lcom/oppo/camera/n;

    invoke-static {p1}, Lcom/oppo/camera/n;->b(Lcom/oppo/camera/n;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/n$b;->a:Lcom/oppo/camera/n;

    invoke-static {p1}, Lcom/oppo/camera/n;->b(Lcom/oppo/camera/n;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/n$a;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/oppo/camera/n$a;->a()V

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    if-ne p1, v2, :cond_5

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/n$b;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/n$b;->a:Lcom/oppo/camera/n;

    invoke-static {p1}, Lcom/oppo/camera/n;->b(Lcom/oppo/camera/n;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/n$b;->a:Lcom/oppo/camera/n;

    invoke-static {p1}, Lcom/oppo/camera/n;->b(Lcom/oppo/camera/n;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/n$a;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/oppo/camera/n$a;->b()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/n$b;->b:Landroid/content/SharedPreferences;

    return-void
.end method
