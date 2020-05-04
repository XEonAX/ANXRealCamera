package co.polarr.renderer.render;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Build;
import co.polarr.renderer.b.h;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.o;
import co.polarr.renderer.b.p;
import co.polarr.renderer.b.q;
import co.polarr.renderer.b.t;
import co.polarr.renderer.entities.Adjustment;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.FaceItem;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.entities.SpotItem;
import co.polarr.renderer.entities.TextItem;
import co.polarr.renderer.filters.Basic;
import co.polarr.renderer.filters.a.d;
import co.polarr.renderer.filters.ab;
import co.polarr.renderer.filters.ac;
import co.polarr.renderer.filters.ae;
import co.polarr.renderer.filters.ah;
import co.polarr.renderer.filters.al;
import co.polarr.renderer.filters.am;
import co.polarr.renderer.filters.an;
import co.polarr.renderer.filters.ao;
import co.polarr.renderer.filters.ap;
import co.polarr.renderer.filters.as;
import co.polarr.renderer.filters.at;
import co.polarr.renderer.filters.au;
import co.polarr.renderer.filters.av;
import co.polarr.renderer.filters.aw;
import co.polarr.renderer.filters.ax;
import co.polarr.renderer.filters.ay;
import co.polarr.renderer.filters.az;
import co.polarr.renderer.filters.bb;
import co.polarr.renderer.filters.bf;
import co.polarr.renderer.filters.bj;
import co.polarr.renderer.filters.bk;
import co.polarr.renderer.filters.bl;
import co.polarr.renderer.filters.bq;
import co.polarr.renderer.filters.e;
import co.polarr.renderer.filters.f;
import co.polarr.renderer.filters.g;
import co.polarr.renderer.filters.k;
import co.polarr.renderer.filters.m;
import co.polarr.renderer.filters.n;
import co.polarr.renderer.filters.r;
import co.polarr.renderer.filters.s;
import co.polarr.renderer.filters.v;
import co.polarr.renderer.filters.w;
import co.polarr.renderer.filters.y;
import co.polarr.renderer.filters.z;
import co.polarr.renderer.textureview.c;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import java.io.IOException;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class b implements GLSurfaceView.Renderer {
    private static final boolean ENABLE_SKIP_FRAME = true;
    private static final HashMap<Long, a> G = new HashMap<>();
    private static final int MAX_FPS = 60;
    private static final int MIN_FPS = 40;
    public static final String PREV_TEXT_KEY = "zPrevText";
    private static final long RENDER_REAL_DELAY = 200;

    /* renamed from: a  reason: collision with root package name */
    public static int f1274a = 60;
    private static final float[] g = {0.0f, 0.0f, 0.0f};
    private static float h = 2.0f;
    private o A;
    private boolean B;
    private long C = 0;
    private long D = 0;
    private int E = 0;
    private volatile boolean F = false;

    /* renamed from: b  reason: collision with root package name */
    public ax f1275b;
    public ax c;
    public Point d;
    public Point e;
    public co.polarr.renderer.b.b f;
    /* access modifiers changed from: private */
    public final Context i;
    private c j;
    private GLSurfaceView k;
    private float[] l = new float[25];
    private int m = 0;
    /* access modifiers changed from: private */
    public final Resources n;
    private co.polarr.renderer.filters.a.c o;
    private List<co.polarr.renderer.filters.a.b> p;
    private co.polarr.renderer.filters.a.b q;
    private List<Bitmap> r;
    private Bitmap s;
    private boolean t = false;
    private AtomicBoolean u;
    private AtomicBoolean v;
    private AtomicBoolean w;
    private AtomicBoolean x;
    private boolean y;
    private Queue<Runnable> z;

    /* renamed from: co.polarr.renderer.render.b$1  reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f1276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f1277b;

        public void run() {
            b.a(this.f1277b.i, this.f1277b.n, this.f1277b.n(), (ArrayList<TextItem>) this.f1276a);
            this.f1277b.f();
            this.f1277b.j();
        }
    }

    private static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final LinkedList<Integer> f1282a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final LinkedList<Integer> f1283b;
        /* access modifiers changed from: private */
        public final LinkedList<Integer> c;

        private a() {
            this.f1282a = new LinkedList<>();
            this.f1283b = new LinkedList<>();
            this.c = new LinkedList<>();
        }

        /* synthetic */ a(AnonymousClass1 r1) {
            this();
        }
    }

    public b(Context context, Resources resources, GLSurfaceView gLSurfaceView) {
        this.k = gLSurfaceView;
        this.n = resources;
        this.i = context;
        m();
    }

    public b(Context context, Resources resources, c cVar) {
        this.j = cVar;
        this.n = resources;
        this.i = context;
        m();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v3, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v3, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v5, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v6, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v13, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v24, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v25, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v26, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v27, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v28, resolved type: co.polarr.renderer.filters.al} */
    /* JADX WARNING: Multi-variable type inference failed */
    public static co.polarr.renderer.filters.a.a a(Resources resources, co.polarr.renderer.entities.Context context, co.polarr.renderer.filters.a.c cVar, List<co.polarr.renderer.filters.a.b> list) {
        co.polarr.renderer.filters.a.a aVar;
        ap apVar;
        synchronized (context) {
            List<Adjustment> list2 = (List) context.renderStates.get("local_adjustments");
            aVar = null;
            if (list2 != null && !list2.isEmpty()) {
                Map<String, Object> map = context.renderStates;
                context.renderStates = new HashMap();
                co.polarr.renderer.c.a(context.renderStates);
                ap apVar2 = null;
                for (Adjustment adjustment : list2) {
                    if (!adjustment.disabled) {
                        if ("radial".equals(adjustment.type)) {
                            ap a2 = ap.a(resources, context);
                            a2.f1198a = adjustment.feather;
                            a2.e = adjustment.size;
                            a2.d = Arrays.copyOf(adjustment.position, 2);
                            a2.d[1] = -a2.d[1];
                            a2.c = -adjustment.angle;
                            a2.f1199b = adjustment.invert ? 1.0f : 0.0f;
                            a2.f = 1.0f;
                            a2.g = 0.0f;
                            apVar = a2;
                        } else if ("gradient".equals(adjustment.type)) {
                            an a3 = an.a(resources, context);
                            a3.f1194a = Arrays.copyOf(adjustment.startPoint, 2);
                            a3.f1194a[1] = -a3.f1194a[1];
                            a3.f1195b = Arrays.copyOf(adjustment.endPoint, 2);
                            a3.f1195b[1] = -a3.f1195b[1];
                            a3.c = adjustment.invert ? 1.0f : 0.0f;
                            a3.d = adjustment.reflect ? 1.0f : 0.0f;
                            a3.e = 1.0f;
                            a3.f = 0.0f;
                            apVar = a3;
                        } else if ("luminance".equals(adjustment.type)) {
                            ao a4 = ao.a(resources, context);
                            a4.f1196a = adjustment.target;
                            a4.f1197b = adjustment.range;
                            a4.d = adjustment.invert ? 1.0f : 0.0f;
                            a4.c = adjustment.smoothness;
                            a4.e = 1.0f;
                            a4.f = 0.0f;
                            apVar = a4;
                        } else if ("color".equals(adjustment.type)) {
                            am a5 = am.a(resources, context);
                            a5.f1192a = adjustment.feather;
                            a5.d = adjustment.threshold;
                            a5.f = adjustment.size;
                            a5.e = Arrays.copyOf(adjustment.position, 2);
                            a5.e[1] = -a5.e[1];
                            a5.f1193b = adjustment.invert ? 1.0f : 0.0f;
                            a5.c = adjustment.useRadius ? 1.0f : 0.0f;
                            a5.i = adjustment.selectedColor != null ? adjustment.selectedColor : g;
                            a5.j = (adjustment.selectedColor == null || adjustment.selectedColor.length <= 0) ? 0.0f : 1.0f;
                            a5.g = 1.0f;
                            a5.h = 0.0f;
                            apVar = a5;
                        } else {
                            if ("brush".equals(adjustment.type)) {
                                if ("paint".equals(adjustment.brush_mode)) {
                                    cVar.b(Basic.a(resources, context));
                                    GLES20.glEnable(3042);
                                    GLES20.glBlendEquation(32774);
                                    GLES20.glBlendFunc(1, 771);
                                    co.polarr.renderer.filters.b a6 = co.polarr.renderer.filters.b.a(resources, context);
                                    a6.a(adjustment.paintTextureId);
                                    a6.draw();
                                    GLES20.glDisable(3042);
                                } else {
                                    al a7 = al.a(resources, context);
                                    a7.f1191b = adjustment.channel;
                                    a7.f1190a = adjustment.invert ? 1.0f : 0.0f;
                                    a7.c = 1.0f;
                                    a7.d = 0.0f;
                                    apVar = a7;
                                }
                            }
                            apVar = null;
                        }
                        if (apVar != null) {
                            if (adjustment.showOverlay) {
                                apVar2 = apVar;
                            }
                            cVar.b(apVar);
                            context.renderStates.putAll(Adjustment.getAdjustmentHashMap(adjustment.adjustments));
                            for (co.polarr.renderer.filters.a.b next : list) {
                                if (!next.c()) {
                                    cVar.b(next);
                                }
                            }
                        }
                    }
                }
                context.renderStates = map;
                if (((Float) context.renderStates.get("blur_opacity")).floatValue() == 0.0f) {
                    cVar.o();
                    d(resources, context);
                    f fVar = context.readableTexture;
                    context.readableTexture = context.tempTexture;
                    a(resources, context, context.readableTexture);
                    context.readableTexture = fVar;
                    cVar.p();
                }
                aVar = apVar2;
            }
        }
        return aVar;
    }

    private static f a(co.polarr.renderer.entities.Context context, f fVar, f fVar2, f fVar3, float f2, Float f3) {
        if (fVar3 == null) {
            fVar3 = fVar2;
        }
        if (f3 == null) {
            f3 = Float.valueOf(f2);
        }
        float floatValue = f3.floatValue();
        float floatValue2 = f3.floatValue();
        fVar.f1240a = new float[]{(1.0f / ((float) fVar3.d)) * f2, 0.0f, (1.0f / ((float) fVar3.d)) * floatValue, 0.0f};
        fVar.f1241b = co.polarr.renderer.entities.Context.overlayMesh;
        a(context, fVar2.c, context.readableTexture, (co.polarr.renderer.filters.a.a) fVar, (boolean) ENABLE_SKIP_FRAME);
        fVar.f1240a = new float[]{0.0f, (1.0f / ((float) fVar3.e)) * f2, 0.0f, (1.0f / ((float) fVar3.e)) * floatValue2};
        fVar.f1241b = co.polarr.renderer.entities.Context.overlayMesh;
        a(context, context.readableTexture.c, fVar3, (co.polarr.renderer.filters.a.a) fVar, (boolean) ENABLE_SKIP_FRAME);
        return fVar3;
    }

    private static f a(co.polarr.renderer.entities.Context context, r rVar, s sVar, f fVar, f fVar2) {
        if (fVar2 == null) {
            fVar2 = fVar;
        }
        rVar.f1260a = new float[]{(1.0f / ((float) fVar2.d)) * 8.0f, 0.0f};
        rVar.f1261b = co.polarr.renderer.entities.Context.overlayMesh;
        a(context, fVar.c, context.readableTexture, (co.polarr.renderer.filters.a.a) rVar, (boolean) ENABLE_SKIP_FRAME);
        sVar.f1262a = new float[]{0.0f, (1.0f / ((float) fVar2.e)) * 8.0f};
        sVar.f1263b = co.polarr.renderer.entities.Context.overlayMesh;
        a(context, context.readableTexture.c, fVar2, (co.polarr.renderer.filters.a.a) sVar, (boolean) ENABLE_SKIP_FRAME);
        return fVar2;
    }

    public static void a(int i2) {
        a u2 = u();
        synchronized (u2.f1282a) {
            u2.f1282a.add(Integer.valueOf(i2));
        }
    }

    public static void a(Context context, Resources resources, co.polarr.renderer.entities.Context context2, ArrayList<TextItem> arrayList) {
        if (context != null) {
            ArrayList arrayList2 = (ArrayList) context2.renderStates.get(PREV_TEXT_KEY);
            if (arrayList != null && !arrayList.isEmpty()) {
                int i2 = 0;
                Iterator<TextItem> it = arrayList.iterator();
                while (it.hasNext()) {
                    TextItem next = it.next();
                    f fVar = context2.textLayers.size() > i2 ? context2.textLayers.get(i2) : null;
                    if (fVar == null) {
                        context2.textLayers.add(co.polarr.renderer.b.s.a(context, resources.getAssets(), next, context2, (f) null));
                    } else if (arrayList2 == null || arrayList2.size() <= i2 || !t.a(arrayList2.get(i2), (Object) next)) {
                        co.polarr.renderer.b.s.a(context, resources.getAssets(), next, context2, fVar);
                    }
                    i2++;
                }
                context2.renderStates.put(PREV_TEXT_KEY, arrayList);
            }
        }
    }

    public static void a(Resources resources, co.polarr.renderer.entities.Context context) {
        i.a((boolean) ENABLE_SKIP_FRAME, (boolean) ENABLE_SKIP_FRAME);
        a(context, context.readableTexture.c, context.writableTexture, (co.polarr.renderer.filters.a.a) bq.a(resources, context), false);
        a(context);
        i.a(false, false);
    }

    public static void a(Resources resources, co.polarr.renderer.entities.Context context, int i2) {
        f fVar;
        int i3 = context.imageTexture.d;
        int i4 = context.imageTexture.e;
        if (i3 != 0 && i4 != 0) {
            int max = Math.max(0, (int) (Math.log((double) i2) / Math.log(2.0d)));
            int i5 = i3 >> max;
            int i6 = i4 >> max;
            i.a(context.writableTexture, i5, i6);
            i.a(context.readableTexture, i5, i6);
            i.a(context.dehazeTexture, i5, i6);
            i.a(context.denoiseTexture, i5, i6);
            float max2 = 1024.0f / ((float) Math.max(i3, i4));
            float f2 = (float) i3;
            int floor = (int) Math.floor((double) (f2 * max2));
            float f3 = (float) i4;
            int floor2 = (int) Math.floor((double) (max2 * f3));
            i.a(context.paintTexture, floor, floor2);
            if (context.brushTextures != null) {
                for (f a2 : context.brushTextures) {
                    i.a(a2, floor, floor2);
                }
            }
            i.a(context.intermediateTexture, floor, floor2);
            GLES20.glDisable(3042);
            if (context.textures == null || context.textures.length <= 0) {
                fVar = context.imageTexture;
            } else {
                a(context, 0, context.readableTexture, (co.polarr.renderer.filters.a.a) au.a(resources, context), false);
                fVar = context.readableTexture;
            }
            float[] fArr = new float[15];
            float f4 = 1.0f / ((float) 15);
            float f5 = 1.0f / f2;
            float f6 = 1.0f / f3;
            for (int i7 = 0; i7 <= 7; i7++) {
                float exp = (float) Math.exp((double) (((float) (-(i7 * i7))) * f4));
                fArr[7 - i7] = exp;
                fArr[i7 + 7] = exp;
            }
            v a3 = v.a(resources, context);
            a3.a("delta", (Object) Float.valueOf(f5));
            a3.f1265a = fArr;
            w a4 = w.a(resources, context);
            a4.a("delta", (Object) Float.valueOf(f6));
            a4.f1267a = fArr;
            a(context, fVar.c, context.writableTexture, (co.polarr.renderer.filters.a.a) a3, (boolean) ENABLE_SKIP_FRAME);
            a(context, context.writableTexture.c, context.denoiseTexture, (co.polarr.renderer.filters.a.a) a4, (boolean) ENABLE_SKIP_FRAME);
            a(context, resources);
        }
    }

    public static void a(Resources resources, co.polarr.renderer.entities.Context context, Point point) {
        int i2 = 16;
        int[] iArr = new int[(context.brushTextures != null ? context.brushTextures.length + 16 : 16)];
        i.a(iArr.length, iArr, 0, 6408, point.x, point.y);
        int i3 = 0;
        context.imageTexture = i.c(iArr[0], 6408, point.x, point.y);
        context.dehazeTexture = i.c(iArr[1], 6408, point.x, point.y);
        context.denoiseTexture = i.c(iArr[2], 6408, point.x, point.y);
        context.cacheTexture = i.c(iArr[3], 6408, point.x, point.y);
        context.readableTexture = i.c(iArr[4], 6408, point.x, point.y);
        context.writableTexture = i.c(iArr[5], 6408, point.x, point.y);
        context.paintTexture = i.c(iArr[6], 6408, point.x, point.y);
        context.retouchTexture = i.c(iArr[7], 6408, point.x, point.y);
        context.intermediateTexture = i.c(iArr[8], 6408, point.x, point.y);
        context.lensBlurTexture = i.c(iArr[9], 6408, point.x, point.y);
        context.tempTexture = i.c(iArr[10], 6408, point.x, point.y);
        context.screenTexture = i.c(iArr[11], 6408, point.x, point.y);
        context.watermarkTexture = i.c(iArr[12], 6408, point.x, point.y);
        context.exportTexture = i.c(iArr[13], 6408, point.x, point.y);
        context.grainTexture = i.c(iArr[14], 6408, 1024, 1024);
        context.overlayTexture = i.c(iArr[15], 6408, 1000, 1000);
        if (context.brushTextures != null) {
            while (i3 < context.brushTextures.length) {
                context.brushTextures[i3] = i.c(iArr[i2], 6408, point.x, point.y);
                i3++;
                i2++;
            }
        }
        e(resources, context);
        f(resources, context);
    }

    public static void a(Resources resources, co.polarr.renderer.entities.Context context, f fVar) {
        if (fVar == null) {
            fVar = context.readableTexture;
        }
        co.polarr.renderer.filters.c a2 = co.polarr.renderer.filters.c.a(resources, context);
        a2.a(context);
        a2.f1236a = new float[]{0.0f, (((float) fVar.d) / ((float) fVar.e)) * 0.036f};
        a(context, context.readableTexture.c, context.writableTexture, (co.polarr.renderer.filters.a.a) a2, false);
        a2.f1236a = new float[]{0.036f, 0.0f};
        a(context, context.writableTexture.c, fVar, (co.polarr.renderer.filters.a.a) a2, false);
    }

    public static void a(co.polarr.renderer.entities.Context context) {
        f fVar = context.readableTexture;
        context.readableTexture = context.writableTexture;
        context.writableTexture = fVar;
    }

    private static void a(co.polarr.renderer.entities.Context context, float f2, float f3) {
        float[] fArr = {(float) context.imageTexture.d, (float) context.imageTexture.e};
        Matrix.setIdentityM(context.translationMatrix, 0);
        Matrix.translateM(context.translationMatrix, 0, (f2 / fArr[0]) * 2.0f, (f3 / fArr[1]) * 2.0f, 0.0f);
    }

    private static void a(co.polarr.renderer.entities.Context context, float f2, float f3, float f4, float f5) {
        Matrix.setIdentityM(context.cropMatrix, 0);
        Matrix.scaleM(context.cropMatrix, 0, f4, f5, 1.0f);
        Matrix.translateM(context.cropMatrix, 0, f2, f3, 0.0f);
    }

    public static void a(co.polarr.renderer.entities.Context context, float f2, float f3, boolean z2, boolean z3, float[] fArr) {
        co.polarr.renderer.entities.Context context2 = context;
        float[] a2 = z3 ? co.polarr.renderer.b.c.a(context) : new float[]{(float) context2.imageTexture.d, (float) context2.imageTexture.e};
        float f4 = a2[0] / 2.0f;
        float f5 = a2[1] / 2.0f;
        float[] b2 = co.polarr.renderer.b.c.b(context);
        float[] fArr2 = fArr != null ? new float[]{b2[0] + fArr[0], b2[1] + fArr[1], (float) Math.floor((double) (b2[2] * fArr[2])), (float) Math.floor((double) (b2[3] * fArr[3]))} : b2;
        float[] fArr3 = z3 ? new float[]{((fArr2[0] - f4) * context2.cropScale) + f4, ((fArr2[1] - f5) * context2.cropScale) + f5, fArr2[2] * context2.cropScale, fArr2[3] * context2.cropScale} : new float[]{0.0f, 0.0f, a2[0], a2[1]};
        float f6 = ((-(a2[0] - fArr3[2])) / 2.0f) + fArr3[0];
        float f7 = ((-(a2[1] - fArr3[3])) / 2.0f) + fArr3[1];
        float f8 = fArr3[2] / a2[0];
        float f9 = fArr3[3] / a2[1];
        float f10 = f6 / fArr3[2];
        float f11 = f7 / fArr3[3];
        float f12 = z2 ? -1.0f : 1.0f;
        b(context);
        a(context, -f6, -f7);
        b(context, f8, f12 * f9);
        e(context);
        a(context, f10 * 2.0f, f11 * 2.0f, f8, f9);
        int i2 = (int) f2;
        int i3 = (int) f3;
        i.a(context2.readableTexture, i2, i3);
        i.a(context2.writableTexture, i2, i3);
    }

    public static void a(co.polarr.renderer.entities.Context context, int i2, f fVar, co.polarr.renderer.filters.a.a aVar, boolean z2) {
        if (i2 != fVar.c) {
            d a2 = d.a(context);
            a2.a(aVar);
            a2.b(fVar.c);
            a2.a(h.a());
            a2.b(fVar.d, fVar.e);
            if (i2 != 0) {
                a2.a(i2);
            }
            a2.draw();
        }
    }

    private static void a(co.polarr.renderer.entities.Context context, Resources resources) {
        co.polarr.renderer.entities.Context context2 = context;
        Resources resources2 = resources;
        f a2 = f.a(resources2, context2);
        r a3 = r.a(resources2, context2);
        s a4 = s.a(resources2, context2);
        k a5 = k.a(resources2, context2);
        m a6 = m.a(resources2, context2);
        n a7 = n.a(resources2, context2);
        at a8 = at.a(resources2, context2);
        float f2 = (float) context2.imageTexture.d;
        float f3 = (float) context2.imageTexture.e;
        float max = 512.0f / Math.max(f2, f3);
        int i2 = (int) (f2 * max);
        int i3 = (int) (f3 * max);
        i.a(context2.writableTexture, i2, i3);
        i.a(context2.readableTexture, i2, i3);
        int[] iArr = new int[3];
        i.a(iArr.length, iArr, 0, 6408, i2, i3);
        f c2 = i.c(iArr[0], 6408, i2, i3);
        f c3 = i.c(iArr[1], 6408, i2, i3);
        f c4 = i.c(iArr[2], 6408, i2, i3);
        f fVar = context2.denoiseTexture;
        a(context2, a3, a4, fVar, c4);
        a8.f1206a = co.polarr.renderer.entities.Context.overlayMesh;
        a(context2, fVar.c, c3, (co.polarr.renderer.filters.a.a) a8, (boolean) ENABLE_SKIP_FRAME);
        co.polarr.renderer.entities.Context context3 = context;
        f fVar2 = a2;
        f fVar3 = c2;
        f fVar4 = fVar;
        f a9 = a(context3, fVar2, fVar, fVar3, 8.0f, (Float) null);
        f fVar5 = c3;
        f fVar6 = c3;
        f fVar7 = a9;
        f a10 = a(context3, fVar2, fVar5, fVar6, 8.0f, (Float) null);
        f fVar8 = c4;
        f fVar9 = c4;
        f fVar10 = a10;
        f a11 = a(context3, fVar2, fVar8, fVar9, 48.0f, (Float) null);
        a6.f1252a = fVar7.c;
        a6.f1253b = fVar10.c;
        a6.c = a11.c;
        a6.d = co.polarr.renderer.entities.Context.overlayMesh;
        a(context2, 0, context2.writableTexture, (co.polarr.renderer.filters.a.a) a6, (boolean) ENABLE_SKIP_FRAME);
        f fVar11 = context2.writableTexture;
        a7.f1254a = fVar7.c;
        a7.f1255b = a11.c;
        a7.c = fVar11.c;
        a7.d = co.polarr.renderer.entities.Context.overlayMesh;
        a(context2, 0, fVar10, (co.polarr.renderer.filters.a.a) a7, (boolean) ENABLE_SKIP_FRAME);
        Float valueOf = Float.valueOf(48.0f);
        co.polarr.renderer.entities.Context context4 = context;
        f fVar12 = a11;
        f a12 = a(context4, fVar2, fVar10, fVar10, 8.0f, valueOf);
        a5.f1248a = a(context4, fVar2, fVar11, fVar11, 8.0f, valueOf).c;
        a5.f1249b = a12.c;
        a5.c = fVar4.c;
        a5.d = co.polarr.renderer.entities.Context.overlayMesh;
        a(context2, 0, context2.dehazeTexture, (co.polarr.renderer.filters.a.a) a5, (boolean) ENABLE_SKIP_FRAME);
        a(fVar7);
        a(fVar10);
        a(fVar12);
    }

    private void a(co.polarr.renderer.entities.Context context, co.polarr.renderer.filters.a.a aVar, co.polarr.renderer.filters.a.c cVar) {
        cVar.b(aVar);
        GLES20.glEnable(3042);
        GLES20.glBlendEquation(32774);
        GLES20.glBlendFunc(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771);
        context.overlayMask = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
        ax axVar = this.c;
        axVar.f1211b = 1.0f;
        cVar.b(axVar);
        GLES20.glDisable(3042);
    }

    public static void a(f fVar) {
        i.a(fVar.c);
    }

    private void a(final boolean z2, final f fVar, final boolean z3) {
        AnonymousClass2 r0 = new Runnable() {
            public void run() {
                b.this.a(z2, fVar, z3, false);
            }
        };
        c cVar = this.j;
        if (cVar != null) {
            cVar.a((Runnable) r0);
        }
        GLSurfaceView gLSurfaceView = this.k;
        if (gLSurfaceView != null) {
            gLSurfaceView.queueEvent(r0);
        }
    }

    /* access modifiers changed from: private */
    public void a(boolean z2, f fVar, boolean z3, boolean z4) {
        float f2;
        float f3;
        if ((!z2 || !this.F) && this.o != null && n().writableTexture != null && n().writableTexture.e != 0 && n().photoLoaded) {
            long currentTimeMillis = System.currentTimeMillis();
            this.F = ENABLE_SKIP_FRAME;
            if (z2) {
                b();
            }
            if (!this.y) {
                this.f.a(n(), false);
                q.a(n(), this.n);
            }
            co.polarr.renderer.filters.a.b a2 = (n().textures == null || n().textures.length <= 0) ? y.a(this.n, n()) : z.a(this.n, n());
            a2.a(n().matrix);
            d a3 = d.a(n());
            a3.a((co.polarr.renderer.filters.a.a) a2);
            a3.b(n().readableTexture.c);
            a3.b(n().readableTexture.d, n().readableTexture.e);
            a3.a(n().imageTexture.c);
            if (this.y) {
                Mesh mesh = n().mesh;
                n().mesh = co.polarr.renderer.entities.Context.DefaultMesh;
                a3.draw();
                n().mesh = mesh;
            } else {
                a3.draw();
            }
            if (!this.y) {
                i.a(false, false);
                co.polarr.renderer.b.f.a((List<FaceItem>) (List) n().renderStates.get("faces"), this.n, n());
                if (n().readableTexture != null) {
                    this.o.a(n().readableTexture.c);
                    this.o.i();
                    List list = (List) n().renderStates.get("spots");
                    if (list != null && !list.isEmpty()) {
                        bj a4 = (n().textures == null || n().textures.length <= 0) ? bj.a(this.n, n()) : bl.b(this.n, n());
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            SpotItem spotItem = (SpotItem) list.get(i2);
                            a4.f1226a = spotItem.feather;
                            a4.f1227b = spotItem.size;
                            a4.c = t.a(spotItem.position);
                            a4.d = t.a(spotItem.sourcePosition);
                            a4.e = spotItem.angle;
                            a4.f = spotItem.opacity;
                            a4.g = spotItem.mode;
                            this.o.b(a4);
                        }
                    }
                    this.o.j();
                    List list2 = (List) n().renderStates.get("faces");
                    int i3 = 0;
                    while (i3 < list2.size()) {
                        try {
                            FaceItem faceItem = (FaceItem) list2.get(i3);
                            c cVar = n().faceMasks[i3];
                            if (faceItem.adjustments != null) {
                                ab a5 = ab.a(this.n, n());
                                a5.f1173a = cVar;
                                a5.f1174b = faceItem.adjustments;
                                this.o.b(a5);
                            }
                            i3++;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    co.polarr.renderer.filters.a.a a6 = a(this.n, n(), this.o, this.p);
                    if (z4) {
                        a(n(), this.o.m(), n().readableTexture, (co.polarr.renderer.filters.a.a) Basic.a(this.n, n()), false);
                        this.o.q();
                        return;
                    }
                    Object obj = n().renderStates.get("blur_opacity");
                    if ((((obj instanceof Integer) && ((Integer) obj).intValue() != 0) || ((obj instanceof Float) && ((Float) obj).floatValue() != 0.0f)) && n().lensBlurTexture.d != 1) {
                        this.o.b(co.polarr.renderer.filters.d.a(this.n, n()));
                    }
                    if (a6 != null) {
                        a(n(), a6, this.o);
                    }
                    this.o.q();
                    a(n(), this.o.m(), n().readableTexture, (co.polarr.renderer.filters.a.a) Basic.a(this.n, n()), false);
                    b(this.n, n());
                    if (!n().cropMode && n().watermarkTexture != null && (n().watermarkOptions.enabled || n().watermarkOptions.preview)) {
                        co.polarr.renderer.filters.a.b a7 = (n().textures == null || n().textures.length <= 0) ? av.a(this.n, n()) : aw.a(this.n, n());
                        a7.a(n().matrix);
                        d a8 = d.a(n());
                        a8.a((co.polarr.renderer.filters.a.a) a7);
                        a8.b(n().writableTexture.c);
                        a8.b(n().readableTexture.d, n().readableTexture.e);
                        a8.a(n().readableTexture.c);
                        a8.draw();
                        a(n());
                        a(this.n, n());
                    }
                    if (fVar != null) {
                        if (fVar == n().cacheTexture) {
                            if (n().cropMode) {
                                f2 = (float) n().imageTexture.d;
                                f3 = (float) n().imageTexture.e;
                            } else {
                                float[] b2 = co.polarr.renderer.b.c.b(n());
                                float f4 = b2[2];
                                f3 = b2[3];
                                f2 = f4;
                            }
                            float min = Math.min(((float) this.e.x) / f2, ((float) this.e.y) / f3);
                            i.a(fVar, (int) (f2 * min), (int) (f3 * min));
                        }
                        a(n(), n().readableTexture.c, fVar, (co.polarr.renderer.filters.a.a) Basic.a(this.n, n()), false);
                    }
                } else {
                    return;
                }
            }
            if (z2 && n().readableTexture != null) {
                a(n(), n().readableTexture.c, n().screenTexture, (co.polarr.renderer.filters.a.a) Basic.a(this.n, n()), false);
                this.q.a(n().screenTexture.c);
                if (z3) {
                    this.D = System.currentTimeMillis();
                }
            }
            this.F = false;
            long currentTimeMillis2 = System.currentTimeMillis();
            float[] fArr = this.l;
            int i4 = this.m;
            this.m = i4 + 1;
            fArr[i4] = 1000.0f / ((float) (currentTimeMillis2 - currentTimeMillis));
            this.m %= fArr.length;
        }
    }

    public static void b(int i2) {
        a u2 = u();
        synchronized (u2.f1283b) {
            if (!u2.f1283b.contains(Integer.valueOf(i2))) {
                u2.f1283b.add(Integer.valueOf(i2));
            }
        }
    }

    public static void b(Resources resources, co.polarr.renderer.entities.Context context) {
        float f2;
        float f3;
        co.polarr.renderer.entities.Context context2 = context;
        ArrayList arrayList = (ArrayList) context2.renderStates.get("text");
        if (!arrayList.isEmpty()) {
            ac a2 = ac.a(resources, context);
            if (((Boolean) context2.renderStates.get("textInverted")).booleanValue()) {
                a2.f1175a = (float[]) context2.renderStates.get("textInvertedColor");
                f2 = 22.0f;
                f3 = 1.0f;
            } else {
                a2.f1175a = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
                f3 = -1.0f;
                f2 = -1.0f;
            }
            a(context2, context2.readableTexture.c, context2.writableTexture, (co.polarr.renderer.filters.a.a) a2, false);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (context2.textLayers.size() > i2) {
                    f fVar = context2.textLayers.get(i2);
                    TextItem textItem = (TextItem) arrayList.get(i2);
                    if (!(fVar == null || textItem == null || textItem.disabled)) {
                        ah a3 = ah.a(resources, context);
                        float[] a4 = co.polarr.renderer.b.s.a(textItem, context2, fVar);
                        float[] matrix = a3.getMatrix();
                        Object a5 = co.polarr.renderer.c.a("flip_x", context2.renderStates);
                        boolean booleanValue = a5 instanceof Boolean ? ((Boolean) a5).booleanValue() : false;
                        Object a6 = co.polarr.renderer.c.a("flip_y", context2.renderStates);
                        boolean booleanValue2 = a6 instanceof Boolean ? ((Boolean) a6).booleanValue() : false;
                        float[] fArr = matrix;
                        Matrix.multiplyMM(matrix, 0, context2.matrix, 0, a4, 0);
                        Matrix.scaleM(fArr, 0, booleanValue ? -1.0f : 1.0f, booleanValue2 ? -1.0f : 1.0f, 1.0f);
                        a3.a(fArr);
                        a3.f = fArr;
                        a3.f1183a = fVar;
                        a3.f1184b = textItem.f1156color;
                        a3.c = f3 > 0.0f ? f3 : textItem.opacity;
                        a3.d = f2 > 0.0f ? f2 : textItem.blendMode;
                        a3.e = textItem.blendMix;
                        i.a((boolean) ENABLE_SKIP_FRAME, false);
                        a(context2, context2.readableTexture.c, context2.writableTexture, (co.polarr.renderer.filters.a.a) a3, false);
                        i.a(false, false);
                    }
                }
            }
            a(context);
        }
    }

    public static void b(co.polarr.renderer.entities.Context context) {
        float floatValue = ((Float) co.polarr.renderer.c.a("rotation", context.renderStates)).floatValue();
        context.rotation = floatValue;
        float[] a2 = co.polarr.renderer.b.c.a(context);
        double d2 = ((double) floatValue) * 0.017453292519943295d;
        double abs = Math.abs(Math.cos(d2));
        double abs2 = Math.abs(Math.sin(d2));
        double d3 = (double) (a2[0] / 2.0f);
        double d4 = (double) (a2[1] / 2.0f);
        context.cropScale = (float) Math.min(d3 / ((d3 * abs) + (d4 * abs2)), d4 / ((d3 * abs2) + (abs * d4)));
        context.cropScale = Math.min(1.0f, context.cropScale);
        Object a3 = co.polarr.renderer.c.a("flip_x", context.renderStates);
        boolean booleanValue = a3 instanceof Boolean ? ((Boolean) a3).booleanValue() : false;
        Object a4 = co.polarr.renderer.c.a("flip_y", context.renderStates);
        boolean booleanValue2 = a4 instanceof Boolean ? ((Boolean) a4).booleanValue() : false;
        int floatValue2 = (((int) ((Float) context.renderStates.get("rotate90")).floatValue()) + 4) % 4;
        context.renderStates.put("rotate90", Float.valueOf((float) floatValue2));
        if (floatValue2 % 2 == 1) {
            if (booleanValue && !booleanValue2) {
                booleanValue = false;
                booleanValue2 = true;
            } else if (!booleanValue && booleanValue2) {
                booleanValue2 = false;
                booleanValue = true;
            }
        }
        Matrix.setIdentityM(context.rotationMatrix, 0);
        Matrix.rotateM(context.rotationMatrix, 0, context.rotation, 0.0f, 0.0f, 1.0f);
        h.a(context.rotationMatrix, booleanValue, booleanValue2);
        Matrix.setIdentityM(context.rotation90Matrix, 0);
        Matrix.rotateM(context.rotation90Matrix, 0, (float) (floatValue2 * 90), 0.0f, 0.0f, 1.0f);
        Matrix.invertM(context.rotation90MatrixInv, 0, context.rotation90Matrix, 0);
    }

    private static void b(co.polarr.renderer.entities.Context context, float f2, float f3) {
        float[] a2 = co.polarr.renderer.b.c.a(context);
        Matrix.setIdentityM(context.scaleMatrix, 0);
        Matrix.scaleM(context.scaleMatrix, 0, (a2[0] / 2.0f) / f2, (a2[1] / 2.0f) / f3, 1.0f);
    }

    private void b(List<Bitmap> list) {
        List<Bitmap> list2 = list;
        co.polarr.renderer.b.b.b();
        if (n().imageTexture == null) {
            a(this.n, n(), this.d);
        } else {
            s();
        }
        if (n().textures != null && n().textures.length > 0) {
            GLES20.glDeleteTextures(4, n().textures, 0);
            GLES20.glFlush();
            n().textures = new int[0];
        }
        if (list.size() == 1) {
            GLES20.glBindTexture(3553, n().imageTexture.c);
            i.a();
            GLUtils.texImage2D(3553, 0, 6408, list2.get(0), 0);
        } else {
            n().textures = new int[4];
            i.a(n().textures.length, n().textures, 0, 6408, list2.get(0).getWidth(), list2.get(0).getHeight());
            for (int i2 = 0; i2 < 4; i2++) {
                GLES20.glBindTexture(3553, n().textures[i2]);
                i.a();
                GLES20.glTexImage2D(3553, 0, 6408, list2.get(i2).getWidth(), list2.get(i2).getHeight(), 0, 6408, 5121, (Buffer) null);
                GLUtils.texImage2D(3553, 0, 6408, list2.get(i2), 0);
            }
            n().imageTexture.d = this.d.x;
            n().imageTexture.e = this.d.y;
        }
        c(this.n, n());
        i.a(n().screenTexture, this.e.x, this.e.y);
        this.t = ENABLE_SKIP_FRAME;
    }

    public static void c(int i2) {
        a u2 = u();
        synchronized (u2.c) {
            u2.c.add(Integer.valueOf(i2));
        }
    }

    public static void c(Resources resources, co.polarr.renderer.entities.Context context) {
        a(resources, context, 2);
    }

    public static void c(co.polarr.renderer.entities.Context context) {
        float[] a2 = co.polarr.renderer.b.c.a(context);
        float f2 = a2[0];
        float f3 = a2[1];
        Matrix.orthoM(context.projectionMatrix, 0, f2 / -2.0f, f2 / 2.0f, f3 / -2.0f, f3 / 2.0f, -9999.0f, 9999.0f);
        Matrix.invertM(context.projectionMatrixInv, 0, context.projectionMatrix, 0);
    }

    public static void d(int i2) {
        a u2 = u();
        synchronized (u2.f1283b) {
            int indexOf = u2.f1283b.indexOf(Integer.valueOf(i2));
            if (indexOf >= 0) {
                u2.f1283b.remove(indexOf);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v3, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v5, resolved type: co.polarr.renderer.filters.am} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v6, resolved type: co.polarr.renderer.filters.ao} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v7, resolved type: co.polarr.renderer.filters.an} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v8, resolved type: co.polarr.renderer.filters.ap} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v9, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v10, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v14, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v15, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v16, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v17, resolved type: co.polarr.renderer.filters.al} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v18, resolved type: co.polarr.renderer.filters.al} */
    /* JADX WARNING: Multi-variable type inference failed */
    public static void d(Resources resources, co.polarr.renderer.entities.Context context) {
        al alVar;
        al alVar2;
        co.polarr.renderer.entities.Context context2 = context;
        List<Adjustment> list = (List) context2.renderStates.get("local_adjustments");
        if (list != null && !list.isEmpty()) {
            al alVar3 = null;
            int i2 = 0;
            for (Adjustment adjustment : list) {
                if (!"brush".equals(adjustment.type) || !"paint".equals(adjustment.brush_mode)) {
                    float f2 = adjustment.adjustments.blur / 1.5f;
                    float min = (float) Math.min(1, i2);
                    float f3 = 0.0f;
                    if ("radial".equals(adjustment.type)) {
                        ap a2 = ap.a(resources, context);
                        a2.f1198a = adjustment.feather;
                        a2.e = adjustment.size;
                        a2.d = Arrays.copyOf(adjustment.position, 2);
                        a2.d[1] = -a2.d[1];
                        a2.c = -adjustment.angle;
                        if (adjustment.invert) {
                            f3 = 1.0f;
                        }
                        a2.f1199b = f3;
                        a2.f = f2;
                        a2.g = min;
                        alVar2 = a2;
                    } else if ("gradient".equals(adjustment.type)) {
                        an a3 = an.a(resources, context);
                        a3.f1194a = Arrays.copyOf(adjustment.startPoint, 2);
                        a3.f1194a[1] = -a3.f1194a[1];
                        a3.f1195b = Arrays.copyOf(adjustment.endPoint, 2);
                        a3.f1195b[1] = -a3.f1195b[1];
                        a3.c = adjustment.invert ? 1.0f : 0.0f;
                        if (adjustment.reflect) {
                            f3 = 1.0f;
                        }
                        a3.d = f3;
                        a3.e = f2;
                        a3.f = min;
                        alVar2 = a3;
                    } else if ("luminance".equals(adjustment.type)) {
                        ao a4 = ao.a(resources, context);
                        a4.f1196a = adjustment.target;
                        a4.f1197b = adjustment.range;
                        if (adjustment.invert) {
                            f3 = 1.0f;
                        }
                        a4.d = f3;
                        a4.c = adjustment.smoothness;
                        a4.e = f2;
                        a4.f = min;
                        alVar2 = a4;
                    } else if ("color".equals(adjustment.type)) {
                        am a5 = am.a(resources, context);
                        a5.f1192a = adjustment.feather;
                        a5.d = adjustment.threshold;
                        a5.f = adjustment.size;
                        a5.e = Arrays.copyOf(adjustment.position, 2);
                        a5.e[1] = -a5.e[1];
                        a5.f1193b = adjustment.invert ? 1.0f : 0.0f;
                        a5.c = adjustment.useRadius ? 1.0f : 0.0f;
                        a5.i = adjustment.selectedColor != null ? adjustment.selectedColor : g;
                        if (adjustment.selectedColor != null && adjustment.selectedColor.length > 0) {
                            f3 = 1.0f;
                        }
                        a5.j = f3;
                        a5.g = f2;
                        a5.h = min;
                        alVar2 = a5;
                    } else {
                        alVar2 = alVar3;
                        if ("brush".equals(adjustment.type)) {
                            alVar2 = alVar3;
                            if (!"paint".equals(adjustment.brush_mode)) {
                                al a6 = al.a(resources, context);
                                a6.f1191b = adjustment.channel;
                                if (adjustment.invert) {
                                    f3 = 1.0f;
                                }
                                a6.f1190a = f3;
                                a6.c = f2;
                                a6.d = min;
                                alVar2 = a6;
                            }
                        }
                    }
                    if (alVar2 != null) {
                        a(context2, context2.readableTexture.c, context2.writableTexture, (co.polarr.renderer.filters.a.a) alVar2, false);
                        a(context);
                    }
                    i2++;
                    alVar = alVar2;
                } else {
                    alVar = alVar3;
                }
                alVar3 = alVar;
            }
        }
    }

    public static void d(co.polarr.renderer.entities.Context context) {
        int i2 = (int) context.compositeResolution[0];
        int i3 = (int) context.compositeResolution[1];
        i.a(context.readableTexture, i2, i3);
        i.a(context.writableTexture, i2, i3);
    }

    public static void e(int i2) {
        a u2 = u();
        synchronized (u2.c) {
            int indexOf = u2.c.indexOf(Integer.valueOf(i2));
            if (indexOf >= 0) {
                u2.c.remove(indexOf);
            }
        }
    }

    private static void e(Resources resources, co.polarr.renderer.entities.Context context) {
        String[] strArr = {"mosaic_pattern_00.png", "mosaic_pattern_01.png", "mosaic_pattern_02.png", "mosaic_pattern_03.png", "mosaic_pattern_04.png"};
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (Build.VERSION.SDK_INT >= 19) {
                options.inPremultiplied = false;
            }
            Bitmap bitmap = null;
            try {
                bitmap = BitmapFactory.decodeStream(resources.getAssets().open("paint/" + strArr[i2]), (Rect) null, options);
            } catch (IOException unused) {
            }
            if (bitmap != null) {
                int[] iArr = new int[1];
                i.a(iArr.length, iArr, 0, 6408, bitmap.getWidth(), bitmap.getHeight());
                f c2 = i.c(iArr[0], 6408, bitmap.getWidth(), bitmap.getHeight());
                GLES20.glBindTexture(3553, c2.c);
                GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
                bitmap.recycle();
                hashMap.put(new String[]{"square", "hexagon", "dot", "triangle", "diamond"}[i2], c2);
            }
        }
        context.patterns = hashMap;
    }

    private static void e(co.polarr.renderer.entities.Context context) {
        Matrix.setIdentityM(context.matrix, 0);
        Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.projectionMatrix, 0);
        Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.scaleMatrix, 0);
        Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.translationMatrix, 0);
        context.viewMatrix = Arrays.copyOf(context.matrix, context.matrix.length);
        if (!context.cropMode) {
            Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.projectionMatrix, 0);
            Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.rotationMatrix, 0);
            Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.projectionMatrixInv, 0);
            Matrix.multiplyMM(context.matrix, 0, context.matrix, 0, context.rotation90Matrix, 0);
        }
        Matrix.invertM(context.matrixInv, 0, context.matrix, 0);
    }

    private static void f(Resources resources, co.polarr.renderer.entities.Context context) {
        String[] strArr = {"brush_08_8.png", "brush_09_8.png", "brush_07.png", "brush_05.png", "brush_04.png", "brush_03.png", "brush_02.png"};
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (Build.VERSION.SDK_INT >= 19) {
                options.inPremultiplied = false;
            }
            Bitmap bitmap = null;
            try {
                bitmap = BitmapFactory.decodeStream(resources.getAssets().open("paint/" + strArr[i2]), (Rect) null, options);
            } catch (IOException unused) {
            }
            if (bitmap != null) {
                int[] iArr = new int[1];
                i.a(iArr.length, iArr, 0, 6408, bitmap.getWidth(), bitmap.getHeight());
                f c2 = i.c(iArr[0], 6408, bitmap.getWidth(), bitmap.getHeight());
                GLES20.glBindTexture(3553, c2.c);
                GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
                bitmap.recycle();
                hashMap.put(new String[]{"stroke_5", "stroke_6", "stroke_3", "stroke_4", "dot", "speckles", "chalk"}[i2], c2);
            }
        }
        context.brushes = hashMap;
    }

    public static void l() {
        a u2 = u();
        synchronized (u2.f1282a) {
            Iterator it = u2.f1282a.iterator();
            while (it.hasNext()) {
                GLES20.glDeleteProgram(((Integer) it.next()).intValue());
            }
            u2.f1282a.clear();
        }
        synchronized (u2.c) {
            int[] iArr = new int[u2.c.size()];
            Iterator it2 = u2.c.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                iArr[i2] = ((Integer) it2.next()).intValue();
                i2++;
            }
            GLES20.glDeleteFramebuffers(iArr.length, iArr, 0);
            u2.c.clear();
        }
        synchronized (u2.f1283b) {
            int[] iArr2 = new int[u2.f1283b.size()];
            Iterator it3 = u2.f1283b.iterator();
            int i3 = 0;
            while (it3.hasNext()) {
                iArr2[i3] = ((Integer) it3.next()).intValue();
                i3++;
            }
            GLES20.glDeleteTextures(iArr2.length, iArr2, 0);
            u2.f1283b.clear();
        }
    }

    private void m() {
        n().shaderUtil = p.a(this.n);
        this.o = new co.polarr.renderer.filters.a.c(n(), this.n);
        this.d = new Point();
        this.e = new Point();
        this.q = new bf(this.n, n());
        this.f1275b = new ax(this.n, n());
        this.c = new ax(this.n, n());
        this.u = new AtomicBoolean(false);
        this.v = new AtomicBoolean(false);
        this.w = new AtomicBoolean(false);
        this.x = new AtomicBoolean(false);
        a(p.b(this.n, n()));
        this.p = p.a(this.n, n());
        p.a((String) null, (List<FaceItem>) null, (List<Context.FaceFeaturesState>) null);
        this.z = new LinkedBlockingQueue();
    }

    /* access modifiers changed from: private */
    public co.polarr.renderer.entities.Context n() {
        return p.c;
    }

    private void o() {
        int i2 = (int) (((float) this.e.x) / h);
        int i3 = (int) (((float) this.e.y) / h);
        this.o.b(i2, i3);
        for (co.polarr.renderer.filters.a.b b2 : this.p) {
            b2.b(i2, i3);
        }
    }

    private float p() {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            float[] fArr = this.l;
            if (i2 >= fArr.length) {
                break;
            }
            if (fArr[i2] > 0.0f) {
                i4 = (int) (((float) i4) + fArr[i2]);
                i3++;
            }
            i2++;
        }
        if (i3 < 15) {
            return 0.0f;
        }
        return ((float) i4) / ((float) i3);
    }

    private boolean q() {
        float f2 = (float) f1274a;
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.C;
        if (j2 != 0) {
            f2 = 1000.0f / ((float) (currentTimeMillis - j2));
        }
        boolean z2 = false;
        if (System.currentTimeMillis() - this.D > RENDER_REAL_DELAY && !this.F) {
            this.D = Long.MAX_VALUE;
            this.o.b(this.e.x, this.e.y);
            a((boolean) ENABLE_SKIP_FRAME, (f) null, false, false);
            this.o.b((int) (((float) this.e.x) / h), (int) (((float) this.e.y) / h));
        }
        this.C = System.currentTimeMillis();
        int i2 = this.E;
        if (i2 > 0) {
            this.E = i2 - 1;
            if (this.E != 0) {
                return ENABLE_SKIP_FRAME;
            }
            return false;
        }
        float p2 = p();
        this.E = 0;
        if (p2 > 0.0f && p2 < 40.0f) {
            this.E = (int) Math.ceil((double) (60.0f / p2));
            z2 = true;
        }
        o oVar = this.A;
        if (oVar != null) {
            oVar.a(f2, p2, this.E - 1);
        }
        return z2;
    }

    private void r() {
        Vector vector = new Vector();
        while (true) {
            Runnable poll = this.z.poll();
            if (poll == null) {
                break;
            }
            vector.add(poll);
        }
        Iterator it = vector.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    private void s() {
        co.polarr.renderer.entities.Context n2 = n();
        i.b(n2.imageTexture, this.d.x, this.d.y);
        n2.faceMasks = null;
    }

    private void t() {
        Basic.a_();
        co.polarr.renderer.filters.c.d_();
        co.polarr.renderer.filters.d.e_();
        y.u_();
        z.v_();
        ab.w_();
        ac.x_();
        ap.h();
        am.h();
        an.h();
        ao.h();
        al.h();
        bj.h();
        bk.h();
        bl.j();
        ah.B_();
        co.polarr.renderer.filters.p.o_();
        g.h_();
        bq.h();
        av.h();
        aw.h();
        au.h();
        f.g_();
        r.q_();
        s.r_();
        k.k_();
        m.m_();
        n.n_();
        at.h();
        v.s_();
        w.t_();
        e.f_();
        d.i();
        co.polarr.renderer.filters.b.c_();
        as.h();
        az.h();
        ay.h();
        bb.h();
    }

    private static a u() {
        a aVar;
        Long valueOf = Long.valueOf(Thread.currentThread().getId());
        synchronized (G) {
            if (!G.containsKey(valueOf)) {
                aVar = new a((AnonymousClass1) null);
                G.put(valueOf, aVar);
            } else {
                aVar = G.get(valueOf);
            }
        }
        return aVar;
    }

    public void a() {
        this.x.lazySet(ENABLE_SKIP_FRAME);
    }

    public void a(Runnable runnable) {
        this.z.add(runnable);
    }

    public void a(List<co.polarr.renderer.filters.a.a> list) {
        for (co.polarr.renderer.filters.a.a a2 : list) {
            this.o.a(a2);
        }
    }

    public void b() {
        if (this.x.getAndSet(false)) {
            if (n().imageTexture == null) {
                h.a(n().screenMatrix, 2, this.d.x, this.d.y, this.e.x, this.e.y);
                if (((float) this.d.x) / ((float) this.d.y) < 1.0f) {
                    h.a(n().screenMatrix, false, ENABLE_SKIP_FRAME);
                }
            }
            e();
            c();
        }
    }

    public void c() {
        this.q.a(n().screenMatrix);
    }

    public boolean d() {
        if (q() && this.j != null) {
            r();
            return ENABLE_SKIP_FRAME;
        } else if (this.u.getAndSet(false)) {
            List<Bitmap> list = this.r;
            if (list != null && !list.isEmpty()) {
                b(this.r);
                if (this.B) {
                    for (Bitmap recycle : this.r) {
                        recycle.recycle();
                    }
                }
                if (n().textures == null || n().textures.length <= 0) {
                    n().glRenderView.a(n().imageTexture.c);
                } else {
                    n().glRenderView.a(n().textures);
                }
                this.r = null;
            }
            co.polarr.renderer.b.c.a(n(), (float) this.e.x, (float) this.e.y);
            n().screen.zoom = h();
            a();
            o();
            n().photoLoaded = ENABLE_SKIP_FRAME;
            j();
            co.polarr.renderer.filters.q qVar = (co.polarr.renderer.filters.q) co.polarr.renderer.c.a((List<? extends co.polarr.renderer.filters.a.a>) this.o.h(), co.polarr.renderer.filters.q.class);
            if (qVar != null) {
                qVar.h();
            }
            ae aeVar = (ae) co.polarr.renderer.c.a((List<? extends co.polarr.renderer.filters.a.a>) this.o.h(), ae.class);
            if (aeVar != null) {
                aeVar.h();
            }
            return false;
        } else {
            if (n().imageTexture != null && this.w.getAndSet(false)) {
                c(this.n, n());
            }
            if (n().imageTexture != null && this.v.getAndSet(false)) {
                Bitmap bitmap = this.s;
                if (bitmap != null && !bitmap.isRecycled()) {
                    i.a(n().watermarkTexture, this.s.getWidth(), this.s.getHeight());
                    i.a(9729, 9729, 33071, 33071);
                    GLUtils.texImage2D(3553, 0, 6408, this.s, 0);
                    n().watermarkOptions.width = this.s.getWidth();
                    n().watermarkOptions.height = this.s.getHeight();
                    this.s.recycle();
                    this.s = null;
                }
            }
            if (!this.t || !n().photoLoaded) {
                n();
                float[] fArr = co.polarr.renderer.entities.Context.backgroundColor;
                GLES20.glClearColor(fArr[0], fArr[1], fArr[2], 1.0f);
                GLES20.glClear(16640);
            } else {
                GLES20.glViewport(0, 0, this.e.x, this.e.y);
                this.q.a(n().screenTexture.c);
                this.q.draw();
                GLES20.glEnable(3042);
                GLES20.glBlendEquation(32774);
                GLES20.glBlendFunc(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771);
                float[] a2 = h.a();
                Matrix.multiplyMM(a2, 0, a2, 0, n().overlayMatrix, 0);
                h.a(a2, false, ENABLE_SKIP_FRAME);
                if (this.f1275b.f1210a) {
                    this.f1275b.a(a2);
                    this.f1275b.draw();
                }
                if (co.polarr.renderer.filters.p.a(this.n, n()) != null && co.polarr.renderer.filters.p.a(this.n, n()).d) {
                    co.polarr.renderer.filters.p.a(this.n, n()).draw();
                }
                if (g.a(this.n, n()) != null && g.a(this.n, n()).g) {
                    g.a(this.n, n()).draw();
                }
                GLES20.glDisable(3042);
            }
            r();
            return false;
        }
    }

    public void e() {
        co.polarr.renderer.entities.Context n2 = n();
        c(n2);
        float[] a2 = co.polarr.renderer.b.c.a(n2);
        float[] fArr = {(float) this.e.x, (float) this.e.y};
        float[] b2 = co.polarr.renderer.b.c.b(n2);
        float f2 = n2.cropScale;
        if (n2.cropMode) {
            b2 = new float[]{0.0f, 0.0f, a2[0], a2[1]};
            f2 = 1.0f;
        }
        float f3 = (float) ((int) (a2[0] / 2.0f));
        float f4 = (float) ((int) (a2[1] / 2.0f));
        float[] fArr2 = {((b2[0] - f3) * f2) + f3, ((b2[1] - f4) * f2) + f4, b2[2] * f2, b2[3] * f2};
        float f5 = n2.screen.zoom / f2;
        float[] fArr3 = {0.0f, 0.0f};
        float f6 = n2.screen.offset[0] - fArr3[0];
        float f7 = fArr3[1] + n2.screen.offset[1];
        int i2 = (int) (fArr2[2] * f5);
        int i3 = (int) (fArr2[3] * f5);
        float f8 = (float) i2;
        int i4 = ((int) (fArr[0] - f8)) >> 1;
        float f9 = (float) i3;
        int i5 = ((int) (fArr[1] - f9)) >> 1;
        int i6 = (int) (((float) ((int) (((float) i4) - f6))) + ((fArr[0] % 2.0f) / 2.0f));
        int i7 = (int) (((float) ((int) (((float) i5) + f7))) + ((fArr[1] % 2.0f) / 2.0f));
        int i8 = (int) (((float) (i2 + i6)) - fArr[0]);
        int i9 = (int) (((float) (i3 + i7)) - fArr[1]);
        if (f8 < fArr[0]) {
            i8 = Math.max(0, i8) + Math.min(0, i6);
        }
        if (f9 < fArr[1]) {
            i9 = Math.min(0, i7) + Math.max(0, i9);
        }
        float min = Math.min(fArr[0] / f5, fArr2[2]);
        float min2 = Math.min(fArr[1] / f5, fArr2[3]);
        float f10 = ((a2[0] - fArr2[2]) / 2.0f) - fArr2[0];
        float f11 = f7;
        float f12 = ((a2[1] - fArr2[3]) / 2.0f) - fArr2[1];
        float f13 = f9;
        float[] fArr4 = fArr;
        co.polarr.renderer.entities.Context context = n2;
        float[] fArr5 = a2;
        float a3 = (float) ((((double) (((int) (fArr2[2] - min)) >> 1)) - t.a((double) ((int) (((float) i8) / f5)), 0.0d, (double) (fArr2[2] - min))) - ((double) f10));
        float f14 = min / fArr5[0];
        float f15 = min2 / fArr5[1];
        co.polarr.renderer.entities.Context context2 = context;
        context2.compositeResolution[0] = Math.min(fArr4[0], f8);
        context2.compositeResolution[1] = Math.min(fArr4[1], f13);
        double d2 = (double) f6;
        context2.compositeCoords[0] = (float) (t.a(d2, (double) i4, (double) (-i4)) - d2);
        double d3 = (double) f11;
        int i10 = i5;
        context2.compositeCoords[1] = (float) (t.a(d3, (double) i10, (double) (-i10)) - d3);
        context2.compositeCoords[2] = context2.compositeCoords[0] + context2.compositeResolution[0];
        context2.compositeCoords[3] = context2.compositeCoords[1] + context2.compositeResolution[1];
        b(context2);
        a(context2, -a3, -((float) ((((double) (((int) (fArr2[3] - min2)) >> 1)) - t.a((double) ((int) (((float) i9) / f5)), 0.0d, (double) (fArr2[3] - min2))) - ((double) f12))));
        b(context2, f14, f15);
        e(context2);
        a(context2, ((-f10) / fArr2[2]) * 2.0f, ((-f12) / fArr2[3]) * 2.0f, fArr2[2] / fArr5[0], fArr2[3] / fArr5[1]);
        co.polarr.renderer.b.c.c(context2);
        d(context2);
        context2.minZoom = co.polarr.renderer.b.c.a(context2, (int) fArr4[0], (int) fArr4[1], false, (float[]) null);
    }

    public void f() {
        AnonymousClass3 r0 = new Runnable() {
            public void run() {
                int i;
                int i2;
                if (b.this.n().cacheTexture != null) {
                    b.this.g();
                    b.this.e();
                    if (b.this.n().cropMode) {
                        i2 = b.this.n().imageTexture.d;
                        i = b.this.n().imageTexture.e;
                    } else {
                        float[] b2 = co.polarr.renderer.b.c.b(b.this.n());
                        int i3 = (int) b2[2];
                        i = (int) b2[3];
                        i2 = i3;
                    }
                    float f = (float) i2;
                    float f2 = (float) i;
                    float min = Math.min(((float) b.this.e.x) / f, ((float) b.this.e.y) / f2);
                    int i4 = (int) (f * min);
                    int i5 = (int) (f2 * min);
                    i.a(b.this.n().cacheTexture, i4, i5);
                    b.a(b.this.n(), (float) i4, (float) i5, false, b.this.n().cropMode ^ b.ENABLE_SKIP_FRAME, (float[]) null);
                    b bVar = b.this;
                    bVar.a(false, bVar.n().cacheTexture, false, false);
                    b.this.e();
                    b.this.c();
                    b.this.j();
                }
            }
        };
        c cVar = this.j;
        if (cVar != null) {
            cVar.a((Runnable) r0);
        }
        GLSurfaceView gLSurfaceView = this.k;
        if (gLSurfaceView != null) {
            try {
                gLSurfaceView.queueEvent(r0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void g() {
        new Runnable() {
            public void run() {
                boolean z;
                co.polarr.renderer.entities.Context c = b.this.n();
                List list = (List) c.renderStates.get("local_adjustments");
                boolean z2 = false;
                if (list != null && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    loop0:
                    while (true) {
                        z = false;
                        while (true) {
                            if (!it.hasNext()) {
                                break loop0;
                            }
                            Adjustment adjustment = (Adjustment) it.next();
                            if (z || adjustment.adjustments.blur != 0.0f) {
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        int i = c.imageTexture.d;
                        int i2 = c.imageTexture.e;
                        int i3 = i >> 1;
                        int i4 = i2 >> 1;
                        i.a(c.readableTexture, i3, i4);
                        i.a(c.writableTexture, i3, i4);
                        i.a(c.lensBlurTexture, i3, i4);
                        float[] fArr = c.matrix;
                        c.matrix = h.a();
                        b.this.a(false, (f) null, false, (boolean) b.ENABLE_SKIP_FRAME);
                        b.d(b.this.n, c);
                        b.a(b.this.n, c, c.lensBlurTexture);
                        i.a(c.readableTexture, i, i2);
                        i.a(c.writableTexture, i, i2);
                        c.matrix = fArr;
                    }
                    z2 = z;
                }
                if (!z2) {
                    i.a(c.lensBlurTexture, 1, 1);
                }
            }
        }.run();
    }

    public float h() {
        return co.polarr.renderer.b.c.a(n(), this.e.x, this.e.y, false, (float[]) null);
    }

    public void i() {
        p.c = new co.polarr.renderer.entities.Context();
        p.c.resources = this.n;
        co.polarr.renderer.b.b bVar = this.f;
        if (bVar != null) {
            bVar.a();
        }
        t();
        co.polarr.renderer.b.b.b();
    }

    public void j() {
        if (this.F) {
            k();
        } else {
            a((boolean) ENABLE_SKIP_FRAME, (f) null, (boolean) ENABLE_SKIP_FRAME);
        }
    }

    public void k() {
        this.D = System.currentTimeMillis();
    }

    public void onDrawFrame(GL10 gl10) {
        d();
    }

    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        Point point = this.e;
        point.x = i2;
        point.y = i3;
        a();
        o();
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        n().glRenderView.a();
        a(this.n, n(), new Point(512, 512));
        this.q.k();
        this.o.k();
        for (co.polarr.renderer.filters.a.b k2 : this.p) {
            k2.k();
        }
        this.f1275b.k();
        this.c.k();
        this.f = new co.polarr.renderer.b.b(n(), this.n);
    }
}
