.class public Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;
.super Ljava/lang/Object;
.source "YuvProcessUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/jni/YuvProcessUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifInfo"
.end annotation


# static fields
.field public static final APERTURE_MULTIPLE:I = 0x64

.field public static final AWB_AUTO:I = 0x0

.field public static final AWB_MANUAL:I = 0x1

.field public static final DATE_TIME_MULTIPLE:I = 0x3e8

.field public static final EXPOSURE_BIAS_MULTIPLE:I = 0x989680

.field public static final EXPOSURE_MULTIPLE:I = 0xf4240

.field public static final FLASH_AUTO_CLOSE:I = 0x18

.field public static final FLASH_AUTO_OPEN:I = 0x19

.field public static final FLASH_CLOSE:I = 0x10

.field public static final FLASH_OPEN:I = 0x9

.field public static final FOCAL_LENGTH_MULTIPLE:I = 0x64

.field public static final F_NUMBER_MULTIPLE:I = 0xa

.field public static final LOCATION_MULTIPLE:I = 0x2710

.field public static final LOCATION_ORIGIN:I = 0x1

.field public static final LOCATION_TIME_MULTIPLE:I = 0x1


# instance fields
.field public mAltitude:[J

.field public mAltitudeRef:B

.field public mApertureValue:[J

.field public mDateTime:Ljava/lang/String;

.field public mExposureBiasValue:[J

.field public mExposureTime:[J

.field public mFNumber:[I

.field public mFlashValue:I

.field public mFocalLength:[I

.field public mFrameNum:J

.field public mGPSDateStamp:Ljava/lang/String;

.field public mGPSTimeStamp:[J

.field public mISO:I

.field public mImageHeight:I

.field public mImageWidth:I

.field public mJpegOrientation:I

.field public mLatitude:[J

.field public mLatitudeRef:Ljava/lang/String;

.field public mLongitude:[J

.field public mLongitudeRef:Ljava/lang/String;

.field public mManufacture:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mSubDateTime:Ljava/lang/String;

.field public mSupportDCIP3:I

.field public mTunningStats:[B

.field public mUserComment:Ljava/lang/String;

.field public mWhiteBalanceMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mModel:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mJpegOrientation:I

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mISO:I

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFNumber:[I

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mWhiteBalanceMode:I

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFlashValue:I

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLatitude:[J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLongitude:[J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mGPSTimeStamp:[J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mGPSDateStamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mDateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mSubDateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mManufacture:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFrameNum:J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mExposureTime:[J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mFocalLength:[I

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mTunningStats:[B

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mSupportDCIP3:I

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mUserComment:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLatitudeRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mLongitudeRef:Ljava/lang/String;

    iput-byte v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mAltitudeRef:B

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mAltitude:[J

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageWidth:I

    iput v1, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mImageHeight:I

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mApertureValue:[J

    iput-object v0, p0, Lcom/oppo/camera/jni/YuvProcessUtil$ExifInfo;->mExposureBiasValue:[J

    return-void
.end method
