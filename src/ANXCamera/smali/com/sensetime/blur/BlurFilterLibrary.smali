.class public Lcom/sensetime/blur/BlurFilterLibrary;
.super Ljava/lang/Object;
.source "BlurFilterLibrary.java"


# static fields
.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jnistblur_preview_api"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "stblur_preview_api"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native destroy()I
.end method

.method public static native getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native init(II)I
.end method

.method public static native processMaskBuffer([BIIZ[I)I
.end method

.method public static native processMaskTexture(III[I)I
.end method

.method public static native processOESTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I
.end method

.method public static native processOESTextureByMask(IIZ[I)I
.end method

.method public static native processOESTexureByMaskGradual(IIZI[F[I)I
.end method

.method public static native processTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I
.end method

.method public static native processTextureByMask(IIZ[I)I
.end method

.method public static native processTexureByMaskGradual(IIZI[F[I)I
.end method

.method public static native rotateGradualTexture(IZZ)I
.end method

.method public static native rotateMaskTexture(IZZ)I
.end method

.method public static native setDebug(Z)I
.end method

.method public static native setDebugMask(Z)I
.end method

.method public static native setParam(IF)I
.end method
