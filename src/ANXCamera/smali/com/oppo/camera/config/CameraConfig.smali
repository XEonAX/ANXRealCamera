.class public Lcom/oppo/camera/config/CameraConfig;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfig"

.field private static sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

.field private static sOppoCameraCharacteristics:Lcom/oppo/camera/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKeyInMenuList(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v3, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    sget-object v3, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oppo/camera/ui/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v2}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigBooleanValue, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v3}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraConfig"

    invoke-static {v2, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_1
    return v1
.end method

.method public static getConfigBooleanValue(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera_supported"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera_supported"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p1}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getConfigByteValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)F"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getListSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string v0, "x"

    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    new-instance v5, Landroid/util/Size;

    aget-object v6, p0, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, p0, v4

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    return-object v1

    :catch_0
    :cond_2
    return-object v2
.end method

.method public static getMenuPanelOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuPanelList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getOmojiPerformanceConfigList()[I
    .locals 1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getOmojiPerformanceConfigList()[I

    move-result-object v0

    return-object v0
.end method

.method public static getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_default"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p1}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->getDefaultMenuSettingConfig()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const-string v0, "x"

    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v1}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraConfig"

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2
.end method

.method public static getSupportSettingMenuKey(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getMenuSettingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSupportedList(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getOptionItemConfigs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_front_camera_supported"

    goto :goto_0

    :cond_0
    const-string p1, "_back_camera_supported"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getOptionItemConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/b;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initialize(Lcom/oppo/camera/e/h;)V
    .locals 1

    sput-object p0, Lcom/oppo/camera/config/CameraConfig;->sOppoCameraCharacteristics:Lcom/oppo/camera/e/h;

    new-instance p0, Lcom/oppo/camera/config/ConfigDataBase;

    invoke-direct {p0}, Lcom/oppo/camera/config/ConfigDataBase;-><init>()V

    sput-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->parseMenuPanel()V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->parseMenuSetting()V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->initPerformanceConfig()V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->parseDefaultProjectConfig()V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sOppoCameraCharacteristics:Lcom/oppo/camera/e/h;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/config/ConfigDataBase;->parseProjectFromCharacteristics(Lcom/oppo/camera/e/h;)V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->parseDefaultMenuSettingConfigMap()V

    sget-object p0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    invoke-virtual {p0}, Lcom/oppo/camera/config/ConfigDataBase;->parseOptionItemConfig()V

    return-void
.end method

.method public static release()V
    .locals 2

    const-string v0, "CameraConfig"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/oppo/camera/config/CameraConfig;->sConfigDataBase:Lcom/oppo/camera/config/ConfigDataBase;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/config/ConfigDataBase;->getProjectMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
