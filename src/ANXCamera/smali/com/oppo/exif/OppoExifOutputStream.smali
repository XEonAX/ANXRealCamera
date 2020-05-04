.class Lcom/oppo/exif/OppoExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OppoExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/oppo/exif/OppoExifData;

.field private final mInterface:Lcom/oppo/exif/OppoExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/oppo/exif/OppoExifInterface;)V
    .locals 2

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mSingleByteArray:[B

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lcom/oppo/exif/OppoExifOutputStream;->calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I

    move-result v2

    sget v3, Lcom/oppo/exif/OppoExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/exif/OppoIfdData;->getTag(S)Lcom/oppo/exif/OppoExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oppo/exif/OppoExifTag;->setValue(I)Z

    iget-object v3, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/oppo/exif/OppoExifOutputStream;->calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I

    move-result v2

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v5, Lcom/oppo/exif/OppoExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/oppo/exif/OppoIfdData;->getTag(S)Lcom/oppo/exif/OppoExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oppo/exif/OppoExifTag;->setValue(I)Z

    invoke-direct {p0, v4, v2}, Lcom/oppo/exif/OppoExifOutputStream;->calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I

    move-result v2

    :cond_0
    iget-object v3, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v4, Lcom/oppo/exif/OppoExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oppo/exif/OppoIfdData;->getTag(S)Lcom/oppo/exif/OppoExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oppo/exif/OppoExifTag;->setValue(I)Z

    invoke-direct {p0, v3, v2}, Lcom/oppo/exif/OppoExifOutputStream;->calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I

    move-result v2

    :cond_1
    iget-object v3, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/oppo/exif/OppoIfdData;->setOffsetToNextIfd(I)V

    invoke-direct {p0, v3, v2}, Lcom/oppo/exif/OppoExifOutputStream;->calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I

    move-result v2

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oppo/exif/OppoIfdData;->getTag(S)Lcom/oppo/exif/OppoExifTag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/exif/OppoExifTag;->setValue(I)Z

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->getStripCount()I

    move-result v0

    new-array v0, v0, [J

    :goto_0
    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v4}, Lcom/oppo/exif/OppoExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    int-to-long v4, v2

    aput-wide v4, v0, v1

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v4, v1}, Lcom/oppo/exif/OppoExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OppoIfdData;->getTag(S)Lcom/oppo/exif/OppoExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/exif/OppoExifTag;->setValue([J)Z

    :cond_4
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lcom/oppo/exif/OppoIfdData;I)I
    .locals 5

    invoke-virtual {p1}, Lcom/oppo/exif/OppoIfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/oppo/exif/OppoIfdData;->getAllTags()[Lcom/oppo/exif/OppoExifTag;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/oppo/exif/OppoExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-virtual {v3, p2}, Lcom/oppo/exif/OppoExifTag;->setOffset(I)V

    invoke-virtual {v3}, Lcom/oppo/exif/OppoExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/exif/OppoIfdData;

    invoke-direct {v0, v1}, Lcom/oppo/exif/OppoIfdData;-><init>(I)V

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v2, v0}, Lcom/oppo/exif/OppoExifData;->addIfdData(Lcom/oppo/exif/OppoIfdData;)V

    :cond_0
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v3, Lcom/oppo/exif/OppoExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v2

    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    invoke-virtual {v0, v2}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/oppo/exif/OppoIfdData;

    invoke-direct {v2, v4}, Lcom/oppo/exif/OppoIfdData;-><init>(I)V

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v4, v2}, Lcom/oppo/exif/OppoExifData;->addIfdData(Lcom/oppo/exif/OppoIfdData;)V

    :cond_1
    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v5, Lcom/oppo/exif/OppoExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v4, v5}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v4, Lcom/oppo/exif/OppoExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v0, v4}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v4}, Lcom/oppo/exif/OppoExifData;->hasCompressedThumbnail()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    new-instance v0, Lcom/oppo/exif/OppoIfdData;

    invoke-direct {v0, v2}, Lcom/oppo/exif/OppoIfdData;-><init>(I)V

    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v1, v0}, Lcom/oppo/exif/OppoExifData;->addIfdData(Lcom/oppo/exif/OppoIfdData;)V

    :cond_6
    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/oppo/exif/OppoExifTag;->setValue(I)Z

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    goto/16 :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v4}, Lcom/oppo/exif/OppoExifData;->hasUncompressedStrip()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    new-instance v0, Lcom/oppo/exif/OppoIfdData;

    invoke-direct {v0, v2}, Lcom/oppo/exif/OppoIfdData;-><init>(I)V

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v2, v0}, Lcom/oppo/exif/OppoExifData;->addIfdData(Lcom/oppo/exif/OppoIfdData;)V

    :cond_a
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifData;->getStripCount()I

    move-result v2

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v5, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v4, v5}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, p0, Lcom/oppo/exif/OppoExifOutputStream;->mInterface:Lcom/oppo/exif/OppoExifInterface;

    sget v6, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v5, v6}, Lcom/oppo/exif/OppoExifInterface;->buildUninitializedTag(I)Lcom/oppo/exif/OppoExifTag;

    move-result-object v5

    if-eqz v5, :cond_c

    new-array v2, v2, [J

    :goto_2
    iget-object v3, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v3}, Lcom/oppo/exif/OppoExifData;->getStripCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OppoExifData;->getStrip(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v5, v2}, Lcom/oppo/exif/OppoExifTag;->setValue([J)Z

    invoke-virtual {v0, v4}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    invoke-virtual {v0, v5}, Lcom/oppo/exif/OppoIfdData;->setTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    sget v1, Lcom/oppo/exif/OppoExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/oppo/exif/OppoExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoIfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oppo/exif/OppoExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iget-object p4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, p2, p3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p1
.end method

.method private stripNullValueTags(Lcom/oppo/exif/OppoExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/exif/OppoExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/exif/OppoExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/oppo/exif/OppoExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/exif/OppoExifTag;

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/oppo/exif/OppoExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/oppo/exif/OppoExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/oppo/exif/OppoExifData;->removeTag(SI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/oppo/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oppo/exif/OppoExifOutputStream;->writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oppo/exif/OppoExifOutputStream;->writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/oppo/exif/OppoExifOutputStream;->writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V

    :cond_0
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/oppo/exif/OppoExifOutputStream;->writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V

    :cond_1
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0, v1}, Lcom/oppo/exif/OppoExifData;->getIfdData(I)Lcom/oppo/exif/OppoIfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oppo/exif/OppoExifOutputStream;->writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/oppo/exif/OppoExifOutputStream;->stripNullValueTags(Lcom/oppo/exif/OppoExifData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/exif/OppoExifOutputStream;->createRequiredIfdAndTag()V

    invoke-direct {p0}, Lcom/oppo/exif/OppoExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    new-instance v3, Lcom/oppo/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcom/oppo/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/oppo/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/oppo/exif/OrderedDataOutputStream;

    const/16 v4, -0x1f

    invoke-virtual {v3, v4}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    int-to-short v1, v1

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v1}, Lcom/oppo/exif/OppoExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v4, :cond_1

    const/16 v1, 0x4d4d

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    :goto_0
    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v1}, Lcom/oppo/exif/OppoExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/oppo/exif/OrderedDataOutputStream;

    const/16 v1, 0x2a

    invoke-virtual {v3, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    invoke-virtual {v3, v2}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    invoke-direct {p0, v3}, Lcom/oppo/exif/OppoExifOutputStream;->writeAllTags(Lcom/oppo/exif/OrderedDataOutputStream;)V

    invoke-direct {p0, v3}, Lcom/oppo/exif/OppoExifOutputStream;->writeThumbnail(Lcom/oppo/exif/OrderedDataOutputStream;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/exif/OppoExifTag;

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v2, v1}, Lcom/oppo/exif/OppoExifData;->addTag(Lcom/oppo/exif/OppoExifTag;)Lcom/oppo/exif/OppoExifTag;

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeIfd(Lcom/oppo/exif/OppoIfdData;Lcom/oppo/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oppo/exif/OppoIfdData;->getAllTags()[Lcom/oppo/exif/OppoExifTag;

    move-result-object v0

    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    goto :goto_2

    :cond_0
    invoke-static {v5, p2}, Lcom/oppo/exif/OppoExifOutputStream;->writeTagValue(Lcom/oppo/exif/OppoExifTag;Lcom/oppo/exif/OrderedDataOutputStream;)V

    invoke-virtual {v5}, Lcom/oppo/exif/OppoExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p2, v2}, Lcom/oppo/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/oppo/exif/OppoIfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/oppo/exif/OppoExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    invoke-static {v1, p2}, Lcom/oppo/exif/OppoExifOutputStream;->writeTagValue(Lcom/oppo/exif/OppoExifTag;Lcom/oppo/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/oppo/exif/OppoExifTag;Lcom/oppo/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/exif/OppoExifTag;->getRational(I)Lcom/oppo/exif/OppoRational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/exif/OrderedDataOutputStream;->writeRational(Lcom/oppo/exif/OppoRational;)Lcom/oppo/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/exif/OppoExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/oppo/exif/OrderedDataOutputStream;->writeInt(I)Lcom/oppo/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/exif/OppoExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/oppo/exif/OrderedDataOutputStream;->writeShort(S)Lcom/oppo/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getStringByte()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    invoke-virtual {p1, v0}, Lcom/oppo/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v0}, Lcom/oppo/exif/OrderedDataOutputStream;->write([B)V

    invoke-virtual {p1, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/oppo/exif/OppoExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/oppo/exif/OppoExifTag;->getBytes([B)V

    invoke-virtual {p1, v0}, Lcom/oppo/exif/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/oppo/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v0}, Lcom/oppo/exif/OppoExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v1}, Lcom/oppo/exif/OppoExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    invoke-virtual {v1, v0}, Lcom/oppo/exif/OppoExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/exif/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lcom/oppo/exif/OppoExifData;
    .locals 1

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/oppo/exif/OppoExifData;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mExifData:Lcom/oppo/exif/OppoExifData;

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/oppo/exif/OppoExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/oppo/exif/OppoExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    if-eq v0, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    sub-int/2addr p3, v0

    iget v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToSkip:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v0

    :cond_2
    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    :goto_2
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    iget v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oppo/exif/OppoExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_7
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToSkip:I

    iput v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    goto :goto_3

    :cond_9
    invoke-static {v2}, Lcom/oppo/exif/OppoJpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mByteToCopy:I

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    :goto_3
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/oppo/exif/OppoExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iput v2, p0, Lcom/oppo/exif/OppoExifOutputStream;->mState:I

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/oppo/exif/OppoExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-lez p3, :cond_f

    iget-object v0, p0, Lcom/oppo/exif/OppoExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    return-void
.end method
