package com.oppo.camera.Ipa.a;

import android.content.Context;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.facebeauty.OppoFaceBeauty;
import com.oppo.camera.ffd.OppoFFD;

/* compiled from: FaceBeautyProcessor */
public class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private OppoFFD f1780a = null;

    /* renamed from: b  reason: collision with root package name */
    private OppoFaceBeauty.InitParameter f1781b = null;
    private OppoFaceBeauty c = null;

    public void a() {
        d.a("FaceBeautyProcessor", "unInit");
        this.c.release();
        this.c = null;
        this.f1780a.release();
        this.f1780a = null;
        d.b("FaceBeautyProcessor", "unInit X");
    }

    public void a(Context context, b bVar) {
        d.a("FaceBeautyProcessor", "init");
        this.f1780a = new OppoFFD();
        this.f1780a.initialize(3, "/system/etc/camera/");
        this.f1780a.setDebug(false, false, false, false);
        this.c = new OppoFaceBeauty();
        this.f1781b = new OppoFaceBeauty.InitParameter();
        this.f1781b.mbFrontCamera = bVar.f1798b.E;
        this.f1781b.mbPortraitMode = bVar.f1798b.F;
        this.f1781b.mbSuperNight = bVar.f1798b.G;
        this.c.initialize(this.f1781b);
        OppoFaceBeauty.DebugParameter debugParameter = new OppoFaceBeauty.DebugParameter();
        debugParameter.mbFbDump = false;
        debugParameter.mFbEnable = true;
        debugParameter.mb3DFb = true;
        this.c.setDebug(debugParameter);
        d.a("FaceBeautyProcessor", "init X");
    }

    public void a(b bVar) {
        long currentTimeMillis = System.currentTimeMillis();
        b.a aVar = bVar.f1797a;
        b.C0052b bVar2 = bVar.f1798b;
        OppoFFD.ImageInfo imageInfo = new OppoFFD.ImageInfo();
        imageInfo.mWidth = aVar.e;
        imageInfo.mHeight = aVar.f;
        imageInfo.mStride = aVar.g;
        imageInfo.mScanline = aVar.h;
        d.a("FaceBeautyProcessor", "process, mWidth: " + imageInfo.mWidth + ", mHeight: " + imageInfo.mHeight + ", mOrientation: " + aVar.j);
        if (aVar.i == 17 || aVar.i == 274) {
            if (!this.f1781b.equal(bVar2.E, bVar2.F, bVar2.G)) {
                this.c.release();
                this.c = null;
                this.c = new OppoFaceBeauty();
                this.f1781b.mbFrontCamera = bVar.f1798b.E;
                this.f1781b.mbPortraitMode = bVar.f1798b.F;
                this.f1781b.mbSuperNight = bVar.f1798b.G;
                this.c.initialize(this.f1781b);
                OppoFaceBeauty.DebugParameter debugParameter = new OppoFaceBeauty.DebugParameter();
                debugParameter.mbFbDump = false;
                debugParameter.mFbEnable = true;
                debugParameter.mb3DFb = true;
                this.c.setDebug(debugParameter);
            }
            if (aVar.i == 17) {
                imageInfo.mFormat = 1;
            } else {
                imageInfo.mFormat = 0;
            }
            OppoFFD.ProcessParameter processParameter = new OppoFFD.ProcessParameter();
            processParameter.mDeviceOrientation = aVar.j;
            processParameter.mFrontCamera = bVar.f1798b.E;
            this.f1780a.process(aVar.f1799a, imageInfo, processParameter);
            d.e("FaceBeautyProcessor", "process, ffd costTime: " + (System.currentTimeMillis() - currentTimeMillis) + ", mFaceNum: " + processParameter.mFaceNum + ", mbForbidBeauty: " + bVar.f1798b.H);
            if (!bVar.f1798b.H || processParameter.mFaceNum > 0) {
                OppoFaceBeauty.ImageInfo imageInfo2 = new OppoFaceBeauty.ImageInfo();
                if (aVar.i == 17) {
                    imageInfo2.mFormat = 1;
                } else {
                    imageInfo2.mFormat = 0;
                }
                imageInfo2.mWidth = aVar.e;
                imageInfo2.mHeight = aVar.f;
                imageInfo2.mStride = aVar.g;
                imageInfo2.mScanline = aVar.h;
                OppoFaceBeauty.ProcessParameter processParameter2 = new OppoFaceBeauty.ProcessParameter();
                processParameter2.mDeviceOrientation = aVar.j;
                processParameter2.mFaceBeautyLevel = bVar.f1798b.z;
                processParameter2.mISO = bVar.f1798b.i;
                processParameter2.mbVideoMode = bVar.f1798b.B;
                processParameter2.mbFlashSnapshot = bVar.f1798b.C;
                if (bVar.f1798b.A != null && bVar.f1798b.A.length > 0) {
                    processParameter2.mAppBeautyParamSize = bVar.f1798b.A.length;
                    processParameter2.mAppBeautyParam = bVar.f1798b.A;
                }
                if (bVar.f1798b.K != null && bVar.f1798b.K.length > 0) {
                    processParameter2.mBeauty3DParamSize = bVar.f1798b.K.length;
                    processParameter2.mBeauty3DParam = bVar.f1798b.K;
                }
                processParameter2.mSensorName = bVar2.y;
                processParameter2.mModelPath = "/system/etc/camera/";
                processParameter2.mLanguage = SystemPropertiesNative.get("persist.sys.locale", " ");
                processParameter2.mVersion = SystemPropertiesNative.get("ro.oppo.version", " ");
                processParameter2.mRegion = SystemPropertiesNative.get("persist.sys.oppo.region", " ");
                processParameter2.mProjectName = bVar.f1798b.D;
                processParameter2.mMasterFaceIndex = bVar.f1798b.J;
                byte[] bArr = new byte[processParameter.mFFDResultSize];
                processParameter.mFFDResult.get(bArr, 0, bArr.length);
                byte[] bArr2 = new byte[processParameter.mAttrResultSize];
                processParameter.mAttrResult.get(bArr2, 0, bArr2.length);
                processParameter2.mFaceNum = processParameter.mFaceNum;
                processParameter2.mFFDResult = bArr;
                processParameter2.mAttrResult = bArr2;
                processParameter2.mVersionCode = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_FACE_BEAUTY_VERSION_CODE);
                this.c.process(aVar.f1799a, imageInfo2, processParameter2);
                d.e("FaceBeautyProcessor", "process, face beauty costTime: " + (System.currentTimeMillis() - currentTimeMillis));
                return;
            }
            d.e("FaceBeautyProcessor", "process, not need face beauty");
            return;
        }
        d.e("FaceBeautyProcessor", "process, " + aVar.i + " not support face beauty");
    }
}
