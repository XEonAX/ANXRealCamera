.class Lcom/color/support/preference/ColorInputPreference$2;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorInputPreference;->a(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$2;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->b(Lcom/color/support/preference/ColorInputPreference;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
