.class public Lcom/oppo/camera/ui/menu/setting/g;
.super Lcom/oppo/camera/ui/menu/setting/b;
.source "CameraSettingActivityFragment.java"


# static fields
.field private static final e:Z


# instance fields
.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private aU:Z

.field private aV:Landroid/content/BroadcastReceiver;

.field private ae:Lcom/android/ui/menu/CameraSwitchPreference;

.field private af:Lcom/android/ui/menu/CameraSwitchPreference;

.field private ag:Lcom/android/ui/menu/CameraSwitchPreference;

.field private ah:Lcom/android/ui/menu/CameraSwitchPreference;

.field private ai:Lcom/android/ui/menu/CameraSwitchPreference;

.field private aj:Lcom/color/support/preference/ColorPreferenceCategory;

.field private ak:Lcom/android/ui/menu/CameraSwitchPreference;

.field private al:Lcom/android/ui/menu/CameraSwitchPreference;

.field private am:Lcom/android/ui/menu/CameraSwitchPreference;

.field private an:Lcom/android/ui/menu/CameraSwitchPreference;

.field private ao:Lcom/color/support/preference/ColorJumpPreference;

.field private ap:Lcom/android/ui/menu/CameraSwitchPreference;

.field private aq:Lcom/color/support/preference/ColorPreferenceCategory;

.field private ar:Lcom/color/support/preference/ColorJumpPreference;

.field private as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

.field private at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

.field private au:Landroidx/preference/Preference;

.field private av:Lcom/color/support/preference/ColorPreferenceCategory;

.field private aw:I

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private f:Lcom/oppo/camera/i;

.field private g:Landroidx/preference/PreferenceScreen;

.field private h:Lcom/color/support/preference/ColorPreferenceCategory;

.field private i:Lcom/color/support/preference/ColorListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oppo.multimedia.surround.record.support"

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/ui/menu/setting/g;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->g:Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aj:Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ap:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->au:Landroidx/preference/Preference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->av:Lcom/color/support/preference/ColorPreferenceCategory;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aw:I

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ax:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ay:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->az:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aA:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aB:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aC:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aF:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aG:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aH:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aI:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aJ:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aK:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aL:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aM:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aN:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aO:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aP:Z

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aQ:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aR:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aS:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aT:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aU:Z

    new-instance v0, Lcom/oppo/camera/ui/menu/setting/g$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/setting/g$1;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aV:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, ""

    const-string v1, "pref_lasted_video_size"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_lasted_video_fps"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_video_size_key"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "pref_video_fps_key"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Lcom/color/support/preference/ColorPreferenceCategory;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/color/support/preference/ColorPreferenceCategory;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->h(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aI()V

    return-void
.end method

.method private aA()V
    .locals 2

    const-string v0, "pref_video_function"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    const-string v0, "pref_video_codec_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    const-string v0, "pref_sound_types_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Landroidx/preference/Preference$c;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aO:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aP:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Z)V

    :cond_4
    sget-boolean v0, Lcom/oppo/camera/ui/menu/setting/g;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_5
    return-void
.end method

.method private aB()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v1}, Lcom/color/support/preference/ColorListPreference;->B()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f01be

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/setting/g;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v2, v1}, Lcom/color/support/preference/ColorListPreference;->c(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    const-string v2, "off"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aI()V

    return-void
.end method

.method private aC()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aG()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aQ()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aP()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aN()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aO()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aJ()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aM()V

    return-void
.end method

.method private aD()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aL()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aE()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aH()V

    return-void
.end method

.method private aE()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    const-string v1, "pref_video_codec_key"

    const-string v2, "H264"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    invoke-static {v1, v0}, Lcom/oppo/camera/ui/menu/setting/g;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->c(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aF()V
    .locals 0

    return-void
.end method

.method private aG()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aA:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private aH()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->c(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->d:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->a(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    const v1, 0x7f0f01aa

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;->c(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private aI()V
    .locals 6

    const-string v0, "SettingActivityFragment"

    const-string v1, "updateStoragePreference()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v2, "pref_camera_storage_key"

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorPreferenceCategory;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/oppo/camera/v;->g()D

    move-result-wide v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private aJ()V
    .locals 7

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aH:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorJumpPreference;->a(Z)V

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    const-string v4, "pref_slogan_device_key"

    invoke-virtual {v3, v4, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    const-string v5, "pref_slogan_time_key"

    invoke-virtual {v4, v5, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    const-string v6, "pref_slogan_location_key"

    invoke-virtual {v5, v6, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSloganOwnerPreference, isWatermarkOptionOpened: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SettingActivityFragment"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    const v1, 0x7f0f014d

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    const v1, 0x7f0f014c

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private aK()V
    .locals 2

    const-string v0, "SettingActivityFragment"

    const-string v1, "addOrRemoveCameraPreference()"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v1, "pref_camera_storage_key"

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/oppo/camera/ui/menu/setting/g;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Lcom/color/support/preference/ColorPreferenceCategory;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aj:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Lcom/color/support/preference/ColorPreferenceCategory;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Lcom/color/support/preference/ColorPreferenceCategory;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->av:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Lcom/color/support/preference/ColorPreferenceCategory;)V

    return-void
.end method

.method private aL()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->d:I

    const-string v2, "pref_video_size_key"

    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    const v2, 0x7f0f01a1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_key"

    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aO:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->az:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aw:I

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorJumpPreference;->d(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aN:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aO:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private aM()V
    .locals 0

    return-void
.end method

.method private aN()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aF:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private aO()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aG:Z

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method private aP()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private aQ()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aB:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private aR()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/preference/ColorPreferenceCategory;->d()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aj:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/color/support/preference/ColorPreferenceCategory;->d()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aj:Lcom/color/support/preference/ColorPreferenceCategory;

    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ap:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/color/support/preference/ColorPreferenceCategory;->d()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aq:Lcom/color/support/preference/ColorPreferenceCategory;

    :cond_2
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->ar:Lcom/color/support/preference/ColorJumpPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->as:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->g:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->d()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->g:Landroidx/preference/PreferenceScreen;

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->as()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    :cond_4
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->au:Landroidx/preference/Preference;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->av:Lcom/color/support/preference/ColorPreferenceCategory;

    return-void
.end method

.method private aS()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aT()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aU()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aV()V

    const v1, 0x7f120001

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/preference/j;->a(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->au()V

    goto :goto_0

    :cond_0
    const-string v0, "SettingActivityFragment"

    const-string v1, "restore Camera settings failed, due to activity is null!"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private aT()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "pref_volume_key_function_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_sound_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_fingerprint_shutter_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_mirror_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_storage_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_tap_shutter_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_gesture_shutter_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_assistant_line_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_ai_scene_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_slogan_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_photo_slogan_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_slogan_owner_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_slogan_device_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_slogan_time_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_slogan_location_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_raw_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_codec_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_sound_types_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private aU()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "pref_video_size_key"

    invoke-static {v1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f0f01a1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private aV()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "pref_video_size_key"

    invoke-static {v1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f0f01a1

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/ui/menu/setting/g;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ax()V
    .locals 3

    new-instance v0, Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->as()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->f:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->as()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    const-string v0, "camera_setting_menu_root_preference"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->g:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->ay()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->az()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aA()V

    const-string v0, "pref_restore_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->au:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->au:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->au:Landroidx/preference/Preference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    :cond_0
    return-void
.end method

.method private ay()V
    .locals 2

    const-string v0, "pref_common_function"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->h:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "pref_volume_key_function_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    const-string v0, "pref_camera_fingerprint_shutter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_sound_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_mirror_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_storage_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ai:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->i:Lcom/color/support/preference/ColorListPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->af:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ag:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ah:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method private az()V
    .locals 2

    const-string v0, "pref_capture_function"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aj:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_ai_scene_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_photo_slogan_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    const-string v0, "pref_raw_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ap:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ak:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->al:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->an:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ap:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ap:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aI:Z

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->ao:Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$1iLyiHW1Q7C6cyK1NltWJ0X7t8o;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->a(Landroidx/preference/Preference$c;)V

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->am:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WTVWEjcO3MZV0hf96VEk4diGSUw;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/setting/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aS()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->d:I

    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->c:I

    const-string v2, "camera_enter_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aU:Z

    const-string v2, "camera_enter_form_lock_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aR:Z

    const-string v2, "camera_support_video_ultra_wide_angel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->b:Ljava/lang/String;

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "camera_intent_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "video_size_4kuhd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f01b2

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "video_size_1080p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0f01b0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "video_size_720p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f01b5

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f01a6

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0f01a5

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "SettingActivityFragment"

    const-string p2, "onCreatePreferences start"

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120001

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->e(I)V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->ax()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aK()V

    return-void
.end method

.method public at()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

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

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aB()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aC()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aD()V

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aF()V

    return-void
.end method

.method protected av()V
    .locals 5

    const-string v0, "SettingActivityFragment"

    const-string v1, "installIntentFilterIfNeeded"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aT:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aT:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aV:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected aw()V
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aT:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aT:Z

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aV:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 2

    instance-of v0, p1, Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/setting/c;->b(Ljava/lang/String;)Lcom/oppo/camera/ui/menu/setting/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->s()Landroidx/fragment/app/h;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/Fragment;I)V

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "SettingActivityFragment"

    const-string v1, "parseActivityArguments start"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aA:Z

    const-string v1, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aB:Z

    const-string v1, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->aC:Z

    const/4 v1, 0x0

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ax:Ljava/lang/String;

    const-string v2, "key_is_capture_mode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aD:Z

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aE:Z

    const-string v2, "pref_ai_scene_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aF:Z

    const-string v2, "pref_mirror_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aG:Z

    const-string v2, "pref_raw_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aI:Z

    const-string v2, "pref_camera_gradienter_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aJ:Z

    const-string v2, "pref_camera_slogan_key"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aH:Z

    const-string v2, "key_full_pic_size_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->ay:Ljava/lang/String;

    const-string v2, "pref_time_lapse_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aK:Z

    const-string v2, "key_high_picture_size"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/g;->aL:Z

    const/4 v2, 0x0

    const-string v3, "pref_video_fps_key"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->aw:I

    const-string v3, "key_support_video_high_fps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->aM:Z

    iget v3, p0, Lcom/oppo/camera/ui/menu/setting/g;->c:I

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aN:Z

    const-string v0, "camera_enter_form_lock_screen"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aU:Z

    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aO:Z

    const-string v0, "key_support_video_ultra_wide_angel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aR:Z

    const-string v0, "pref_video_codec_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aP:Z

    const-string v0, "pref_sound_types_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/g;->aQ:Z

    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/g;->az:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/g;->aR()V

    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->h()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    instance-of v1, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/menu/setting/g;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v2, v1}, Lcom/color/support/preference/ColorListPreference;->c(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/g;->at:Lcom/oppo/camera/ui/menu/setting/CameraCustomListPreference;

    if-ne p1, v1, :cond_2

    sget-boolean p1, Lcom/oppo/camera/ui/menu/setting/g;->e:Z

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_recorder_sound"

    invoke-static {p2, p1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->as()Landroid/content/Context;

    move-result-object p2

    const-string v1, "menuClick"

    invoke-static {p2, v1, p1, v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-string v0, "SettingActivityFragment"

    const-string v1, "pref_restore_key click"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/g;->o()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_restore_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    new-instance p1, Lcolor/support/v7/app/b$a;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Lcolor/support/v7/app/b$a;->d(I)Lcolor/support/v7/app/b$a;

    move-result-object p1

    const v0, 0x7f0f0149

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/g;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/g$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/g$3;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/b$a;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/g$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/g$2;-><init>(Lcom/oppo/camera/ui/menu/setting/g;)V

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_video_ratio_key"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->a(Z)V

    const-string p1, "oppo.intent.action.APP_VIDEO_RATIO_SETTING"

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_photo_slogan_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/setting/CameraSettingActivity;->a(Z)V

    const-string p1, "oppo.intent.action.APP_SLOGAN_SETTING"

    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/g;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method
