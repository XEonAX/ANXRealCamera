package com.color.support.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import color.support.v7.appcompat.R;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: SecurityKeyboard */
public class j {
    private static float s = 1.8f;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public int f1705a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public int f1706b;
    /* access modifiers changed from: private */
    public int c;
    /* access modifiers changed from: private */
    public int d;
    private boolean e;
    private a[] f;
    private int[] g;
    private int h;
    private int i;
    private List<a> j;
    private List<a> k;
    /* access modifiers changed from: private */
    public int l;
    /* access modifiers changed from: private */
    public int m;
    private int n;
    private int o;
    private int p;
    private int[][] q;
    private int r;
    private ArrayList<b> t;
    private int u;

    /* compiled from: SecurityKeyboard */
    public static class a {
        private static final int[] t = {16842911, 16842912};
        private static final int[] u = {16842919, 16842911, 16842912};
        private static final int[] v = {16842911};
        private static final int[] w = {16842919, 16842911};
        private static final int[] x = new int[0];
        private static final int[] y = {16842919};

        /* renamed from: a  reason: collision with root package name */
        public int[] f1707a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f1708b;
        public Drawable c;
        public Drawable d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public int i;
        public int j;
        public boolean k;
        public boolean l;
        public CharSequence m;
        public CharSequence n;
        public int o;
        public boolean p;
        public int q;
        public boolean r;
        private j s;

        public a(Resources resources, b bVar, int i2, int i3, XmlResourceParser xmlResourceParser) {
            this(bVar);
            this.i = i2;
            this.j = i3;
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.SecurityKeyboard);
            this.e = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorKeyWidth, this.s.l, bVar.f1709a);
            this.f = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorKeyHeight, this.s.m, bVar.f1710b);
            this.g = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorHorizontalGap, this.s.l, bVar.c);
            obtainAttributes.recycle();
            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.SecurityKeyboard_Key);
            this.i += this.g;
            TypedValue typedValue = new TypedValue();
            obtainAttributes2.getValue(R.styleable.SecurityKeyboard_Key_colorCodes, typedValue);
            if (typedValue.type == 16 || typedValue.type == 17) {
                this.f1707a = new int[]{typedValue.data};
            } else if (typedValue.type == 3) {
                this.f1707a = a(typedValue.string.toString());
            }
            this.d = obtainAttributes2.getDrawable(R.styleable.SecurityKeyboard_Key_colorIconPreview);
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.d.getIntrinsicHeight());
            }
            this.n = obtainAttributes2.getText(R.styleable.SecurityKeyboard_Key_colorPopupCharacters);
            this.q = obtainAttributes2.getResourceId(R.styleable.SecurityKeyboard_Key_colorPopupKeyboard, 0);
            this.r = obtainAttributes2.getBoolean(R.styleable.SecurityKeyboard_Key_colorIsRepeatable, false);
            this.p = obtainAttributes2.getBoolean(R.styleable.SecurityKeyboard_Key_colorIsModifier, false);
            this.h = obtainAttributes2.getBoolean(R.styleable.SecurityKeyboard_Key_colorIsSticky, false);
            this.o = obtainAttributes2.getInt(R.styleable.SecurityKeyboard_Key_colorKeyEdgeFlags, 0);
            this.o = bVar.f | this.o;
            this.c = obtainAttributes2.getDrawable(R.styleable.SecurityKeyboard_Key_colorKeyIcon);
            Drawable drawable2 = this.c;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.c.getIntrinsicHeight());
            }
            this.f1708b = obtainAttributes2.getText(R.styleable.SecurityKeyboard_Key_colorKeyLabel);
            this.m = obtainAttributes2.getText(R.styleable.SecurityKeyboard_Key_colorKeyOutputText);
            if (this.f1707a == null && !TextUtils.isEmpty(this.f1708b)) {
                this.f1707a = new int[]{this.f1708b.charAt(0)};
            }
            obtainAttributes2.recycle();
        }

        public a(b bVar) {
            this.s = bVar.h;
            this.f = bVar.f1710b;
            this.e = bVar.f1709a;
            this.g = bVar.c;
            this.o = bVar.f;
        }

        public void a() {
            this.k = !this.k;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setState(b());
            }
        }

        public void a(boolean z) {
            this.k = !this.k;
            if (this.h && z) {
                this.l = !this.l;
            }
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setState(b());
            }
        }

        public boolean a(int i2, int i3) {
            boolean z = (this.o & 1) > 0;
            boolean z2 = (this.o & 2) > 0;
            boolean z3 = (this.o & 4) > 0;
            boolean z4 = (this.o & 8) > 0;
            int i4 = this.i;
            if (i2 >= i4 || (z && i2 <= i4 + this.e)) {
                int i5 = this.i;
                if (i2 < this.e + i5 || (z2 && i2 >= i5)) {
                    int i6 = this.j;
                    if (i3 >= i6 || (z3 && i3 <= i6 + this.f)) {
                        int i7 = this.j;
                        if (i3 < this.f + i7 || (z4 && i3 >= i7)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public int[] a(String str) {
            int i2;
            int i3 = 0;
            if (str.length() > 0) {
                i2 = 1;
                int i4 = 0;
                while (true) {
                    i4 = str.indexOf(",", i4 + 1);
                    if (i4 <= 0) {
                        break;
                    }
                    i2++;
                }
            } else {
                i2 = 0;
            }
            int[] iArr = new int[i2];
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            while (stringTokenizer.hasMoreTokens()) {
                int i5 = i3 + 1;
                try {
                    iArr[i3] = Integer.parseInt(stringTokenizer.nextToken());
                } catch (NumberFormatException unused) {
                    Log.e("SecurityKeyboard", "Error parsing keycodes " + str);
                }
                i3 = i5;
            }
            return iArr;
        }

        public int b(int i2, int i3) {
            int i4 = (this.i + (this.e / 2)) - i2;
            int i5 = (this.j + (this.f / 2)) - i3;
            return (i4 * i4) + (i5 * i5);
        }

        public int[] b() {
            return this.l ? this.k ? u : t : this.h ? this.k ? w : v : this.k ? y : x;
        }
    }

    /* compiled from: SecurityKeyboard */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f1709a;

        /* renamed from: b  reason: collision with root package name */
        public int f1710b;
        public int c;
        public int d;
        ArrayList<a> e = new ArrayList<>();
        public int f;
        public int g;
        /* access modifiers changed from: private */
        public j h;

        public b(Resources resources, j jVar, XmlResourceParser xmlResourceParser) {
            this.h = jVar;
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.SecurityKeyboard);
            this.f1709a = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorKeyWidth, jVar.l, jVar.f1706b);
            this.f1710b = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorKeyHeight, jVar.m, jVar.c);
            this.c = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorHorizontalGap, jVar.l, jVar.f1705a);
            this.d = j.a(obtainAttributes, R.styleable.SecurityKeyboard_colorVerticalGap, jVar.m, jVar.d);
            obtainAttributes.recycle();
            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.SecurityKeyboard_Row);
            this.f = obtainAttributes2.getInt(R.styleable.SecurityKeyboard_Row_colorRowEdgeFlags, 0);
            this.g = obtainAttributes2.getResourceId(R.styleable.SecurityKeyboard_Row_colorKeyboardMode, 0);
        }

        public b(j jVar) {
            this.h = jVar;
        }
    }

    public j(Context context, int i2) {
        this(context, i2, 0);
    }

    public j(Context context, int i2, int i3) {
        this.f = new a[]{null, null};
        this.g = new int[]{-1, -1};
        this.t = new ArrayList<>();
        this.u = 0;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.l = displayMetrics.widthPixels;
        this.m = displayMetrics.heightPixels;
        this.f1705a = 0;
        this.f1706b = this.l / 10;
        this.d = 0;
        this.c = this.f1706b;
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.n = i3;
        a(context, context.getResources().getXml(i2));
        b(context);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v0, resolved type: int[]} */
    /* JADX WARNING: type inference failed for: r4v1, types: [char] */
    /* JADX WARNING: Multi-variable type inference failed */
    public j(Context context, int i2, CharSequence charSequence, int i3, int i4) {
        this(context, i2);
        this.i = 0;
        b bVar = new b(this);
        bVar.f1710b = this.c;
        bVar.f1709a = this.f1706b;
        bVar.c = this.f1705a;
        bVar.d = this.d;
        bVar.f = 12;
        i3 = i3 == -1 ? Integer.MAX_VALUE : i3;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < charSequence.length(); i8++) {
            ? charAt = charSequence.charAt(i8);
            if (i6 >= i3 || this.f1706b + i7 + i4 > this.l) {
                i5 += this.d + this.c;
                i6 = 0;
                i7 = 0;
            }
            a aVar = new a(bVar);
            aVar.i = i7;
            aVar.j = i5;
            aVar.f1708b = String.valueOf(charAt);
            aVar.f1707a = new int[]{charAt};
            i6++;
            i7 += aVar.e + aVar.g;
            this.j.add(aVar);
            bVar.e.add(aVar);
            if (i7 > this.i) {
                this.i = i7;
            }
        }
        this.h = i5 + this.c;
        this.t.add(bVar);
    }

    public static float a(Context context) {
        return ((float) g()) / ((float) context.getResources().getDisplayMetrics().densityDpi);
    }

    static int a(TypedArray typedArray, int i2, int i3, int i4) {
        TypedValue peekValue = typedArray.peekValue(i2);
        return peekValue == null ? i4 : peekValue.type == 5 ? typedArray.getDimensionPixelOffset(i2, i4) : peekValue.type == 6 ? Math.round(typedArray.getFraction(i2, i3, i3, (float) i4)) : i4;
    }

    private void a(Context context, XmlResourceParser xmlResourceParser) {
        Resources resources = context.getResources();
        a aVar = null;
        b bVar = null;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        loop0:
        while (true) {
            int i4 = i3;
            while (true) {
                try {
                    int next = xmlResourceParser.next();
                    if (next == 1) {
                        break loop0;
                    } else if (next == 2) {
                        String name = xmlResourceParser.getName();
                        if ("Row".equals(name)) {
                            bVar = a(resources, xmlResourceParser);
                            this.t.add(bVar);
                            if ((bVar.g == 0 || bVar.g == this.n) ? false : true) {
                                break;
                            }
                            i4 = 0;
                            i3 = 1;
                        } else if ("Key".equals(name)) {
                            a a2 = a(resources, bVar, i4, i2, xmlResourceParser);
                            this.j.add(a2);
                            if (a2.f1707a[0] == -1) {
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= this.f.length) {
                                        break;
                                    } else if (this.f[i5] == null) {
                                        this.f[i5] = a2;
                                        this.g[i5] = this.j.size() - 1;
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                                this.k.add(a2);
                            } else if (a2.f1707a[0] == -6) {
                                this.k.add(a2);
                            }
                            bVar.e.add(a2);
                            aVar = a2;
                            z = true;
                        } else if ("Keyboard".equals(name)) {
                            b(resources, xmlResourceParser);
                        }
                    } else if (next == 3) {
                        if (z) {
                            i4 += aVar.g + aVar.e;
                            if (i4 > this.i) {
                                this.i = i4;
                            }
                            z = false;
                        } else if (i3 != 0) {
                            i2 = i2 + bVar.d + bVar.f1710b;
                            i3 = 0;
                        }
                    }
                } catch (Exception e2) {
                    Log.e("SecurityKeyboard", "Parse error:" + e2);
                    e2.printStackTrace();
                }
            }
            a(xmlResourceParser);
            i3 = 0;
        }
        this.h = i2 - this.d;
    }

    private void a(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getName().equals("Row")) {
                return;
            }
        }
    }

    private void b(Resources resources, XmlResourceParser xmlResourceParser) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.SecurityKeyboard);
        int i2 = R.styleable.SecurityKeyboard_colorKeyWidth;
        int i3 = this.l;
        this.f1706b = a(obtainAttributes, i2, i3, i3 / 10);
        this.c = a(obtainAttributes, R.styleable.SecurityKeyboard_colorKeyHeight, this.m, 50);
        this.f1705a = a(obtainAttributes, R.styleable.SecurityKeyboard_colorHorizontalGap, this.l, 0);
        this.d = a(obtainAttributes, R.styleable.SecurityKeyboard_colorVerticalGap, this.m, 0);
        this.r = (int) (((float) this.f1706b) * s);
        int i4 = this.r;
        this.r = i4 * i4;
        obtainAttributes.recycle();
    }

    private void f() {
        this.o = ((c() + 10) - 1) / 10;
        this.p = ((b() + 5) - 1) / 5;
        this.q = new int[50][];
        int[] iArr = new int[this.j.size()];
        int i2 = this.o * 10;
        int i3 = this.p * 5;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            while (i5 < i3) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.j.size(); i7++) {
                    a aVar = this.j.get(i7);
                    if (aVar.b(i4, i5) < this.r || aVar.b((this.o + i4) - 1, i5) < this.r || aVar.b((this.o + i4) - 1, (this.p + i5) - 1) < this.r || aVar.b(i4, (this.p + i5) - 1) < this.r) {
                        iArr[i6] = i7;
                        i6++;
                    }
                }
                int[] iArr2 = new int[i6];
                System.arraycopy(iArr, 0, iArr2, 0, i6);
                int[][] iArr3 = this.q;
                int i8 = this.p;
                iArr3[((i5 / i8) * 10) + (i4 / this.o)] = iArr2;
                i5 += i8;
            }
            i4 += this.o;
        }
    }

    private static int g() {
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Method method = cls.getMethod("getWindowManagerService", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(cls, new Object[0]);
            Method method2 = invoke.getClass().getMethod("getInitialDisplayDensity", new Class[]{Integer.TYPE});
            method2.setAccessible(true);
            return ((Integer) method2.invoke(invoke, new Object[]{0})).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return DisplayMetrics.DENSITY_DEVICE_STABLE;
        }
    }

    /* access modifiers changed from: protected */
    public a a(Resources resources, b bVar, int i2, int i3, XmlResourceParser xmlResourceParser) {
        a aVar = new a(resources, bVar, i2, i3, xmlResourceParser);
        return aVar;
    }

    /* access modifiers changed from: protected */
    public b a(Resources resources, XmlResourceParser xmlResourceParser) {
        return new b(resources, this, xmlResourceParser);
    }

    public List<a> a() {
        return this.j;
    }

    public boolean a(boolean z) {
        for (a aVar : this.f) {
            if (aVar != null) {
                aVar.l = z;
            }
        }
        if (this.e == z) {
            return false;
        }
        this.e = z;
        return true;
    }

    public int[] a(int i2, int i3) {
        if (this.q == null) {
            f();
        }
        if (i2 >= 0 && i2 < c() && i3 >= 0 && i3 < b()) {
            int i4 = ((i3 / this.p) * 10) + (i2 / this.o);
            if (i4 < 50) {
                return this.q[i4];
            }
        }
        return new int[0];
    }

    public int b() {
        return this.h;
    }

    public void b(Context context) {
        float a2 = a(context);
        int size = this.t.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            b bVar = this.t.get(i2);
            int size2 = bVar.e.size();
            int i4 = 0;
            int i5 = i3;
            for (int i6 = 0; i6 < size2; i6++) {
                a aVar = bVar.e.get(i6);
                aVar.g = (int) (((float) aVar.g) * a2);
                int i7 = i4 + aVar.g;
                aVar.i = i7;
                aVar.e = (int) (((float) aVar.e) * a2);
                i4 = i7 + aVar.e;
                if (i4 > i5) {
                    i5 = i4;
                }
            }
            i2++;
            i3 = i5;
        }
        this.i = i3;
        Log.d("SecurityKeyboard", "onSecurityResize: " + a2 + "mTotalWidth=" + this.i);
    }

    public int c() {
        return this.i;
    }

    public boolean d() {
        return this.e;
    }

    public int e() {
        return this.u;
    }
}
