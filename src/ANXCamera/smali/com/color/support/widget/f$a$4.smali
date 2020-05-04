.class Lcom/color/support/widget/f$a$4;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/color/support/widget/f$a$4;->a:Lcom/color/support/widget/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/f$a$4;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1, p2}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;Z)Z

    iget-object p1, p0, Lcom/color/support/widget/f$a$4;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/f;->b(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/f$a$4;->a:Lcom/color/support/widget/f$a;

    invoke-static {p1}, Lcom/color/support/widget/f$a;->a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/f;->b(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$c;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/color/support/widget/f$a$4;->a:Lcom/color/support/widget/f$a;

    invoke-static {v0}, Lcom/color/support/widget/f$a;->b(Lcom/color/support/widget/f$a;)Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/color/support/widget/f$c;->a(IZ)V

    :cond_0
    return-void
.end method
