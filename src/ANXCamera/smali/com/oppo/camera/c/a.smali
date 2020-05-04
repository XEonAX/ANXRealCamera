.class public Lcom/oppo/camera/c/a;
.super Ljava/lang/Object;
.source "Beauty3DEditHelper.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/oppo/camera/ui/beauty3d/d;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/ui/beauty3d/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/c/a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/camera/c/a;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    iget-object p1, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_beauty3d_preferences"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/c/a;)Lcom/oppo/camera/ui/beauty3d/d;
    .locals 0

    iget-object p0, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_chose_style"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 6

    iget-object v0, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7abedfc6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x3cde2195

    if-eq v1, v2, :cond_2

    const v2, -0x111837ea

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.oppo.beauty3d.analyses.ffd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_2
    const-string v1, "com.oppo.beauty3d.analyses.result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "com.oppo.beauty3d.custom.result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->c([I)V

    goto/16 :goto_1

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/d;->o()I

    move-result p1

    if-eq p1, v5, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/d;->o()I

    move-result p1

    if-ne p1, v4, :cond_10

    iget-boolean p1, p0, Lcom/oppo/camera/c/a;->a:Z

    if-nez p1, :cond_10

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/beauty3d/d;->b([I)V

    iget-object p1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/beauty3d/d;->o()I

    move-result p1

    if-ne p1, v4, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string p2, "key_chose_style"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/beauty3d/d;->b(I)V

    invoke-static {}, Lcom/oppo/camera/o/d;->Z()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oppo/camera/c/a$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/c/a$1;-><init>(Lcom/oppo/camera/c/a;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Lcom/oppo/camera/c/a;->a:Z

    goto/16 :goto_1

    :cond_8
    if-nez p2, :cond_9

    return-void

    :cond_9
    array-length p1, p2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_a

    return-void

    :cond_a
    new-array p1, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object v0

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/c;->e(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    aput-object v0, p1, v3

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object v0

    aget v2, p2, v5

    invoke-virtual {v0, v2}, Lcom/oppo/camera/c/c;->d(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v0, v1

    :cond_c
    aput-object v0, p1, v5

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object v0

    aget v2, p2, v4

    invoke-virtual {v0, v2}, Lcom/oppo/camera/c/c;->c(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_d
    aput-object v0, p1, v4

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object v0

    const/4 v2, 0x3

    aget v3, p2, v2

    invoke-virtual {v0, v3}, Lcom/oppo/camera/c/c;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    aput-object v0, p1, v2

    invoke-static {}, Lcom/oppo/camera/c/c;->a()Lcom/oppo/camera/c/c;

    move-result-object v0

    const/4 v2, 0x4

    aget p2, p2, v2

    invoke-virtual {v0, p2}, Lcom/oppo/camera/c/c;->a(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/camera/c/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    move-object p2, v1

    :cond_f
    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/beauty3d/d;->a([Ljava/lang/String;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public b()V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/c/a;->a:Z

    iget-boolean v1, p0, Lcom/oppo/camera/c/a;->b:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/c/a;->c()V

    const/16 v1, 0x1c

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v3, "key_chose_style"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v4, 0x32

    const-string v5, "key_style_natural_high_nose"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v6, 0x46

    const-string v7, "key_style_natural_small_nose"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v6, "key_style_natural_eye"

    const/16 v7, 0x1e

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v8, "key_style_natural_fix_face"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v9, "key_style_natural_small_face"

    invoke-interface {v5, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x5

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v9, "key_style_natural_cheek_bone"

    invoke-interface {v5, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x6

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v9, "key_style_natural_chin"

    invoke-interface {v5, v9, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x7

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v9, "key_style_goose_egg_high_nose"

    invoke-interface {v5, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/16 v3, 0x8

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v9, 0x50

    const-string v10, "key_style_goose_egg_small_nose"

    invoke-interface {v5, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    const/16 v3, 0x9

    iget-object v5, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    iget-object v3, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v5, 0x23

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xa

    aput v3, v1, v5

    const/16 v3, 0xb

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v8, 0x14

    const-string v10, "key_style_goose_egg_small_face"

    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0xc

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v10, "key_style_goose_egg_cheek_bone"

    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0xd

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v10, "key_style_goose_egg_chin"

    invoke-interface {v6, v10, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0xe

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v10, "key_style_lolita_high_nose"

    invoke-interface {v6, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0xf

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v10, "key_style_lolita_small_nose"

    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x10

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v10, 0x28

    const-string v11, "key_style_lolita_eye"

    invoke-interface {v6, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x11

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v11, 0x19

    const-string v12, "key_style_lolita_fix_face"

    invoke-interface {v6, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x12

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v12, "key_style_lolita_small_face"

    invoke-interface {v6, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x13

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v12, "key_style_lolita_cheekbone"

    invoke-interface {v6, v12, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    iget-object v3, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v6, "key_style_lolita_chin"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v8

    const/16 v3, 0x15

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const/16 v7, 0x64

    const-string v8, "key_style_mode_high_nose"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x16

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v7, "key_style_mode_small_nose"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x17

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v7, "key_style_mode_eye"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    const/16 v3, 0x18

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v7, "key_style_mode_fix_face"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v3

    iget-object v3, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v6, "key_style_mode_small_face"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v11

    const/16 v3, 0x1a

    iget-object v6, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v7, "key_style_mode_cheekbone"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    const/16 v3, 0x1b

    iget-object v4, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    const-string v6, "key_style_mode_chin"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    iget-object v3, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2, v1}, Lcom/oppo/camera/ui/beauty3d/d;->a(I[I)V

    iput-boolean v0, p0, Lcom/oppo/camera/c/a;->b:Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/beauty3d/d;->a([I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x32
        0x46
        0x1e
        0x1e
        0x1e
        0x32
        0x0
        0x32
        0x50
        0x1e
        0x23
        0x14
        0x1e
        0x0
        0x32
        0x50
        0x28
        0x19
        0x28
        0x1e
        0x0
        0x64
        0x50
        0x28
        0x32
        0x0
        0x32
        0xa
    .end array-data
.end method

.method public d()V
    .locals 14

    iget-object v0, p0, Lcom/oppo/camera/c/a;->c:Lcom/oppo/camera/ui/beauty3d/d;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/beauty3d/d;->p()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget v3, v0, v2

    const-string v4, "key_style_natural_fix_face"

    const-string v5, "key_style_natural_eye"

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const-string v10, "key_chose_style"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v13, :cond_2

    if-eq v3, v12, :cond_1

    if-eq v3, v11, :cond_0

    goto/16 :goto_0

    :cond_0
    aget v2, v0, v2

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v13

    const-string v3, "key_style_mode_high_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v12

    const-string v3, "key_style_mode_small_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v11

    const-string v3, "key_style_mode_eye"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v9

    const-string v3, "key_style_mode_fix_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v8

    const-string v3, "key_style_mode_small_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v7

    const-string v3, "key_style_mode_cheekbone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v0, v0, v6

    const-string v2, "key_style_mode_chin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_1
    aget v2, v0, v2

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v13

    const-string v3, "key_style_lolita_high_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v12

    const-string v3, "key_style_lolita_small_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v11

    const-string v3, "key_style_lolita_eye"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v9

    const-string v3, "key_style_lolita_fix_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v8

    const-string v3, "key_style_lolita_small_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v7

    const-string v3, "key_style_lolita_cheekbone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v0, v0, v6

    const-string v2, "key_style_lolita_chin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    aget v2, v0, v2

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v13

    const-string v3, "key_style_goose_egg_high_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v12

    const-string v3, "key_style_goose_egg_small_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v11

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v9

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v8

    const-string v3, "key_style_goose_egg_small_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v7

    const-string v3, "key_style_goose_egg_cheek_bone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v0, v0, v6

    const-string v2, "key_style_goose_egg_chin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    aget v2, v0, v2

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v13

    const-string v3, "key_style_natural_high_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v12

    const-string v3, "key_style_natural_small_nose"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v11

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v9

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v8

    const-string v3, "key_style_natural_small_face"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v2, v0, v7

    const-string v3, "key_style_natural_cheek_bone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    aget v0, v0, v6

    const-string v2, "key_style_natural_chin"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v13, p0, Lcom/oppo/camera/c/a;->b:Z

    :cond_4
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/c/a;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/c/a;->b:Z

    :cond_0
    return-void
.end method
