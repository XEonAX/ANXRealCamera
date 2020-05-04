.class public Lcom/oppo/camera/ui/menu/setting/c;
.super Landroidx/preference/f;
.source "CameraCustomListPreferenceFragment.java"


# instance fields
.field private ae:I

.field private af:[Ljava/lang/CharSequence;

.field private ag:[Ljava/lang/CharSequence;

.field private ah:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/c;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    return p1
.end method

.method private ao()Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/oppo/camera/ui/menu/setting/c;
    .locals 3

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/c;

    invoke-direct {v0}, Lcom/oppo/camera/ui/menu/setting/c;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/c;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/f;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/c;->ao()Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->af:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ag:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->T()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/c;->ah:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "CameraCustomListPreferenceFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    const-string v0, "CameraCustomListPreferenceFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->af:[Ljava/lang/CharSequence;

    const-string v0, "CameraCustomListPreferenceFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ag:[Ljava/lang/CharSequence;

    const-string v0, "CameraCustomListPreferenceFragment.entrySummary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/c;->ah:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method protected a(Landroidx/appcompat/app/b$a;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/preference/f;->a(Landroidx/appcompat/app/b$a;)V

    new-instance v7, Lcom/oppo/camera/ui/menu/levelcontrol/a;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->o()Landroidx/fragment/app/c;

    move-result-object v1

    iget v4, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    iget-object v5, p0, Lcom/oppo/camera/ui/menu/setting/c;->af:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/oppo/camera/ui/menu/setting/c;->ah:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/levelcontrol/a;-><init>(Landroid/content/Context;ZZI[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/c$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/c$1;-><init>(Lcom/oppo/camera/ui/menu/setting/c;)V

    invoke-virtual {p1, v7, v0, v1}, Landroidx/appcompat/app/b$a;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->o()Landroidx/fragment/app/c;

    move-result-object p1

    new-instance v0, Lcolor/support/v7/app/b$a;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->b(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/c;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/c;->b(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/c;->an()Landroidx/preference/DialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/c;->a(Landroidx/appcompat/app/b$a;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    invoke-virtual {v0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/f;->e(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    const-string v1, "CameraCustomListPreferenceFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->af:[Ljava/lang/CharSequence;

    const-string v1, "CameraCustomListPreferenceFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ag:[Ljava/lang/CharSequence;

    const-string v1, "CameraCustomListPreferenceFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ah:[Ljava/lang/CharSequence;

    const-string v1, "CameraCustomListPreferenceFragment.entrySummary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/c;->ae:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/c;->ag:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/c;->ao()Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
