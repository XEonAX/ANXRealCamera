.class public Lcom/sensetime/faceapi/FigureSegment;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FigureSegment.java"


# static fields
.field public static final CV_COMMON_SEGMENT_DEFLICKER:I = 0x10

.field public static final CV_COMMON_SEGMENT_NV21MODEL:I = 0x8

.field public static final CV_FACE_SEGMENT_ANTI_SHAKE:I = 0x2

.field public static final CV_FACE_SEGMENT_REDUCE_HOLE:I = 0x4

.field public static final CV_FACE_SEGMENT_RESET:I = 0x1

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceSegment"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    invoke-direct {p0, p1, v0}, Lcom/sensetime/faceapi/FigureSegment;-><init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V
    .locals 2

    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->getValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateFigureSeg(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cvFaceCreateFigureSeg handle: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceSegment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createOutputBuffer(III[I)I
    .locals 6

    iget-wide v0, p0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceFigureSegSetOuputLength(JIII[I)I

    move-result p1

    return p1
.end method

.method protected releaseHandle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseHandle handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSegment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyFigureSeg(J)V

    return-void
.end method

.method public segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[B)I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sensetime/faceapi/FigureSegment;->segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I

    move-result v0

    return v0
.end method

.method public segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stride: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceSegment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    iget-wide v2, v0, Lcom/sensetime/faceapi/FigureSegment;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v9

    move-object v4, p1

    move v6, p3

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceFigureSeg(J[BIIIII[BI)I

    move-result v1

    return v1
.end method
