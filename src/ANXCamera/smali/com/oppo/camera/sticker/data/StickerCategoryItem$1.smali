.class final Lcom/oppo/camera/sticker/data/StickerCategoryItem$1;
.super Ljava/lang/Object;
.source "StickerCategoryItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/sticker/data/StickerCategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppo/camera/sticker/data/StickerCategoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oppo/camera/sticker/data/StickerCategoryItem;
    .locals 3

    new-instance v0, Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$002(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$102(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$202(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$302(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$402(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$502(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$602(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$702(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$802(Lcom/oppo/camera/sticker/data/StickerCategoryItem;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$902(Lcom/oppo/camera/sticker/data/StickerCategoryItem;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$1002(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem;->access$1102(Lcom/oppo/camera/sticker/data/StickerCategoryItem;Z)Z

    return-object v0
.end method

.method public a(I)[Lcom/oppo/camera/sticker/data/StickerCategoryItem;
    .locals 0

    new-array p1, p1, [Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem$1;->a(Landroid/os/Parcel;)Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/sticker/data/StickerCategoryItem$1;->a(I)[Lcom/oppo/camera/sticker/data/StickerCategoryItem;

    move-result-object p1

    return-object p1
.end method
