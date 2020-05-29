package co.polarr.renderer.b;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.FaceItem;
import co.polarr.renderer.filters.e;
import co.polarr.renderer.render.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class f {
    private static final int Face_Mask_Size = 512;

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, List<FaceItem>> f1124a = new HashMap();

    static class a {

        /* renamed from: a  reason: collision with root package name */
        b f1125a;

        /* renamed from: b  reason: collision with root package name */
        float[] f1126b;

        a() {
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public float[][] f1127a;

        /* renamed from: b  reason: collision with root package name */
        public float[][] f1128b;
        public float[][] c;
        public float[][] d;
        public float[][] e;
        public float[][] f;
        public float[][] g;
        public float[][] h;
        public float[][] i;
        public float[][] j;
        public float[][] k;
        public float[][] l;
        public float[][] m;
        public float[][] n;
        public float[][] o;
        public float[] p;
        public float[][] q;
        public float[] r;
        public float[] s;
        public float[] t;
        public float[] u;
        public float[] v;
        public float[][] w;
        public float[][] x;
    }

    static {
        FaceItem faceItem = new FaceItem();
        FaceItem faceItem2 = faceItem;
        faceItem2.markers = new float[][]{new float[]{0.43973213f, 0.48983365f}, new float[]{0.44515306f, 0.5485213f}, new float[]{0.453125f, 0.60489833f}, new float[]{0.46269134f, 0.6621996f}, new float[]{0.47895408f, 0.715342f}, new float[]{0.5041454f, 0.7610906f}, new float[]{0.53348213f, 0.8012939f}, new float[]{0.5660077f, 0.83687615f}, new float[]{0.6029974f, 0.8461183f}, new float[]{0.63998723f, 0.8359519f}, new float[]{0.674426f, 0.79990757f}, new float[]{0.70471936f, 0.7560074f}, new float[]{0.7279974f, 0.7051756f}, new float[]{0.7413903f, 0.6478743f}, new float[]{0.7471301f, 0.58641404f}, new float[]{0.75127554f, 0.5254159f}, new float[]{0.75191325f, 0.46395564f}, new float[]{0.46205357f, 0.43715343f}, new float[]{0.48086736f, 0.41913125f}, new float[]{0.50510204f, 0.41451016f}, new float[]{0.53061223f, 0.42144176f}, new float[]{0.55452806f, 0.435305f}, new float[]{0.6176658f, 0.4292976f}, new float[]{0.64285713f, 0.4108133f}, new float[]{0.6686862f, 0.40064695f}, new float[]{0.69547194f, 0.4029575f}, new float[]{0.71811223f, 0.42051756f}, new float[]{0.5883291f, 0.4801294f}, new float[]{0.58896685f, 0.5207948f}, new float[]{0.58992344f, 0.5623845f}, new float[]{0.5905612f, 0.6044362f}, new float[]{0.5682398f, 0.62569314f}, new float[]{0.58003825f, 0.63308686f}, new float[]{0.59247446f, 0.6390943f}, new float[]{0.60491073f, 0.6321627f}, new float[]{0.61734694f, 0.625231f}, new float[]{0.49330357f, 0.48567468f}, new float[]{0.5098852f, 0.4690388f}, new float[]{0.5315689f, 0.4690388f}, new float[]{0.54751277f, 0.49121997f}, new float[]{0.52965564f, 0.49815157f}, new float[]{0.5089286f, 0.49815157f}, new float[]{0.63297194f, 0.4861368f}, new float[]{0.64859694f, 0.46349353f}, new float[]{0.67091835f, 0.46025878f}, new float[]{0.68813777f, 0.47550833f}, new float[]{0.67315054f, 0.48983365f}, new float[]{0.65242344f, 0.49214417f}, new float[]{0.5385842f, 0.6991682f}, new float[]{0.5567602f, 0.68207026f}, new float[]{0.5778061f, 0.67467654f}, new float[]{0.59470665f, 0.6802218f}, new float[]{0.61065054f, 0.6742144f}, new float[]{0.6345663f, 0.681146f}, new float[]{0.65720665f, 0.6968577f}, new float[]{0.6377551f, 0.73937154f}, new float[]{0.61383927f, 0.7569316f}, new float[]{0.59598213f, 0.7592421f}, new float[]{0.5784439f, 0.7569316f}, new float[]{0.5567602f, 0.73983365f}, new float[]{0.54846936f, 0.70194083f}, new float[]{0.578125f, 0.694085f}, new float[]{0.59502554f, 0.6963956f}, new float[]{0.61160713f, 0.6945471f}, new float[]{0.6470026f, 0.70009243f}, new float[]{0.6122449f, 0.72643256f}, new float[]{0.59502554f, 0.7292052f}, new float[]{0.5784439f, 0.72643256f}};
        faceItem2.boundaries = new float[]{0.41390306f, 0.3133087f, 0.35586736f, 0.51571167f};
        ArrayList arrayList = new ArrayList();
        arrayList.add(faceItem2);
        FaceItem faceItem3 = new FaceItem();
        float[] fArr = {0.34024236f, 0.58687615f};
        FaceItem faceItem4 = faceItem3;
        faceItem4.markers = new float[][]{new float[]{0.16007653f, 0.6012015f}, new float[]{0.16677296f, 0.6603512f}, new float[]{0.17506377f, 0.71626616f}, new float[]{0.18622449f, 0.7703327f}, new float[]{0.20535715f, 0.81654346f}, new float[]{0.23405612f, 0.8521257f}, new float[]{0.2688138f, 0.87939f}, new float[]{0.3067602f, 0.8983364f}, new float[]{0.3421556f, 0.90110904f}, new float[]{0.3721301f, 0.8886322f}, new float[]{0.39445153f, 0.8539741f}, new float[]{0.41358417f, 0.8137708f}, new float[]{0.4276148f, 0.76756006f}, new float[]{0.43686223f, 0.7185767f}, new float[]{0.44228315f, 0.66774493f}, new float[]{0.44579083f, 0.61737525f}, new float[]{0.44387755f, 0.56654346f}, new float[]{0.20376275f, 0.5272643f}, new float[]{0.2244898f, 0.5064695f}, new float[]{0.2484056f, 0.4944547f}, new float[]{0.2755102f, 0.4930684f}, new float[]{0.30038264f, 0.5046211f}, new float[]{0.36033162f, 0.504159f}, new float[]{0.3791454f, 0.48983365f}, new float[]{0.40019134f, 0.48798522f}, new float[]{0.41996172f, 0.49491683f}, new float[]{0.4343112f, 0.5124769f}, new float[]{0.33545917f, 0.55221814f}, fArr, new float[]{0.34598213f, 0.6229205f}, new float[]{0.35140306f, 0.6589649f}, new float[]{0.31855866f, 0.6866913f}, new float[]{0.3322704f, 0.6922366f}, new float[]{0.34598213f, 0.69778186f}, new float[]{0.3565051f, 0.6917745f}, new float[]{0.36575255f, 0.6829944f}, new float[]{0.23660715f, 0.564695f}, new float[]{0.2528699f, 0.5457486f}, new float[]{0.27295917f, 0.5457486f}, new float[]{0.28922194f, 0.56561923f}, new float[]{0.27168366f, 0.5716266f}, new float[]{0.2528699f, 0.5720887f}, new float[]{0.3622449f, 0.56146026f}, new float[]{0.37850764f, 0.5397412f}, new float[]{0.39795917f, 0.5383549f}, new float[]{0.41167092f, 0.5554529f}, new float[]{0.39923468f, 0.56561923f}, new float[]{0.38042092f, 0.56608135f}, new float[]{0.27519134f, 0.7592421f}, new float[]{0.30165815f, 0.7389094f}, new float[]{0.32748723f, 0.7292052f}, new float[]{0.34406888f, 0.73243994f}, new float[]{0.35841838f, 0.7268946f}, new float[]{0.37436223f, 0.7319778f}, new float[]{0.38679847f, 0.7504621f}, new float[]{0.37531888f, 0.7823475f}, new float[]{0.35969388f, 0.7966728f}, new float[]{0.34375f, 0.79990757f}, new float[]{0.32716838f, 0.79944545f}, new float[]{0.30165815f, 0.79020333f}, new float[]{0.2844388f, 0.75970423f}, new float[]{0.32780612f, 0.74676526f}, new float[]{0.34406888f, 0.7472274f}, new float[]{0.35841838f, 0.7453789f}, new float[]{0.3778699f, 0.7527726f}, new float[]{0.3577806f, 0.7712569f}, new float[]{0.34311223f, 0.7754159f}, new float[]{0.3268495f, 0.7763401f}};
        faceItem4.boundaries = new float[]{0.16581632f, 0.42791128f, 0.31887755f, 0.4621072f};
        ArrayList arrayList2 = arrayList;
        arrayList2.add(faceItem4);
        f1124a.put("sample_faces.jpg", arrayList2);
    }

    private static b a(float[][] fArr, boolean z, float[] fArr2) {
        if (fArr2 == null) {
            fArr2 = new float[]{1.0f, 1.0f};
        }
        if (z) {
            float[][] fArr3 = new float[fArr.length][];
            for (int i = 0; i < fArr.length; i++) {
                fArr3[i] = new float[]{(fArr[i][0] * 2.0f) - 1.0f, (fArr[i][1] * 2.0f) - 1.0f};
            }
            fArr = fArr3;
        }
        b bVar = new b();
        bVar.f1127a = (float[][]) Arrays.copyOfRange(fArr, 0, 17);
        bVar.f1128b = (float[][]) Arrays.copyOfRange(fArr, 17, 22);
        bVar.c = (float[][]) Arrays.copyOfRange(fArr, 22, 27);
        bVar.d = (float[][]) Arrays.copyOfRange(fArr, 27, 31);
        bVar.e = (float[][]) Arrays.copyOfRange(fArr, 31, 36);
        bVar.f = (float[][]) Arrays.copyOfRange(fArr, 36, 42);
        bVar.g = (float[][]) Arrays.copyOfRange(fArr, 42, 48);
        bVar.h = (float[][]) Arrays.copyOfRange(fArr, 48, 55);
        bVar.i = (float[][]) Arrays.copyOfRange(fArr, 60, 66);
        bVar.j = (float[][]) Arrays.copyOfRange(fArr, 54, 61);
        bVar.k = (float[][]) Arrays.copyOfRange(fArr, 65, 68);
        bVar.n = new float[(bVar.e.length + 1)][];
        System.arraycopy(bVar.e, 0, bVar.n, 0, bVar.e.length);
        System.arraycopy(bVar.d, 0, bVar.n, bVar.e.length, 1);
        bVar.m = new float[(bVar.i.length + bVar.k.length)][];
        System.arraycopy(bVar.i, 0, bVar.m, 0, bVar.i.length);
        System.arraycopy(bVar.k, 0, bVar.m, bVar.i.length, bVar.k.length);
        bVar.l = new float[(bVar.h.length + bVar.j.length)][];
        System.arraycopy(bVar.h, 0, bVar.l, 0, bVar.h.length);
        System.arraycopy(bVar.j, 0, bVar.l, bVar.h.length, bVar.j.length);
        bVar.o = bVar.l;
        double d = (double) ((float) (-Math.atan2((double) (bVar.d[0][0] - bVar.d[3][0]), (double) (bVar.d[0][1] - bVar.d[3][1]))));
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        bVar.p = new float[]{cos, sin};
        float[] a2 = a(bVar.f1127a[0], bVar.f1127a[16]);
        bVar.v = a(t.a(bVar.f), sin, cos);
        bVar.u = a(t.a(bVar.g), sin, cos);
        bVar.t = a(a(bVar.m[2], bVar.m[6]), sin, cos);
        bVar.s = a(a2, sin, cos);
        bVar.r = a(bVar.d[0], sin, cos);
        bVar.q = new float[][]{a(bVar.h[0], sin, cos), a(bVar.h[6], sin, cos)};
        float[][] fArr4 = new float[5][];
        float[] fArr5 = {0.0f, 0.0f};
        float f = z ? 30.0f : -30.0f;
        t.a(fArr5, a2, fArr2);
        for (int i2 = 1; i2 < 6; i2++) {
            float[] fArr6 = {0.0f, 0.0f};
            t.a(fArr6, bVar.f1127a[16], fArr2);
            t.b(fArr6, fArr6, fArr5);
            float[] a3 = t.a(fArr6, ((float) i2) * f);
            t.c(a3, a3, fArr5);
            t.d(a3, a3, fArr2);
            fArr4[i2 - 1] = a3;
        }
        bVar.w = new float[(bVar.f1127a.length + fArr4.length)][];
        System.arraycopy(bVar.f1127a, 0, bVar.w, 0, bVar.f1127a.length);
        System.arraycopy(fArr4, 0, bVar.w, bVar.f1127a.length, fArr4.length);
        bVar.x = new float[(fArr4.length + 2)][];
        System.arraycopy(bVar.f1127a, 16, bVar.x, 0, 1);
        System.arraycopy(fArr4, 0, bVar.x, 1, fArr4.length);
        System.arraycopy(bVar.f1127a, 0, bVar.x, fArr4.length + 1, 1);
        return bVar;
    }

    private static c a(Resources resources, Context context, int i, Bitmap bitmap, float f) {
        c cVar;
        if (context.faceMasks[i] == null) {
            int[] iArr = new int[1];
            i.a(iArr.length, iArr, 0, 6408, context.imageTexture.d, context.imageTexture.e);
            cVar = c.a(i.c(iArr[0], 6408, context.imageTexture.d, context.imageTexture.e));
            context.faceMasks[i] = cVar;
        } else {
            cVar = context.faceMasks[i];
        }
        i.a((co.polarr.renderer.render.f) cVar, bitmap.getWidth(), bitmap.getHeight());
        GLES20.glBindTexture(3553, cVar.c);
        GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
        a(resources, context, (co.polarr.renderer.render.f) cVar, f);
        return cVar;
    }

    public static List<a> a(List<FaceItem> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (FaceItem next : list) {
            a aVar = new a();
            if (next.markers != null) {
                float[][] fArr = new float[next.markers.length][];
                for (int i3 = 0; i3 < fArr.length; i3++) {
                    fArr[i3] = new float[]{next.markers[i3][0] * ((float) i), next.markers[i3][1] * ((float) i2)};
                }
                aVar.f1125a = a(fArr, false, new float[]{1.0f, 1.0f});
            }
            if (next.boundaries != null) {
                float f = (float) i;
                float f2 = (float) i2;
                aVar.f1126b = new float[]{next.boundaries[0] * f, next.boundaries[1] * f2, next.boundaries[2] * f, next.boundaries[3] * f2};
            }
            arrayList.add(aVar);
        }
        return arrayList;
    }

    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0051  */
    public static void a(float f, float f2, List<FaceItem> list, Resources resources, Context context) {
        int i;
        boolean z;
        c[] cVarArr;
        List<FaceItem> list2 = list;
        Context context2 = context;
        float max = Math.max(512.0f / f, 512.0f / f2);
        ? r4 = 0;
        int i2 = ((int) (f * max)) >> 0;
        int i3 = ((int) (max * f2)) >> 0;
        List<a> a2 = a(list2, i2, i3);
        if (context2.faceMasks == null) {
            cVarArr = new c[list.size()];
        } else {
            if (context2.faceMasks.length < list.size()) {
                cVarArr = new c[list.size()];
                System.arraycopy(context2.faceMasks, 0, cVarArr, 0, context2.faceMasks.length);
            }
            Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            i = 0;
            while (i < a2.size()) {
                a aVar = a2.get(i);
                float[] fArr = new float[2];
                fArr[r4] = list2.get(i).boundaries[2];
                fArr[1] = list2.get(i).boundaries[3];
                float b2 = t.b(fArr);
                Paint paint = new Paint(1);
                canvas.drawColor(Color.argb(r4, 255, 255, 255));
                if (aVar.f1125a != null) {
                    a(canvas, paint, aVar.f1125a.w, -16777216, (boolean) r4);
                    a(canvas, paint, aVar.f1125a.l, -65536, (boolean) r4);
                    a(canvas, paint, aVar.f1125a.m, -16711936, (boolean) r4);
                    a(canvas, paint, aVar.f1125a.f, -16776961, (boolean) r4);
                    a(canvas, paint, aVar.f1125a.g, -16776961, (boolean) r4);
                } else if (aVar.f1126b != null) {
                    a(canvas, paint, aVar.f1126b, -16777216);
                }
                boolean z2 = (context2.faceMasks[i] != null || aVar.f1125a == null) ? r4 : true;
                c a3 = a(resources, context2, i, createBitmap, 0.05f * b2);
                if (z2) {
                    float[][] fArr2 = context2.distortionVertices;
                    int length = fArr2.length;
                    c.a aVar2 = new c.a();
                    aVar2.f1286a = new int[length];
                    aVar2.f1287b = new int[length];
                    aVar2.c = new int[length];
                    aVar2.d = new int[length];
                    aVar2.e = new int[length];
                    aVar2.f = new int[length];
                    z = false;
                    b a4 = a(list2.get(i).markers, true, new float[]{1.0f, ((float) i3) / ((float) i2)});
                    float f3 = b2 * 0.3f;
                    for (int i4 = 0; i4 < length; i4++) {
                        float a5 = t.a(fArr2[i4], a4.f);
                        if (a5 <= f3) {
                            float min = 1.0f - Math.min(1.0f, a5 / f3);
                            aVar2.f1286a[i4] = (int) (min * min * 255.0f);
                        }
                        float a6 = t.a(fArr2[i4], a4.g);
                        if (a6 <= f3) {
                            float min2 = 1.0f - Math.min(1.0f, a6 / f3);
                            aVar2.f1287b[i4] = (int) (min2 * min2 * 255.0f);
                        }
                        float a7 = t.a(fArr2[i4], a4.x);
                        if (a7 <= f3) {
                            float min3 = 1.0f - Math.min(1.0f, a7 / f3);
                            aVar2.c[i4] = (int) (min3 * min3 * 255.0f);
                        }
                        float a8 = t.a(fArr2[i4], a4.f1127a);
                        if (a8 <= f3) {
                            float min4 = 1.0f - Math.min(1.0f, a8 / f3);
                            aVar2.d[i4] = (int) (min4 * min4 * 255.0f);
                        }
                        float a9 = t.a(fArr2[i4], a4.n);
                        if (a9 <= f3) {
                            float min5 = 1.0f - Math.min(1.0f, a9 / f3);
                            aVar2.e[i4] = (int) (min5 * min5 * 255.0f);
                        }
                        float a10 = t.a(fArr2[i4], a4.o);
                        if (a10 <= f3) {
                            float min6 = 1.0f - Math.min(1.0f, a10 / f3);
                            aVar2.f[i4] = (int) (min6 * min6 * 255.0f);
                        }
                    }
                    a3.f1284a = aVar2;
                    a3.f1285b = a4;
                } else {
                    z = r4;
                }
                i++;
                list2 = list;
                context2 = context;
                r4 = z;
            }
            createBitmap.recycle();
        }
        context2.faceMasks = cVarArr;
        Bitmap createBitmap2 = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap2);
        i = 0;
        while (i < a2.size()) {
        }
        createBitmap2.recycle();
    }

    private static void a(Resources resources, Context context, co.polarr.renderer.render.f fVar, float f) {
        if (f < 0.0f) {
            f = 0.024f;
        }
        float f2 = ((float) fVar.d) / ((float) fVar.e);
        int i = context.writableTexture.d;
        int i2 = context.writableTexture.e;
        i.a(context.writableTexture, fVar.d, fVar.e);
        e a2 = e.a(resources, context);
        a2.f1239a = new float[]{0.0f, f2 * f};
        co.polarr.renderer.render.b.a(context, fVar.c, context.writableTexture, (co.polarr.renderer.filters.a.a) a2, false);
        a2.f1239a = new float[]{f, 0.0f};
        co.polarr.renderer.render.b.a(context, context.writableTexture.c, fVar, (co.polarr.renderer.filters.a.a) a2, false);
        i.a(context.writableTexture, i, i2);
    }

    private static void a(Canvas canvas, Paint paint, float[] fArr, int i) {
        paint.setColor(i);
        float f = fArr[0];
        float f2 = fArr[1];
        canvas.drawOval(new RectF(f, f2, fArr[2] + f, fArr[3] + f2), paint);
    }

    private static void a(Canvas canvas, Paint paint, float[][] fArr, int i, boolean z) {
        paint.setColor(i);
        float[] fArr2 = fArr[fArr.length - 1];
        Path path = new Path();
        path.moveTo(fArr2[0], fArr2[1]);
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float[] fArr3 = fArr[i2];
            if (fArr3 != null) {
                if (i2 < fArr.length - 1) {
                    int i3 = i2 + 1;
                    path.quadTo(fArr3[0], fArr3[1], fArr[i3][0], fArr[i3][1]);
                } else {
                    path.lineTo(fArr3[0], fArr3[1]);
                }
            }
        }
        canvas.drawPath(path, paint);
        if (z) {
            float[] fArr4 = fArr[0];
            float[] fArr5 = {t.a(0.5f, fArr4[0], fArr2[0]), t.a(0.5f, fArr4[1], fArr2[1])};
            canvas.save();
            canvas.translate(fArr5[0], fArr5[1]);
            canvas.rotate(3.1415927f);
            canvas.translate(-fArr5[0], -fArr5[1]);
            path.reset();
            path.moveTo(fArr2[0], fArr2[1]);
            for (int i4 = 0; i4 < fArr.length; i4++) {
                float[] fArr6 = fArr[i4];
                if (fArr6 != null) {
                    if (i4 < fArr.length - 1) {
                        int i5 = i4 + 1;
                        path.quadTo(fArr6[0], fArr6[1], fArr[i5][0], fArr[i5][1]);
                    } else {
                        path.lineTo(fArr6[0], fArr6[1]);
                    }
                }
            }
            canvas.drawPath(path, paint);
            canvas.restore();
        }
    }

    public static void a(List<FaceItem> list, Resources resources, Context context) {
        List<FaceItem> list2 = (List) context.renderStates.get("prevFaces");
        if (list == null || list.isEmpty() || t.a((Object) list2, (Object) list)) {
            list = list2;
        } else {
            a((float) context.imageTexture.d, (float) context.imageTexture.e, list, resources, context);
        }
        context.renderStates.put("prevFaces", list);
    }

    private static float[] a(float[] fArr, float f, float f2) {
        float f3 = -f;
        return new float[]{(fArr[0] * f2) - (fArr[1] * f3), (fArr[0] * f3) + (fArr[1] * f2)};
    }

    private static float[] a(float[] fArr, float[] fArr2) {
        return new float[]{(fArr[0] * 0.5f) + (fArr2[0] * 0.5f), (fArr[1] * 0.5f) + (fArr2[1] * 0.5f)};
    }
}
