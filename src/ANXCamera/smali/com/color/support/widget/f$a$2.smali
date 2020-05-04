.class Lcom/color/support/widget/f$a$2;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Lcom/color/support/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/f$a;->b()Lcom/color/support/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/f$a;


# direct methods
.method constructor <init>(Lcom/color/support/widget/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f$a$2;->a:Lcom/color/support/widget/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a$2;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->f(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/f$a$2;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/f;->f(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/support/widget/f$b;->a()V

    :cond_0
    return-void
.end method
