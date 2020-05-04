.class public Lcom/oppo/camera/Ipa/a;
.super Ljava/lang/Object;
.source "CaptureMsgDataReportUtil.java"


# direct methods
.method public static a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)Lcom/oppo/camera/statistics/model/CaptureMsgData;
    .locals 2

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    iget v0, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->R:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraId:Ljava/lang/String;

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->i:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mISO:I

    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$b;->t:J

    iput-wide v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mEXP:J

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->u:F

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFocalLength:F

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->z:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mSmooth:I

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHdrMode:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oppo/camera/Ipa/b$b;->T:Z

    iput-boolean v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mbHdrTrigger:Z

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->l:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mbFlashTrigger:I

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPortraitNewStyleType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFilterType:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterTriggerType:Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->X:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->Y:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mScreenBrightness:I

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->Z:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->aa:I

    iput v0, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mOrientation:I

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->A:[I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->parseFaceBeauty([I)V

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->parseFaceInfo([Landroid/hardware/camera2/params/Face;)V

    iget p1, p1, Lcom/oppo/camera/Ipa/b$b;->ab:I

    iput p1, p0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAiScene:I

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, "CaptureMsgDataReportUtil"

    const-string p1, "packageFromMeta, captureMsgData or imageCategory is null"

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
