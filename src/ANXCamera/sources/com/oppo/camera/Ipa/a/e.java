package com.oppo.camera.Ipa.a;

import android.content.Context;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.exif.OppoExifInterface;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;

/* compiled from: JpegEncodeProcessor */
public class e extends b {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDateFormat f1783a = null;

    private long[] a(double d) {
        double abs = Math.abs(d);
        long floor = (long) Math.floor(abs);
        double b2 = b(abs) * 60.0d;
        long floor2 = (long) Math.floor(b2);
        double b3 = b(b2) * 60.0d;
        d.a("JpegEncodeProcessor", "convertGpsCoordinate, originDegree: " + d + ", degree: " + floor + ", minute: " + floor2 + ", second: " + b3);
        return new long[]{floor * 1, 1, floor2 * 1, 1, (long) (b3 * 10000.0d), 10000};
    }

    private double b(double d) {
        return (double) BigDecimal.valueOf(d).subtract(new BigDecimal(Integer.toString((int) d))).floatValue();
    }

    public void a() {
        this.f1783a = null;
    }

    public void a(Context context, b bVar) {
        this.f1783a = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
    }

    public void a(b bVar) {
        String str;
        String str2;
        b bVar2 = bVar;
        d.b("JpegEncodeProcessor", "process, start");
        long currentTimeMillis = System.currentTimeMillis();
        b.a aVar = bVar2.f1797a;
        b.C0052b bVar3 = bVar2.f1798b;
        int length = aVar.f1799a != null ? aVar.f1799a.length : 0;
        YuvProcessUtil yuvProcessUtil = new YuvProcessUtil();
        int[] iArr = {aVar.g, aVar.g};
        int[] iArr2 = {aVar.h, aVar.h};
        int i = aVar.e;
        int i2 = aVar.f;
        d.b("JpegEncodeProcessor", "process, width: " + i + ", height: " + i2 + ", stride: " + aVar.g + ", mData.length: " + length + ", longitude:" + bVar3.o + ", latitude: " + bVar3.n);
        YuvProcessUtil.ExifInfo exifInfo = new YuvProcessUtil.ExifInfo();
        exifInfo.mModel = bVar3.h;
        exifInfo.mFNumber = new int[]{(int) (bVar3.j * 10.0f), 10};
        exifInfo.mFocalLength = new int[]{(int) (bVar3.u * 100.0f), 100};
        int i3 = i2;
        exifInfo.mExposureTime = new long[]{bVar3.t / 1000, 1000000};
        exifInfo.mFlashValue = bVar3.l;
        exifInfo.mFrameNum = bVar3.s;
        exifInfo.mISO = bVar3.i;
        exifInfo.mWhiteBalanceMode = bVar3.k == 1 ? 0 : 1;
        exifInfo.mJpegOrientation = 0;
        exifInfo.mManufacture = bVar3.r;
        exifInfo.mTunningStats = bVar3.am;
        exifInfo.mSupportDCIP3 = CameraConfig.getConfigByteValue(ConfigDataBase.KEY_FEATURE_DCIP3_SUPPORT).byteValue();
        exifInfo.mUserComment = bVar3.aq;
        exifInfo.mApertureValue = new long[]{(long) (Math.log((double) (bVar3.j * bVar3.j)) * 100.0d), 100};
        exifInfo.mExposureBiasValue = new long[]{(long) (bVar3.x * 1.0E7f), 10000000};
        if (aVar.q || !(bVar3.v == 90 || bVar3.v == 270)) {
            exifInfo.mImageWidth = aVar.e;
            exifInfo.mImageHeight = aVar.f;
        } else {
            exifInfo.mImageWidth = aVar.f;
            exifInfo.mImageHeight = aVar.e;
        }
        if (bVar3.m != null) {
            exifInfo.mLatitude = a(bVar3.n);
            exifInfo.mLongitude = a(bVar3.o);
            exifInfo.mLatitudeRef = Double.compare(bVar3.n, 0.0d) < 0 ? OppoExifInterface.GpsLatitudeRef.SOUTH : "N";
            exifInfo.mLongitudeRef = Double.compare(bVar3.o, 0.0d) < 0 ? OppoExifInterface.GpsLongitudeRef.WEST : OppoExifInterface.GpsLongitudeRef.EAST;
            exifInfo.mAltitude = new long[]{0, 10000};
            exifInfo.mAltitudeRef = 0;
        }
        if (bVar2.f1797a.l || bVar2.c.k == 0) {
            str = this.f1783a.format(Long.valueOf(bVar2.f1797a.p));
            str2 = Long.toString((bVar2.f1797a.p % 1000) * 1000);
        } else {
            str = this.f1783a.format(Long.valueOf(bVar2.c.k));
            str2 = Long.toString((bVar2.c.k % 1000) * 1000);
        }
        exifInfo.mDateTime = str;
        exifInfo.mSubDateTime = str2;
        d.b("JpegEncodeProcessor", "process: " + bVar3.toString());
        if (aVar.f1799a != null) {
            yuvProcessUtil.init(false);
            YuvProcessUtil.setExifInfo(exifInfo);
            int i4 = aVar.q ? 0 : bVar3.v;
            d.a("captureX yuvProcessUtil compressYUVtoJpeg");
            aVar.f1799a = yuvProcessUtil.compressYUVtoJpeg(aVar.f1799a, aVar.f1799a.length, iArr, iArr2, aVar.i, i, i3, i4, bVar3.e, false, true, bVar3.w);
            d.b("captureX yuvProcessUtil compressYUVtoJpeg");
            yuvProcessUtil.unInit(false);
        }
        d.e("JpegEncodeProcessor", "process, end, costTime: " + (System.currentTimeMillis() - currentTimeMillis));
    }
}
