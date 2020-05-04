.class public Lcom/oppo/camera/ui/menu/setting/j;
.super Lcom/oppo/camera/ui/menu/setting/b;
.source "CameraSloganSettingFragment.java"


# instance fields
.field private ae:Lcom/android/ui/menu/CameraSwitchPreference;

.field private af:Lcom/color/support/preference/ColorEditTextPreference;

.field private ag:Landroid/widget/EditText;

.field private ah:Landroid/text/TextWatcher;

.field private ai:Z

.field private e:Lcom/oppo/camera/i;

.field private f:Landroidx/preference/PreferenceScreen;

.field private g:Lcom/color/support/preference/ColorPreferenceCategory;

.field private h:Lcom/android/ui/menu/CameraSwitchPreference;

.field private i:Lcom/android/ui/menu/CameraSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ai:Z

    return-void
.end method

.method private aA()Z
    .locals 3

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_location_key"

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aB()Z
    .locals 3

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_time_key"

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ax()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    const-string v0, "camera_setting_slogan_root_preference"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_slogan_device_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_0
    const-string v0, "pref_slogan_owner_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorEditTextPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/j$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/j$1;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/EditTextPreference$a;)V

    :cond_1
    const-string v0, "pref_slogan_time_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    const-string v0, "pref_location_watermark_function"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "pref_slogan_location_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->ai:Z

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method private ay()V
    .locals 5

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "CameraSloganSettingFrag"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v2, "pref_slogan_owner_key"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->az()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, getLocationAvailable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/camera/o/d;->i(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLocationSloganEnable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aA()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aA()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aB()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "update preference failed!"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private az()Z
    .locals 3

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_device_key"

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->r()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f014b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->c(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public C()V
    .locals 0

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->C()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ay()V

    return-void
.end method

.method public D()V
    .locals 2

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->D()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 3

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->E()V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->d()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f120002

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/j;->e(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ax()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ay()V

    return-void
.end method

.method public at()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->o()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected au()V
    .locals 0

    return-void
.end method

.method protected av()V
    .locals 0

    return-void
.end method

.method protected aw()V
    .locals 0

    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "1"

    :goto_0
    invoke-super {p0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_4

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const-string v1, "pref_slogan_owner_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    const-string v0, "model_on"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    const-string v0, "model_off"

    :goto_1
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_6

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "time_on"

    goto :goto_2

    :cond_5
    const-string v0, "time_off"

    :goto_2
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_8

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "location_on"

    goto :goto_3

    :cond_7
    const-string v0, "location_off"

    :goto_3
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_8
    if-eqz p1, :cond_9

    instance-of v0, p1, Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/ui/menu/CameraSwitchPreference;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_9
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of p1, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz p1, :cond_0

    const-string p1, "pref_camera_slogan_key"

    const-string v0, "author"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
