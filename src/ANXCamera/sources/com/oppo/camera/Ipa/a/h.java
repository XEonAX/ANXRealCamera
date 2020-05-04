package com.oppo.camera.Ipa.a;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.params.Face;
import com.arcsoft.SingleBokeh;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.oppo.camera.debug.DebugUtil;
import java.nio.ByteBuffer;

/* compiled from: SingleBokehProcessor */
public class h extends b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1787a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1788b = false;

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
        d.b("SingleBokehProcessor", "unInit");
        if (this.f1788b) {
            SingleBokeh.unInit();
            this.f1788b = false;
        }
        d.b("SingleBokehProcessor", "unInit X");
    }

    public void a(Context context, b bVar) {
        d.b("SingleBokehProcessor", "init");
        int i = (bVar == null || bVar.f1798b == null || !bVar.f1798b.ak) ? 4 : 1;
        int init = SingleBokeh.init(1, i);
        if (init == 0) {
            this.f1788b = true;
        }
        d.e("SingleBokehProcessor", "init X, createBlurResult: " + init + ", mbInit: " + this.f1788b + ", model: " + i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x005a A[LOOP:0: B:27:0x0058->B:28:0x005a, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0126  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0188  */
    public void a(b bVar) {
        String str;
        long j;
        int i;
        int i2;
        int i3;
        String str2;
        int[] iArr;
        int i4;
        b bVar2 = bVar;
        long currentTimeMillis = System.currentTimeMillis();
        b.a aVar = bVar2.f1797a;
        b.C0052b bVar3 = bVar2.f1798b;
        Face[] faceArr = bVar3.f1801a;
        Matrix b2 = b(bVar);
        if (faceArr != null && this.f1788b) {
            int i5 = ArcSoftOffscreen.ASVL_PAF_NV21;
            if (aVar.i == 274) {
                i5 = ArcSoftOffscreen.ASVL_PAF_NV12;
            }
            int i6 = i5;
            int length = faceArr.length;
            if (length > 10) {
                length = 10;
            }
            int[] iArr2 = new int[length];
            int[] iArr3 = new int[length];
            int[] iArr4 = new int[length];
            int[] iArr5 = new int[length];
            int[] iArr6 = new int[length];
            if (aVar.f1799a != null) {
                int i7 = aVar.j;
                j = currentTimeMillis;
                if (i7 == 0) {
                    i4 = 1;
                } else if (i7 == 90) {
                    i4 = 2;
                } else if (i7 == 180) {
                    i4 = 4;
                } else if (i7 != 270) {
                    i2 = 0;
                    i3 = 0;
                    while (i3 < length) {
                        Rect bounds = faceArr[i3].getBounds();
                        bounds.offset(-bVar3.ao.left, -bVar3.ao.top);
                        RectF rectF = new RectF(bounds);
                        b2.mapRect(rectF);
                        iArr3[i3] = (int) (((float) aVar.e) - rectF.bottom);
                        iArr4[i3] = (int) (((float) aVar.f) - rectF.right);
                        iArr5[i3] = (int) (((float) aVar.e) - rectF.top);
                        iArr6[i3] = (int) (((float) aVar.f) - rectF.left);
                        iArr2[i3] = i2;
                        d.e("SingleBokehProcessor", "process, left: " + iArr3[i3] + ", top: " + iArr4[i3] + ", right: " + iArr5[i3] + ", bottom: " + iArr6[i3] + ", orientation: " + iArr2[i3]);
                        i3++;
                        faceArr = faceArr;
                    }
                    String a2 = com.oppo.camera.o.d.a(System.currentTimeMillis());
                    int[] iArr7 = iArr3;
                    if (!DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
                        byte[] bArr = aVar.f1799a;
                        iArr = iArr6;
                        StringBuilder sb = new StringBuilder();
                        sb.append(a2);
                        sb.append("_");
                        str2 = "_";
                        sb.append(aVar.e);
                        sb.append("x");
                        sb.append(aVar.f);
                        sb.append("_original.yuv");
                        com.oppo.camera.o.d.a(bArr, "SingleBokeh", sb.toString());
                    } else {
                        str2 = "_";
                        iArr = iArr6;
                    }
                    byte[] bArr2 = aVar.f1799a;
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr2.length);
                    allocateDirect.put(bArr2);
                    String str3 = str2;
                    ByteBuffer byteBuffer = allocateDirect;
                    int[] iArr8 = iArr5;
                    int[] iArr9 = iArr4;
                    str = "SingleBokehProcessor";
                    String str4 = "SingleBokeh";
                    int[] iArr10 = iArr2;
                    i = SingleBokeh.process(bArr2, allocateDirect, i6, aVar.e, aVar.f, 2, aVar.g, i2, DebugUtil.getCaptureBokehBlurStrength(), length, iArr10, iArr7, iArr9, iArr8, iArr);
                    byte[] bArr3 = new byte[byteBuffer.limit()];
                    byteBuffer.clear();
                    allocateDirect.get(bArr3);
                    System.arraycopy(bArr3, 0, aVar.f1799a, 0, bArr2.length);
                    if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
                        com.oppo.camera.o.d.a(aVar.f1799a, str4, a2 + str3 + aVar.e + "x" + aVar.f + ".yuv");
                    }
                    d.e(str, "process X, blurResult: " + i + ", mOrientation: " + aVar.j + ", mFormat: " + aVar.i + ", mbInit: " + this.f1788b + ", costTime: " + (System.currentTimeMillis() - j));
                } else {
                    i4 = 3;
                }
                i2 = i4;
                i3 = 0;
                while (i3 < length) {
                }
                String a22 = com.oppo.camera.o.d.a(System.currentTimeMillis());
                int[] iArr72 = iArr3;
                if (!DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
                }
                byte[] bArr22 = aVar.f1799a;
                ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(bArr22.length);
                allocateDirect2.put(bArr22);
                String str32 = str2;
                ByteBuffer byteBuffer2 = allocateDirect2;
                int[] iArr82 = iArr5;
                int[] iArr92 = iArr4;
                str = "SingleBokehProcessor";
                String str42 = "SingleBokeh";
                int[] iArr102 = iArr2;
                i = SingleBokeh.process(bArr22, allocateDirect2, i6, aVar.e, aVar.f, 2, aVar.g, i2, DebugUtil.getCaptureBokehBlurStrength(), length, iArr102, iArr72, iArr92, iArr82, iArr);
                byte[] bArr32 = new byte[byteBuffer2.limit()];
                byteBuffer2.clear();
                allocateDirect2.get(bArr32);
                System.arraycopy(bArr32, 0, aVar.f1799a, 0, bArr22.length);
                if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_SINGLE_BOKEH_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
                }
                d.e(str, "process X, blurResult: " + i + ", mOrientation: " + aVar.j + ", mFormat: " + aVar.i + ", mbInit: " + this.f1788b + ", costTime: " + (System.currentTimeMillis() - j));
            }
        }
        j = currentTimeMillis;
        str = "SingleBokehProcessor";
        i = -1;
        d.e(str, "process X, blurResult: " + i + ", mOrientation: " + aVar.j + ", mFormat: " + aVar.i + ", mbInit: " + this.f1788b + ", costTime: " + (System.currentTimeMillis() - j));
    }
}
