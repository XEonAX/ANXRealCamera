package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.b.e;
import androidx.core.a.a.c;
import androidx.core.a.a.f;
import androidx.core.d.b;

/* compiled from: TypefaceCompat */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final h f593a;

    /* renamed from: b  reason: collision with root package name */
    private static final e<String, Typeface> f594b = new e<>(16);

    static {
        if (Build.VERSION.SDK_INT >= 28) {
            f593a = new g();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f593a = new f();
        } else if (Build.VERSION.SDK_INT >= 24 && e.a()) {
            f593a = new e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f593a = new d();
        } else {
            f593a = new h();
        }
    }

    public static Typeface a(Context context, Resources resources, int i, String str, int i2) {
        Typeface a2 = f593a.a(context, resources, i, str, i2);
        if (a2 != null) {
            f594b.a(b(resources, i, i2), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                Typeface b2 = b(context, typeface, i);
                if (b2 != null) {
                    return b2;
                }
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b.C0012b[] bVarArr, int i) {
        return f593a.a(context, cancellationSignal, bVarArr, i);
    }

    public static Typeface a(Context context, c.a aVar, Resources resources, int i, int i2, f.a aVar2, Handler handler, boolean z) {
        Typeface typeface;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.b() == 0) {
                z2 = true;
            }
            typeface = b.a(context, dVar.a(), aVar2, handler, z2, z ? dVar.c() : -1, i2);
        } else {
            typeface = f593a.a(context, (c.b) aVar, resources, i2);
            if (aVar2 != null) {
                if (typeface != null) {
                    aVar2.a(typeface, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (typeface != null) {
            f594b.a(b(resources, i, i2), typeface);
        }
        return typeface;
    }

    public static Typeface a(Resources resources, int i, int i2) {
        return f594b.a(b(resources, i, i2));
    }

    private static Typeface b(Context context, Typeface typeface, int i) {
        c.b a2 = f593a.a(typeface);
        if (a2 == null) {
            return null;
        }
        return f593a.a(context, a2, context.getResources(), i);
    }

    private static String b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
