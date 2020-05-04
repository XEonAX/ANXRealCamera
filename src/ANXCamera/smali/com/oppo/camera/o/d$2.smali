.class final Lcom/oppo/camera/o/d$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/o/d;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/o/d$2;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/oppo/camera/o/d$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/o/d$2$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/o/d$2$1;-><init>(Lcom/oppo/camera/o/d$2;)V

    invoke-static {}, Lcom/oppo/camera/o/d;->ac()Lcolor/support/v7/app/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->ac()Lcolor/support/v7/app/b;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/app/b;->cancel()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Lcolor/support/v7/app/b;)Lcolor/support/v7/app/b;

    :cond_0
    new-instance v1, Lcolor/support/v7/app/b$a;

    iget-object v2, p0, Lcom/oppo/camera/o/d$2;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->c(I)Lcolor/support/v7/app/b$a;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/o/d$2;->b:I

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->a(I)Lcolor/support/v7/app/b$a;

    move-result-object v1

    const v2, 0x7f0f0090

    invoke-virtual {v1, v2, v0}, Lcolor/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->d()Lcolor/support/v7/app/b;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Lcolor/support/v7/app/b;)Lcolor/support/v7/app/b;

    return-void
.end method
