package com.oppo.camera.Ipa.a;

import android.content.Context;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.oppo.camera.watermark.OppoWatermark;

/* compiled from: WatermarkProcessor */
public class k extends b {

    /* renamed from: a  reason: collision with root package name */
    private OppoWatermark f1796a = null;

    public void a() {
        d.a("WatermarkProcessor", "unInit");
        this.f1796a = null;
    }

    public void a(Context context, b bVar) {
        d.a("WatermarkProcessor", "init");
        this.f1796a = new OppoWatermark();
    }

    public void a(b bVar) {
        if (bVar.f1798b.N == null) {
            d.e("WatermarkProcessor", "process, mWatermarkPath is null");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        OppoWatermark.WatermarkParameter watermarkParameter = new OppoWatermark.WatermarkParameter();
        watermarkParameter.mImageWidth = bVar.f1797a.e;
        watermarkParameter.mImageHeight = bVar.f1797a.f;
        watermarkParameter.mImageStride = bVar.f1797a.g;
        watermarkParameter.mImageScanline = bVar.f1797a.h;
        watermarkParameter.mOrientation = bVar.f1797a.j;
        watermarkParameter.mPreviewWidth = bVar.f1798b.L;
        watermarkParameter.mPreviewHeight = bVar.f1798b.M;
        watermarkParameter.mWatermarkPath = bVar.f1798b.N;
        watermarkParameter.mWatermarkFormat = 1;
        d.a("WatermarkProcessor", "process, mImageWidth: " + watermarkParameter.mImageWidth + ", mImageHeight: " + watermarkParameter.mImageHeight + ", mImageStride: " + watermarkParameter.mImageStride + ", mImageScanline: " + watermarkParameter.mImageScanline + ", mOrientation: " + watermarkParameter.mOrientation + ", mPreviewWidth: " + watermarkParameter.mPreviewWidth + ", mPreviewHeight: " + watermarkParameter.mPreviewHeight + ", mWatermarkPath: " + watermarkParameter.mWatermarkPath + ", mWatermarkFormat: " + watermarkParameter.mWatermarkFormat);
        this.f1796a.process(bVar.f1797a.f1799a, watermarkParameter);
        StringBuilder sb = new StringBuilder();
        sb.append("process, costTime: ");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        d.a("WatermarkProcessor", sb.toString());
    }
}
