.class Lcom/oppo/camera/professional/e$1;
.super Lcom/a/a/e;
.source "ProfessionalCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->cI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$1;->a:Lcom/oppo/camera/professional/e;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Lcom/oppo/camera/professional/e$1;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/menu/levelcontrol/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setScaleX(F)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$1;->a:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/menu/levelcontrol/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setScaleY(F)V

    return-void
.end method
