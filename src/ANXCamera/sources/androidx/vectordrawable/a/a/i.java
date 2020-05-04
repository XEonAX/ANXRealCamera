package androidx.vectordrawable.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.graphics.b;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: VectorDrawableCompat */
public class i extends h {

    /* renamed from: a  reason: collision with root package name */
    static final PorterDuff.Mode f1027a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    private g f1028b;
    private PorterDuffColorFilter d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private Drawable.ConstantState h;
    private final float[] i;
    private final Matrix j;
    private final Rect k;

    /* compiled from: VectorDrawableCompat */
    private static class a extends e {
        a() {
        }

        a(a aVar) {
            super(aVar);
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.l = androidx.core.graphics.b.b(string2);
            }
            this.n = androidx.core.a.a.g.a(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.a.a.g.a(xmlPullParser, "pathData")) {
                TypedArray a2 = androidx.core.a.a.g.a(resources, theme, attributeSet, a.d);
                a(a2, xmlPullParser);
                a2.recycle();
            }
        }

        public boolean a() {
            return true;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class b extends e {

        /* renamed from: a  reason: collision with root package name */
        androidx.core.a.a.b f1029a;

        /* renamed from: b  reason: collision with root package name */
        float f1030b = 0.0f;
        androidx.core.a.a.b c;
        float d = 1.0f;
        float e = 1.0f;
        float f = 0.0f;
        float g = 1.0f;
        float h = 0.0f;
        Paint.Cap i = Paint.Cap.BUTT;
        Paint.Join j = Paint.Join.MITER;
        float k = 4.0f;
        private int[] p;

        b() {
        }

        b(b bVar) {
            super(bVar);
            this.p = bVar.p;
            this.f1029a = bVar.f1029a;
            this.f1030b = bVar.f1030b;
            this.d = bVar.d;
            this.c = bVar.c;
            this.n = bVar.n;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
        }

        private Paint.Cap a(int i2, Paint.Cap cap) {
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        private Paint.Join a(int i2, Paint.Join join) {
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.p = null;
            if (androidx.core.a.a.g.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.m = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.l = androidx.core.graphics.b.b(string2);
                }
                Resources.Theme theme2 = theme;
                this.c = androidx.core.a.a.g.a(typedArray, xmlPullParser, theme2, "fillColor", 1, 0);
                this.e = androidx.core.a.a.g.a(typedArray, xmlPullParser, "fillAlpha", 12, this.e);
                this.i = a(androidx.core.a.a.g.a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.i);
                this.j = a(androidx.core.a.a.g.a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.j);
                this.k = androidx.core.a.a.g.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.k);
                this.f1029a = androidx.core.a.a.g.a(typedArray, xmlPullParser, theme2, "strokeColor", 3, 0);
                this.d = androidx.core.a.a.g.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.d);
                this.f1030b = androidx.core.a.a.g.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f1030b);
                this.g = androidx.core.a.a.g.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.g);
                this.h = androidx.core.a.a.g.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.h);
                this.f = androidx.core.a.a.g.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f);
                this.n = androidx.core.a.a.g.a(typedArray, xmlPullParser, "fillType", 13, this.n);
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.a.a.g.a(resources, theme, attributeSet, a.c);
            a(a2, xmlPullParser, theme);
            a2.recycle();
        }

        public boolean a(int[] iArr) {
            return this.f1029a.a(iArr) | this.c.a(iArr);
        }

        public boolean b() {
            return this.c.d() || this.f1029a.d();
        }

        /* access modifiers changed from: package-private */
        public float getFillAlpha() {
            return this.e;
        }

        /* access modifiers changed from: package-private */
        public int getFillColor() {
            return this.c.b();
        }

        /* access modifiers changed from: package-private */
        public float getStrokeAlpha() {
            return this.d;
        }

        /* access modifiers changed from: package-private */
        public int getStrokeColor() {
            return this.f1029a.b();
        }

        /* access modifiers changed from: package-private */
        public float getStrokeWidth() {
            return this.f1030b;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathEnd() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathOffset() {
            return this.h;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathStart() {
            return this.f;
        }

        /* access modifiers changed from: package-private */
        public void setFillAlpha(float f2) {
            this.e = f2;
        }

        /* access modifiers changed from: package-private */
        public void setFillColor(int i2) {
            this.c.b(i2);
        }

        /* access modifiers changed from: package-private */
        public void setStrokeAlpha(float f2) {
            this.d = f2;
        }

        /* access modifiers changed from: package-private */
        public void setStrokeColor(int i2) {
            this.f1029a.b(i2);
        }

        /* access modifiers changed from: package-private */
        public void setStrokeWidth(float f2) {
            this.f1030b = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathEnd(float f2) {
            this.g = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathOffset(float f2) {
            this.h = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathStart(float f2) {
            this.f = f2;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class c extends d {

        /* renamed from: a  reason: collision with root package name */
        final Matrix f1031a = new Matrix();

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<d> f1032b = new ArrayList<>();
        float c = 0.0f;
        final Matrix d = new Matrix();
        int e;
        private float f = 0.0f;
        private float g = 0.0f;
        private float h = 1.0f;
        private float i = 1.0f;
        private float j = 0.0f;
        private float k = 0.0f;
        private int[] l;
        private String m = null;

        public c() {
            super();
        }

        public c(c cVar, androidx.b.a<String, Object> aVar) {
            super();
            e eVar;
            this.c = cVar.c;
            this.f = cVar.f;
            this.g = cVar.g;
            this.h = cVar.h;
            this.i = cVar.i;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.e = cVar.e;
            String str = this.m;
            if (str != null) {
                aVar.put(str, this);
            }
            this.d.set(cVar.d);
            ArrayList<d> arrayList = cVar.f1032b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                d dVar = arrayList.get(i2);
                if (dVar instanceof c) {
                    this.f1032b.add(new c((c) dVar, aVar));
                } else {
                    if (dVar instanceof b) {
                        eVar = new b((b) dVar);
                    } else if (dVar instanceof a) {
                        eVar = new a((a) dVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f1032b.add(eVar);
                    if (eVar.m != null) {
                        aVar.put(eVar.m, eVar);
                    }
                }
            }
        }

        private void a() {
            this.d.reset();
            this.d.postTranslate(-this.f, -this.g);
            this.d.postScale(this.h, this.i);
            this.d.postRotate(this.c, 0.0f, 0.0f);
            this.d.postTranslate(this.j + this.f, this.k + this.g);
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.c = androidx.core.a.a.g.a(typedArray, xmlPullParser, "rotation", 5, this.c);
            this.f = typedArray.getFloat(1, this.f);
            this.g = typedArray.getFloat(2, this.g);
            this.h = androidx.core.a.a.g.a(typedArray, xmlPullParser, "scaleX", 3, this.h);
            this.i = androidx.core.a.a.g.a(typedArray, xmlPullParser, "scaleY", 4, this.i);
            this.j = androidx.core.a.a.g.a(typedArray, xmlPullParser, "translateX", 6, this.j);
            this.k = androidx.core.a.a.g.a(typedArray, xmlPullParser, "translateY", 7, this.k);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            a();
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = androidx.core.a.a.g.a(resources, theme, attributeSet, a.f1016b);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        public boolean a(int[] iArr) {
            boolean z = false;
            for (int i2 = 0; i2 < this.f1032b.size(); i2++) {
                z |= this.f1032b.get(i2).a(iArr);
            }
            return z;
        }

        public boolean b() {
            for (int i2 = 0; i2 < this.f1032b.size(); i2++) {
                if (this.f1032b.get(i2).b()) {
                    return true;
                }
            }
            return false;
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.d;
        }

        public float getPivotX() {
            return this.f;
        }

        public float getPivotY() {
            return this.g;
        }

        public float getRotation() {
            return this.c;
        }

        public float getScaleX() {
            return this.h;
        }

        public float getScaleY() {
            return this.i;
        }

        public float getTranslateX() {
            return this.j;
        }

        public float getTranslateY() {
            return this.k;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f) {
                this.f = f2;
                a();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.g) {
                this.g = f2;
                a();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.c) {
                this.c = f2;
                a();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.h) {
                this.h = f2;
                a();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.i) {
                this.i = f2;
                a();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.j) {
                this.j = f2;
                a();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.k) {
                this.k = f2;
                a();
            }
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static abstract class d {
        private d() {
        }

        public boolean a(int[] iArr) {
            return false;
        }

        public boolean b() {
            return false;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static abstract class e extends d {
        protected b.C0018b[] l = null;
        String m;
        int n = 0;
        int o;

        public e() {
            super();
        }

        public e(e eVar) {
            super();
            this.m = eVar.m;
            this.o = eVar.o;
            this.l = androidx.core.graphics.b.a(eVar.l);
        }

        public void a(Path path) {
            path.reset();
            b.C0018b[] bVarArr = this.l;
            if (bVarArr != null) {
                b.C0018b.a(bVarArr, path);
            }
        }

        public boolean a() {
            return false;
        }

        public b.C0018b[] getPathData() {
            return this.l;
        }

        public String getPathName() {
            return this.m;
        }

        public void setPathData(b.C0018b[] bVarArr) {
            if (!androidx.core.graphics.b.a(this.l, bVarArr)) {
                this.l = androidx.core.graphics.b.a(bVarArr);
            } else {
                androidx.core.graphics.b.b(this.l, bVarArr);
            }
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class f {
        private static final Matrix n = new Matrix();

        /* renamed from: a  reason: collision with root package name */
        Paint f1033a;

        /* renamed from: b  reason: collision with root package name */
        Paint f1034b;
        final c c;
        float d;
        float e;
        float f;
        float g;
        int h;
        String i;
        Boolean j;
        final androidx.b.a<String, Object> k;
        private final Path l;
        private final Path m;
        private final Matrix o;
        private PathMeasure p;
        private int q;

        public f() {
            this.o = new Matrix();
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 255;
            this.i = null;
            this.j = null;
            this.k = new androidx.b.a<>();
            this.c = new c();
            this.l = new Path();
            this.m = new Path();
        }

        public f(f fVar) {
            this.o = new Matrix();
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 255;
            this.i = null;
            this.j = null;
            this.k = new androidx.b.a<>();
            this.c = new c(fVar.c, this.k);
            this.l = new Path(fVar.l);
            this.m = new Path(fVar.m);
            this.d = fVar.d;
            this.e = fVar.e;
            this.f = fVar.f;
            this.g = fVar.g;
            this.q = fVar.q;
            this.h = fVar.h;
            this.i = fVar.i;
            String str = fVar.i;
            if (str != null) {
                this.k.put(str, this);
            }
            this.j = fVar.j;
        }

        private static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float a2 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max((float) Math.hypot((double) fArr[0], (double) fArr[1]), (float) Math.hypot((double) fArr[2], (double) fArr[3]));
            if (max > 0.0f) {
                return Math.abs(a2) / max;
            }
            return 0.0f;
        }

        private void a(c cVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            cVar.f1031a.set(matrix);
            cVar.f1031a.preConcat(cVar.d);
            canvas.save();
            for (int i4 = 0; i4 < cVar.f1032b.size(); i4++) {
                d dVar = cVar.f1032b.get(i4);
                if (dVar instanceof c) {
                    a((c) dVar, cVar.f1031a, canvas, i2, i3, colorFilter);
                } else if (dVar instanceof e) {
                    a(cVar, (e) dVar, canvas, i2, i3, colorFilter);
                }
            }
            canvas.restore();
        }

        private void a(c cVar, e eVar, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            float f2 = ((float) i2) / this.f;
            float f3 = ((float) i3) / this.g;
            float min = Math.min(f2, f3);
            Matrix matrix = cVar.f1031a;
            this.o.set(matrix);
            this.o.postScale(f2, f3);
            float a2 = a(matrix);
            if (a2 != 0.0f) {
                eVar.a(this.l);
                Path path = this.l;
                this.m.reset();
                if (eVar.a()) {
                    this.m.setFillType(eVar.n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    this.m.addPath(path, this.o);
                    canvas.clipPath(this.m);
                    return;
                }
                b bVar = (b) eVar;
                if (!(bVar.f == 0.0f && bVar.g == 1.0f)) {
                    float f4 = (bVar.f + bVar.h) % 1.0f;
                    float f5 = (bVar.g + bVar.h) % 1.0f;
                    if (this.p == null) {
                        this.p = new PathMeasure();
                    }
                    this.p.setPath(this.l, false);
                    float length = this.p.getLength();
                    float f6 = f4 * length;
                    float f7 = f5 * length;
                    path.reset();
                    if (f6 > f7) {
                        this.p.getSegment(f6, length, path, true);
                        this.p.getSegment(0.0f, f7, path, true);
                    } else {
                        this.p.getSegment(f6, f7, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.m.addPath(path, this.o);
                if (bVar.c.e()) {
                    androidx.core.a.a.b bVar2 = bVar.c;
                    if (this.f1034b == null) {
                        this.f1034b = new Paint(1);
                        this.f1034b.setStyle(Paint.Style.FILL);
                    }
                    Paint paint = this.f1034b;
                    if (bVar2.c()) {
                        Shader a3 = bVar2.a();
                        a3.setLocalMatrix(this.o);
                        paint.setShader(a3);
                        paint.setAlpha(Math.round(bVar.e * 255.0f));
                    } else {
                        paint.setShader((Shader) null);
                        paint.setAlpha(255);
                        paint.setColor(i.a(bVar2.b(), bVar.e));
                    }
                    paint.setColorFilter(colorFilter);
                    this.m.setFillType(bVar.n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    canvas.drawPath(this.m, paint);
                }
                if (bVar.f1029a.e()) {
                    androidx.core.a.a.b bVar3 = bVar.f1029a;
                    if (this.f1033a == null) {
                        this.f1033a = new Paint(1);
                        this.f1033a.setStyle(Paint.Style.STROKE);
                    }
                    Paint paint2 = this.f1033a;
                    if (bVar.j != null) {
                        paint2.setStrokeJoin(bVar.j);
                    }
                    if (bVar.i != null) {
                        paint2.setStrokeCap(bVar.i);
                    }
                    paint2.setStrokeMiter(bVar.k);
                    if (bVar3.c()) {
                        Shader a4 = bVar3.a();
                        a4.setLocalMatrix(this.o);
                        paint2.setShader(a4);
                        paint2.setAlpha(Math.round(bVar.d * 255.0f));
                    } else {
                        paint2.setShader((Shader) null);
                        paint2.setAlpha(255);
                        paint2.setColor(i.a(bVar3.b(), bVar.d));
                    }
                    paint2.setColorFilter(colorFilter);
                    paint2.setStrokeWidth(bVar.f1030b * min * a2);
                    canvas.drawPath(this.m, paint2);
                }
            }
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            a(this.c, n, canvas, i2, i3, colorFilter);
        }

        public boolean a() {
            if (this.j == null) {
                this.j = Boolean.valueOf(this.c.b());
            }
            return this.j.booleanValue();
        }

        public boolean a(int[] iArr) {
            return this.c.a(iArr);
        }

        public float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public int getRootAlpha() {
            return this.h;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.h = i2;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class g extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f1035a;

        /* renamed from: b  reason: collision with root package name */
        f f1036b;
        ColorStateList c;
        PorterDuff.Mode d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public g() {
            this.c = null;
            this.d = i.f1027a;
            this.f1036b = new f();
        }

        public g(g gVar) {
            this.c = null;
            this.d = i.f1027a;
            if (gVar != null) {
                this.f1035a = gVar.f1035a;
                this.f1036b = new f(gVar.f1036b);
                if (gVar.f1036b.f1034b != null) {
                    this.f1036b.f1034b = new Paint(gVar.f1036b.f1034b);
                }
                if (gVar.f1036b.f1033a != null) {
                    this.f1036b.f1033a = new Paint(gVar.f1036b.f1033a);
                }
                this.c = gVar.c;
                this.d = gVar.d;
                this.e = gVar.e;
            }
        }

        public Paint a(ColorFilter colorFilter) {
            if (!a() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                this.l = new Paint();
                this.l.setFilterBitmap(true);
            }
            this.l.setAlpha(this.f1036b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public void a(int i2, int i3) {
            this.f.eraseColor(0);
            this.f1036b.a(new Canvas(this.f), i2, i3, (ColorFilter) null);
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, (Rect) null, rect, a(colorFilter));
        }

        public boolean a() {
            return this.f1036b.getRootAlpha() < 255;
        }

        public boolean a(int[] iArr) {
            boolean a2 = this.f1036b.a(iArr);
            this.k |= a2;
            return a2;
        }

        public void b(int i2, int i3) {
            if (this.f == null || !c(i2, i3)) {
                this.f = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                this.k = true;
            }
        }

        public boolean b() {
            return !this.k && this.g == this.c && this.h == this.d && this.j == this.e && this.i == this.f1036b.getRootAlpha();
        }

        public void c() {
            this.g = this.c;
            this.h = this.d;
            this.i = this.f1036b.getRootAlpha();
            this.j = this.e;
            this.k = false;
        }

        public boolean c(int i2, int i3) {
            return i2 == this.f.getWidth() && i3 == this.f.getHeight();
        }

        public boolean d() {
            return this.f1036b.a();
        }

        public int getChangingConfigurations() {
            return this.f1035a;
        }

        public Drawable newDrawable() {
            return new i(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class h extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f1037a;

        public h(Drawable.ConstantState constantState) {
            this.f1037a = constantState;
        }

        public boolean canApplyTheme() {
            return this.f1037a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.f1037a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            i iVar = new i();
            iVar.c = (VectorDrawable) this.f1037a.newDrawable();
            return iVar;
        }

        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.c = (VectorDrawable) this.f1037a.newDrawable(resources);
            return iVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.c = (VectorDrawable) this.f1037a.newDrawable(resources, theme);
            return iVar;
        }
    }

    i() {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f1028b = new g();
    }

    i(g gVar) {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f1028b = gVar;
        this.d = a(this.d, gVar.c, gVar.d);
    }

    static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (((float) Color.alpha(i2)) * f2)) << 24);
    }

    private static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0038 A[Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003d A[Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }] */
    public static i a(Resources resources, int i2, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.c = androidx.core.a.a.f.a(resources, i2, theme);
            iVar.h = new h(iVar.c.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            while (true) {
                next = xml.next();
                if (next == 2 || next == 1) {
                    if (next != 2) {
                        return a(resources, xml, asAttributeSet, theme);
                    }
                    throw new XmlPullParserException("No start tag found");
                }
            }
            if (next != 2) {
            }
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (IOException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    public static i a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        g gVar = this.f1028b;
        f fVar = gVar.f1036b;
        gVar.d = a(androidx.core.a.a.g.a(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList a2 = androidx.core.a.a.g.a(typedArray, xmlPullParser, theme, "tint", 1);
        if (a2 != null) {
            gVar.c = a2;
        }
        gVar.e = androidx.core.a.a.g.a(typedArray, xmlPullParser, "autoMirrored", 5, gVar.e);
        fVar.f = androidx.core.a.a.g.a(typedArray, xmlPullParser, "viewportWidth", 7, fVar.f);
        fVar.g = androidx.core.a.a.g.a(typedArray, xmlPullParser, "viewportHeight", 8, fVar.g);
        if (fVar.f <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (fVar.g > 0.0f) {
            fVar.d = typedArray.getDimension(3, fVar.d);
            fVar.e = typedArray.getDimension(2, fVar.e);
            if (fVar.d <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (fVar.e > 0.0f) {
                fVar.setAlpha(androidx.core.a.a.g.a(typedArray, xmlPullParser, "alpha", 4, fVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    fVar.i = string;
                    fVar.k.put(string, fVar);
                }
            } else {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.h(this) == 1;
    }

    private void b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        g gVar = this.f1028b;
        f fVar = gVar.f1036b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.c);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if ("path".equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1032b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.k.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    gVar.f1035a = bVar.o | gVar.f1035a;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    aVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1032b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.k.put(aVar.getPathName(), aVar);
                    }
                    gVar.f1035a = aVar.o | gVar.f1035a;
                } else if ("group".equals(name)) {
                    c cVar2 = new c();
                    cVar2.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1032b.add(cVar2);
                    arrayDeque.push(cVar2);
                    if (cVar2.getGroupName() != null) {
                        fVar.k.put(cVar2.getGroupName(), cVar2);
                    }
                    gVar.f1035a = cVar2.e | gVar.f1035a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* access modifiers changed from: package-private */
    public PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* access modifiers changed from: package-private */
    public Object a(String str) {
        return this.f1028b.f1036b.k.get(str);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.g = z;
    }

    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    public boolean canApplyTheme() {
        if (this.c == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.d(this.c);
        return false;
    }

    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public void draw(Canvas canvas) {
        if (this.c != null) {
            this.c.draw(canvas);
            return;
        }
        copyBounds(this.k);
        if (this.k.width() > 0 && this.k.height() > 0) {
            ColorFilter colorFilter = this.e;
            if (colorFilter == null) {
                colorFilter = this.d;
            }
            canvas.getMatrix(this.j);
            this.j.getValues(this.i);
            float abs = Math.abs(this.i[0]);
            float abs2 = Math.abs(this.i[4]);
            float abs3 = Math.abs(this.i[1]);
            float abs4 = Math.abs(this.i[3]);
            if (!(abs3 == 0.0f && abs4 == 0.0f)) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int min = Math.min(2048, (int) (((float) this.k.width()) * abs));
            int min2 = Math.min(2048, (int) (((float) this.k.height()) * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate((float) this.k.left, (float) this.k.top);
                if (a()) {
                    canvas.translate((float) this.k.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.k.offsetTo(0, 0);
                this.f1028b.b(min, min2);
                if (!this.g) {
                    this.f1028b.a(min, min2);
                } else if (!this.f1028b.b()) {
                    this.f1028b.a(min, min2);
                    this.f1028b.c();
                }
                this.f1028b.a(canvas, colorFilter, this.k);
                canvas.restoreToCount(save);
            }
        }
    }

    public int getAlpha() {
        return this.c != null ? androidx.core.graphics.drawable.a.c(this.c) : this.f1028b.f1036b.getRootAlpha();
    }

    public int getChangingConfigurations() {
        return this.c != null ? this.c.getChangingConfigurations() : super.getChangingConfigurations() | this.f1028b.getChangingConfigurations();
    }

    public ColorFilter getColorFilter() {
        return this.c != null ? androidx.core.graphics.drawable.a.e(this.c) : this.e;
    }

    public Drawable.ConstantState getConstantState() {
        if (this.c != null && Build.VERSION.SDK_INT >= 24) {
            return new h(this.c.getConstantState());
        }
        this.f1028b.f1035a = getChangingConfigurations();
        return this.f1028b;
    }

    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.c != null ? this.c.getIntrinsicHeight() : (int) this.f1028b.f1036b.e;
    }

    public int getIntrinsicWidth() {
        return this.c != null ? this.c.getIntrinsicWidth() : (int) this.f1028b.f1036b.d;
    }

    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    public int getOpacity() {
        if (this.c != null) {
            return this.c.getOpacity();
        }
        return -3;
    }

    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.c != null) {
            this.c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, (Resources.Theme) null);
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        g gVar = this.f1028b;
        gVar.f1036b = new f();
        TypedArray a2 = androidx.core.a.a.g.a(resources, theme, attributeSet, a.f1015a);
        a(a2, xmlPullParser, theme);
        a2.recycle();
        gVar.f1035a = getChangingConfigurations();
        gVar.k = true;
        b(resources, xmlPullParser, attributeSet, theme);
        this.d = a(this.d, gVar.c, gVar.d);
    }

    public void invalidateSelf() {
        if (this.c != null) {
            this.c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public boolean isAutoMirrored() {
        return this.c != null ? androidx.core.graphics.drawable.a.b(this.c) : this.f1028b.e;
    }

    public boolean isStateful() {
        if (this.c != null) {
            return this.c.isStateful();
        }
        if (!super.isStateful()) {
            g gVar = this.f1028b;
            if (gVar == null || (!gVar.d() && (this.f1028b.c == null || !this.f1028b.c.isStateful()))) {
                return false;
            }
        }
        return true;
    }

    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    public Drawable mutate() {
        if (this.c != null) {
            this.c.mutate();
            return this;
        }
        if (!this.f && super.mutate() == this) {
            this.f1028b = new g(this.f1028b);
            this.f = true;
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        if (this.c != null) {
            this.c.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        if (this.c != null) {
            return this.c.setState(iArr);
        }
        boolean z = false;
        g gVar = this.f1028b;
        if (!(gVar.c == null || gVar.d == null)) {
            this.d = a(this.d, gVar.c, gVar.d);
            invalidateSelf();
            z = true;
        }
        if (!gVar.d() || !gVar.a(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        if (this.c != null) {
            this.c.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        if (this.c != null) {
            this.c.setAlpha(i2);
        } else if (this.f1028b.f1036b.getRootAlpha() != i2) {
            this.f1028b.f1036b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAutoMirrored(boolean z) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, z);
        } else {
            this.f1028b.e = z;
        }
    }

    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    public /* bridge */ /* synthetic */ void setColorFilter(int i2, PorterDuff.Mode mode) {
        super.setColorFilter(i2, mode);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.c != null) {
            this.c.setColorFilter(colorFilter);
            return;
        }
        this.e = colorFilter;
        invalidateSelf();
    }

    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i3, int i4, int i5) {
        super.setHotspotBounds(i2, i3, i4, i5);
    }

    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    public void setTint(int i2) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, colorStateList);
            return;
        }
        g gVar = this.f1028b;
        if (gVar.c != colorStateList) {
            gVar.c = colorStateList;
            this.d = a(this.d, colorStateList, gVar.d);
            invalidateSelf();
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, mode);
            return;
        }
        g gVar = this.f1028b;
        if (gVar.d != mode) {
            gVar.d = mode;
            this.d = a(this.d, gVar.c, mode);
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        return this.c != null ? this.c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    public void unscheduleSelf(Runnable runnable) {
        if (this.c != null) {
            this.c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
