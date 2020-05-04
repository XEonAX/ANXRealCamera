package com.oppo.camera.Ipa.a;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.params.Face;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.sensetime.blur.BlurImageLibrary;
import com.sensetime.faceapi.model.CvPixelFormat;

/* compiled from: SingleBlurProcessor */
public class g extends b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1785a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1786b = false;

    private Matrix b(b bVar) {
        b.a aVar = bVar.f1797a;
        b.C0052b bVar2 = bVar.f1798b;
        Matrix matrix = new Matrix();
        matrix.reset();
        Rect rect = bVar2.ao;
        int i = aVar.f;
        int i2 = aVar.e;
        matrix.setTranslate((float) ((-rect.width()) / 2), (float) ((-rect.height()) / 2));
        matrix.postScale(bVar2.E ? -1.0f : 1.0f, 1.0f);
        matrix.postRotate((float) bVar2.ap);
        matrix.postScale((((float) i) * 1.0f) / ((float) rect.height()), (((float) i2) * 1.0f) / ((float) rect.width()));
        matrix.postTranslate((float) (i / 2), (float) (i2 / 2));
        return matrix;
    }

    public void a() {
        d.b("SingleBlurProcessor", "unInit");
        BlurImageLibrary.destroyImageBlur();
        this.f1786b = false;
        d.b("SingleBlurProcessor", "unInit X");
    }

    public void a(Context context, b bVar) {
        d.b("SingleBlurProcessor", "init, version: " + BlurImageLibrary.getVersion());
        int i = 0;
        if (!f1785a) {
            f1785a = true;
            byte[] a2 = com.oppo.camera.Ipa.d.a("license_release.lic");
            byte[] bArr = new byte[(a2.length + 1)];
            System.arraycopy(a2, 0, bArr, 0, a2.length);
            bArr[a2.length] = 0;
            i = BlurImageLibrary.initLicense(bArr);
        }
        int createImageBlur = BlurImageLibrary.createImageBlur(com.oppo.camera.Ipa.d.b("doubleloss_large.model"));
        this.f1786b = true;
        d.b("SingleBlurProcessor", "init X, initLicenseResult: " + i + ", createBlurResult: " + createImageBlur);
    }

    public void a(b bVar) {
        String str;
        long j;
        int i;
        int i2;
        b bVar2 = bVar;
        long currentTimeMillis = System.currentTimeMillis();
        b.a aVar = bVar2.f1797a;
        b.C0052b bVar3 = bVar2.f1798b;
        b.c cVar = bVar2.c;
        Face[] faceArr = bVar3.f1801a;
        Matrix b2 = b(bVar);
        if (faceArr == null || !this.f1786b) {
            j = currentTimeMillis;
            str = "SingleBlurProcessor";
            i = 0;
        } else {
            i = faceArr.length;
            int[] iArr = new int[i];
            int[] iArr2 = new int[i];
            int[] iArr3 = new int[i];
            int[] iArr4 = new int[i];
            j = currentTimeMillis;
            float[] fArr = new float[i];
            int i3 = 0;
            while (i3 < i) {
                Rect bounds = faceArr[i3].getBounds();
                bounds.offset(-bVar3.ao.left, -bVar3.ao.top);
                RectF rectF = new RectF(bounds);
                b2.mapRect(rectF);
                Matrix matrix = b2;
                int i4 = (int) (rectF.bottom - rectF.top);
                iArr[i3] = (int) (((float) aVar.e) - rectF.bottom);
                iArr2[i3] = (int) (((float) aVar.f) - rectF.right);
                iArr3[i3] = (int) (rectF.right - rectF.left);
                iArr4[i3] = i4;
                d.b("SingleBlurProcessor", "process, left: " + iArr[i3] + ", top: " + iArr2[i3] + ", width: " + iArr3[i3] + ", h: " + iArr4[i3]);
                i3++;
                faceArr = faceArr;
                b2 = matrix;
                bVar3 = bVar3;
            }
            int value = CvPixelFormat.NV21.getValue();
            if (aVar.i == 274) {
                value = CvPixelFormat.NV12.getValue();
            }
            if (aVar.f1799a != null) {
                d.a("SingleBlurProcessor", "process, w: " + aVar.e + ", h: " + aVar.f + ", stride: " + aVar.g + ", scanline: " + aVar.h + ", orientation: " + aVar.j + ", faceCount: " + i + ", faceLeft: " + iArr[0] + ", faceTop: " + iArr2[0] + ", faceWidth: " + iArr3[0] + ", faceHeight: " + iArr4[0] + ", img name: " + cVar.d);
                int[] iArr5 = iArr2;
                byte[] bArr = aVar.f1799a;
                int[] iArr6 = iArr;
                i2 = BlurImageLibrary.blurImage(bArr, value, aVar.e, aVar.f, aVar.g, aVar.h, aVar.j, i, iArr6, iArr5, iArr3, iArr4, fArr, 1.0f, 0.7f);
                str = "SingleBlurProcessor";
            } else {
                int[] iArr7 = iArr2;
                int[] iArr8 = iArr;
                float[] fArr2 = fArr;
                if (aVar.f1800b == null || aVar.c == null) {
                    str = "SingleBlurProcessor";
                } else {
                    str = "SingleBlurProcessor";
                    i2 = BlurImageLibrary.blurImageSplit(aVar.f1800b, aVar.c, CvPixelFormat.NV21.getValue(), aVar.e, aVar.f, aVar.g, aVar.f1800b.length / aVar.g, aVar.j, i, iArr8, iArr7, iArr3, iArr4, fArr2, 1.0f, 0.7f);
                }
            }
            d.b(str, "process X, blurResult: " + i2 + ", mOrientation: " + aVar.j + ", faceCount: " + i + ", mbInit: " + this.f1786b + ", costTime: " + (System.currentTimeMillis() - j));
        }
        i2 = -1;
        d.b(str, "process X, blurResult: " + i2 + ", mOrientation: " + aVar.j + ", faceCount: " + i + ", mbInit: " + this.f1786b + ", costTime: " + (System.currentTimeMillis() - j));
    }
}
