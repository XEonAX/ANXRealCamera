package co.polarr.renderer.b;

import android.content.res.Resources;
import android.graphics.PointF;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.LruCache;
import co.polarr.renderer.entities.Adjustment;
import co.polarr.renderer.entities.BrushItem;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.Basic;
import co.polarr.renderer.filters.a.a;
import co.polarr.renderer.filters.a.d;
import co.polarr.renderer.filters.as;
import co.polarr.renderer.filters.ay;
import co.polarr.renderer.filters.az;
import co.polarr.renderer.filters.ba;
import co.polarr.renderer.filters.bb;
import co.polarr.renderer.filters.g;
import co.polarr.renderer.filters.h;
import co.polarr.renderer.filters.i;
import co.polarr.renderer.render.f;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.ArrayList;
import java.util.List;

public class b {
    private static final int MAX_MASK_BRUSH_COUNT = 4;
    public static final int MAX_PAINT_BRUSH_COUNT = 4;

    /* renamed from: a  reason: collision with root package name */
    public static LruCache<String, List<Float>> f1116a = new LruCache<>(100);
    public static float c = 255.0f;
    private static final float[][] z = {new float[]{1.0f, 0.0f, 0.0f, 0.0f}, new float[]{0.0f, 1.0f, 0.0f, 0.0f}, new float[]{0.0f, 0.0f, 1.0f, 0.0f}, new float[]{0.0f, 0.0f, 0.0f, 1.0f}};

    /* renamed from: b  reason: collision with root package name */
    public BrushItem f1117b = new BrushItem();
    float[] d;
    float e;
    float f;
    float g = (c * 0.5f);
    float[] h;
    float[] i = {0.0f, 0.0f, 0.0f, 0.0f};
    private final h j;
    private final i k;
    private final d l;
    private final f m;
    private final f n;
    private final f o;
    private final f p;
    private final as q;
    private final az r;
    private final bb s;
    private final ay t;
    private f u;
    private final Resources v;
    private final ba w;
    private f x;
    private f y;

    public b(Context context, Resources resources) {
        this.v = resources;
        this.j = new h(context, resources);
        this.k = new i(context, resources);
        this.l = d.a(context);
        this.w = new ba(resources, context);
        this.w.k();
        int[] iArr = new int[4];
        i.a(iArr.length, iArr, 0, 6408, 1, 1);
        this.m = i.c(iArr[0], 6408, 1, 1);
        this.n = i.c(iArr[1], 6408, 1, 1);
        GLES20.glBindTexture(3553, this.n.c);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9728.0f);
        GLES20.glBindTexture(3553, 0);
        this.p = i.c(iArr[2], 6408, 1, 1);
        this.o = i.c(iArr[3], 6408, 1, 1);
        this.q = as.a(resources, context);
        this.r = az.a(resources, context);
        this.s = bb.a(resources, context);
        this.t = ay.a(resources, context);
    }

    public static double a(double d2) {
        return ((t.a(d2) / 10.0d) * 9.0d) + 1.0d;
    }

    public static List<Float> a(BrushItem brushItem, PointF pointF, float f2, float f3) {
        float f4;
        int i2;
        float f5;
        int i3;
        BrushItem brushItem2 = brushItem;
        PointF pointF2 = pointF;
        float max = Math.max(10.0f, brushItem2.size * c);
        float f6 = brushItem2.spacing;
        float[] fArr = new float[4];
        float[] fArr2 = {1.0f / f2, 1.0f / f3};
        float[] fArr3 = {pointF2.x * f2, pointF2.y * f3, 0.5f};
        ArrayList arrayList = new ArrayList();
        if (brushItem2.prevPoint == null) {
            brushItem2.prevPoint = new float[]{fArr3[0], fArr3[1], fArr3[2]};
            if (!"paint".equals(brushItem2.mode)) {
                fArr3[0] = fArr3[0] * fArr2[0];
                fArr3[1] = fArr3[1] * fArr2[1];
                brushItem2.points.add(Float.valueOf(fArr3[0]));
                brushItem2.points.add(Float.valueOf(fArr3[1]));
                brushItem2.points.add(Float.valueOf(fArr3[2]));
            }
        } else {
            if ("paint".equals(brushItem2.mode)) {
                fArr[3] = (float) Math.atan2((double) (fArr3[1] - brushItem2.prevPoint[1]), (double) (fArr3[0] - brushItem2.prevPoint[0]));
            }
            int i4 = (int) (f6 * max * fArr3[2]);
            float a2 = h.a(fArr3, brushItem2.prevPoint);
            if (a2 >= ((float) i4)) {
                float f7 = 0.0f;
                if (brushItem2.interpolate) {
                    int i5 = i4;
                    while (true) {
                        float f8 = (float) i5;
                        if (f8 > a2) {
                            break;
                        }
                        try {
                            h.a(brushItem2.prevPoint, fArr3, f8 / a2, fArr);
                            arrayList.add(Float.valueOf(fArr[0]));
                            arrayList.add(Float.valueOf(fArr[1]));
                            arrayList.add(Float.valueOf(fArr[2]));
                            if ("paint".equals(brushItem2.mode)) {
                                arrayList.add(Float.valueOf(fArr[3]));
                            }
                            i5 += i4;
                        } catch (OutOfMemoryError e2) {
                            e2.printStackTrace();
                        }
                    }
                    int i6 = "paint".equals(brushItem2.mode) ? 4 : 3;
                    int size = arrayList.size();
                    int i7 = size - i6;
                    brushItem2.prevPoint = new float[]{((Float) arrayList.get(i7)).floatValue(), ((Float) arrayList.get(i7 + 1)).floatValue(), ((Float) arrayList.get(i7 + 2)).floatValue()};
                    int i8 = 0;
                    while (i8 < size) {
                        if (brushItem2.randomize > 0.0f) {
                            i3 = i8;
                            double d2 = (double) max;
                            arrayList.set(i3, Float.valueOf((float) (((double) ((Float) arrayList.get(i8)).floatValue()) + ((Math.random() - 0.5d) * ((double) brushItem2.randomize) * d2))));
                            int i9 = i3 + 1;
                            f5 = max;
                            i2 = size;
                            arrayList.set(i9, Float.valueOf((float) (((double) ((Float) arrayList.get(i9)).floatValue()) + ((Math.random() - 0.5d) * ((double) brushItem2.randomize) * d2))));
                        } else {
                            f5 = max;
                            i2 = size;
                            i3 = i8;
                        }
                        arrayList.set(i3, Float.valueOf(((Float) arrayList.get(i3)).floatValue() * fArr2[0]));
                        int i10 = i3 + 1;
                        arrayList.set(i10, Float.valueOf(((Float) arrayList.get(i10)).floatValue() * fArr2[1]));
                        i8 = i3 + i6;
                        max = f5;
                        size = i2;
                    }
                    brushItem2.points.addAll(arrayList);
                } else {
                    float f9 = max;
                    fArr[0] = fArr3[0];
                    fArr[1] = fArr3[1];
                    fArr[2] = fArr3[2];
                    arrayList.add(Float.valueOf(fArr[0]));
                    arrayList.add(Float.valueOf(fArr[1]));
                    arrayList.add(Float.valueOf(fArr[2]));
                    if ("paint".equals(brushItem2.mode)) {
                        arrayList.add(Float.valueOf(fArr[3]));
                    }
                    int i11 = "paint".equals(brushItem2.mode) ? 4 : 3;
                    int size2 = arrayList.size();
                    int i12 = size2 - i11;
                    brushItem2.prevPoint = new float[]{((Float) arrayList.get(i12)).floatValue(), ((Float) arrayList.get(i12 + 1)).floatValue(), ((Float) arrayList.get(i12 + 2)).floatValue()};
                    int i13 = 0;
                    while (i13 < size2) {
                        if (brushItem2.randomize > f7) {
                            float f10 = f9;
                            double d3 = (double) f10;
                            arrayList.set(i13, Float.valueOf((float) (((double) ((Float) arrayList.get(i13)).floatValue()) + ((Math.random() - 0.5d) * ((double) brushItem2.randomize) * d3))));
                            int i14 = i13 + 1;
                            f4 = f10;
                            arrayList.set(i14, Float.valueOf((float) (((double) ((Float) arrayList.get(i14)).floatValue()) + ((Math.random() - 0.5d) * ((double) brushItem2.randomize) * d3))));
                        } else {
                            f4 = f9;
                        }
                        arrayList.set(i13, Float.valueOf(((Float) arrayList.get(i13)).floatValue() * fArr2[0]));
                        int i15 = i13 + 1;
                        arrayList.set(i15, Float.valueOf(((Float) arrayList.get(i15)).floatValue() * fArr2[1]));
                        i13 += i11;
                        f9 = f4;
                        f7 = 0.0f;
                    }
                    brushItem2.points.addAll(arrayList);
                }
            }
        }
        return arrayList;
    }

    private void a(a aVar, int i2) {
        d h2 = d.h();
        h2.b(i2);
        h2.a(h.a());
        h2.b(this.x.d, this.x.e);
        h2.a(aVar);
        h2.o();
        aVar.draw();
        h2.p();
    }

    private void a(a aVar, f fVar) {
        d h2 = d.h();
        h2.b(fVar.c);
        h2.a(h.a());
        h2.b(fVar.d, fVar.e);
        h2.a(aVar);
        h2.o();
        aVar.draw();
        h2.p();
    }

    public static void a(List<PointF> list, BrushItem brushItem, float f2, float f3) {
        brushItem.points.clear();
        brushItem.prevPoint = null;
        for (PointF a2 : list) {
            a(brushItem, a2, f2, f3);
        }
    }

    private void a(boolean z2) {
        ba baVar;
        f fVar;
        GLES20.glFinish();
        "effect".equals(this.f1117b.mode);
        this.l.b(this.y.c);
        this.l.a(h.a());
        this.l.b(this.y.d, this.y.e);
        this.l.o();
        Basic instance = Basic.getInstance(this.v);
        instance.setNeedClear(false);
        GLES20.glEnable(3042);
        GLES20.glBlendEquation(32774);
        GLES20.glBlendFuncSeparate(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771, 0, 1);
        if ("effect".equals(this.f1117b.mode)) {
            this.w.a(this.u.c);
            ba baVar2 = this.w;
            baVar2.f1217a = 1.0f;
            baVar2.f1218b = 1.0f;
            if (!CameraStatisticsUtil.PORTRAIT_BLUR.equals(this.f1117b.texture) && !"mosaic".equals(this.f1117b.texture) && !z2) {
                baVar = this.w;
                fVar = this.x;
            } else {
                baVar = this.w;
                fVar = this.p;
            }
            baVar.c = fVar.c;
            this.w.draw();
        } else {
            GLES20.glBlendFunc(1, 771);
            instance.setInputTextureId(this.u.c);
            instance.draw();
        }
        GLES20.glDisable(3042);
        this.l.p();
    }

    public static void b() {
        f1116a.evictAll();
    }

    private void b(f fVar) {
        GLES20.glBindTexture(3553, fVar.c);
        i.a(33071, 33071, 9729, 9729);
        GLES20.glBindTexture(3553, 0);
        this.l.b(fVar.c);
        this.l.a(h.a());
        this.l.b(fVar.d, fVar.e);
        this.l.o();
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        e();
        this.l.p();
        GLES20.glFinish();
        GLES20.glFlush();
    }

    private void b(boolean z2) {
        ba baVar;
        f fVar;
        this.l.b(this.y.c);
        this.l.a(h.a());
        this.l.b(this.y.d, this.y.e);
        this.l.o();
        Basic instance = Basic.getInstance(this.v);
        instance.setNeedClear(false);
        if (!z2) {
            GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
            GLES20.glDisable(3042);
            instance.setInputTextureId(this.m.c);
            instance.draw();
        }
        GLES20.glEnable(3042);
        GLES20.glBlendEquation(32774);
        GLES20.glBlendFuncSeparate(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771, 0, 1);
        if ("effect".equals(this.f1117b.mode)) {
            this.w.a(this.u.c);
            ba baVar2 = this.w;
            baVar2.f1217a = 1.0f;
            baVar2.f1218b = 1.0f;
            if (!CameraStatisticsUtil.PORTRAIT_BLUR.equals(this.f1117b.texture) && !"mosaic".equals(this.f1117b.texture) && !z2) {
                baVar = this.w;
                fVar = this.x;
            } else {
                baVar = this.w;
                fVar = this.p;
            }
            baVar.c = fVar.c;
            this.w.draw();
        } else {
            GLES20.glBlendFunc(1, 771);
            instance.setInputTextureId(this.u.c);
            instance.draw();
        }
        GLES20.glDisable(3042);
        this.l.p();
    }

    private void f() {
        i.b(this.n.c, this.o.c, this.n.d, this.n.e);
        this.s.a(this.m.c);
        this.s.f1219a = this.x.c;
        this.s.f1220b = this.o.c;
        this.s.c = this.u.c;
        a((a) this.s, this.n);
    }

    private void g() {
        int i2 = this.x.d;
        int i3 = this.x.e;
        f fVar = this.p;
        f fVar2 = this.x;
        float f2 = (float) i2;
        float f3 = (float) i3;
        float min = Math.min(36.0f / f2, 36.0f / f3);
        i.a(fVar, (int) (f2 * min), (int) (f3 * min));
        GLES20.glBindTexture(3553, fVar.c);
        i.a(33071, 33071, 9728, 9728);
        GLES20.glBindTexture(3553, 0);
        as asVar = this.q;
        asVar.f1203a = 36.0f;
        asVar.f1204b = (float) fVar2.d;
        this.q.c = (float) fVar2.e;
        this.q.a(fVar2.c);
        a((a) this.q, fVar);
    }

    private void h() {
        int i2 = this.x.d;
        int i3 = this.x.e;
        while (true) {
            if (i2 > 2048 || i3 > 2048) {
                i2 >>= 1;
                i3 >>= 1;
            } else {
                float f2 = 1.0f / ((float) i2);
                float f3 = 1.0f / ((float) i3);
                f fVar = this.p;
                f fVar2 = this.u;
                i.a(fVar, i2, i3);
                i.a(fVar2, i2, i3);
                GLES20.glBindTexture(3553, fVar.c);
                i.a(33071, 33071, 9729, 9729);
                GLES20.glBindTexture(3553, 0);
                this.r.f1215b = Context.overlayMesh;
                az azVar = this.r;
                azVar.f1214a = new float[]{f2, 0.0f};
                azVar.a(this.m.c);
                a((a) this.r, fVar2);
                az azVar2 = this.r;
                azVar2.f1214a = new float[]{0.0f, f3};
                azVar2.a(fVar2.c);
                a((a) this.r, fVar);
                az azVar3 = this.r;
                azVar3.f1214a = new float[]{f2, 0.0f};
                azVar3.a(fVar.c);
                a((a) this.r, fVar2);
                az azVar4 = this.r;
                azVar4.f1214a = new float[]{0.0f, f3};
                azVar4.a(fVar2.c);
                a((a) this.r, fVar);
                return;
            }
        }
    }

    public void a() {
        f fVar = this.m;
        if (fVar != null) {
            co.polarr.renderer.render.b.a(fVar);
            co.polarr.renderer.render.b.d(this.m.c);
        }
        f fVar2 = this.n;
        if (fVar2 != null) {
            co.polarr.renderer.render.b.a(fVar2);
            co.polarr.renderer.render.b.d(this.n.c);
        }
        f fVar3 = this.p;
        if (fVar3 != null) {
            co.polarr.renderer.render.b.a(fVar3);
            co.polarr.renderer.render.b.d(this.p.c);
        }
    }

    public void a(int i2) {
        if (i2 != this.n.c) {
            i.b(i2, this.n.c, this.x.d, this.x.e);
        }
        a(this.n.c, this.m.c);
    }

    public void a(int i2, int i3) {
        GLES20.glDisable(3042);
        this.t.a(i2);
        this.t.f1213a = this.x.c;
        Matrix.setIdentityM(this.t.getMatrix(), 0);
        a((a) this.t, i3);
    }

    public void a(Context context, BrushItem brushItem) {
        this.h = null;
        this.g = Math.max(10.0f, brushItem.size * c);
        this.e = this.g * brushItem.spacing;
        this.f = (float) a(brushItem.hardness);
        if (!"paint".equals(brushItem.mode)) {
            h hVar = this.j;
            hVar.f1244a = this.g;
            hVar.f1245b = this.f;
            hVar.c = brushItem.flow;
            this.j.d = brushItem.channel;
            this.j.e = brushItem.erase;
            this.j.f = false;
        } else if (brushItem.erase) {
            this.j.e = brushItem.erase;
            h hVar2 = this.j;
            hVar2.f1244a = this.g;
            hVar2.f1245b = this.f;
            hVar2.c = brushItem.flow;
            this.j.d = new float[]{1.0f, 1.0f, 1.0f, 1.0f};
        } else {
            i iVar = this.k;
            iVar.f1246a = this.g;
            iVar.f1247b = brushItem.flow;
            if (context.brushes.get(brushItem.texture) != null) {
                this.k.c = context.brushes.get(brushItem.texture).c;
                return;
            }
            this.k.c = context.brushes.values().iterator().next().c;
        }
    }

    public void a(Context context, BrushItem brushItem, BrushItem brushItem2, boolean z2, boolean z3) {
        i iVar;
        Object obj;
        if (brushItem == null) {
            brushItem = new BrushItem();
        }
        if (brushItem2 == null) {
            brushItem2 = this.f1117b;
        }
        if (z3) {
            brushItem.size = brushItem2.size;
            brushItem.hardness = brushItem2.hardness;
            brushItem.flow = brushItem2.flow;
        }
        brushItem2.points = brushItem.points;
        brushItem2.size = brushItem.size;
        brushItem2.spacing = brushItem.spacing;
        brushItem2.hardness = brushItem.hardness;
        brushItem2.flow = brushItem.flow;
        brushItem2.channel = brushItem.channel;
        brushItem2.erase = brushItem.erase;
        brushItem2.mode = brushItem.mode;
        brushItem2.texture = brushItem.texture;
        brushItem2.randomize = brushItem.randomize;
        brushItem2.interpolate = brushItem.interpolate;
        this.f1117b.mode = brushItem.mode;
        this.f1117b.texture = brushItem.texture;
        this.f1117b.randomize = brushItem.randomize;
        this.f1117b.interpolate = brushItem.interpolate;
        this.f1117b.erase = brushItem2.erase;
        this.h = null;
        this.g = Math.max(10.0f, brushItem2.size * c);
        this.e = this.g * brushItem2.spacing;
        this.f = (float) a(brushItem2.hardness);
        this.d = new float[]{1.0f / ((float) context.paintTexture.d), 1.0f / ((float) context.paintTexture.e)};
        if (!"paint".equals(brushItem2.mode)) {
            h hVar = this.j;
            hVar.f1244a = this.g;
            hVar.f1245b = this.f;
            hVar.c = brushItem2.flow;
            this.j.d = brushItem2.channel;
            this.j.e = brushItem2.erase;
            this.j.f = false;
            if (z2) {
                g.a(context.glRenderView.d(), context).d = this.g;
                g.a(context.glRenderView.d(), context).e = this.f;
                g.a(context.glRenderView.d(), context).f = brushItem2.flow;
            }
        } else if (brushItem2.erase) {
            this.j.e = brushItem2.erase;
            h hVar2 = this.j;
            hVar2.f1244a = this.g;
            hVar2.f1245b = this.f;
            hVar2.c = brushItem2.flow;
            this.j.d = new float[]{1.0f, 1.0f, 1.0f, 1.0f};
        } else {
            i iVar2 = this.k;
            iVar2.f1246a = this.g;
            iVar2.f1247b = brushItem2.flow;
            if (context.brushes.get(brushItem2.texture) != null) {
                iVar = this.k;
                obj = context.brushes.get(brushItem2.texture);
            } else {
                iVar = this.k;
                obj = context.brushes.values().iterator().next();
            }
            iVar.c = ((f) obj).c;
        }
    }

    public void a(Context context, BrushItem brushItem, f fVar) {
        GLES20.glDisable(3042);
        brushItem.interpolate = true;
        brushItem.mode = (CameraStatisticsUtil.PORTRAIT_BLUR.equals(brushItem.texture) || "mosaic".equals(brushItem.texture) || "eraser".equals(brushItem.texture)) ? "effect" : "paint";
        this.y = fVar;
        this.u = context.intermediateTexture;
        this.f1117b = brushItem;
        this.f1117b.points.clear();
        this.f1117b.prevPoint = null;
        this.l.b(this.u.c);
        this.l.a(h.a());
        this.l.b(this.u.d, this.u.e);
        this.l.o();
        if ("effect".equals(this.f1117b.mode)) {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
        e();
        this.l.p();
        if (CameraStatisticsUtil.PORTRAIT_BLUR.equals(this.f1117b.texture)) {
            h();
        } else if ("mosaic".equals(this.f1117b.texture)) {
            g();
        } else {
            b(this.p);
        }
        i.a(this.u, context.paintTexture.d, context.paintTexture.e);
        a(context, this.f1117b);
        this.l.b(this.u.c);
        this.l.a(h.a());
        this.l.b(this.u.d, this.u.e);
        this.l.o();
        if ("effect".equals(this.f1117b.mode)) {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
        e();
        this.l.p();
    }

    public void a(Context context, BrushItem brushItem, boolean z2) {
        if (!brushItem.blend) {
            BrushItem brushItem2 = new BrushItem();
            if (brushItem.pointId != null && brushItem.points != null && !brushItem.points.isEmpty()) {
                f1116a.put(brushItem.pointId, brushItem.points);
            } else if (brushItem.pointId != null) {
                brushItem.points = f1116a.get(brushItem.pointId);
            }
            a(context, brushItem, brushItem2, z2, false);
            if (brushItem2.points != null && !brushItem2.points.isEmpty()) {
                b(brushItem2.points);
            }
        }
    }

    public void a(Context context, boolean z2) {
        Context context2 = context;
        boolean z3 = z2;
        List list = (List) context2.renderStates.get("local_adjustments");
        List arrayList = new ArrayList();
        List list2 = (List) context2.renderStates.get("prevBrushes");
        if (list2 == null) {
            list2 = new ArrayList();
        }
        if (list != null && !list.isEmpty()) {
            boolean z4 = false;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                Adjustment adjustment = (Adjustment) list.get(i4);
                if ("mask".equals(adjustment.brush_mode)) {
                    if (i2 < 4) {
                        adjustment.channel = z[i2];
                        if (adjustment.brush != null) {
                            for (BrushItem brushItem : adjustment.brush) {
                                brushItem.channel = z[i2];
                            }
                        }
                        if (adjustment.brush != null) {
                            arrayList.addAll(adjustment.brush);
                            z4 = true;
                        }
                        i2++;
                    }
                } else if (adjustment.brush != null && !adjustment.brush.isEmpty() && context2.brushTextures != null && i3 < 4) {
                    this.u = context2.brushTextures[i3];
                    this.l.b(this.u.c);
                    this.l.a(h.a());
                    this.l.b(this.u.d, this.u.e);
                    this.l.o();
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    e();
                    for (int i5 = 0; i5 < adjustment.brush.size(); i5++) {
                        a(context2, adjustment.brush.get(i5), z3);
                    }
                    this.l.p();
                    adjustment.paintTextureId = this.u.c;
                    i3++;
                }
            }
            GLES20.glDisable(3042);
            if (arrayList.size() != list2.size() || (z4 && arrayList.isEmpty())) {
                context2.overlayMask = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
                this.u = context2.paintTexture;
                this.l.b(this.u.c);
                this.l.a(h.a());
                this.l.b(this.u.d, this.u.e);
                this.l.o();
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                e();
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    a(context2, (BrushItem) arrayList.get(i6), z3);
                }
                this.l.p();
                context2.renderStates.put("prevBrushes", arrayList);
            }
        }
        arrayList = list2;
        context2.renderStates.put("prevBrushes", arrayList);
    }

    public void a(f fVar) {
        this.x = fVar;
        i.a(this.m, fVar.d, fVar.e);
        i.a(this.n, fVar.d, fVar.e);
        i.a(this.o, fVar.d, fVar.e);
        b(this.n);
        i.b(fVar.c, this.m.c, fVar.d, fVar.e);
    }

    public void a(List<PointF> list) {
        GLES20.glDisable(3042);
        this.l.b(this.u.c);
        this.l.a(h.a());
        this.l.b(this.u.d, this.u.e);
        this.l.o();
        ArrayList arrayList = new ArrayList();
        for (PointF a2 : list) {
            arrayList.addAll(a(this.f1117b, a2, (float) this.u.d, (float) this.u.e));
        }
        b((List<Float>) arrayList);
        this.l.p();
        b(false);
    }

    public void a(float[] fArr) {
        boolean z2 = false;
        boolean z3 = fArr[0] != 0.0f;
        boolean z4 = fArr[1] != 0.0f;
        boolean z5 = fArr[2] != 0.0f;
        if (fArr[3] != 0.0f) {
            z2 = true;
        }
        GLES20.glColorMask(z3, z4, z5, z2);
        GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
    }

    public void b(List<Float> list) {
        boolean z2;
        h hVar;
        if (!"paint".equals(this.f1117b.mode)) {
            hVar = this.j;
            z2 = false;
        } else if (this.f1117b.erase) {
            hVar = this.j;
            z2 = true;
        } else {
            this.k.a(list);
            return;
        }
        hVar.a(list, z2);
    }

    public void c() {
        GLES20.glDisable(3042);
        this.y = this.m;
        a(false);
        f();
        GLES20.glBindTexture(3553, this.n.c);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9728.0f);
        GLES20.glBindTexture(3553, 0);
    }

    public f d() {
        return this.n;
    }

    public void e() {
        a(new float[]{1.0f, 1.0f, 1.0f, 1.0f});
    }
}
