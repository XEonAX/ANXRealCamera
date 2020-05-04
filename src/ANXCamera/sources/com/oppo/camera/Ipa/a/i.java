package com.oppo.camera.Ipa.a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.ConditionVariable;
import android.util.Size;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.d;
import com.oppo.camera.sticker.b;
import com.oppo.camera.sticker.b.a;
import com.oppo.camera.sticker.b.c;
import com.oppo.camera.sticker.c;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.model.STHumanAction;
import com.sensetime.stmobile.model.STStickerInputParams;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: StickerProcessor */
public class i extends b {

    /* renamed from: a  reason: collision with root package name */
    a f1789a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ConditionVariable f1790b = new ConditionVariable();
    private int[] c = new int[1];
    private LinkedHashMap<b, List<MultiStickerExtendedInfo>> d = null;
    private int e = 0;

    private int a(int i, int i2, boolean z) {
        int i3 = -1;
        for (b next : this.d.keySet()) {
            if (next.b() == null || next.b().getFaceInfos() == null || next.b().getFaceInfos().length == 0) {
                d.a("StickerProcessor", "processNoFrontPicTexture, takePic face is 0");
            } else {
                d.a("StickerProcessor", "processNoFrontPicTexture, takePic face: " + next.b().getFaceInfos().length);
            }
            List list = this.d.get(next);
            if (list == null || list.size() == 0 || ((MultiStickerExtendedInfo) list.get(0)).getPositionType() != 0) {
                i3 = next.a().processTexture(i, next.c(), 0, next.g().getWidth(), next.g().getHeight(), i2, i2, z, (STStickerInputParams) null, next.f());
                com.oppo.camera.gl.i.i();
            }
        }
        return i3;
    }

    private STHumanAction a(int i, boolean z, int i2, int i3, STHumanAction sTHumanAction) {
        int i4;
        float f;
        d.a("StickerProcessor", "operatePreviewFace, accelerometerOrientation: " + i + ", needMirror: " + z + ", inputWidth: " + i2 + ", inputHeight: " + i3 + ", mDetectFaceSize: " + this.e);
        if (i2 >= i3) {
            f = (float) i2;
            i4 = this.e;
        } else {
            f = (float) i3;
            i4 = this.e;
        }
        STHumanAction humanActionResize = STHumanAction.humanActionResize(f / ((float) i4), sTHumanAction);
        if (i == 0) {
            STHumanAction humanActionRotate = STHumanAction.humanActionRotate(i3, i2, 3, false, humanActionResize);
            return z ? STHumanAction.humanActionMirror(i2, humanActionRotate) : humanActionRotate;
        } else if (i == 2) {
            STHumanAction humanActionRotate2 = STHumanAction.humanActionRotate(i3, i2, 1, false, humanActionResize);
            return z ? STHumanAction.humanActionMirror(i2, humanActionRotate2) : humanActionRotate2;
        } else if (i != 3) {
            return (i != 1 || !z) ? humanActionResize : STHumanAction.humanActionMirror(i3, humanActionResize);
        } else {
            STHumanAction humanActionRotate3 = STHumanAction.humanActionRotate(i3, i2, 2, false, humanActionResize);
            return z ? STHumanAction.humanActionMirror(i3, humanActionRotate3) : humanActionRotate3;
        }
    }

    private STHumanAction a(int i, boolean z, boolean z2, int i2, int i3, STHumanAction sTHumanAction) {
        d.a("StickerProcessor", "operatePreviewFace, accelerometerOrientation: " + i + ", needMirror: " + z2 + ", detectWidth: " + i2 + ", detectHeight: " + i3 + ", mDetectFaceSize: " + this.e + ", isFrontCamera: " + z);
        if (z2) {
            sTHumanAction = STHumanAction.humanActionMirror(i2, sTHumanAction);
        }
        int i4 = 1;
        if (!z || !(z2 || i == 1 || i == 3)) {
            i4 = 3;
        }
        return STHumanAction.humanActionRotate(i2, i3, i4, false, sTHumanAction);
    }

    private STHumanAction a(boolean z, int i, int i2, int i3, STHumanAction sTHumanAction) {
        return z ? i == 1 ? STHumanAction.humanActionRotate(i2, i3, 3, false, sTHumanAction) : i == 3 ? STHumanAction.humanActionRotate(i2, i3, 1, false, sTHumanAction) : STHumanAction.humanActionRotate(i2, i3, i, false, sTHumanAction) : STHumanAction.humanActionRotate(i2, i3, i, false, sTHumanAction);
    }

    private void a(int i, int i2, int i3) {
        for (b next : this.d.keySet()) {
            List list = this.d.get(next);
            int[] iArr = new int[1];
            if (list == null || list.size() <= 0) {
                iArr[0] = i3;
                next.c(1.0f);
                next.a(new Size(i, i2));
            } else if (((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 1) {
                Size b2 = c.b(i, i2, c.a((MultiStickerExtendedInfo) list.get(0), i, i2));
                com.oppo.camera.sticker.b.b.a(b2.getWidth(), b2.getHeight(), iArr, 3553);
                next.c(((float) i2) / ((float) b2.getHeight()));
                next.a(b2);
            } else {
                iArr[0] = i3;
                next.c(1.0f);
                next.a(new Size(i, i2));
            }
            next.a(iArr[0]);
        }
    }

    private void a(int i, int i2, int i3, int i4, int i5, int i6, Rect rect) {
        int i7 = i5;
        int i8 = i6;
        Rect rect2 = rect;
        GLES20.glGenFramebuffers(1, this.c, 0);
        com.oppo.camera.gl.i.i();
        GLES20.glBindFramebuffer(36160, this.c[0]);
        com.oppo.camera.gl.i.i();
        int i9 = i;
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i, 0);
        com.oppo.camera.gl.i.i();
        int i10 = i2;
        GLES20.glBindTexture(3553, i2);
        com.oppo.camera.gl.i.i();
        int width = rect.width();
        int height = rect.height();
        GLES20.glCopyTexSubImage2D(3553, 0, i3, i4, rect2.left, rect2.top, i3 + width > i7 ? i7 - i3 : width, i4 + height > i8 ? i8 - i4 : height);
        com.oppo.camera.gl.i.i();
        GLES20.glBindFramebuffer(36160, 0);
        com.oppo.camera.gl.i.i();
        GLES20.glBindTexture(3553, 0);
        com.oppo.camera.gl.i.i();
    }

    /* access modifiers changed from: private */
    public void a(byte[] bArr, int i, int i2, int i3, int i4, boolean z, boolean z2, long j) {
        int i5;
        int i6;
        float f;
        b bVar;
        STHumanAction sTHumanAction;
        byte[] bArr2;
        float f2;
        int i7;
        int i8;
        byte[] bArr3;
        int i9;
        int i10;
        float f3;
        LinkedHashMap linkedHashMap;
        STHumanAction sTHumanAction2;
        int i11 = i;
        int i12 = i2;
        long j2 = j;
        if (i11 >= i12) {
            int i13 = this.e;
            float f4 = ((float) i11) / ((float) i13);
            f = f4;
            i5 = i13;
            i6 = (((int) (((float) i12) / f4)) / 2) * 2;
        } else {
            int i14 = this.e;
            float f5 = ((float) i12) / ((float) i14);
            f = f5;
            i6 = i14;
            i5 = (((int) (((float) i11) / f5)) / 2) * 2;
        }
        byte[] bArr4 = new byte[((int) (((float) (i5 * i6)) * 1.5f))];
        STCommon.stImageResize(bArr, i, i2, 3, bArr4, i5, i6);
        com.oppo.camera.gl.i.i();
        int i15 = z ? 320 : 480;
        int i16 = (i12 * i15) / i11;
        LinkedHashMap linkedHashMap2 = null;
        STHumanAction sTHumanAction3 = null;
        for (b next : this.d.keySet()) {
            String str = "StickerProcessor";
            if (sTHumanAction3 == null) {
                String str2 = str;
                bVar = next;
                STHumanAction a2 = a(i3, z, z2, i15, i16, next.a(j2, linkedHashMap2));
                if (c.a() != null) {
                    bArr2 = bArr4;
                    f2 = f;
                    i8 = i6;
                    i7 = i5;
                    sTHumanAction3 = c.a().humanActionDetectImage(bArr2, 3, c.a((Map<b, List<MultiStickerExtendedInfo>>) this.d), i4, i7, i8, a2);
                } else {
                    bArr2 = bArr4;
                    f2 = f;
                    i8 = i6;
                    i7 = i5;
                }
                STHumanAction sTHumanAction4 = sTHumanAction3;
                if (!(a2 == null || sTHumanAction4 == null || a2.handCount != sTHumanAction4.handCount)) {
                    for (int i17 = 0; i17 < sTHumanAction4.handCount; i17++) {
                        if (!(a2.hands[i17] == null || sTHumanAction4.hands[i17] == null)) {
                            sTHumanAction4.hands[i17].handId = a2.hands[i17].handId;
                        }
                    }
                }
                if (!(a2 == null || sTHumanAction4 == null || a2.faceCount != sTHumanAction4.faceCount)) {
                    for (int i18 = 0; i18 < sTHumanAction4.faceCount; i18++) {
                        if (!(a2.faces[i18] == null || sTHumanAction4.faces[i18] == null)) {
                            sTHumanAction4.faces[i18].face106.setID(a2.faces[i18].face106.getID());
                        }
                    }
                }
                if (sTHumanAction4 == null || sTHumanAction4.faces == null || sTHumanAction4.faces.length <= 0 || sTHumanAction4.faces[0] == null || sTHumanAction4.faces[0].face106 == null) {
                    int i19 = i3;
                    int i20 = i4;
                    str = str2;
                } else {
                    str = str2;
                    d.a(str, "doPicHumanActionDetect, face106ID: " + sTHumanAction4.faces[0].face106.getID() + ", getAllDetectConfig: " + c.a((Map<b, List<MultiStickerExtendedInfo>>) this.d) + ", pictureOrientation: " + i4 + ", detectPictureWidth: " + i7 + ", detectPictureHeight: " + i8 + ", picWidth: " + i11 + ", picHeight: " + i12 + ", mDetectFaceSize: " + this.e + ", accelerometerOrientation: " + i3);
                }
                sTHumanAction = sTHumanAction4;
            } else {
                bVar = next;
                bArr2 = bArr4;
                f2 = f;
                i8 = i6;
                i7 = i5;
                int i21 = i3;
                int i22 = i4;
                sTHumanAction = sTHumanAction3;
            }
            b bVar2 = bVar;
            if (a(bVar2.a(j2, (LinkedHashMap<Long, STHumanAction>) null))) {
                if (a(bVar2.a(j2, (LinkedHashMap<Long, STHumanAction>) null), sTHumanAction)) {
                    i10 = i8;
                    i9 = i7;
                    bArr3 = bArr2;
                    f3 = f2;
                    sTHumanAction2 = a(i3, z2, i, i2, bVar2.a(j2, (LinkedHashMap<Long, STHumanAction>) null));
                } else {
                    i10 = i8;
                    i9 = i7;
                    bArr3 = bArr2;
                    f3 = f2;
                    sTHumanAction2 = a(z, i3, i, i2, STHumanAction.humanActionResize(f3, sTHumanAction));
                }
                bVar2.c(sTHumanAction2);
                linkedHashMap = null;
            } else {
                i10 = i8;
                i9 = i7;
                bArr3 = bArr2;
                f3 = f2;
                d.e(str, "doPicHumanActionDetect, preview detect no face");
                linkedHashMap = null;
                bVar2.c((STHumanAction) null);
            }
            bArr4 = bArr3;
            f = f3;
            sTHumanAction3 = sTHumanAction;
            i6 = i10;
            i5 = i9;
            linkedHashMap2 = linkedHashMap;
        }
    }

    private boolean a(STHumanAction sTHumanAction) {
        long a2 = c.a((Map<b, List<MultiStickerExtendedInfo>>) this.d);
        boolean z = (a2 & 1) == 1;
        if (((a2 & 65536) == 65536) && sTHumanAction != null && sTHumanAction.getImage() != null && sTHumanAction.getImage().imageData.length != 0) {
            return true;
        }
        if (!z || sTHumanAction == null || sTHumanAction.getFaceInfos() == null || sTHumanAction.getFaceInfos().length == 0) {
            return (sTHumanAction == null || sTHumanAction.getHandInfos() == null || sTHumanAction.getHandInfos().length == 0) ? false : true;
        }
        return true;
    }

    private boolean a(STHumanAction sTHumanAction, STHumanAction sTHumanAction2) {
        if (!a(sTHumanAction2)) {
            d.a("StickerProcessor", "checkIfUsePreviewHumanAction, checkValidHumanActionInfo false");
            return true;
        }
        if ((c.a((Map<b, List<MultiStickerExtendedInfo>>) this.d) & 1) == 1) {
            int length = (sTHumanAction == null || sTHumanAction.getFaceInfos() == null) ? 0 : sTHumanAction.getFaceInfos().length;
            int length2 = (sTHumanAction2 == null || sTHumanAction2.getFaceInfos() == null) ? 0 : sTHumanAction2.getFaceInfos().length;
            if (length != length2) {
                d.a("StickerProcessor", "checkIfUsePreviewHumanAction, previewFace count: " + length + ", imageFace count: " + length2);
                return true;
            }
        }
        return false;
    }

    private byte[] a(byte[] bArr, int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, long j) {
        int i6;
        int i7;
        int i8;
        int i9 = i3;
        boolean z3 = z2;
        int i10 = i5;
        this.f1790b.close();
        final byte[] bArr2 = bArr;
        final int i11 = i;
        final int i12 = i2;
        final int i13 = i3;
        final int i14 = i4;
        final boolean z4 = z;
        final boolean z5 = z2;
        AnonymousClass1 r13 = r0;
        final long j2 = j;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                i.this.a(bArr2, i11, i12, i13, i14, z4, z5, j2);
                i.this.f1790b.open();
            }
        };
        Thread thread = new Thread(r13);
        thread.setName("StickerFaceDetectThread");
        thread.start();
        if (i9 == 1 || i9 == 3) {
            i6 = i;
            i7 = i2;
        } else {
            i7 = i;
            i6 = i2;
        }
        int[] iArr = new int[1];
        com.oppo.camera.sticker.b.b.a(i7, i6, iArr, 3553);
        com.oppo.camera.gl.i.i();
        int[] iArr2 = new int[1];
        com.oppo.camera.sticker.b.b.a(i7, i6, iArr2, 3553);
        com.oppo.camera.gl.i.i();
        a(i7, i6, iArr2[0]);
        if (iArr[0] != -1 && ((float) bArr.length) == ((float) (i7 * i6)) * 1.5f) {
            if (!z) {
                if (i9 == 1) {
                    i8 = 3;
                } else if (i9 == 3) {
                    i8 = 1;
                }
                com.oppo.camera.sticker.b.c.a().c().nv21BufferToRgbaTexture(i, i2, i8, false, bArr, iArr[0]);
                com.oppo.camera.gl.i.i();
            }
            i8 = i9;
            com.oppo.camera.sticker.b.c.a().c().nv21BufferToRgbaTexture(i, i2, i8, false, bArr, iArr[0]);
            com.oppo.camera.gl.i.i();
        }
        this.f1790b.block();
        boolean z6 = z2;
        int a2 = a(iArr[0], i10, z6);
        b(iArr2[0], i7, i6);
        b(a2, i10, z6);
        GLES20.glFinish();
        com.oppo.camera.gl.i.i();
        byte[] bArr3 = new byte[((int) (((float) (i2 * i)) * 1.5f))];
        com.oppo.camera.sticker.b.c.a().c().rgbaTextureToNv21Buffer(iArr2[0], i7, i6, bArr3);
        com.oppo.camera.gl.i.i();
        GLES20.glDeleteTextures(1, iArr2, 0);
        GLES20.glDeleteTextures(1, iArr, 0);
        com.oppo.camera.gl.i.i();
        g();
        return bArr3;
    }

    private int b(int i, int i2, boolean z) {
        int i3 = i;
        for (b next : this.d.keySet()) {
            List list = this.d.get(next);
            if (list != null && list.size() > 0 && ((MultiStickerExtendedInfo) list.get(0)).getPositionType() == 0) {
                com.oppo.camera.gl.i.i();
                i3 = next.a().processTexture(next.f(), next.c(), 0, next.g().getWidth(), next.g().getHeight(), i2, i2, z, (STStickerInputParams) null, next.f());
                com.oppo.camera.gl.i.i();
            }
        }
        return i3;
    }

    private void b(int i, int i2, int i3) {
        for (b next : this.d.keySet()) {
            List<MultiStickerExtendedInfo> list = this.d.get(next);
            if (list != null && list.size() > 0) {
                for (MultiStickerExtendedInfo multiStickerExtendedInfo : list) {
                    if (next.f() != i) {
                        RectF a2 = c.a(multiStickerExtendedInfo, i2, i3);
                        RectF a3 = c.a(next.g().getWidth(), next.g().getHeight(), a2);
                        a(next.f(), i, Math.round(a2.left), Math.round(a2.top), i2, i3, new Rect(Math.round(a3.left), Math.round(a3.top), Math.round(a3.right), Math.round(a3.bottom)));
                    } else {
                        int i4 = i2;
                        int i5 = i3;
                    }
                }
            }
            int i6 = i;
            int i7 = i2;
            int i8 = i3;
        }
    }

    private void g() {
        for (b f : this.d.keySet()) {
            GLES20.glDeleteTextures(1, new int[]{f.f()}, 0);
            com.oppo.camera.gl.i.i();
        }
    }

    public void a() {
    }

    public void a(Context context, com.oppo.camera.Ipa.b bVar) {
    }

    public void a(com.oppo.camera.Ipa.b bVar) {
        final b.C0052b bVar2 = bVar.f1798b;
        final b.a aVar = bVar.f1797a;
        b.c cVar = bVar.c;
        long j = (aVar.l || cVar.k == 0) ? aVar.p : cVar.k;
        if (bVar2.ar) {
            aVar.f1799a = com.oppo.camera.o.d.a(bVar.c.f, bVar2, j);
            aVar.i = 256;
            return;
        }
        final byte[] bArr = new byte[(((aVar.e * aVar.f) * 3) / 2)];
        System.arraycopy(aVar.f1799a, 0, bArr, 0, ((aVar.e * aVar.f) * 3) / 2);
        com.oppo.camera.sticker.b.c.a().d();
        this.f1789a = new a((EGLContext) null, 0);
        this.f1789a.b();
        c.a((List<com.oppo.camera.sticker.b>) com.oppo.camera.sticker.b.c.a().b(), com.oppo.camera.sticker.b.c.a().c());
        com.oppo.camera.sticker.b.c.a().a((c.a) new c.a() {
            public void a() {
                b.a aVar = aVar;
                aVar.f1799a = i.this.a(bArr, aVar.e, aVar.f, bVar2.at, bVar2.E, bVar2.e, bVar2.f1802b, (com.oppo.camera.sticker.d) bVar2.as);
            }
        }, true);
        this.f1789a.c();
        if (aVar.j % 180 != 0) {
            int i = aVar.e;
            aVar.e = aVar.f;
            aVar.f = i;
            aVar.g = aVar.e;
            aVar.h = aVar.f;
        }
        aVar.j = 0;
        bVar2.v = 0;
    }

    public byte[] a(byte[] bArr, int i, int i2, int i3, boolean z, boolean z2, long j, com.oppo.camera.sticker.d dVar) {
        int i4;
        int i5;
        int i6 = i3;
        com.oppo.camera.sticker.d dVar2 = dVar;
        this.d = com.oppo.camera.sticker.c.a(com.oppo.camera.sticker.c.a(dVar2.f2402a), dVar2.f2402a, com.oppo.camera.sticker.b.c.a().b());
        if (this.d == null) {
            return bArr;
        }
        this.e = z ? 320 : 480;
        com.oppo.camera.gl.i.i();
        int i7 = 1;
        int i8 = 3;
        int i9 = 0;
        if (i6 == 0) {
            if (!z) {
                i8 = 1;
            }
            i5 = i8;
            i4 = 0;
            i9 = 1;
        } else if (i6 == 90) {
            i9 = 2;
            i5 = 2;
            i4 = 3;
        } else if (i6 == 180) {
            if (!z) {
                i7 = 3;
            }
            i4 = 2;
            i5 = i7;
            i9 = 3;
        } else if (i6 != 270) {
            i5 = 0;
            i4 = 0;
        } else {
            i4 = 1;
            i5 = 0;
        }
        byte[] a2 = a(bArr, i, i2, i9, i5, z, z2, i4, j);
        com.oppo.camera.gl.i.i();
        return a2;
    }
}
