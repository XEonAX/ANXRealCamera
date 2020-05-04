.class public Lcom/oppo/camera/sticker/data/BuildInSticker;
.super Ljava/lang/Object;
.source "BuildInSticker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/camera/sticker/data/BuildInSticker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetFilePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mAssetThumbnailPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mAttribute:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mCategoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mCategoryPos:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mHasMusic:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mMaterialType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mPosition:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mProtocolVersion:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mStickerId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mStickerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mStickerUUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mVersion:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/sticker/data/BuildInSticker$1;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/BuildInSticker$1;-><init>()V

    sput-object v0, Lcom/oppo/camera/sticker/data/BuildInSticker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    iput v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/oppo/camera/sticker/data/BuildInSticker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    return-wide p1
.end method

.method static synthetic access$1002(Lcom/oppo/camera/sticker/data/BuildInSticker;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    return p1
.end method

.method static synthetic access$102(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/camera/sticker/data/BuildInSticker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/camera/sticker/data/BuildInSticker;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oppo/camera/sticker/data/BuildInSticker;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    return p1
.end method

.method static synthetic access$302(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/oppo/camera/sticker/data/BuildInSticker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/oppo/camera/sticker/data/BuildInSticker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oppo/camera/sticker/data/BuildInSticker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/oppo/camera/sticker/data/BuildInSticker;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAssetFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetThumbnailPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryPosition()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    return v0
.end method

.method public getHasMusic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    return v0
.end method

.method public getMaterialType()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    return v0
.end method

.method public getProtocolVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    return-wide v0
.end method

.method public getStickerId()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    return-wide v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    return-wide v0
.end method

.method public obtainStickerItem()Lcom/oppo/camera/sticker/data/StickerItemWrapper;
    .locals 3

    new-instance v0, Lcom/oppo/camera/sticker/data/StickerItemWrapper;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;-><init>()V

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerId(J)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerUUID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setStickerName(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setVersion(J)V

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setProtocolVersion(J)V

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setCategoryId(Ljava/lang/String;)V

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setCategoryPosition(I)V

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setPosition(I)V

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setAttribute(J)V

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setHasMusic(Z)V

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/sticker/data/StickerItemWrapper;->setMaterialType(I)V

    return-object v0
.end method

.method public setAssetFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    return-void
.end method

.method public setAssetThumbnailPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setAttribute(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    return-void
.end method

.method public setCategoryPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    return-void
.end method

.method public setHasMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    return-void
.end method

.method public setMaterialType(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    return-void
.end method

.method public setProtocolVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    return-void
.end method

.method public setStickerId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    return-void
.end method

.method public setStickerUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", music: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mCategoryPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAssetThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mProtocolVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mAttribute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mHasMusic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mMaterialType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/BuildInSticker;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
