package co.polarr.renderer.b;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.Matrix;
import android.util.Log;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.MagicEraserHistoryItem;
import co.polarr.renderer.entities.MagicEraserPath;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.filters.Basic;
import co.polarr.renderer.filters.a.d;
import co.polarr.renderer.filters.af;
import co.polarr.renderer.filters.ag;
import co.polarr.renderer.filters.aq;
import co.polarr.renderer.filters.ax;
import co.polarr.renderer.filters.bc;
import co.polarr.renderer.filters.bd;
import co.polarr.renderer.filters.bn;
import co.polarr.renderer.filters.h;
import co.polarr.renderer.filters.l;
import co.polarr.renderer.render.f;
import com.arcsoft.arcsoftjni.ArcSoftOffscreen;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.ArrayList;
import java.util.List;

public class m {
    private static final int FIELD_TYPE = 5131;
    private static final int PATCH_RADIUS = 2;

    /* renamed from: a  reason: collision with root package name */
    private Resources f1137a;

    /* renamed from: b  reason: collision with root package name */
    private Context f1138b;
    private int c = 0;
    private f d;
    private f[] e;
    private float[][] f;
    private int g;
    private MagicEraserHistoryItem h;
    private boolean i;
    private int j;
    private f k;
    private f l;
    private f m;
    private f n;
    private boolean o;
    private int p;
    private float[] q;
    private ax r;

    private class a {

        /* renamed from: a  reason: collision with root package name */
        f f1139a;

        /* renamed from: b  reason: collision with root package name */
        f f1140b;
        b c;
        List<c> d;
        int e;
        RectF f;
        f g;
        f h;

        private a() {
            this.d = new ArrayList();
        }
    }

    private class b {

        /* renamed from: a  reason: collision with root package name */
        c f1141a;

        /* renamed from: b  reason: collision with root package name */
        f f1142b;
        f c;

        b(c cVar, f fVar, f fVar2) {
            this.f1141a = cVar;
            this.f1142b = fVar;
            this.c = fVar2;
        }
    }

    private static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        int f1143a;

        /* renamed from: b  reason: collision with root package name */
        int f1144b;
        float[] g;

        private c() {
        }

        static c a(f fVar) {
            c cVar = new c();
            cVar.c = fVar.c;
            cVar.d = fVar.d;
            cVar.e = fVar.e;
            cVar.f = fVar.f;
            return cVar;
        }
    }

    public m(Resources resources, p pVar) {
        int i2 = this.c;
        this.e = new f[i2];
        this.f = new float[i2][];
        this.f1137a = resources;
        this.f1138b = new Context();
        this.f1138b.mesh = Mesh.plane(new Mesh.Options(true, false, false, 1));
        this.f1138b.shaderUtil = pVar;
        this.g = 0;
        int[] iArr = new int[3];
        i.a(3, iArr, 0, 6408, 1, 1);
        this.d = i.c(iArr[0], 6408, 1, 1);
        this.l = i.c(iArr[1], 6408, 1, 1);
        this.m = i.c(iArr[2], 6408, 1, 1);
        this.k = b(1, 1);
        this.n = b(1, 1);
    }

    private int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    private b a(a aVar, b bVar, f fVar, c cVar) {
        f fVar2 = bVar.c;
        f fVar3 = aVar.h;
        i.a(fVar3, 34842, FIELD_TYPE, cVar.f1143a, cVar.f1144b);
        ag a2 = ag.a(this.f1137a, this.f1138b);
        a2.g = cVar.g;
        a2.f1182b = cVar.c;
        a2.f1181a = fVar.c;
        a2.c = fVar2.c;
        a2.d = new float[]{(float) cVar.d, (float) cVar.e};
        a2.e = new float[]{(float) fVar.d, (float) fVar.e};
        a2.f = new float[]{(float) aVar.f1139a.d, (float) aVar.f1139a.e};
        a2.a(cVar.g);
        a((co.polarr.renderer.filters.a.a) a2, fVar3);
        a(fVar2, fVar3);
        return new b(cVar, fVar, fVar2);
    }

    private b a(a aVar, f fVar, f fVar2, c cVar) {
        i.a(fVar, 34842, FIELD_TYPE, cVar.f1143a, cVar.f1144b);
        af a2 = af.a(this.f1137a, this.f1138b);
        a2.e = cVar.g;
        a2.f1179a = cVar.c;
        a2.f1180b = new float[]{(float) cVar.d, (float) cVar.e};
        a2.c = new float[]{(float) aVar.f1139a.d, (float) aVar.f1139a.e};
        if (!this.i || this.h.randomLists.size() <= this.j) {
            a2.d = (float) Math.random();
            this.h.randomLists.add(Float.valueOf(a2.d));
        } else {
            List<Float> list = this.h.randomLists;
            int i2 = this.j;
            this.j = i2 + 1;
            a2.d = list.get(i2).floatValue();
        }
        a2.a(cVar.g);
        a((co.polarr.renderer.filters.a.a) a2, fVar);
        return new b(cVar, fVar2, fVar);
    }

    private f a(a aVar, int i2) {
        int i3 = i2 + 1;
        int min = Math.min(6, i3);
        f fVar = aVar.c.f1142b;
        int i4 = 1;
        while (i4 <= i3) {
            a(aVar, aVar.c, min);
            a(aVar, aVar.c, (c) ((i2 < 1 || i4 != i3) ? aVar.d.get(i2) : aVar.d.get(i2 - 1)), fVar);
            i4++;
        }
        if (this.o) {
            GLES30.glFinish();
        }
        return fVar;
    }

    private f a(c cVar) {
        f c2 = c(cVar.d, cVar.e);
        bn a2 = bn.a(this.f1137a, this.f1138b);
        a2.f1231a = cVar.c;
        a((co.polarr.renderer.filters.a.a) a2, c2);
        a((f) cVar, c2);
        i.a(c2, cVar.f1143a, cVar.f1144b);
        Basic a3 = Basic.a(this.f1137a, this.f1138b);
        a3.a(cVar.c);
        a3.a(cVar.g);
        a((co.polarr.renderer.filters.a.a) a3, c2);
        return c2;
    }

    private f a(f fVar) {
        f c2 = c(fVar.d >> 1, fVar.e >> 1);
        Basic a2 = Basic.a(this.f1137a, this.f1138b);
        a2.a(fVar.c);
        a((co.polarr.renderer.filters.a.a) a2, c2);
        return c2;
    }

    private f a(f fVar, int i2) {
        f c2 = c(fVar.d, fVar.e);
        l a2 = l.a(this.f1137a, this.f1138b);
        a2.a(fVar.c);
        a2.f1251a = i2;
        a((co.polarr.renderer.filters.a.a) a2, c2);
        return c2;
    }

    private void a(int i2) {
        if (this.c > 0) {
            Basic a2 = Basic.a(this.f1137a, this.f1138b);
            a2.setNeedClear(false);
            d h2 = d.h();
            h2.b(i2);
            h2.b(this.d.d, this.d.e);
            h2.o();
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
            a2.a(this.d.c);
            a2.draw();
            for (int i3 = 0; i3 < this.g; i3++) {
                f fVar = this.e[i3];
                Matrix.invertM(a2.getMatrix(), 0, this.f[i3], 0);
                a2.a(fVar.c);
                a2.draw();
            }
            h2.p();
        }
    }

    private void a(a aVar, b bVar, int i2) {
        a aVar2 = aVar;
        b bVar2 = bVar;
        c cVar = bVar2.f1141a;
        f fVar = bVar2.f1142b;
        f fVar2 = bVar2.c;
        int i3 = fVar2.d;
        int i4 = fVar2.e;
        f fVar3 = aVar2.h;
        int i5 = 8;
        int i6 = i2;
        for (int i7 = 0; i7 < i6; i7++) {
            bc a2 = bc.a(this.f1137a, this.f1138b);
            while (i5 > 0) {
                i.a(fVar3, 34842, FIELD_TYPE, i3, i4);
                a2.i = cVar.g;
                a2.f1222b = cVar.c;
                a2.f1221a = fVar.c;
                a2.c = fVar2.c;
                a2.d = new float[]{(float) cVar.d, (float) cVar.e};
                a2.e = new float[]{(float) fVar.d, (float) fVar.e};
                a2.f = new float[]{(float) fVar2.d, (float) fVar2.e};
                a2.g = new float[]{(float) aVar2.f1139a.d, (float) aVar2.f1139a.e};
                a2.h = (float) i5;
                a2.a(cVar.g);
                a((co.polarr.renderer.filters.a.a) a2, fVar3);
                a(bVar2.c, fVar3);
                i5 >>= 1;
            }
            if (this.o) {
                GLES20.glFinish();
            }
            bd a3 = bd.a(this.f1137a, this.f1138b);
            a3.h = cVar.g;
            a3.f1224b = cVar.c;
            a3.f1223a = fVar.c;
            a3.c = fVar2.c;
            a3.d = new float[]{(float) cVar.d, (float) cVar.e};
            a3.e = new float[]{(float) fVar.d, (float) fVar.e};
            a3.f = new float[]{(float) aVar2.f1139a.d, (float) aVar2.f1139a.e};
            if (!this.i || this.h.randomLists.size() <= this.j) {
                a3.g = (float) Math.random();
                this.h.randomLists.add(Float.valueOf(a3.g));
            } else {
                List<Float> list = this.h.randomLists;
                int i8 = this.j;
                this.j = i8 + 1;
                a3.g = list.get(i8).floatValue();
            }
            a3.a(cVar.g);
            a((co.polarr.renderer.filters.a.a) a3, fVar3);
            a(bVar2.c, fVar3);
        }
    }

    private void a(a aVar, b bVar, c cVar, f fVar) {
        f fVar2 = aVar.g;
        f fVar3 = bVar.c;
        i.a(fVar2, cVar.f1143a, cVar.f1144b);
        aq a2 = aq.a(this.f1137a, this.f1138b);
        a2.f = cVar.g;
        a2.c = fVar3.c;
        a2.f1201b = cVar.c;
        a2.f1200a = fVar.c;
        a2.d = new float[]{(float) fVar.d, (float) fVar.e};
        a2.e = new float[]{(float) aVar.f1139a.d, (float) aVar.f1139a.e};
        a2.a(cVar.g);
        a((co.polarr.renderer.filters.a.a) a2, fVar2);
        a(fVar, fVar2);
    }

    private void a(c cVar, f fVar, int i2, RectF rectF, int i3) {
        b bVar;
        GLES30.glGetError();
        f fVar2 = null;
        a aVar = new a();
        aVar.f1139a = cVar;
        aVar.f1140b = fVar;
        aVar.e = i2;
        aVar.f = rectF;
        aVar.c = null;
        aVar.d = new ArrayList();
        int i4 = 1;
        aVar.g = c(1, 1);
        aVar.h = this.k;
        this.o = false;
        float min = Math.min(aVar.f.width(), 1.0f) * Math.min(aVar.f.height(), 1.0f) * ((float) this.l.e) * ((float) this.l.d);
        Log.d("POLARR_SDK", "pixels:" + Math.round(min));
        if (min > 1.0E7f) {
            this.o = true;
            i4 = 3;
        } else if (min > 2000000.0f) {
            this.o = true;
            i4 = 2;
        } else if (min > 1000000.0f) {
            this.o = true;
        } else {
            if (min > 500000.0f) {
                this.o = true;
            }
            i4 = 0;
        }
        if (this.o) {
            this.p = Math.min(this.p, 3);
            this.p = Math.max(this.p, 0);
            i4 += this.p;
        }
        c a2 = c.a(a((f) cVar, fVar.c));
        aVar.d.add(a2);
        int i5 = i2 * 2;
        a2.f1143a = a(Math.round(((float) a2.d) * aVar.f.width()) + i5, 0, a2.d);
        a2.f1144b = a(Math.round(((float) a2.e) * aVar.f.height()) + i5, 0, a2.e);
        float f2 = (float) i2;
        a2.g = a(aVar.f, (float) a2.d, (float) a2.e, f2);
        while (a2.f1143a > i2 && a2.f1144b > i2) {
            a2 = c.a(a((f) a2));
            a2.f1143a = a(Math.round(((float) a2.d) * aVar.f.width()) + i5, 0, a2.d);
            a2.f1144b = a(Math.round(((float) a2.e) * aVar.f.height()) + i5, 0, a2.e);
            a2.g = a(aVar.f, (float) a2.d, (float) a2.e, f2);
            aVar.d.add(a2);
        }
        int size = aVar.d.size() - 3;
        for (int i6 = size; i6 >= i4; i6--) {
            c cVar2 = aVar.d.get(i6);
            if (i6 == size) {
                bVar = a(aVar, this.n, a(cVar2), cVar2);
            } else {
                bVar = a(aVar, aVar.c, fVar2, cVar2);
            }
            aVar.c = bVar;
            fVar2 = a(aVar, i6);
            GLES20.glFinish();
            if (i6 == i4) {
                Basic a3 = Basic.a(this.f1137a, this.f1138b);
                a3.setNeedClear(false);
                d h2 = d.h();
                h2.b(i3);
                h2.b(cVar.d, cVar.e);
                h2.o();
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
                a3.a(cVar2.c);
                a3.draw();
                Matrix.invertM(a3.getMatrix(), 0, cVar2.g, 0);
                a3.a(fVar2.c);
                a3.draw();
                h2.p();
                b(aVar.g);
                for (c b2 : aVar.d) {
                    b(b2);
                }
            }
        }
        GLES30.glFlush();
        GLES30.glGetError();
    }

    private void a(co.polarr.renderer.filters.a.a aVar, f fVar) {
        d h2 = d.h();
        h2.b(fVar.c);
        h2.a(h.a());
        h2.b(fVar.d, fVar.e);
        h2.a(aVar);
        h2.o();
        aVar.draw();
        h2.p();
    }

    private void a(f fVar, f fVar2) {
        int i2 = fVar2.c;
        fVar2.c = fVar.c;
        fVar.c = i2;
        int i3 = fVar2.d;
        fVar2.d = fVar.d;
        fVar.d = i3;
        int i4 = fVar2.e;
        fVar2.e = fVar.e;
        fVar.e = i4;
    }

    private static float[] a(RectF rectF, float f2, float f3, float f4) {
        float f5 = f4 * 2.0f;
        float min = Math.min(Math.max(((float) Math.round(rectF.width() * f2)) + f5, 0.0f), f2) / f2;
        float min2 = Math.min(Math.max(((float) Math.round(rectF.height() * f3)) + f5, 0.0f), f3) / f3;
        float min3 = Math.min(Math.max(((float) Math.round(rectF.left * f2)) - f4, 0.0f), f2 - min) / f2;
        float min4 = Math.min(Math.max(((float) Math.round(rectF.top * f3)) - f4, 0.0f), f3 - min2) / f3;
        float f6 = 1.0f / min;
        float f7 = 1.0f / min2;
        float[] a2 = h.a();
        Matrix.translateM(a2, 0, -1.0f - ((min3 * 2.0f) * f6), (min4 * 2.0f * f7) + 1.0f, 0.0f);
        Matrix.scaleM(a2, 0, f6, f7, 1.0f);
        Matrix.translateM(a2, 0, 1.0f, -1.0f, 0.0f);
        return a2;
    }

    private f b(int i2, int i3) {
        f b2 = b(6408, FIELD_TYPE, i2, i3);
        GLES20.glBindTexture(3553, b2.c);
        i.a(33071, 33071, 9728, 9728);
        GLES20.glBindTexture(3553, 0);
        return b2;
    }

    private f b(int i2, int i3, int i4, int i5) {
        int[] iArr = new int[1];
        i.a(iArr.length, iArr, 0, i2, i3, i4, i5);
        return i.c(iArr[0], i2, i4, i5);
    }

    private void b(f fVar) {
        if (fVar.c > 0) {
            i.a(fVar.c);
            co.polarr.renderer.render.b.d(fVar.c);
        }
        fVar.c = 0;
    }

    private f c(int i2, int i3) {
        int[] iArr = new int[1];
        i.a(iArr.length, iArr, 0, 6408, i2, i3);
        return i.c(iArr[0], 6408, i2, i3);
    }

    public List<Float> a(List<PointF> list, float f2) {
        ArrayList arrayList = new ArrayList();
        this.q = null;
        for (PointF a2 : list) {
            a((List<Float>) arrayList, a2, f2);
        }
        return arrayList;
    }

    public void a() {
        a(-1, -1);
        f fVar = this.d;
        if (fVar != null) {
            co.polarr.renderer.render.b.a(fVar);
            co.polarr.renderer.render.b.d(this.d.c);
        }
        f fVar2 = this.m;
        if (fVar2 != null) {
            co.polarr.renderer.render.b.a(fVar2);
            co.polarr.renderer.render.b.d(this.m.c);
        }
        f fVar3 = this.l;
        if (fVar3 != null) {
            co.polarr.renderer.render.b.a(fVar3);
            co.polarr.renderer.render.b.d(this.l.c);
        }
        f fVar4 = this.k;
        if (fVar4 != null) {
            b(fVar4);
            this.k = null;
        }
        f fVar5 = this.n;
        if (fVar5 != null) {
            b(fVar5);
            this.n = null;
        }
    }

    public void a(int i2, int i3) {
        if (i2 > 0) {
            Basic a2 = Basic.a(this.f1137a, this.f1138b);
            a2.a(i2);
            a((co.polarr.renderer.filters.a.a) a2, this.d);
        }
        if (i3 > 0) {
            this.g = -1;
            a(i3);
        }
        for (f fVar : this.e) {
            if (fVar != null) {
                b(fVar);
            }
        }
        for (int i4 = 0; i4 < this.c; i4++) {
            this.e[i4] = null;
            this.f[i4] = null;
        }
        this.g = 0;
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.p = i5;
        i.a(this.d, i3, i4);
        a(i2, -1);
    }

    public void a(int i2, int i3, Rect rect) {
        i.a(i3, rect.width(), rect.height());
        i.a(i2, i3, rect);
    }

    public void a(int i2, MagicEraserPath magicEraserPath) {
        int i3 = i2;
        MagicEraserPath magicEraserPath2 = magicEraserPath;
        f fVar = this.d;
        if (fVar != null) {
            int i4 = fVar.d;
            int i5 = this.d.e;
            float f2 = 1.0f;
            float f3 = 1.0f;
            float f4 = 0.0f;
            float f5 = 0.0f;
            for (PointF next : magicEraserPath2.points) {
                float f6 = next.x;
                float f7 = next.y;
                f2 = Math.min(f2, f6);
                f4 = Math.max(f4, f6);
                f3 = Math.min(f3, f7);
                f5 = Math.max(f5, f7);
            }
            float f8 = magicEraserPath2.radius * 2.0f;
            int i6 = 0;
            int i7 = 1;
            float[] fArr = {f8 / ((float) i4), f8 / ((float) i5)};
            float f9 = f2 - fArr[0];
            float f10 = f3 - fArr[1];
            float f11 = f4 + fArr[0];
            float f12 = f5 + fArr[1];
            if (f9 <= 0.0f) {
                f11 += fArr[0] * 2.0f;
            }
            if (f10 <= 0.0f) {
                f12 += fArr[1] * 2.0f;
            }
            if (f11 >= 1.0f) {
                f9 -= fArr[0] * 2.0f;
            }
            if (f12 >= 1.0f) {
                f10 -= fArr[1] * 2.0f;
            }
            RectF rectF = new RectF(f9, f10, f11, f12);
            h hVar = new h(this.f1138b, this.f1137a);
            hVar.f1245b = (float) b.a(1.0d);
            hVar.c = 1.0f;
            hVar.d = new float[]{1.0f, 0.0f, 0.0f, 0.0f};
            i.a(this.l, this.d.d, this.d.e);
            d h2 = d.h();
            h2.b(this.l.c);
            h2.b(this.l.d, this.l.e);
            h2.o();
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
            if (magicEraserPath2.points != null && !magicEraserPath2.points.isEmpty()) {
                hVar.f1244a = magicEraserPath2.radius * 2.0f;
                hVar.a(a(magicEraserPath2.points, magicEraserPath2.radius * 2.0f), false);
            }
            h2.p();
            float f13 = (float) 1;
            float width = rectF.width() / f13;
            float height = rectF.height() / f13;
            int i8 = 0;
            while (i8 < i7) {
                int i9 = i6;
                while (i9 < i7) {
                    if (!this.i) {
                        this.h = new MagicEraserHistoryItem();
                        this.h.path = magicEraserPath2;
                    }
                    float f14 = (float) i9;
                    int i10 = i9 + 1;
                    RectF rectF2 = new RectF((((float) i8) * width) + rectF.left, (f14 * height) + rectF.top, (((float) (i8 + 1)) * width) + rectF.left, (((float) i10) * height) + rectF.top);
                    rectF2.left = Math.min(Math.max(0.0f, rectF2.left), 1.0f);
                    rectF2.top = Math.min(Math.max(0.0f, rectF2.top), 1.0f);
                    rectF2.right = Math.min(Math.max(0.0f, rectF2.right), 1.0f);
                    rectF2.bottom = Math.min(Math.max(0.0f, rectF2.bottom), 1.0f);
                    Rect rect = new Rect((int) (rectF2.left * ((float) this.d.d)), (int) (rectF2.top * ((float) this.d.e)), (int) (rectF2.right * ((float) this.d.d)), (int) (rectF2.bottom * ((float) this.d.e)));
                    this.m.d = rect.width();
                    this.m.e = rect.height();
                    this.l.d = rect.width();
                    this.l.e = rect.height();
                    a(this.l.c, this.m.c, rect);
                    a(i3, this.l.c, rect);
                    i.a(i3, rect.width(), rect.height());
                    a(c.a(this.l), this.m, 2, new RectF(0.0f, 0.0f, 1.0f, 1.0f), i2);
                    b(this.d.c, i3, rect);
                    i.a(i3, this.d.d, this.d.e);
                    i.b(this.d.c, i3, this.d.d, this.d.e);
                    GLES20.glFinish();
                    i9 = i10;
                    i8 = i8;
                    i7 = 1;
                }
                i8++;
                i6 = 0;
                i7 = 1;
            }
        }
    }

    public void a(f fVar, int i2, MagicEraserPath magicEraserPath, int i3, int i4) {
        i.a(fVar, this.d.d, this.d.e);
        h hVar = new h(this.f1138b, this.f1137a);
        hVar.f1245b = (float) b.a(1.0d);
        hVar.c = 1.0f;
        hVar.d = new float[]{1.0f, 0.0f, 0.0f, 0.0f};
        d h2 = d.h();
        h2.b(fVar.c);
        h2.b(fVar.d, fVar.e);
        h2.o();
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
        if (magicEraserPath.points != null && !magicEraserPath.points.isEmpty()) {
            hVar.f1244a = magicEraserPath.radius * 2.0f;
            hVar.a(a(magicEraserPath.points, magicEraserPath.radius * 2.0f), false);
        }
        h2.p();
        GLES20.glViewport(0, 0, i3, i4);
        Basic a2 = Basic.a(this.f1137a, this.f1138b);
        Matrix.scaleM(a2.getMatrix(), 0, 1.0f, -1.0f, 1.0f);
        a2.a(i2);
        a2.draw();
        if (this.r == null) {
            this.r = new ax(this.f1137a, this.f1138b);
            this.r.k();
        }
        this.f1138b.overlayMask = new float[]{1.0f, 0.0f, 0.0f, 0.0f};
        ax axVar = this.r;
        axVar.f1211b = 0.5f;
        axVar.a(fVar.c);
        Matrix.setIdentityM(this.r.getMatrix(), 0);
        Matrix.scaleM(this.r.getMatrix(), 0, 1.0f, -1.0f, 1.0f);
        GLES20.glEnable(3042);
        GLES20.glBlendEquation(32774);
        GLES20.glBlendFunc(ArcSoftOffscreen.ASVL_PAF_RGB32_B8G8R8A8, 771);
        this.r.draw();
        GLES20.glDisable(3042);
    }

    public void a(List<Float> list, PointF pointF, float f2) {
        float[] fArr = new float[4];
        float f3 = (float) this.d.d;
        float f4 = (float) this.d.e;
        float[] fArr2 = {1.0f / f3, 1.0f / f4};
        float[] fArr3 = {pointF.x * f3, (1.0f - pointF.y) * f4, 0.5f};
        if (this.q == null) {
            this.q = new float[]{fArr3[0], fArr3[1], fArr3[2]};
            fArr3[0] = fArr3[0] * fArr2[0];
            fArr3[1] = fArr3[1] * fArr2[1];
            list.add(Float.valueOf(fArr3[0]));
            list.add(Float.valueOf(fArr3[1]));
            list.add(Float.valueOf(fArr3[2]));
            return;
        }
        int i2 = (int) (f2 * 0.3f * fArr3[2]);
        if (i2 < 1) {
            i2 = 1;
        }
        float a2 = h.a(fArr3, this.q);
        if (a2 >= ((float) i2)) {
            ArrayList arrayList = new ArrayList();
            int i3 = i2;
            while (true) {
                float f5 = (float) i3;
                if (f5 > a2) {
                    break;
                }
                try {
                    h.a(this.q, fArr3, f5 / a2, fArr);
                    arrayList.add(Float.valueOf(fArr[0]));
                    arrayList.add(Float.valueOf(fArr[1]));
                    arrayList.add(Float.valueOf(fArr[2]));
                    i3 += i2;
                } catch (OutOfMemoryError e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            int size = arrayList.size();
            int i4 = size - 3;
            this.q = new float[]{((Float) arrayList.get(i4)).floatValue(), ((Float) arrayList.get(i4 + 1)).floatValue(), ((Float) arrayList.get(i4 + 2)).floatValue()};
            for (int i5 = 0; i5 < size; i5 += 3) {
                arrayList.set(i5, Float.valueOf(((Float) arrayList.get(i5)).floatValue() * fArr2[0]));
                int i6 = i5 + 1;
                arrayList.set(i6, Float.valueOf(((Float) arrayList.get(i6)).floatValue() * fArr2[1]));
            }
            list.addAll(arrayList);
        }
    }

    public void b() {
        l.l_();
        bn.h();
        aq.h();
        bc.h();
        bd.h();
        ag.A_();
        af.z_();
    }

    public void b(int i2, int i3, Rect rect) {
        i.b(i2, i3, rect);
    }
}
