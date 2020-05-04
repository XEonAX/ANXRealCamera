package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R;
import androidx.b.h;
import androidx.vectordrawable.a.a.i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ResourceManagerInternal */
public final class ak {

    /* renamed from: a  reason: collision with root package name */
    private static final PorterDuff.Mode f327a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    private static ak f328b;
    private static final c c = new c(6);
    private WeakHashMap<Context, h<ColorStateList>> d;
    private androidx.b.a<String, d> e;
    private h<String> f;
    private final WeakHashMap<Context, androidx.b.d<WeakReference<Drawable.ConstantState>>> g = new WeakHashMap<>(0);
    private TypedValue h;
    private boolean i;
    private e j;

    /* compiled from: ResourceManagerInternal */
    static class a implements d {
        a() {
        }

        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal */
    private static class b implements d {
        b() {
        }

        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal */
    private static class c extends androidx.b.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* access modifiers changed from: package-private */
        public PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) a(Integer.valueOf(b(i, mode)));
        }

        /* access modifiers changed from: package-private */
        public PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) a(Integer.valueOf(b(i, mode)), porterDuffColorFilter);
        }
    }

    /* compiled from: ResourceManagerInternal */
    private interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* compiled from: ResourceManagerInternal */
    interface e {
        ColorStateList a(Context context, int i);

        PorterDuff.Mode a(int i);

        Drawable a(ak akVar, Context context, int i);

        boolean a(Context context, int i, Drawable drawable);

        boolean b(Context context, int i, Drawable drawable);
    }

    /* compiled from: ResourceManagerInternal */
    private static class f implements d {
        f() {
        }

        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private static long a(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (ak.class) {
            a2 = c.a(i2, mode);
            if (a2 == null) {
                a2 = new PorterDuffColorFilter(i2, mode);
                c.a(i2, mode, a2);
            }
        }
        return a2;
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    private Drawable a(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null) {
            if (ac.c(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable f2 = androidx.core.graphics.drawable.a.f(drawable);
            androidx.core.graphics.drawable.a.a(f2, b2);
            PorterDuff.Mode a2 = a(i2);
            if (a2 == null) {
                return f2;
            }
            androidx.core.graphics.drawable.a.a(f2, a2);
            return f2;
        }
        e eVar = this.j;
        if ((eVar == null || !eVar.a(context, i2, drawable)) && !a(context, i2, drawable) && z) {
            return null;
        }
        return drawable;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002c, code lost:
        return null;
     */
    private synchronized Drawable a(Context context, long j2) {
        androidx.b.d dVar = this.g.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) dVar.a(j2);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.b(j2);
        }
    }

    public static synchronized ak a() {
        ak akVar;
        synchronized (ak.class) {
            if (f328b == null) {
                f328b = new ak();
                a(f328b);
            }
            akVar = f328b;
        }
        return akVar;
    }

    private void a(Context context, int i2, ColorStateList colorStateList) {
        if (this.d == null) {
            this.d = new WeakHashMap<>();
        }
        h hVar = this.d.get(context);
        if (hVar == null) {
            hVar = new h();
            this.d.put(context, hVar);
        }
        hVar.c(i2, colorStateList);
    }

    static void a(Drawable drawable, as asVar, int[] iArr) {
        if (!ac.c(drawable) || drawable.mutate() == drawable) {
            if (asVar.d || asVar.c) {
                drawable.setColorFilter(a(asVar.d ? asVar.f346a : null, asVar.c ? asVar.f347b : f327a, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    private static void a(ak akVar) {
        if (Build.VERSION.SDK_INT < 24) {
            akVar.a("vector", (d) new f());
            akVar.a("animated-vector", (d) new b());
            akVar.a("animated-selector", (d) new a());
        }
    }

    private void a(String str, d dVar) {
        if (this.e == null) {
            this.e = new androidx.b.a<>();
        }
        this.e.put(str, dVar);
    }

    private synchronized boolean a(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        androidx.b.d dVar = this.g.get(context);
        if (dVar == null) {
            dVar = new androidx.b.d();
            this.g.put(context, dVar);
        }
        dVar.b(j2, new WeakReference(constantState));
        return true;
    }

    private static boolean a(Drawable drawable) {
        return (drawable instanceof i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private void b(Context context) {
        if (!this.i) {
            this.i = true;
            Drawable a2 = a(context, R.drawable.abc_vector_test);
            if (a2 == null || !a(a2)) {
                this.i = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    private Drawable c(Context context, int i2) {
        if (this.h == null) {
            this.h = new TypedValue();
        }
        TypedValue typedValue = this.h;
        context.getResources().getValue(i2, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 != null) {
            return a3;
        }
        e eVar = this.j;
        Drawable a4 = eVar == null ? null : eVar.a(this, context, i2);
        if (a4 != null) {
            a4.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, a2, a4);
        }
        return a4;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0075 A[Catch:{ Exception -> 0x00a4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009c A[Catch:{ Exception -> 0x00a4 }] */
    private Drawable d(Context context, int i2) {
        int next;
        androidx.b.a<String, d> aVar = this.e;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        h<String> hVar = this.f;
        if (hVar != null) {
            String a2 = hVar.a(i2);
            if ("appcompat_skip_skip".equals(a2) || (a2 != null && this.e.get(a2) == null)) {
                return null;
            }
        } else {
            this.f = new h<>();
        }
        if (this.h == null) {
            this.h = new TypedValue();
        }
        TypedValue typedValue = this.h;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        if (next != 2) {
                            String name = xml.getName();
                            this.f.c(i2, name);
                            d dVar = this.e.get(name);
                            if (dVar != null) {
                                a4 = dVar.a(context, xml, asAttributeSet, context.getTheme());
                            }
                            if (a4 != null) {
                                a4.setChangingConfigurations(typedValue.changingConfigurations);
                                a(context, a3, a4);
                            }
                        } else {
                            throw new XmlPullParserException("No start tag found");
                        }
                    }
                }
                if (next != 2) {
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (a4 == null) {
            this.f.c(i2, "appcompat_skip_skip");
        }
        return a4;
    }

    private ColorStateList e(Context context, int i2) {
        WeakHashMap<Context, h<ColorStateList>> weakHashMap = this.d;
        if (weakHashMap == null) {
            return null;
        }
        h hVar = weakHashMap.get(context);
        if (hVar != null) {
            return (ColorStateList) hVar.a(i2);
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode a(int i2) {
        e eVar = this.j;
        if (eVar == null) {
            return null;
        }
        return eVar.a(i2);
    }

    public synchronized Drawable a(Context context, int i2) {
        return a(context, i2, false);
    }

    /* access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, int i2, boolean z) {
        Drawable d2;
        b(context);
        d2 = d(context, i2);
        if (d2 == null) {
            d2 = c(context, i2);
        }
        if (d2 == null) {
            d2 = androidx.core.a.a.a(context, i2);
        }
        if (d2 != null) {
            d2 = a(context, i2, z, d2);
        }
        if (d2 != null) {
            ac.b(d2);
        }
        return d2;
    }

    /* access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, az azVar, int i2) {
        Drawable d2 = d(context, i2);
        if (d2 == null) {
            d2 = azVar.a(i2);
        }
        if (d2 == null) {
            return null;
        }
        return a(context, i2, false, d2);
    }

    public synchronized void a(Context context) {
        androidx.b.d dVar = this.g.get(context);
        if (dVar != null) {
            dVar.d();
        }
    }

    public synchronized void a(e eVar) {
        this.j = eVar;
    }

    /* access modifiers changed from: package-private */
    public boolean a(Context context, int i2, Drawable drawable) {
        e eVar = this.j;
        return eVar != null && eVar.b(context, i2, drawable);
    }

    /* access modifiers changed from: package-private */
    public synchronized ColorStateList b(Context context, int i2) {
        ColorStateList e2;
        e2 = e(context, i2);
        if (e2 == null) {
            e2 = this.j == null ? null : this.j.a(context, i2);
            if (e2 != null) {
                a(context, i2, e2);
            }
        }
        return e2;
    }
}
