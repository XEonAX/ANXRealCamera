.class public Lcom/sensetime/faceapi/utils/FaceRotationUtil;
.super Ljava/lang/Object;
.source "FaceRotationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateFaceInfo(Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotatePoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rotateFaceInfos([Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V
    .locals 3

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2, p1, p2, p3, p4}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotateFaceInfo(Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;
    .locals 1

    if-eqz p4, :cond_3

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p4, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p4, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput p4, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->right:I

    if-nez p3, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p1, p3

    iput p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget p4, p0, Landroid/graphics/Rect;->top:I

    sub-int p4, p2, p4

    iput p4, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    if-nez p3, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p4, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p4, p0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p1, p3

    iput p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static rotatePoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;
    .locals 1

    if-eqz p4, :cond_3

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_1

    const/16 p2, 0x10e

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/graphics/PointF;->y:F

    iget p4, p0, Landroid/graphics/PointF;->x:F

    iput p4, p0, Landroid/graphics/PointF;->y:F

    iput p2, p0, Landroid/graphics/PointF;->x:F

    if-nez p3, :cond_4

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    iget p4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p4

    iput p2, p0, Landroid/graphics/PointF;->y:F

    if-nez p3, :cond_4

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_2
    iget p4, p0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->x:F

    iput p4, p0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_4

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    int-to-float p1, p1

    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_4
    :goto_0
    return-object p0
.end method
