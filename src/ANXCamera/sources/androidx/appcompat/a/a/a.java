package androidx.appcompat.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.ak;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

@SuppressLint({"RestrictedAPI"})
/* compiled from: AppCompatResources */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f33a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0001a>> f34b = new WeakHashMap<>(0);
    private static final Object c = new Object();

    /* renamed from: androidx.appcompat.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: AppCompatResources */
    private static class C0001a {

        /* renamed from: a  reason: collision with root package name */
        final ColorStateList f35a;

        /* renamed from: b  reason: collision with root package name */
        final Configuration f36b;

        C0001a(ColorStateList colorStateList, Configuration configuration) {
            this.f35a = colorStateList;
            this.f36b = configuration;
        }
    }

    public static ColorStateList a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList d = d(context, i);
        if (d != null) {
            return d;
        }
        ColorStateList c2 = c(context, i);
        if (c2 == null) {
            return androidx.core.a.a.b(context, i);
        }
        a(context, i, c2);
        return c2;
    }

    private static TypedValue a() {
        TypedValue typedValue = f33a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f33a.set(typedValue2);
        return typedValue2;
    }

    private static void a(Context context, int i, ColorStateList colorStateList) {
        synchronized (c) {
            SparseArray sparseArray = f34b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                f34b.put(context, sparseArray);
            }
            sparseArray.append(i, new C0001a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    public static Drawable b(Context context, int i) {
        return ak.a().a(context, i);
    }

    private static ColorStateList c(Context context, int i) {
        if (e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return androidx.core.a.a.a.a(resources, (XmlPullParser) resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0033, code lost:
        return null;
     */
    private static ColorStateList d(Context context, int i) {
        synchronized (c) {
            SparseArray sparseArray = f34b.get(context);
            if (sparseArray != null && sparseArray.size() > 0) {
                C0001a aVar = (C0001a) sparseArray.get(i);
                if (aVar != null) {
                    if (aVar.f36b.equals(context.getResources().getConfiguration())) {
                        ColorStateList colorStateList = aVar.f35a;
                        return colorStateList;
                    }
                    sparseArray.remove(i);
                }
            }
        }
    }

    private static boolean e(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue a2 = a();
        resources.getValue(i, a2, true);
        return a2.type >= 28 && a2.type <= 31;
    }
}
