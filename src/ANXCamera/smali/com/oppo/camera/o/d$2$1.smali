.class Lcom/oppo/camera/o/d$2$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/o/d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/o/d$2;


# direct methods
.method constructor <init>(Lcom/oppo/camera/o/d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/o/d$2$1;->a:Lcom/oppo/camera/o/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/oppo/camera/o/d$2$1;->a:Lcom/oppo/camera/o/d$2;

    iget-object p1, p1, Lcom/oppo/camera/o/d$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
