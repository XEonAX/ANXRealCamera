.class public Lcom/oppo/camera/ui/menu/a;
.super Ljava/lang/Object;
.source "CameraMenuOptionInfo.java"


# static fields
.field public static final GROUP_TYPE_IMAGE_MENU:I = 0x3

.field public static final GROUP_TYPE_MENU_EXPANDABLE:I = 0x2

.field public static final GROUP_TYPE_NOMAL:I = 0x0

.field public static final GROUP_TYPE_SHARE_RESOURCE:I = 0x1


# instance fields
.field private mGroupType:I

.field private mImageTitleColorChangeable:Z

.field private mImageTitleMode:Z

.field private mOptionDefaultValue:Ljava/lang/String;

.field private mOptionExpandIcon:Landroid/graphics/Bitmap;

.field private mOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionKey:Ljava/lang/String;

.field private mOptionSingleIcon:Landroid/graphics/Bitmap;

.field private mOptionTitle:Ljava/lang/String;

.field private mbOptionOnOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return-void
.end method


# virtual methods
.method public getGroupType()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    return v0
.end method

.method public getImageTitleColorChangeable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    return v0
.end method

.method public getImageTitleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    return v0
.end method

.method public getOptionDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionExpandIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOptionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOptionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionOnOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return v0
.end method

.method public getOptionSingleIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOptionTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/menu/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/d;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    :cond_3
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/ui/menu/a;->mGroupType:I

    return-void
.end method

.method public setImageTitleColorChangeable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleColorChangeable:Z

    return-void
.end method

.method public setImageTitleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mImageTitleMode:Z

    return-void
.end method

.method public setOptionDefaultValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setOptionExpandIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionExpandIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/ui/menu/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setOptionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionKey:Ljava/lang/String;

    return-void
.end method

.method public setOptionOnOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/a;->mbOptionOnOff:Z

    return-void
.end method

.method public setOptionSingleIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionSingleIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOptionTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a;->mOptionTitle:Ljava/lang/String;

    return-void
.end method
