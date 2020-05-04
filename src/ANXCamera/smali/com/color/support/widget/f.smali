.class public Lcom/color/support/widget/f;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/f$a;,
        Lcom/color/support/widget/f$b;,
        Lcom/color/support/widget/f$c;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/f$c;

.field private b:Lcolor/support/v7/app/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/color/support/widget/f$b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/f;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/f;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->d:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/f;)Lcolor/support/v7/app/b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->b:Lcolor/support/v7/app/b;

    return-object p0
.end method

.method static synthetic a(Lcom/color/support/widget/f;Lcolor/support/v7/app/b;)Lcolor/support/v7/app/b;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->b:Lcolor/support/v7/app/b;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/f;Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$b;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->g:Lcom/color/support/widget/f$b;

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/f;Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$c;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->a:Lcom/color/support/widget/f$c;

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$c;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->a:Lcom/color/support/widget/f$c;

    return-object p0
.end method

.method static synthetic c(Lcom/color/support/widget/f;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/color/support/widget/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/color/support/widget/f;)Lcom/color/support/widget/f$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->g:Lcom/color/support/widget/f$b;

    return-object p0
.end method

.method static synthetic g(Lcom/color/support/widget/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f;->b:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f;->b:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->show()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f;->b:Lcolor/support/v7/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/b;->dismiss()V

    :cond_0
    return-void
.end method
