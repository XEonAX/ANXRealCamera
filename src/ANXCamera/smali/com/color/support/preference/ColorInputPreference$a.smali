.class Lcom/color/support/preference/ColorInputPreference$a;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/preference/ColorInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method private constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$a;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorInputPreference$a;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$a;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->c(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$a;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$a;->a:Lcom/color/support/preference/ColorInputPreference;

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;ZZ)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
