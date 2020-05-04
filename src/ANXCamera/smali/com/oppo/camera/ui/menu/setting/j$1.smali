.class Lcom/oppo/camera/ui/menu/setting/j$1;
.super Ljava/lang/Object;
.source "CameraSloganSettingFragment.java"

# interfaces
.implements Landroidx/preference/EditTextPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/setting/j;->ax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/setting/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/setting/j;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/j$1;->a:Lcom/oppo/camera/ui/menu/setting/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)V
    .locals 4

    instance-of v0, p1, Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    :cond_0
    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
