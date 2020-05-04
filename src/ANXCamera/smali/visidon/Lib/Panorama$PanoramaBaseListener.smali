.class public interface abstract Lvisidon/Lib/Panorama$PanoramaBaseListener;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanoramaBaseListener"
.end annotation


# virtual methods
.method public abstract onBitmapReady(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onFailure(Lvisidon/Lib/Panorama$FailureCode;)V
.end method

.method public abstract onFrameAdded(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onGuide(Lvisidon/Lib/Panorama$Guide;I)V
.end method

.method public abstract onJPEGImageReady([B)V
.end method

.method public abstract onNV21ImageReady([B)V
.end method

.method public abstract onProcessingReady(II)V
.end method

.method public abstract onSetPreviewParameters(Z)V
.end method
