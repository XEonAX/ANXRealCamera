.class Lcom/oppo/camera/s$2;
.super Ljava/lang/Object;
.source "PrivacyPolicyAlert.java"

# interfaces
.implements Lcom/color/support/widget/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/s;->b()Lcom/color/support/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/s;


# direct methods
.method constructor <init>(Lcom/oppo/camera/s;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/s$2;->a:Lcom/oppo/camera/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/s$2;->a:Lcom/oppo/camera/s;

    invoke-static {p1, p2}, Lcom/oppo/camera/s;->a(Lcom/oppo/camera/s;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/s$2;->a:Lcom/oppo/camera/s;

    invoke-static {p1, p2}, Lcom/oppo/camera/s;->b(Lcom/oppo/camera/s;Z)V

    :goto_0
    return-void
.end method
