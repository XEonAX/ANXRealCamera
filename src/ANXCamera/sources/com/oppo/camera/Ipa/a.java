package com.oppo.camera.Ipa;

import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;

/* compiled from: CaptureMsgDataReportUtil */
public class a {
    public static CaptureMsgData a(CaptureMsgData captureMsgData, b bVar) {
        if (captureMsgData == null || bVar == null) {
            d.e("CaptureMsgDataReportUtil", "packageFromMeta, captureMsgData or imageCategory is null");
            return null;
        }
        b.a aVar = bVar.f1797a;
        b.C0052b bVar2 = bVar.f1798b;
        if (aVar != null) {
            captureMsgData.mHeight = String.valueOf(aVar.f);
            captureMsgData.mWidth = String.valueOf(aVar.e);
        }
        if (bVar2 != null) {
            captureMsgData.mCameraId = String.valueOf(bVar2.R);
            captureMsgData.mISO = bVar2.i;
            captureMsgData.mEXP = bVar2.t;
            captureMsgData.mFocalLength = bVar2.u;
            captureMsgData.mSmooth = bVar2.z;
            captureMsgData.mCaptureMode = bVar2.Q;
            captureMsgData.mHdrMode = bVar2.S;
            captureMsgData.mbHdrTrigger = bVar2.T;
            captureMsgData.mbFlashTrigger = bVar2.l;
            if (CameraStatisticsUtil.EVENT_CAPTURE.equals(bVar2.Q)) {
                captureMsgData.mPortraitNewStyleType = bVar2.O;
            } else {
                captureMsgData.mFilterType = bVar2.O;
            }
            captureMsgData.mPicSizeType = bVar2.U;
            captureMsgData.mShutterType = bVar2.V;
            captureMsgData.mShutterTriggerType = bVar2.W;
            captureMsgData.mAeAfLock = bVar2.X;
            captureMsgData.mScreenBrightness = bVar2.Y;
            captureMsgData.mTouchXYValue = bVar2.Z;
            captureMsgData.mOrientation = bVar2.aa;
            captureMsgData.parseFaceBeauty(bVar2.A);
            captureMsgData.parseFaceInfo(bVar2.f1801a);
            captureMsgData.mAiScene = bVar2.ab;
        }
        return captureMsgData;
    }
}
