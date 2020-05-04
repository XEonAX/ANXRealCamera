.class public Lcom/oppo/camera/n;
.super Ljava/lang/Object;
.source "NetLocationPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/n$b;,
        Lcom/oppo/camera/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/f$a;

.field private b:Lcom/color/support/widget/f;

.field private c:Lcom/oppo/camera/n$b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/camera/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/n;->b:Lcom/color/support/widget/f;

    iput-object v0, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    iput-object v0, p0, Lcom/oppo/camera/n;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/oppo/camera/n;->e:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/n;->f:Z

    iput-object p1, p0, Lcom/oppo/camera/n;->e:Landroid/content/Context;

    new-instance p1, Lcom/oppo/camera/n$b;

    invoke-direct {p1, p0, v0}, Lcom/oppo/camera/n$b;-><init>(Lcom/oppo/camera/n;Lcom/oppo/camera/n$1;)V

    iput-object p1, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/n;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/n;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/n;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/n;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/n;->f:Z

    return v0
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Lcom/oppo/camera/n$a;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v0

    const-string v1, "pref_net_location_checkbox_key"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pref_net_checkbox_key"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "pref_location_checkbox_key"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v3, p0, Lcom/oppo/camera/n;->f:Z

    return v2

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    if-eqz v0, :cond_3

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput-object p2, p0, Lcom/oppo/camera/n;->d:Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetLocationDialog, value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NetLocationPermissionDialog"

    invoke-static {v1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/n;->b:Lcom/color/support/widget/f;

    if-nez p2, :cond_1

    new-instance p2, Lcom/color/support/widget/f$a;

    iget-object v0, p0, Lcom/oppo/camera/n;->e:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/color/support/widget/f$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    iget-object p2, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    const v0, 0x7f0f00a8

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->a(I)Lcom/color/support/widget/f$a;

    move-result-object p2

    const v0, 0x7f0f00a5

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->b(I)Lcom/color/support/widget/f$a;

    move-result-object p2

    const v0, 0x7f0f00a7

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->d(I)Lcom/color/support/widget/f$a;

    move-result-object p2

    const v0, 0x7f0f00a6

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->c(I)Lcom/color/support/widget/f$a;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/color/support/widget/f$a;->a(Z)Lcom/color/support/widget/f$a;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/color/support/widget/f$a;->b(Z)Lcom/color/support/widget/f$a;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;

    move-result-object p2

    new-instance v0, Lcom/oppo/camera/n$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/n$1;-><init>(Lcom/oppo/camera/n;)V

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$a;

    iget-object p2, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    invoke-virtual {p2}, Lcom/color/support/widget/f$a;->b()Lcom/color/support/widget/f;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/n;->b:Lcom/color/support/widget/f;

    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    iget-object v0, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;

    iget-object p2, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    invoke-virtual {p2}, Lcom/color/support/widget/f$a;->a()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/oppo/camera/n$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/n$2;-><init>(Lcom/oppo/camera/n;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p2, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/n$b;->a(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/n;->b:Lcom/color/support/widget/f;

    invoke-virtual {p1}, Lcom/color/support/widget/f;->b()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v3}, Lcom/oppo/camera/n$b;->a(IZ)V

    :goto_0
    return v3

    :cond_3
    iput-boolean v3, p0, Lcom/oppo/camera/n;->f:Z

    return v2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/n;->f:Z

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "NetLocationPermissionDialog"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/n;->a:Lcom/color/support/widget/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;

    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/n;->b:Lcom/color/support/widget/f;

    iput-object v1, p0, Lcom/oppo/camera/n;->c:Lcom/oppo/camera/n$b;

    iput-object v1, p0, Lcom/oppo/camera/n;->d:Ljava/util/List;

    return-void
.end method
