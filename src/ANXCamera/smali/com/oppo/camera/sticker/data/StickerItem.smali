.class public Lcom/oppo/camera/sticker/data/StickerItem;
.super Ljava/lang/Object;
.source "StickerItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/camera/sticker/data/StickerItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATERIAL_TYPE_ANIEMOJI:I = 0x2

.field public static final MATERIAL_TYPE_MULTI:I = 0x1

.field public static final MATERIAL_TYPE_NORMAL:I = 0x0

.field public static final RECYCLE_BIN_UUID:Ljava/lang/String; = "68714002-1206-472f-a3c8-74eea52f7808"


# instance fields
.field private mAttribute:J

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryPos:I

.field private mDownloadState:I

.field private mDownloadTime:J

.field private mDownloadUid:Ljava/lang/String;

.field private mFileContentUri:Ljava/lang/String;

.field private mFileDownloadUrl:Ljava/lang/String;

.field private mFileMd5:Ljava/lang/String;

.field private mHasMusic:Z

.field private mIsBuildIn:Z

.field private mIsNew:Z

.field private mIsValid:Z

.field private mLastRequestTime:J

.field private mLogoFileUri:Ljava/lang/String;

.field private mLogoMd5:Ljava/lang/String;

.field private mLogoUrl:Ljava/lang/String;

.field private mMaterialType:I

.field private mNeedUpdate:Z

.field private mPosition:I

.field private mProtocolVersion:J

.field private mStickerId:J

.field private mStickerName:Ljava/lang/String;

.field private mStickerUUID:Ljava/lang/String;

.field private mThumbnailFileUri:Ljava/lang/String;

.field private mThumbnailMd5:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oppo/camera/sticker/data/StickerItem$1;

    invoke-direct {v0}, Lcom/oppo/camera/sticker/data/StickerItem$1;-><init>()V

    sput-object v0, Lcom/oppo/camera/sticker/data/StickerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    iput-object v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    iput v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    iput v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    iput-boolean v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    iput-boolean v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    iput-boolean v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    iput-boolean v2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    return-void
.end method

.method static synthetic access$002(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    return-wide p1
.end method

.method static synthetic access$1002(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/oppo/camera/sticker/data/StickerItem;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    return p1
.end method

.method static synthetic access$2002(Lcom/oppo/camera/sticker/data/StickerItem;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    return p1
.end method

.method static synthetic access$202(Lcom/oppo/camera/sticker/data/StickerItem;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    return p1
.end method

.method static synthetic access$2102(Lcom/oppo/camera/sticker/data/StickerItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/oppo/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/oppo/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/oppo/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/oppo/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/oppo/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/oppo/camera/sticker/data/StickerItem;I)I
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    return p1
.end method

.method static synthetic access$302(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/camera/sticker/data/StickerItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public copy(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 2

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    iget-object v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    iget v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    iput v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    iget v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    iput v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    iget v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    iput v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    iget-wide v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    iput-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    iget-boolean v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    iget-boolean v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    iget-boolean v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    iget-boolean v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    iget-boolean v0, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    iput-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    iget p1, p1, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    return-wide v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryPosition()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    return v0
.end method

.method public getDownloadState()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    return v0
.end method

.method public getDownloadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    return-wide v0
.end method

.method public getDownloadUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    return-wide v0
.end method

.method public getLogoFileUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialType()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    return v0
.end method

.method public getProtocolVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    return-wide v0
.end method

.method public getStickerId()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    return-wide v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailFileUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    return-wide v0
.end method

.method public hasMusic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    return v0
.end method

.method public isBuildIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    iget v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecycleBin()Z
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    const-string v1, "68714002-1206-472f-a3c8-74eea52f7808"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStickerNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    return v0
.end method

.method public matchAppAttribute(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    and-long/2addr v0, p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public needUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    return v0
.end method

.method public setAttribute(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    return-void
.end method

.method public setCategoryPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    return-void
.end method

.method public setDownloadState(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    return-void
.end method

.method public setDownloadTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    return-void
.end method

.method public setDownloadUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    return-void
.end method

.method public setFileContentUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    return-void
.end method

.method public setFileDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    return-void
.end method

.method public setHasMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    return-void
.end method

.method public setIsBuildIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    return-void
.end method

.method public setLastRequestTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    return-void
.end method

.method public setLogoFileUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    return-void
.end method

.method public setLogoMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setMaterialType(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    return-void
.end method

.method public setProtocolVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    return-void
.end method

.method public setStickerId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    return-void
.end method

.method public setStickerNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    return-void
.end method

.method public setStickerUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailFileUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", music:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buildIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tFileUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mCategoryPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileContentUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mFileMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailFileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mThumbnailMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoFileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLogoMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadUid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mProtocolVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mLastRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mDownloadState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mAttribute:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mHasMusic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mNeedUpdate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsBuildIn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsNew:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mIsValid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/oppo/camera/sticker/data/StickerItem;->mMaterialType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
