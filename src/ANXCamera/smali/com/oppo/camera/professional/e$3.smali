.class Lcom/oppo/camera/professional/e$3;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/professional/e;->cG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/oppo/camera/professional/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/professional/e;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    iput-wide p2, p0, Lcom/oppo/camera/professional/e$3;->a:J

    iput-wide p4, p0, Lcom/oppo/camera/professional/e$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/oppo/camera/professional/e$3;->a:J

    const-wide/32 v2, 0x2625a00

    cmp-long v0, v0, v2

    const-string v1, "ProfessionalCapMode"

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->y(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->z(Lcom/oppo/camera/professional/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->A(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/oppo/camera/professional/e$3;->b:J

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/e/f;->a(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureTime, back exposureTimeValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/professional/e$3;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->B(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/oppo/camera/professional/e$3;->a:J

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/e/f;->a(J)V

    goto :goto_0

    :cond_1
    const-string v0, "setExposureTime, slow shutter"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->C(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->g(Z)V

    iget-object v0, p0, Lcom/oppo/camera/professional/e$3;->c:Lcom/oppo/camera/professional/e;

    invoke-static {v0}, Lcom/oppo/camera/professional/e;->D(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/oppo/camera/e/f;->a(J)V

    :goto_0
    return-void
.end method
