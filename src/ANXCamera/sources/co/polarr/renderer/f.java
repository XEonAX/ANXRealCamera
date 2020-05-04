package co.polarr.renderer;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.GLES31;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.TimingLogger;
import co.polarr.renderer.b.e;
import co.polarr.renderer.b.h;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.j;
import co.polarr.renderer.b.m;
import co.polarr.renderer.b.n;
import co.polarr.renderer.b.p;
import co.polarr.renderer.b.q;
import co.polarr.renderer.b.t;
import co.polarr.renderer.entities.Adjustment;
import co.polarr.renderer.entities.BrushItem;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.DrawingItem;
import co.polarr.renderer.entities.FaceItem;
import co.polarr.renderer.entities.MagicEraserPath;
import co.polarr.renderer.entities.SpotItem;
import co.polarr.renderer.entities.TextItem;
import co.polarr.renderer.filters.Basic;
import co.polarr.renderer.filters.a;
import co.polarr.renderer.filters.a.b;
import co.polarr.renderer.filters.a.c;
import co.polarr.renderer.filters.a.d;
import co.polarr.renderer.filters.ab;
import co.polarr.renderer.filters.ac;
import co.polarr.renderer.filters.ae;
import co.polarr.renderer.filters.ah;
import co.polarr.renderer.filters.ai;
import co.polarr.renderer.filters.ak;
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
import co.polarr.renderer.filters.ay;
import co.polarr.renderer.filters.az;
import co.polarr.renderer.filters.bb;
import co.polarr.renderer.filters.bj;
import co.polarr.renderer.filters.bk;
import co.polarr.renderer.filters.bl;
import co.polarr.renderer.filters.bp;
import co.polarr.renderer.filters.bq;
import co.polarr.renderer.filters.g;
import co.polarr.renderer.filters.k;
import co.polarr.renderer.filters.r;
import co.polarr.renderer.filters.s;
import co.polarr.renderer.filters.v;
import co.polarr.renderer.filters.w;
import co.polarr.renderer.filters.y;
import co.polarr.renderer.filters.z;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class f {
    private static final float DEHAZE_MAX_SIZE = 512.0f;
    private static final int FAST_AUTO_ENHANCEMENT_FAMRES = 1;
    private static final String TAG = "PPE_RENDER";
    private bp A;
    private a B;
    private d C;
    private int D = 0;
    private boolean E;
    /* access modifiers changed from: private */
    public Map<String, Object> F = new HashMap();
    private Handler G;
    private ByteBuffer H;
    /* access modifiers changed from: private */
    public boolean I;
    private ab J;
    private boolean K = false;

    /* renamed from: a  reason: collision with root package name */
    private c f1157a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Context f1158b;
    private int c;
    private int d;
    private List<b> e;
    private co.polarr.renderer.b.b f;
    private Resources g;
    private d h;
    private bl i;
    private bj j;
    private int k;
    private int l;
    /* access modifiers changed from: private */
    public boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = true;
    private co.polarr.renderer.render.f q;
    private co.polarr.renderer.render.f r;
    private co.polarr.renderer.render.f s;
    private m t;
    private int u = 0;
    private boolean v;
    private int[] w;
    private boolean x = false;
    private ai y;
    private ak z;

    private co.polarr.renderer.render.f a(Context context, co.polarr.renderer.filters.f fVar, co.polarr.renderer.render.f fVar2, co.polarr.renderer.render.f fVar3, float f2, Float f3) {
        if (fVar3 == null) {
            fVar3 = fVar2;
        }
        if (f3 == null) {
            f3 = Float.valueOf(f2);
        }
        float floatValue = f3.floatValue();
        float floatValue2 = f3.floatValue();
        fVar.f1240a = new float[]{(1.0f / ((float) fVar3.d)) * f2, 0.0f, (1.0f / ((float) fVar3.d)) * floatValue, 0.0f};
        fVar.f1241b = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) fVar, fVar2.c, context.readableTexture);
        fVar.f1240a = new float[]{0.0f, (1.0f / ((float) fVar3.e)) * f2, 0.0f, (1.0f / ((float) fVar3.e)) * floatValue2};
        fVar.f1241b = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) fVar, context.readableTexture.c, fVar3);
        return fVar3;
    }

    private co.polarr.renderer.render.f a(Context context, r rVar, s sVar, co.polarr.renderer.render.f fVar, co.polarr.renderer.render.f fVar2) {
        if (fVar2 == null) {
            fVar2 = fVar;
        }
        rVar.f1260a = new float[]{(1.0f / ((float) fVar2.d)) * 8.0f, 0.0f};
        rVar.f1261b = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) rVar, fVar.c, context.readableTexture);
        sVar.f1262a = new float[]{0.0f, (1.0f / ((float) fVar2.e)) * 8.0f};
        sVar.f1263b = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) sVar, context.readableTexture.c, fVar2);
        return fVar2;
    }

    private void a(int i2, Rect rect, int i3) {
        Basic a2 = Basic.a(this.g, this.f1158b);
        a2.setNeedClear(false);
        a2.a(i2);
        this.h.b(i3);
        this.h.b(rect.width(), rect.height());
        this.h.o();
        GLES20.glViewport(rect.left, rect.top, rect.width(), rect.height());
        a2.draw();
        this.h.p();
    }

    private void a(android.content.Context context, boolean z2, boolean z3) {
        bj bjVar;
        boolean z4 = false;
        n.a("render::needSkip=%b::fastDraw=%b", Boolean.valueOf(z2), Boolean.valueOf(z3));
        if (this.f1157a == null) {
            Log.e(TAG, "getBitmap: Renderer was not set.");
        }
        if (!z3) {
            this.f.a(this.f1158b, false);
            q.a(this.f1158b, this.g);
        }
        if (!z3) {
            b a2 = (this.f1158b.textures == null || this.f1158b.textures.length <= 0) ? y.a(this.g, this.f1158b) : z.a(this.g, this.f1158b);
            a2.a(this.f1158b.matrix);
            if (this.h == null) {
                this.h = d.a(this.f1158b);
            }
            this.h.a((co.polarr.renderer.filters.a.a) a2);
            this.h.b(this.f1158b.readableTexture.c);
            this.h.b(this.f1158b.readableTexture.d, this.f1158b.readableTexture.e);
            this.h.a(this.f1158b.imageTexture.c);
            this.h.draw();
        }
        System.currentTimeMillis();
        this.f1157a.a(this.f1158b.readableTexture.c);
        this.f1157a.i();
        if (z3) {
            this.f1157a.c(this.f1158b.readableTexture.c, this.f1158b.writableTexture.c);
            if (this.k >= 0) {
                this.f1157a.r();
                Basic a3 = Basic.a(this.g, this.f1158b);
                a3.a(this.k);
                a3.draw();
            }
        }
        if (!z3) {
            List list = (List) this.f1158b.renderStates.get("spots");
            if (list != null && !list.isEmpty()) {
                if (this.f1158b.textures == null || this.f1158b.textures.length <= 0) {
                    bj bjVar2 = this.j;
                    if (bjVar2 == null) {
                        this.j = bj.a(this.g, this.f1158b);
                    } else {
                        bjVar2.a(this.f1158b);
                    }
                    bjVar = this.j;
                } else {
                    bl blVar = this.i;
                    if (blVar == null) {
                        this.i = bl.b(this.g, this.f1158b);
                    } else {
                        blVar.a(this.f1158b);
                    }
                    bjVar = this.i;
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    SpotItem spotItem = (SpotItem) list.get(i2);
                    bjVar.f1226a = spotItem.feather;
                    bjVar.f1227b = spotItem.size;
                    bjVar.c = t.a(spotItem.position);
                    bjVar.d = t.a(spotItem.sourcePosition);
                    bjVar.e = spotItem.angle;
                    bjVar.f = spotItem.opacity;
                    bjVar.g = spotItem.mode;
                    this.f1157a.b(bjVar);
                }
            }
        }
        this.f1157a.j();
        if (!z3 && this.f1158b.faceMasks != null) {
            List list2 = (List) this.f1158b.renderStates.get("faces");
            for (int i3 = 0; i3 < list2.size(); i3++) {
                if (this.f1158b.faceMasks.length > i3) {
                    FaceItem faceItem = (FaceItem) list2.get(i3);
                    co.polarr.renderer.render.c cVar = this.f1158b.faceMasks[i3];
                    if (faceItem.adjustments != null) {
                        ab a4 = ab.a(this.g, this.f1158b);
                        a4.f1173a = cVar;
                        a4.f1174b = faceItem.adjustments;
                        this.f1157a.b(a4);
                    }
                }
            }
        }
        if (!z3) {
            co.polarr.renderer.render.b.a(this.g, this.f1158b, this.f1157a, this.e);
        }
        if (z2) {
            this.f1157a.q();
            if (!z3 || this.f1157a.m() == this.f1158b.writableTexture.c) {
                a((co.polarr.renderer.filters.a.a) Basic.a(this.g, this.f1158b), this.f1157a.m(), this.f1158b.readableTexture);
                return;
            }
            return;
        }
        Object obj = this.f1158b.renderStates.get("blur_opacity");
        if (((obj instanceof Integer) && ((Integer) obj).intValue() != 0) || ((obj instanceof Float) && ((Float) obj).floatValue() != 0.0f)) {
            z4 = true;
        }
        if (z4 && this.f1158b.lensBlurTexture.d != 1) {
            this.f1157a.b(co.polarr.renderer.filters.d.a(this.g, this.f1158b));
        }
        this.f1158b.renderStates.remove(co.polarr.renderer.render.b.PREV_TEXT_KEY);
        co.polarr.renderer.render.b.a(context, this.g, this.f1158b, (ArrayList<TextItem>) (ArrayList) this.f1158b.renderStates.get("text"));
        this.f1157a.q();
        a((co.polarr.renderer.filters.a.a) Basic.a(this.g, this.f1158b), this.f1157a.m(), this.f1158b.readableTexture);
        co.polarr.renderer.render.b.b(this.g, this.f1158b);
        if (this.f1158b.watermarkTexture != null && this.f1158b.watermarkOptions != null) {
            if (this.f1158b.watermarkOptions.enabled || this.f1158b.watermarkOptions.preview) {
                av a5 = av.a(this.g, this.f1158b);
                a5.a(this.f1158b.matrix);
                this.h.a((co.polarr.renderer.filters.a.a) a5);
                this.h.b(this.f1158b.writableTexture.c);
                this.h.b(this.f1158b.readableTexture.d, this.f1158b.readableTexture.e);
                this.h.a(this.f1158b.readableTexture.c);
                this.h.draw();
                co.polarr.renderer.render.b.a(this.f1158b);
                co.polarr.renderer.render.b.a(this.g, this.f1158b);
            }
        }
    }

    private void a(Resources resources) {
        boolean z2;
        Context context = this.f1158b;
        List list = (List) context.renderStates.get("local_adjustments");
        boolean z3 = false;
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            loop0:
            while (true) {
                z2 = false;
                while (true) {
                    if (!it.hasNext()) {
                        break loop0;
                    }
                    Adjustment adjustment = (Adjustment) it.next();
                    if (z2 || adjustment.adjustments.blur != 0.0f) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                int i2 = context.readableTexture.d;
                int i3 = context.readableTexture.e;
                int i4 = i2 >> 1;
                int i5 = i3 >> 1;
                i.a(context.readableTexture, i4, i5);
                i.a(context.writableTexture, i4, i5);
                i.a(context.lensBlurTexture, i4, i5);
                float[] fArr = context.matrix;
                context.matrix = h.a();
                a((android.content.Context) null, true, false);
                co.polarr.renderer.render.b.d(resources, context);
                co.polarr.renderer.render.b.a(resources, context, context.lensBlurTexture);
                i.a(context.readableTexture, i2, i3);
                i.a(context.writableTexture, i2, i3);
                context.matrix = fArr;
            }
            z3 = z2;
        }
        if (!z3) {
            i.a(context.lensBlurTexture, 1, 1);
        }
    }

    private void a(Resources resources, Context context, int i2, boolean z2) {
        co.polarr.renderer.render.f fVar;
        int i3 = context.imageTexture.d;
        int i4 = context.imageTexture.e;
        int max = Math.max(0, (int) (Math.log((double) i2) / Math.log(2.0d)));
        int i5 = 1;
        int max2 = Math.max(i3 >> max, 1);
        int max3 = Math.max(i4 >> max, 1);
        i.a(context.writableTexture, max2, max3);
        i.a(context.readableTexture, max2, max3);
        i.a(context.dehazeTexture, max2, max3);
        i.a(context.denoiseTexture, max2, max3);
        if (!z2) {
            float max4 = 1024.0f / ((float) Math.max(i3, i4));
            int floor = (int) Math.floor((double) (((float) i3) * max4));
            int floor2 = (int) Math.floor((double) (((float) i4) * max4));
            i.a(context.paintTexture, floor, floor2);
            i.a(context.intermediateTexture, floor, floor2);
        }
        GLES20.glDisable(3042);
        if (context.textures == null || context.textures.length <= 0) {
            fVar = context.imageTexture;
        } else {
            a((co.polarr.renderer.filters.a.a) au.a(resources, context), 0, context.readableTexture);
            fVar = context.readableTexture;
        }
        float[] fArr = new float[15];
        float f2 = 1.0f / ((float) 15);
        float f3 = 1.0f / ((float) i3);
        float f4 = 1.0f / ((float) i4);
        for (int i6 = 0; i6 <= 7; i6++) {
            float exp = (float) Math.exp((double) (((float) (-(i6 * i6))) * f2));
            fArr[7 - i6] = exp;
            fArr[i6 + 7] = exp;
        }
        v a2 = v.a(resources, context);
        a2.a("delta", (Object) Float.valueOf(f3));
        a2.f1265a = fArr;
        w a3 = w.a(resources, context);
        a3.a("delta", (Object) Float.valueOf(f4));
        a3.f1267a = fArr;
        a((co.polarr.renderer.filters.a.a) a2, fVar.c, context.writableTexture);
        a((co.polarr.renderer.filters.a.a) a3, context.writableTexture.c, context.denoiseTexture);
        if (z2) {
            i5 = 4;
        }
        a(context, resources, i5);
    }

    private void a(Context context, Resources resources, int i2) {
        co.polarr.renderer.filters.f a2 = co.polarr.renderer.filters.f.a(resources, context);
        r a3 = r.a(resources, context);
        s a4 = s.a(resources, context);
        k a5 = k.a(resources, context);
        co.polarr.renderer.filters.m a6 = co.polarr.renderer.filters.m.a(resources, context);
        co.polarr.renderer.filters.n a7 = co.polarr.renderer.filters.n.a(resources, context);
        at a8 = at.a(resources, context);
        float f2 = (float) context.imageTexture.d;
        float f3 = (float) context.imageTexture.e;
        float min = Math.min(1.0f, (DEHAZE_MAX_SIZE / ((float) i2)) / Math.max(f2, f3));
        int i3 = (int) (f2 * min);
        int i4 = (int) (f3 * min);
        i.a(context.writableTexture, i3, i4);
        i.a(context.readableTexture, i3, i4);
        i.a(this.q, i3, i4);
        i.a(this.r, i3, i4);
        i.a(this.s, i3, i4);
        co.polarr.renderer.render.f fVar = context.denoiseTexture;
        a(context, a3, a4, fVar, this.s);
        a8.f1206a = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) a8, fVar.c, this.r);
        Context context2 = context;
        co.polarr.renderer.filters.f fVar2 = a2;
        this.q = a(context2, fVar2, fVar, this.q, 8.0f, (Float) null);
        co.polarr.renderer.render.f fVar3 = this.r;
        this.r = a(context2, fVar2, fVar3, fVar3, 8.0f, (Float) null);
        co.polarr.renderer.render.f fVar4 = this.s;
        this.s = a(context2, fVar2, fVar4, fVar4, 48.0f, (Float) null);
        a6.f1252a = this.q.c;
        a6.f1253b = this.r.c;
        a6.c = this.s.c;
        a6.d = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) a6, 0, context.writableTexture);
        co.polarr.renderer.render.f fVar5 = context.writableTexture;
        a7.f1254a = this.q.c;
        a7.f1255b = this.s.c;
        a7.c = fVar5.c;
        a7.d = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) a7, 0, this.r);
        co.polarr.renderer.render.f fVar6 = this.r;
        Float valueOf = Float.valueOf(48.0f);
        co.polarr.renderer.render.f a9 = a(context2, fVar2, fVar5, fVar5, 8.0f, valueOf);
        co.polarr.renderer.render.f a10 = a(context2, fVar2, fVar6, fVar6, 8.0f, valueOf);
        a5.f1248a = a9.c;
        a5.f1249b = a10.c;
        a5.c = fVar.c;
        a5.d = Context.overlayMesh;
        a((co.polarr.renderer.filters.a.a) a5, 0, context.dehazeTexture);
    }

    private void a(co.polarr.renderer.filters.a.a aVar, int i2, int i3, int i4, int i5) {
        this.h.b(i3);
        this.h.a(h.a());
        this.h.b(i4, i5);
        this.h.a(aVar);
        if (i2 != 0) {
            this.h.a(i2);
        }
        this.h.draw();
        e.a("render tex out id");
    }

    private void a(co.polarr.renderer.filters.a.a aVar, int i2, co.polarr.renderer.render.f fVar) {
        if (aVar != null) {
            n.a("renderTextrue::inputTextureID=%d::outputTexture=%s", Integer.valueOf(i2), fVar.toString());
            this.h.b(fVar.c);
            this.h.a(h.a());
            this.h.b(fVar.d, fVar.e);
            this.h.a(aVar);
            if (i2 != 0) {
                this.h.a(i2);
            }
            this.h.draw();
            e.a("render tex");
        }
    }

    private void a(Map<String, Object> map, boolean z2, boolean z3) {
        n.a("updateStates::renderStates=%s::needUpdateFilter=%b::fastUpdate=%b", map == null ? "null" : map.toString(), Boolean.valueOf(z2), Boolean.valueOf(z3));
        if (!z3) {
            Object obj = this.f1158b.renderStates.get("prevFaces");
            Object obj2 = this.f1158b.renderStates.get("prevFaceFeatures");
            c.a(this.f1158b.renderStates);
            if (map != null) {
                for (String next : map.keySet()) {
                    this.f1158b.renderStates.put(next, p.a(next, map.get(next)));
                }
            }
            this.f1158b.renderStates.remove("prevFaceFeatures");
            this.f1158b.renderStates.remove("prevFaces");
            this.f1158b.renderStates.remove("prevBrushes");
            this.f1158b.renderStates.remove("zPrevSpots");
            this.f1158b.renderStates.put("prevFaces", obj);
            this.f1158b.renderStates.put("prevFaceFeatures", obj2);
            if (map != null) {
                if (!this.f1158b.isSDK && map.containsKey("distortion_mesh")) {
                    e.a(this.f1158b, (float[]) this.f1158b.renderStates.get("distortion_mesh"));
                }
                if (z2) {
                    for (String next2 : this.f1158b.renderStates.keySet()) {
                        c.a((List<? extends co.polarr.renderer.filters.a.a>) this.f1157a.h(), next2, this.f1158b.renderStates.get(next2));
                    }
                }
            }
            r();
        } else {
            this.f1158b.renderStates.putAll(map);
            if (z2) {
                c cVar = this.f1157a;
                if (cVar != null) {
                    ae aeVar = (ae) c.a((List<? extends co.polarr.renderer.filters.a.a>) cVar.h(), ae.class);
                    co.polarr.renderer.filters.q qVar = (co.polarr.renderer.filters.q) c.a((List<? extends co.polarr.renderer.filters.a.a>) this.f1157a.h(), co.polarr.renderer.filters.q.class);
                    if (!(aeVar == null || qVar == null || (aeVar.b(map) && qVar.b(map)))) {
                        for (String next3 : map.keySet()) {
                            c.a((List<? extends co.polarr.renderer.filters.a.a>) this.f1157a.h(), next3, this.f1158b.renderStates.get(next3));
                        }
                        aeVar.a(map);
                        qVar.a(map);
                    }
                }
            }
        }
        e.a("do update states");
    }

    private void g(boolean z2) {
        a((android.content.Context) null, z2);
        if (this.o) {
            Basic a2 = Basic.a(this.g, this.f1158b);
            a2.a(this.f1158b.readableTexture.c);
            Matrix.setIdentityM(a2.getMatrix(), 0);
            h.a(a2.getMatrix(), false, true);
            a2.draw();
        }
    }

    private void p() {
        Context context = this.f1158b;
        if (!(context == null || context.patterns == null)) {
            for (co.polarr.renderer.render.f a2 : this.f1158b.patterns.values()) {
                e.a(a2);
            }
        }
        Context context2 = this.f1158b;
        if (context2 != null) {
            context2.patterns = null;
        }
    }

    private void q() {
        Context context = this.f1158b;
        if (!(context == null || context.brushes == null)) {
            for (co.polarr.renderer.render.f a2 : this.f1158b.brushes.values()) {
                e.a(a2);
            }
        }
        Context context2 = this.f1158b;
        if (context2 != null) {
            context2.brushes = null;
        }
    }

    private void r() {
        if (this.f1158b.renderStates.containsKey("faces")) {
            co.polarr.renderer.b.f.a((List<FaceItem>) (List) this.f1158b.renderStates.get("faces"), this.g, this.f1158b);
            if (this.f1158b.renderStates.containsKey("face_features")) {
                Context context = this.f1158b;
                e.a(context, (List<Context.FaceFeaturesState>) (List) context.renderStates.get("face_features"));
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    private void s() {
        co.polarr.renderer.filters.a.a aVar;
        int i2;
        co.polarr.renderer.filters.a.a aVar2;
        int i3;
        co.polarr.renderer.filters.a.a aVar3;
        int i4;
        n.a("fastDrawFrame", new Object[0]);
        ak akVar = this.z;
        if (akVar != null) {
            akVar.f1188a = true;
            Matrix.setIdentityM(akVar.getMatrix(), 0);
            if (this.f1158b.isOES) {
                Matrix.scaleM(this.z.getMatrix(), 0, -1.0f, -1.0f, 1.0f);
                if (this.l > 0) {
                    a((co.polarr.renderer.filters.a.a) this.B, this.k, this.f1158b.readableTexture);
                    aVar3 = this.z;
                    i4 = this.f1158b.readableTexture.c;
                    i3 = this.l;
                } else {
                    co.polarr.renderer.render.f fVar = this.f1158b.imageTexture;
                    co.polarr.renderer.render.f fVar2 = this.f1158b.writableTexture;
                    List list = (List) this.f1158b.renderStates.get("faces");
                    if (!(this.J == null || list == null || list.isEmpty())) {
                        co.polarr.renderer.render.f fVar3 = fVar2;
                        co.polarr.renderer.render.f fVar4 = fVar;
                        for (int i5 = 0; i5 < list.size(); i5++) {
                            FaceItem faceItem = (FaceItem) list.get(i5);
                            co.polarr.renderer.render.c cVar = this.f1158b.faceMasks[i5];
                            if (faceItem.adjustments != null) {
                                ab abVar = this.J;
                                abVar.f1173a = cVar;
                                abVar.f1174b = faceItem.adjustments;
                                a((co.polarr.renderer.filters.a.a) this.J, fVar4.c, fVar3);
                                co.polarr.renderer.render.f fVar5 = fVar3;
                                fVar3 = fVar4;
                                fVar4 = fVar5;
                            }
                        }
                        fVar = fVar4;
                    }
                    a((co.polarr.renderer.filters.a.a) this.z, fVar.c, this.f1158b.readableTexture);
                    if (!this.o) {
                        Basic a2 = Basic.a(this.g, this.f1158b);
                        a2.a(this.f1158b.readableTexture.c);
                        Matrix.setIdentityM(a2.getMatrix(), 0);
                        a2.draw();
                        return;
                    }
                    return;
                }
            } else {
                i2 = this.l;
                if (i2 > 0) {
                    aVar2 = this.z;
                    i3 = i2;
                    aVar3 = aVar2;
                    i4 = this.k;
                } else {
                    aVar = this.z;
                    a(aVar, this.k, this.f1158b.readableTexture);
                    if (!this.o) {
                    }
                }
            }
        } else {
            ai aiVar = this.y;
            if (aiVar != null) {
                Matrix.setIdentityM(aiVar.getMatrix(), 0);
                if (this.f1158b.isOES) {
                    Matrix.scaleM(this.y.getMatrix(), 0, -1.0f, -1.0f, 1.0f);
                }
                i2 = this.l;
                if (i2 > 0) {
                    aVar2 = this.y;
                    i3 = i2;
                    aVar3 = aVar2;
                    i4 = this.k;
                } else {
                    aVar = this.y;
                    a(aVar, this.k, this.f1158b.readableTexture);
                }
            }
            if (!this.o) {
            }
        }
        a(aVar3, i4, i3, this.f1158b.readableTexture.d, this.f1158b.readableTexture.e);
        if (!this.o) {
        }
    }

    private void t() {
        u();
        GLES20.glGetError();
        e.a("fast update texture");
        if (this.m) {
            a(this.g, this.f1158b, 2, false);
            i.a(this.f1158b.readableTexture, this.c, this.d);
            i.a(this.f1158b.writableTexture, this.c, this.d);
            e.a("update texture for maps");
        }
        Basic.a(this.f1158b.resources, this.f1158b);
    }

    private void u() {
        if (!this.v && this.u == 1) {
            if (this.C == null) {
                this.C = new d();
                this.C.a();
            }
            int i2 = this.k;
            if (i2 >= 0) {
                this.C.a(i2);
                this.h.b(this.f1158b.imageTexture.c);
                this.h.b(this.c, this.d);
                this.h.o();
                this.C.a((SurfaceTexture) null, (float[]) null);
                this.h.p();
            }
        } else if (this.v || this.k < 0) {
            Matrix.setIdentityM(this.B.getMatrix(), 0);
            a((co.polarr.renderer.filters.a.a) this.B, this.k, this.f1158b.imageTexture);
        } else {
            this.h.b(this.f1158b.imageTexture.c);
            this.f1158b.imageTexture.d = this.c;
            co.polarr.renderer.render.f fVar = this.f1158b.imageTexture;
            int i3 = this.d;
            fVar.e = i3;
            this.h.b(this.c, i3);
            this.h.o();
            Basic a2 = Basic.a(this.g, this.f1158b);
            a2.a(this.k);
            a2.draw();
            this.h.p();
            this.f.a(this.f1158b.imageTexture);
        }
    }

    private byte[] v() {
        i.a(this.f1158b.intermediateTexture, 300, 300);
        if (this.H == null) {
            this.H = ByteBuffer.allocate(360000);
        }
        d a2 = d.a((Context) null);
        a2.b(this.f1158b.intermediateTexture.c);
        a2.b(300, 300);
        a2.o();
        Basic instance = Basic.getInstance(this.g);
        instance.setInputTextureId(this.f1158b.imageTexture.c);
        instance.draw();
        GLES20.glReadPixels(0, 0, 300, 300, 6408, 5121, this.H);
        a2.p();
        byte[] array = this.H.array();
        this.H.rewind();
        return array;
    }

    private void w() {
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
        co.polarr.renderer.filters.f.g_();
        r.q_();
        s.r_();
        k.k_();
        co.polarr.renderer.filters.m.m_();
        co.polarr.renderer.filters.n.n_();
        at.h();
        v.s_();
        w.t_();
        co.polarr.renderer.filters.e.f_();
        d.i();
        co.polarr.renderer.filters.b.c_();
        as.h();
        az.h();
        ay.h();
        bb.h();
    }

    public int a(List<PointF> list) {
        this.f.a(list);
        return this.f1158b.writableTexture.c;
    }

    public Bitmap a(Bitmap bitmap, String str) {
        return a(bitmap, str, 1.0f);
    }

    public Bitmap a(Bitmap bitmap, String str, float f2) {
        e.a("start render bitmap");
        if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return null;
        }
        n.a("fastRenderBitmap::filterId=%s::fastRenderBitmap=%f", str, Float.valueOf(f2));
        GLES20.glBindTexture(3553, this.k);
        GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
        boolean z2 = this.p;
        this.p = false;
        i();
        this.p = z2;
        a(str, f2);
        s();
        GLES20.glFinish();
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(i.b(this.f1158b.readableTexture.c, bitmap.getWidth(), bitmap.getHeight()));
        e.a("end render bitmap");
        return createBitmap;
    }

    public Bitmap a(Bitmap bitmap, Map<String, Object> map) {
        e.a("start render bitmap");
        if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return null;
        }
        n.a("renderBitmap::renderStates=%s", map == null ? "null" : map.toString());
        GLES20.glBindTexture(3553, this.k);
        GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
        boolean z2 = this.p;
        this.p = false;
        i();
        this.p = z2;
        a(map);
        a((android.content.Context) null, false);
        GLES20.glFinish();
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(i.b(this.f1158b.readableTexture.c, bitmap.getWidth(), bitmap.getHeight()));
        e.a("end render bitmap");
        return createBitmap;
    }

    public void a() {
        n.a("initAllFilters", new Object[0]);
        ak akVar = this.z;
        if (akVar != null) {
            akVar.h();
            if (!this.z.a(FilterPackageUtil.F_DEFAULT)) {
                this.z.a(FilterPackageUtil.a(this.g.getAssets(), FilterPackageUtil.F_DEFAULT));
                return;
            }
            return;
        }
        ai aiVar = this.y;
        if (aiVar != null) {
            aiVar.f();
            for (String str : FilterPackageUtil.f1095a) {
                if (!this.y.a(str)) {
                    this.y.a(FilterPackageUtil.a(this.g.getAssets(), str));
                }
            }
            this.y.a(FilterPackageUtil.F_DEFAULT);
        }
    }

    public void a(float f2) {
        n.a("setFilterIntensity::intensity=%f", Float.valueOf(f2));
        ak akVar = this.z;
        if (akVar != null) {
            akVar.a(f2);
        }
    }

    public void a(int i2) {
        n.a("setInputTexture::inputTexture=%d", Integer.valueOf(i2));
        e.a("start set input");
        this.k = i2;
        this.f1158b.textures = null;
        this.x = false;
        e.a("end set input");
    }

    public void a(int i2, int i3) {
        n.a("updateSize::width=%d::height=%d", Integer.valueOf(i2), Integer.valueOf(i3));
        e.a("start update size");
        this.c = i2;
        this.d = i3;
        i.a(this.f1158b.imageTexture, this.c, this.d);
        if (!this.v) {
            c cVar = this.f1157a;
            if (cVar != null) {
                cVar.b(this.c, this.d);
            }
            for (co.polarr.renderer.filters.a.a next : this.e) {
                next.k();
                next.b(this.c, this.d);
            }
        }
        co.polarr.renderer.render.b.c(this.f1158b);
        co.polarr.renderer.render.b.b(this.f1158b);
        co.polarr.renderer.render.b.a(this.f1158b, (float) this.c, (float) this.d, this.p, true, (float[]) null);
        e.a("end update size");
    }

    public void a(int i2, int i3, int i4) {
        n.a("clearTexture::textureId=%d::width=%d::height=%d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        GLES20.glDisable(3089);
        this.h.b(i2);
        this.h.a(h.a());
        this.h.b(i3, i4);
        this.h.o();
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
        this.h.p();
    }

    public void a(android.content.Context context, boolean z2) {
        n.a("render::fastDraw=%b", Boolean.valueOf(z2));
        if (this.f1157a == null) {
            Log.e(TAG, "getBitmap: Renderer was not set.");
        }
        if (!z2) {
            a(this.g);
        }
        e.a("render blur");
        a(context, z2, z2);
        e.a("do render");
        if (!z2) {
            int i2 = this.l;
            if (i2 > 0) {
                this.h.b(i2);
                this.h.b(this.c, this.d);
                this.h.o();
                Basic a2 = Basic.a(this.g, this.f1158b);
                a2.a(this.f1158b.readableTexture.c);
                a2.draw();
                this.h.p();
            }
        }
    }

    public void a(Resources resources, int i2, int i3, Map<String, Object> map) {
        Resources resources2 = resources;
        int i4 = i2;
        int i5 = i3;
        this.c = i4;
        this.d = i5;
        this.g = resources2;
        TimingLogger timingLogger = new TimingLogger(n.TAG, "nativeInit_width/height=" + i4 + "/" + i5);
        this.f1158b = new Context(this.v);
        this.f1158b.shaderUtil = new p();
        this.f1158b.shaderUtil.b(resources2);
        timingLogger.addSplit("shaderUtil.init");
        if (this.u == 1) {
            this.f1158b.isOES = true;
        }
        this.f1158b.resources = resources2;
        if (!this.v) {
            a(map, false, false);
            co.polarr.renderer.render.b.a(resources2, this.f1158b, new Point(i4, i5));
            this.f1157a = new c(this.f1158b, resources2);
            for (co.polarr.renderer.filters.a.a a2 : p.b(resources2, this.f1158b)) {
                this.f1157a.a(a2);
            }
            this.f1157a.k();
            this.f1157a.b(this.c, this.d);
        }
        if (this.v) {
            int[] iArr = new int[7];
            int[] iArr2 = iArr;
            i.a(iArr.length, iArr, 0, 6408, i2, i3);
            this.f1158b.imageTexture = i.c(iArr2[0], 6408, i4, i5);
            this.f1158b.readableTexture = i.c(iArr2[1], 6408, i4, i5);
            this.f1158b.writableTexture = i.c(iArr2[2], 6408, i4, i5);
            this.f1158b.dehazeTexture = i.c(iArr2[2], 6408, i4, i5);
            this.f1158b.denoiseTexture = i.c(iArr2[3], 6408, i4, i5);
            this.f1158b.grainTexture = i.c(iArr2[4], 6408, 1024, 1024);
            this.f1158b.overlayTexture = i.c(iArr2[5], 6408, 1000, 1000);
            timingLogger.addSplit("outScreenContext.denoiseTexture");
            this.B = new a(resources2, this.f1158b);
            this.B.k();
            timingLogger.addSplit("BasicOes.create");
            this.z = new ak(resources2, this.f1158b);
            timingLogger.addSplit("lookup2DFilter.create");
            this.z.k();
            timingLogger.addSplit("lookup2DFilter.create()");
            if (d()) {
                this.A = new bp(resources2, this.f1158b);
                this.A.k();
            }
        } else {
            this.e = p.a(resources2, this.f1158b);
            for (co.polarr.renderer.filters.a.a next : this.e) {
                next.k();
                next.b(this.c, this.d);
            }
            this.f = new co.polarr.renderer.b.b(this.f1158b, resources2);
            co.polarr.renderer.render.b.c(this.f1158b);
            co.polarr.renderer.render.b.b(this.f1158b);
            co.polarr.renderer.render.b.a(this.f1158b, (float) this.c, (float) this.d, this.p, true, (float[]) null);
        }
        this.h = d.a(this.f1158b);
        timingLogger.addSplit("RenderTextureFilter.getInstance");
        if (!this.v) {
            float min = Math.min(1.0f, DEHAZE_MAX_SIZE / ((float) Math.max(i2, i3)));
            int i6 = (int) (((float) i4) * min);
            int i7 = (int) (((float) i5) * min);
            int[] iArr3 = new int[3];
            i.a(iArr3.length, iArr3, 0, 6408, i6, i7);
            this.q = i.c(iArr3[0], 6408, i6, i7);
            this.r = i.c(iArr3[1], 6408, i6, i7);
            this.s = i.c(iArr3[2], 6408, i6, i7);
        }
        boolean contains = GLES30.glGetString(7939).contains("GL_OES_standard_derivatives");
        timingLogger.addSplit("isSupportDerivative=" + contains);
        timingLogger.dumpToLog();
    }

    public void a(Resources resources, int i2, int i3, boolean z2) {
        a(resources, i2, i3, z2, z2 ? 1 : 0);
    }

    public void a(Resources resources, int i2, int i3, boolean z2, int i4) {
        long currentTimeMillis = System.currentTimeMillis();
        n.a("initRender::width=%d::height=%d::fastMode=%b::textureType=%d", Integer.valueOf(i2), Integer.valueOf(i3), Boolean.valueOf(z2), Integer.valueOf(i4));
        e.a("start init");
        if (resources != null && i2 > 0 && i3 > 0) {
            this.v = z2;
            this.m = !z2;
            this.u = i4;
            if (z2) {
                a(resources, 1, 1, (Map<String, Object>) null);
            } else {
                a(resources, 800, 800, (Map<String, Object>) null);
            }
            Context context = this.f1158b;
            context.isSDK = true;
            this.p = false;
            if (!z2) {
                i.a(context.lensBlurTexture, 1, 1);
            }
            a(i2, i3);
            if (z2) {
                a();
            }
            Context context2 = this.f1158b;
            Context.backgroundColor = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
            e.a("end init");
            n.a("End of initRender, time = %d ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
    }

    public void a(BrushItem brushItem) {
        co.polarr.renderer.b.b bVar = this.f;
        Context context = this.f1158b;
        bVar.a(context, brushItem, context.writableTexture);
    }

    public void a(BrushItem brushItem, PointF pointF) {
        n.a("addBrushPathPoint::brushItem=%s::point", brushItem, pointF);
        if (brushItem != null) {
            if (brushItem.points == null) {
                brushItem.points = new ArrayList();
            }
            synchronized (brushItem.points) {
                co.polarr.renderer.b.b.a(brushItem, pointF, (float) this.f1158b.paintTexture.d, (float) this.f1158b.paintTexture.e);
            }
        }
    }

    public void a(MagicEraserPath magicEraserPath, int i2, int i3, int i4) {
        n.a("magicEraserPathOverLay::path=%s::outputTexture=%d::width=%d::height=%d", magicEraserPath, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        if (this.t == null) {
            this.t = new m(this.f1158b.resources, this.f1158b.shaderUtil);
            this.t.a(this.f1158b.imageTexture.c, i3, i4, 0);
        }
        this.t.a(this.f1158b.intermediateTexture, i2, magicEraserPath, i3, i4);
    }

    public void a(String str) {
        n.a("updateStates::stateString=%s", str);
        e.a("start update states json");
        int[] iArr = new int[4];
        GLES20.glGetIntegerv(2978, iArr, 0);
        a(j.a(str));
        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
        e.a("end update states json");
    }

    public void a(String str, float f2) {
        n.a("fastUpdateFilter::filterID=%s::filterIntensity=%f", str, Float.valueOf(f2));
        ak akVar = this.z;
        if (akVar != null) {
            if (!akVar.a(str)) {
                this.z.a(FilterPackageUtil.a(this.g.getAssets(), str));
            }
            this.z.a(f2);
            return;
        }
        ai aiVar = this.y;
        if (aiVar != null && !aiVar.a(str)) {
            this.y.a(FilterPackageUtil.a(this.g.getAssets(), str));
        }
    }

    public void a(List<FaceItem> list, float f2) {
        n.a("updateFaces::faceItems=%s::faceAdjustIntensity=%f", list, Float.valueOf(f2));
        if (!list.isEmpty()) {
            co.polarr.renderer.b.f.a((float) this.c, (float) this.d, list, this.g, this.f1158b);
        }
        this.f1158b.renderStates.put("faces", list);
        if (this.w == null) {
            this.w = co.polarr.renderer.render.e.a(this.g, this.f1158b.imageTexture, 300, 300);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            co.polarr.renderer.b.a.a(300, 300, this.w, list.get(i2), (Context.FaceFeaturesState) null, f2, false);
        }
    }

    public void a(List<DrawingItem> list, int i2) {
        a(list, i2, false, 0.0f, 0.0f, 0.0f);
    }

    public void a(List<DrawingItem> list, int i2, boolean z2, float f2, float f3, float f4) {
        boolean z3;
        List<DrawingItem> list2 = list;
        int i3 = i2;
        float f5 = f2;
        float f6 = f3;
        float f7 = f4;
        if (list2 != null && !list.isEmpty() && i3 > 0) {
            int[] iArr = new int[2];
            GLES31.glGetTexLevelParameteriv(3553, 0, 4096, iArr, 0);
            GLES31.glGetTexLevelParameteriv(3553, 0, 4097, iArr, 1);
            n.a("drawFiltersFrame::drawingItems=%s::outputTexture=%d::width=%d::height=%d", list.toString(), Integer.valueOf(i2), Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
            e.a("start draw filter frame");
            boolean glIsEnabled = GLES20.glIsEnabled(3089);
            if (glIsEnabled) {
                GLES20.glDisable(3089);
            }
            Rect rect = list2.get(0).rect;
            int i4 = this.c;
            int i5 = this.d;
            a(rect.width(), rect.height());
            int i6 = this.l;
            this.l = -1;
            if (!this.f1158b.isOES || this.z == null) {
                z3 = false;
            } else {
                Matrix.setIdentityM(this.B.getMatrix(), 0);
                a((co.polarr.renderer.filters.a.a) this.B, this.k, this.f1158b.writableTexture);
                z3 = true;
            }
            if (z3) {
                ak akVar = this.z;
                if (akVar != null) {
                    Matrix.setIdentityM(akVar.getMatrix(), 0);
                    Matrix.scaleM(this.z.getMatrix(), 0, -1.0f, -1.0f, 1.0f);
                    this.z.a(this.f1158b.writableTexture.c);
                    this.h.b(i3);
                    this.h.b(rect.width(), rect.height());
                    this.h.o();
                    this.z.f1188a = false;
                    for (DrawingItem next : list) {
                        b(next.filterId);
                        GLES20.glViewport(next.rect.left, next.rect.top, next.rect.width(), next.rect.height());
                        this.z.a(z2, ((float) (next.rect.width() <= next.rect.height() ? next.rect.width() : next.rect.height())) * f5, f6 * ((float) next.rect.width()), f7 * ((float) next.rect.height()), (float) next.rect.width(), (float) next.rect.height());
                    }
                    this.h.p();
                }
            } else {
                for (DrawingItem next2 : list) {
                    b(next2.filterId);
                    ak akVar2 = this.z;
                    akVar2.o = z2;
                    akVar2.p = f5;
                    akVar2.q = f6;
                    akVar2.r = f7;
                    s();
                    this.z.o = false;
                    a(this.f1158b.readableTexture.c, next2.rect, i3);
                }
            }
            this.l = i6;
            a(i4, i5);
            GLES20.glGetError();
            if (glIsEnabled) {
                GLES20.glEnable(3089);
            }
            e.a("end draw filter frame");
        }
    }

    public void a(Map<String, Object> map) {
        String str;
        if (map != null) {
            n.a("updateStates::renderStates=%s", map.toString());
            e.a("start update states");
            int[] iArr = new int[4];
            GLES20.glGetIntegerv(2978, iArr, 0);
            if (this.v) {
                b(map);
                str = "end fast update states";
            } else {
                a(map, true, false);
                GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
                str = "end update states";
            }
            e.a(str);
        }
    }

    public void a(Map<String, Object> map, int i2, float f2, boolean z2) {
        Map<String, Object> map2 = map;
        int i3 = i2;
        e.a("start auto enhance face");
        if (map2 != null) {
            n.a("autoEnhanceFace::faceStates=%s::faceIndex=%d::percent=%f::needReduceGlobal=%b", map2, Integer.valueOf(i2), Float.valueOf(f2), Boolean.valueOf(z2));
            int[] iArr = new int[4];
            GLES20.glGetIntegerv(2978, iArr, 0);
            List list = (List) map2.get("faces");
            List list2 = (List) map2.get("face_features");
            if (list != null && list2 != null && !list.isEmpty() && !list2.isEmpty()) {
                if (this.w == null) {
                    this.w = co.polarr.renderer.render.e.a(this.g, this.f1158b.imageTexture, 300, 300);
                }
                if (i3 == -1) {
                    int min = Math.min(list.size(), list2.size());
                    for (int i4 = 0; i4 < min; i4++) {
                        co.polarr.renderer.b.a.a(300, 300, this.w, (FaceItem) list.get(i4), (Context.FaceFeaturesState) list2.get(i4), f2, z2);
                    }
                } else if (list.size() > i3 && list2.size() > i3) {
                    co.polarr.renderer.b.a.a(300, 300, this.w, (FaceItem) list.get(i3), (Context.FaceFeaturesState) list2.get(i3), f2, z2);
                }
            }
            GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
            e.a("end auto enhance face");
        }
    }

    public void a(boolean z2) {
        this.o = z2;
    }

    public boolean a(int[] iArr) {
        boolean z2 = false;
        if (this.f1158b.textures != null && this.f1158b.textures.length == 4) {
            int[] iArr2 = this.f1158b.textures;
            int length = iArr2.length;
            int i2 = 0;
            boolean z3 = true;
            int i3 = 0;
            while (i3 < length) {
                if (iArr2[i3] != iArr[i2]) {
                    z3 = false;
                }
                i3++;
                i2++;
            }
            z2 = z3;
        }
        if (!z2) {
            this.f1158b.textures = iArr;
        }
        this.k = -1;
        return z2;
    }

    public Map<String, Object> b(float f2) {
        n.a("autoEnhanceGlobal::percent=%f", Float.valueOf(f2));
        e.a("start auto enhance global");
        int[] iArr = new int[4];
        GLES20.glGetIntegerv(2978, iArr, 0);
        if (this.w == null) {
            this.w = co.polarr.renderer.render.e.a(this.g, this.f1158b.imageTexture, 300, 300);
        }
        Map<String, Float> a2 = co.polarr.renderer.b.a.a(300, 300, this.w, this.f1158b.renderStates);
        HashMap hashMap = new HashMap();
        hashMap.putAll(a2);
        if (!this.m) {
            hashMap.remove("highlights");
            hashMap.remove("shadows");
            hashMap.remove("clarity");
            hashMap.remove("dehaze");
        }
        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
        Map<String, Object> GetRefStates = FilterPackageUtil.GetRefStates(hashMap, f2);
        e.a("end auto enhance global");
        return GetRefStates;
    }

    public void b() {
        n.a("createInputTexture", new Object[0]);
        e.a("start create input");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.k = iArr[0];
        co.polarr.renderer.render.b.b(this.k);
        GLES20.glBindTexture(3553, this.k);
        i.a();
        this.x = true;
        e.a("end create input");
    }

    public void b(int i2) {
        e.a("start set output");
        n.a("setOutputTexture::outTexture=%d", Integer.valueOf(i2));
        this.l = i2;
        e.a("end set output");
    }

    public void b(int i2, int i3) {
        int i4 = i2 * i2;
        Context.LutContext.imageTexture.d = i4;
        Context.LutContext.imageTexture.e = i2;
        Context.LutContext.renderStates = this.f1158b.renderStates;
        this.f1157a.a(Context.LutContext);
        this.f1157a.b(i4, i2);
        this.f1157a.a(i3);
        this.f1157a.i();
        this.f1157a.j();
        this.f1157a.q();
        a((co.polarr.renderer.filters.a.a) Basic.a(this.g, this.f1158b), this.f1157a.m(), i3, i4, i2);
        this.f1157a.a(this.f1158b);
        this.f1157a.b(this.c, this.d);
    }

    public void b(BrushItem brushItem) {
        n.a("updateBrushPoints::brushItem=%s", brushItem);
        if (brushItem != null) {
            if (brushItem.points == null) {
                brushItem.points = new ArrayList();
            }
            synchronized (brushItem.points) {
                co.polarr.renderer.b.b.a(brushItem.touchPoints, brushItem, (float) this.f1158b.paintTexture.d, (float) this.f1158b.paintTexture.e);
            }
        }
    }

    public void b(String str) {
        n.a("fastUpdateFilter::filterID=%s", str);
        ak akVar = this.z;
        if (akVar == null) {
            ai aiVar = this.y;
            if (aiVar != null && !aiVar.a(str)) {
                this.y.a(FilterPackageUtil.a(this.g.getAssets(), str));
            }
        } else if (!akVar.a(str)) {
            this.z.a(FilterPackageUtil.a(this.g.getAssets(), str));
        }
    }

    public void b(Map<String, Object> map) {
        a(map, true, true);
    }

    public void b(boolean z2) {
        this.p = z2;
    }

    public Map<String, Object> c(float f2) {
        n.a("autoEnhanceGlobalForFace::percent=%f", Float.valueOf(f2));
        e.a("start auto enhance global face");
        Map<String, Object> GetRefStates = FilterPackageUtil.GetRefStates((Map) co.polarr.renderer.b.d.a(co.polarr.renderer.b.a.f1112a), f2);
        e.a("end auto enhance global face");
        return GetRefStates;
    }

    public void c() {
        if (this.x) {
            int i2 = this.k;
            if (i2 >= 0) {
                i.a(i2);
                co.polarr.renderer.render.b.d(this.k);
            }
        }
        this.k = -1;
    }

    public void c(int i2) {
        this.f.a(i2);
    }

    public void c(int i2, int i3) {
        this.f.a(i2, i3);
    }

    public void c(boolean z2) {
        n.a("enableRealTimeAutoEnhancement::isEnable=%b", Boolean.valueOf(z2));
        this.m = !z2;
        this.n = z2;
        if (this.n && !this.v) {
            if (this.B == null) {
                this.B = new a(this.g, this.f1158b);
                this.B.k();
            }
            if (this.z == null) {
                this.z = new ak(this.g, this.f1158b);
                this.z.k();
            }
            a();
        }
        if (this.n && this.G == null) {
            HandlerThread handlerThread = new HandlerThread("PO_AE_THEREAD");
            handlerThread.start();
            this.G = new Handler(handlerThread.getLooper());
        }
        if (!this.m) {
            i.a(this.f1158b.dehazeTexture, 1, 1);
        }
    }

    public void d(boolean z2) {
        n.a("setUseVignette::useVegnette=%b", Boolean.valueOf(z2));
        this.K = z2;
    }

    public boolean d() {
        n.a("isUseVignette", new Object[0]);
        return this.K;
    }

    public int e() {
        n.a("getTextureId", new Object[0]);
        return this.k;
    }

    public void e(boolean z2) {
        ak akVar = this.z;
        if (akVar == null) {
            ai aiVar = this.y;
            if (aiVar == null) {
                return;
            }
            if (z2) {
                co.polarr.renderer.render.f h2 = aiVar.h();
                b(h2.e, h2.c);
                this.y.a("AUTO_ENHANCE_FILTER");
                return;
            }
            aiVar.a(FilterPackageUtil.F_DEFAULT);
        } else if (z2) {
            co.polarr.renderer.render.f i2 = akVar.i();
            b(i2.e, i2.c);
            this.z.a("AUTO_ENHANCE_FILTER");
        } else {
            akVar.a(FilterPackageUtil.F_DEFAULT);
        }
    }

    public int f() {
        n.a("getOutputId", new Object[0]);
        int i2 = this.l;
        return i2 > 0 ? i2 : this.f1158b.readableTexture.c;
    }

    public void f(boolean z2) {
        n.a("autoEnhanceGlobal::isEnable=%b", Boolean.valueOf(z2));
        this.E = z2;
        if (this.E) {
            this.D = 2;
        } else {
            e(false);
        }
    }

    public void g() {
        this.z.f1189b = true;
        h();
        this.z.f1189b = false;
    }

    public void h() {
        n.a("drawFrame", new Object[0]);
        e.a("start draw frame");
        boolean glIsEnabled = GLES20.glIsEnabled(3089);
        if (glIsEnabled) {
            GLES20.glDisable(3089);
        }
        if (this.v || this.n) {
            if (this.E) {
                if (this.D >= 1) {
                    final byte[] v2 = v();
                    AnonymousClass1 r0 = new Runnable() {
                        public void run() {
                            boolean unused = f.this.I = true;
                            int[] iArr = new int[v2.length];
                            for (int i = 0; i < iArr.length; i++) {
                                iArr[i] = v2[i] & 255;
                            }
                            Map<String, Float> a2 = co.polarr.renderer.b.a.a(300, 300, iArr, f.this.f1158b.renderStates);
                            HashMap hashMap = new HashMap();
                            hashMap.putAll(a2);
                            if (!f.this.m) {
                                hashMap.remove("highlights");
                                hashMap.remove("shadows");
                                hashMap.remove("clarity");
                                hashMap.remove("dehaze");
                            }
                            Map<String, Object> GetRefStates = FilterPackageUtil.GetRefStates(hashMap, 0.5f);
                            synchronized (f.this.F) {
                                f.this.F.clear();
                                f.this.F.putAll(GetRefStates);
                            }
                            boolean unused2 = f.this.I = false;
                        }
                    };
                    if (this.D > 1) {
                        r0.run();
                    } else if (!this.I) {
                        this.G.post(r0);
                    }
                }
                synchronized (this.F) {
                    if (!this.F.isEmpty()) {
                        a(this.F);
                        e(true);
                        this.F.clear();
                    }
                }
                this.D--;
                if (this.D <= 0) {
                    this.D = 1;
                }
            }
            s();
        } else if (this.u == 1) {
            g(false);
        } else {
            GLES20.glGetError();
            int[] iArr = new int[4];
            GLES20.glGetIntegerv(2978, iArr, 0);
            a((android.content.Context) null, false);
            if (this.o) {
                Basic a2 = Basic.a(this.g, this.f1158b);
                a2.a(this.f1158b.readableTexture.c);
                Matrix.setIdentityM(a2.getMatrix(), 0);
                a2.draw();
            }
            GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
            if (glIsEnabled) {
                GLES20.glEnable(3089);
            }
            e.a("end draw frame");
        }
    }

    public void i() {
        n.a("updateInputTexture", new Object[0]);
        e.a("start update input");
        boolean glIsEnabled = GLES20.glIsEnabled(3089);
        if (glIsEnabled) {
            GLES20.glDisable(3089);
        }
        this.w = null;
        if (this.v || this.n) {
            t();
            return;
        }
        int[] iArr = new int[4];
        GLES20.glGetIntegerv(2978, iArr, 0);
        u();
        GLES20.glGetError();
        e.a("updated input texture");
        this.f1158b.renderStates.remove("prevFaces");
        this.f1158b.renderStates.remove("prevFaceFeatures");
        if (this.m) {
            a(this.g, this.f1158b, 2, false);
            co.polarr.renderer.render.b.a(this.f1158b, (float) this.c, (float) this.d, this.p, true, (float[]) null);
            e.a("input render maps");
            r();
            e.a("input update others");
        }
        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
        if (glIsEnabled) {
            GLES20.glEnable(3089);
        }
        e.a("end update input");
    }

    public void j() {
        this.f.c();
    }

    public int k() {
        return this.f.d().c;
    }

    public void l() {
        n.a("releaseGLRes", new Object[0]);
        e.a("start release gl");
        c cVar = this.f1157a;
        if (cVar != null) {
            ae aeVar = (ae) c.a((List<? extends co.polarr.renderer.filters.a.a>) cVar.h(), ae.class);
            co.polarr.renderer.filters.q qVar = (co.polarr.renderer.filters.q) c.a((List<? extends co.polarr.renderer.filters.a.a>) this.f1157a.h(), co.polarr.renderer.filters.q.class);
            if (aeVar != null) {
                aeVar.y_();
            }
            e.a("releaseGLRes filter1");
            if (qVar != null) {
                qVar.p_();
            }
            e.a("releaseGLRes filter2");
            this.f1157a.t();
            e.a("releaseGLRes filter3");
        }
        d.a(this.f1158b).j();
        if (this.f1158b.faceMasks != null) {
            for (co.polarr.renderer.render.c a2 : this.f1158b.faceMasks) {
                e.a((co.polarr.renderer.render.f) a2);
            }
        }
        if (this.f1158b.textLayers != null) {
            for (co.polarr.renderer.render.f a3 : this.f1158b.textLayers) {
                e.a(a3);
            }
        }
        if (this.f1158b.textures != null) {
            for (int a4 : this.f1158b.textures) {
                i.a(a4);
            }
        }
        if (this.f1158b.brushTextures != null) {
            for (co.polarr.renderer.render.f a5 : this.f1158b.brushTextures) {
                e.a(a5);
            }
        }
        e.a(this.q);
        e.a(this.r);
        e.a(this.s);
        e.a(this.f1158b.imageTexture);
        e.a(this.f1158b.dehazeTexture);
        e.a(this.f1158b.denoiseTexture);
        e.a(this.f1158b.cacheTexture);
        if (!this.v || this.l <= 0) {
            e.a(this.f1158b.readableTexture);
        }
        e.a(this.f1158b.writableTexture);
        e.a(this.f1158b.paintTexture);
        e.a(this.f1158b.retouchTexture);
        e.a(this.f1158b.lensBlurTexture);
        e.a(this.f1158b.intermediateTexture);
        e.a(this.f1158b.grainTexture);
        e.a(this.f1158b.overlayTexture);
        p();
        e.a("releaseGLRes pattern");
        q();
        e.a("releaseGLRes brushes");
        c();
        m mVar = this.t;
        if (mVar != null) {
            mVar.a();
        }
        e.a("releaseGLRes patch");
        co.polarr.renderer.b.b bVar = this.f;
        if (bVar != null) {
            bVar.a();
        }
        e.a("releaseGLRes brush");
        co.polarr.renderer.render.b.l();
        e.a("releaseGLRes render");
        GLES20.glFlush();
        this.f1158b.shaderUtil.a();
        e.a("end release gl");
    }

    public void m() {
        n.a("releaseNonGLRes", new Object[0]);
        e.a("start release non-gl");
        this.w = null;
        w();
        m mVar = this.t;
        if (mVar != null) {
            mVar.b();
        }
        e.a("end release non-gl");
    }

    public void n() {
        n.a("release", new Object[0]);
        e.a("start release");
        l();
        m();
        e.a("end release");
    }

    public ak o() {
        return this.z;
    }
}
