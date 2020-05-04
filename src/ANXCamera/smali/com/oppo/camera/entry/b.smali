.class public Lcom/oppo/camera/entry/b;
.super Ljava/lang/Object;
.source "CameraEntry.java"

# interfaces
.implements Lcom/oppo/camera/entry/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/entry/b$a;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/Long;


# instance fields
.field private h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/app/Activity;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/content/SharedPreferences;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/entry/b;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/entry/b;->h:I

    const-string v1, ""

    iput-object v1, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    iput-object v1, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oppo/camera/entry/b;->l:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/entry/b;->m:Z

    iput-boolean v1, p0, Lcom/oppo/camera/entry/b;->n:Z

    iput-boolean v0, p0, Lcom/oppo/camera/entry/b;->o:Z

    iput-boolean v0, p0, Lcom/oppo/camera/entry/b;->p:Z

    iput-object v2, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "slowVideo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "night"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "professional"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "professional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "slowVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "macro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "fastVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_8
    const-string v0, "sticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "commonVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_tele:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_1
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    :pswitch_2
    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_4
    return v1

    :pswitch_3
    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_6

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_6

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_6

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :cond_6
    :goto_5
    return v1

    :pswitch_4
    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_dual:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_8

    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_8

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :cond_8
    :goto_6
    return v1

    :pswitch_5
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_tele:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    return v1

    :pswitch_6
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_dual:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_c

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_mono:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_c

    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_b

    goto :goto_8

    :cond_b
    move v1, v2

    :cond_c
    :goto_8
    return v1

    :pswitch_7
    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_e

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_d

    goto :goto_9

    :cond_d
    move v1, v2

    :cond_e
    :goto_9
    return v1

    :pswitch_8
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_10

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_10

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_f

    goto :goto_a

    :cond_f
    move v1, v2

    :cond_10
    :goto_a
    return v1

    :pswitch_9
    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_12

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_main:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_12

    sget-object p1, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    if-eq p2, p1, :cond_12

    sget-object p1, Lcom/oppo/camera/entry/b$a;->front_main:Lcom/oppo/camera/entry/b$a;

    if-ne p2, p1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v2

    :cond_12
    :goto_b
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_9
        -0x70aaf6c3 -> :sswitch_8
        -0x50c0d615 -> :sswitch_7
        -0x21dda81 -> :sswitch_6
        0x62d9bcc -> :sswitch_5
        0x63f6418 -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x2d8e52fa -> :sswitch_2
        0x34289e27 -> :sswitch_1
        0x3fc6a675 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "beauty"

    const-string v1, "front"

    const-string v2, "CameraEntry"

    if-nez p1, :cond_0

    const-string p1, "parseIntentExtraInfo, intent is null"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIntentExtraInfo, action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "mode"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    :goto_0
    const-string v4, "android.intent.extras.CAMERA_FACING"

    const-string v5, "rear"

    const/4 v6, 0x0

    if-eq v3, v2, :cond_2

    sget-object v2, Lcom/oppo/camera/entry/b;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_1
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v6

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/oppo/camera/entry/b;->a:[Ljava/lang/String;

    aget-object v2, v2, v6

    iput-object v2, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    :cond_3
    :try_start_2
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v6

    :goto_2
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v1, Lcom/oppo/camera/entry/b;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    :cond_4
    :try_start_3
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v6, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sticker"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "common"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "portrait"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "commonVideo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z
    .locals 12

    sget-object v0, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    const-string v1, "commonVideo"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_SAT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    const v4, 0x7f0f01a1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_video_fps_key"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const-string v4, "pref_video_size_key"

    invoke-static {v4, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x1e

    if-ne v0, v4, :cond_1

    const-string v0, "video_size_4kuhd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    sget-object v0, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    const-string v3, "common"

    const-string v4, "key_high_picture_size"

    if-ne p2, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oppo/camera/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :cond_4
    sget-object v0, Lcom/oppo/camera/entry/b$a;->back_tele:Lcom/oppo/camera/entry/b$a;

    const-string v5, "camera_main"

    const-string v6, "pref_switch_camera_key"

    const-string v7, "professional"

    if-ne p2, v0, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "camera_tele"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    sget-object v0, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    const/4 v8, 0x1

    const-string v9, "night"

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const-string v10, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const-string v11, "off"

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "on"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_7
    return v2

    :cond_8
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_ultra_wide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    return v2

    :cond_b
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return v2

    :cond_d
    sget-object v0, Lcom/oppo/camera/entry/b$a;->front_dual:Lcom/oppo/camera/entry/b$a;

    if-ne p2, v0, :cond_e

    const-string v0, "sticker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v0

    if-nez v0, :cond_e

    return v2

    :cond_e
    sget-object v0, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    if-ne p2, v0, :cond_f

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oppo/camera/e/a;->g()Z

    move-result v0

    if-nez v0, :cond_f

    return v2

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oppo/camera/entry/b;->d(Landroid/content/Intent;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/oppo/camera/entry/b;->h:I

    goto :goto_3

    :cond_0
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.oppo.action.VIDEO_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.VOICE_INTERACTION_GTS_TEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/oppo/camera/entry/b;->h:I

    goto :goto_3

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/entry/b;->n:Z

    iput v1, p0, Lcom/oppo/camera/entry/b;->h:I

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/camera/entry/b;->h:I

    const-string v0, "commonVideo"

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/camera/entry/b;->h:I

    const-string v0, "common"

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIntent, mCameraEntryType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/entry/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCallPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAction: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraEntry"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/entry/b;->b(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->n()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_8
    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v2, "extra_key_caller_package_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    :cond_1
    :goto_2
    return-void
.end method

.method public static j()J
    .locals 2

    sget-object v0, Lcom/oppo/camera/entry/b;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private t()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/oppo/camera/entry/b$a;->front_dual:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/e/a;->m()I

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/oppo/camera/e/a;->j()I

    move-result p1

    return p1

    :cond_1
    sget-object p2, Lcom/oppo/camera/entry/b$a;->back_mono:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_portrait_new_style_back_index"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget-object v1, Lcom/oppo/camera/ui/preview/a/d;->f:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_2

    sub-int/2addr p2, v1

    invoke-static {p2}, Lcom/oppo/camera/k/a;->e(I)I

    move-result p2

    if-eqz p2, :cond_2

    return p2

    :cond_2
    sget-object p2, Lcom/oppo/camera/entry/b$a;->back_sat:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/oppo/camera/entry/b;->h:I

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/oppo/camera/e/a;->h()I

    move-result p1

    return p1

    :cond_3
    sget-object p2, Lcom/oppo/camera/entry/b$a;->back_dual:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/oppo/camera/e/a;->l()I

    move-result p1

    return p1

    :cond_4
    sget-object p2, Lcom/oppo/camera/entry/b$a;->back_tele:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/oppo/camera/e/a;->n()I

    move-result p1

    return p1

    :cond_5
    sget-object p2, Lcom/oppo/camera/entry/b$a;->back_wide:Lcom/oppo/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/entry/b;->b(Ljava/lang/String;Lcom/oppo/camera/entry/b$a;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/oppo/camera/e/a;->k()I

    move-result p1

    return p1

    :cond_6
    invoke-static {}, Lcom/oppo/camera/e/a;->i()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 5

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->p:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCameraExitState, currentTime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CameraEntry"

    invoke-static {v4, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/oppo/camera/entry/b;->p:Z

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exit_time_stamp_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p2, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    iput-object p3, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/oppo/camera/entry/b;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->k()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCreate, mCameraEntryType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oppo/camera/entry/b;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCallPkg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraEntry"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oppo/camera/entry/b;->m:Z

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "CameraEntry"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1c000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    const v1, 0x7f010050

    const v2, 0x7f010051

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/oppo/camera/entry/b;->c(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    const-string v1, "capture"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    const-string v1, "capture"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/oppo/camera/entry/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/oppo/camera/entry/b;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "commonVideo"

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v0

    const-string v1, "common"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/entry/b;->o:Z

    return-void
.end method

.method public h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    const-string v1, "beauty"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 7

    const-string v0, "Testcase_type"

    iget-object v1, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-boolean v3, p0, Lcom/oppo/camera/entry/b;->n:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "OPEN_FRONT_CAMERA"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v4, "OPEN_REAR_CAMERA"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentLegacyId, mCameraEntryType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/entry/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraEntry"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public k()V
    .locals 9

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->q:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "pref_camera_exit_time_stamp_key"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    iput-wide v7, p0, Lcom/oppo/camera/entry/b;->l:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/entry/b;->g:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/oppo/camera/entry/b;->t()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->p:Z

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateOverrideCameraModeStatus, currentTime: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mCameraEnterTimeGap: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/oppo/camera/entry/b;->l:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CameraEntry"

    invoke-static {v5, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    iget-wide v3, p0, Lcom/oppo/camera/entry/b;->l:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-wide/32 v0, 0x493e0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->o:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/entry/b;->o:Z

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->o:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->p:Z

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->p:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/entry/b;->p:Z

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->p:Z

    iput-boolean v7, p0, Lcom/oppo/camera/entry/b;->o:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->k:Ljava/lang/String;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Lcom/oppo/camera/entry/b;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/entry/b;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/entry/b;->m:Z

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/entry/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/entry/b;->s:Ljava/util/Set;

    const-string v2, "beauty"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/entry/b;->h:I

    return v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/entry/b;->l:J

    return-wide v0
.end method
