package com.oppo.camera.Ipa.a;

import android.content.Context;
import android.util.Size;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.upscale.OppoUpscale;

/* compiled from: UpscaleProcessor */
public class j extends b {

    /* renamed from: a  reason: collision with root package name */
    private OppoUpscale f1795a = null;

    private float a(b.C0052b bVar) {
        Size sizeConfigValue = CameraConfig.getSizeConfigValue(ConfigDataBase.KEY_HIGH_PICTURE_SIZE);
        if (sizeConfigValue == null || bVar == null) {
            return 0.0f;
        }
        if (sizeConfigValue.getWidth() == bVar.ag || sizeConfigValue.getHeight() == bVar.ag) {
            return (bVar.f1801a == null || bVar.f1801a.length <= 0) ? Float.valueOf(DebugUtil.getDebugProperty("oppo.camera.high.picture.size.normal.sharpen", "1.6")).floatValue() : Float.valueOf(DebugUtil.getDebugProperty("oppo.camera.high.picture.size.portrait.sharpen", "0.5")).floatValue();
        }
        return 0.0f;
    }

    public void a() {
        d.a("UpscaleProcessor", "unInit");
        this.f1795a = null;
    }

    public void a(Context context, b bVar) {
        d.a("UpscaleProcessor", "init");
        this.f1795a = new OppoUpscale();
    }

    public void a(b bVar) {
        b bVar2 = bVar;
        d.a("UpscaleProcessor", "process");
        long currentTimeMillis = System.currentTimeMillis();
        b.C0052b bVar3 = bVar2.f1798b;
        int i = bVar3.ac;
        int i2 = bVar3.ad;
        int i3 = bVar3.ae;
        int i4 = bVar3.af;
        OppoUpscale.YUVImageParameter yUVImageParameter = new OppoUpscale.YUVImageParameter();
        if (bVar2.f1797a.i == 17) {
            yUVImageParameter.mFormat = 8;
        } else {
            yUVImageParameter.mFormat = 9;
        }
        yUVImageParameter.mWidth = i;
        yUVImageParameter.mHeight = i2;
        yUVImageParameter.mYPixelStride = 1;
        yUVImageParameter.mYRowStride = i3;
        yUVImageParameter.mYColumnStride = i4;
        yUVImageParameter.mCBPixelStride = 2;
        yUVImageParameter.mCBRowStride = i3;
        yUVImageParameter.mCRPixelStride = 2;
        yUVImageParameter.mCRRowStride = i3;
        int i5 = bVar3.ag;
        int i6 = bVar3.ah;
        int i7 = bVar3.ai;
        int i8 = bVar3.aj;
        StringBuilder sb = new StringBuilder();
        long j = currentTimeMillis;
        sb.append("process, inputWidth: ");
        sb.append(i);
        sb.append(", inputHeight: ");
        sb.append(i2);
        sb.append(", inputStride: ");
        sb.append(i3);
        sb.append(", inputScanline: ");
        sb.append(i4);
        sb.append(", outputWidth: ");
        sb.append(i5);
        sb.append(", outputHeight: ");
        sb.append(i6);
        sb.append(", outputStride: ");
        sb.append(i7);
        sb.append(", outputScanline: ");
        sb.append(i8);
        d.a("UpscaleProcessor", sb.toString());
        OppoUpscale.YUVImageParameter yUVImageParameter2 = new OppoUpscale.YUVImageParameter();
        if (bVar2.f1797a.i == 17) {
            yUVImageParameter2.mFormat = 8;
        } else {
            yUVImageParameter2.mFormat = 9;
        }
        yUVImageParameter2.mWidth = i5;
        yUVImageParameter2.mHeight = i6;
        yUVImageParameter2.mYPixelStride = 1;
        yUVImageParameter2.mYRowStride = i7;
        yUVImageParameter2.mYColumnStride = i8;
        yUVImageParameter2.mCBPixelStride = 2;
        yUVImageParameter2.mCBRowStride = i7;
        yUVImageParameter2.mCRPixelStride = 2;
        yUVImageParameter2.mCRRowStride = i7;
        byte[] bArr = new byte[((int) (((float) (i7 * i8)) * 1.5f))];
        OppoUpscale.ScaleRuntimeParameter scaleRuntimeParameter = new OppoUpscale.ScaleRuntimeParameter();
        scaleRuntimeParameter.mNoiseReductionStrength = 0;
        scaleRuntimeParameter.mSharpen = a(bVar3);
        scaleRuntimeParameter.mColorNoiseReductionStrength = 0;
        scaleRuntimeParameter.mNumberOfProcessingThreads = 8;
        scaleRuntimeParameter.mActiveCPUMask = -1;
        int i9 = i6;
        OppoUpscale oppoUpscale = this.f1795a;
        int i10 = i7;
        oppoUpscale.scaleImage(yUVImageParameter, bVar2.f1797a.f1799a, yUVImageParameter2, bArr, scaleRuntimeParameter);
        bVar2.f1797a.f1799a = bArr;
        bVar2.f1797a.e = i5;
        bVar2.f1797a.f = i9;
        bVar2.f1797a.g = i10;
        bVar2.f1797a.h = i8;
        d.e("UpscaleProcessor", "process, cost time: " + (System.currentTimeMillis() - j));
    }
}
