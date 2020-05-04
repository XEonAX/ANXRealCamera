package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* compiled from: VectorEnabledTintResources */
public class az extends Resources {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f363a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Context> f364b;

    public az(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f364b = new WeakReference<>(context);
    }

    public static boolean a() {
        return b() && Build.VERSION.SDK_INT <= 20;
    }

    public static boolean b() {
        return f363a;
    }

    /* access modifiers changed from: package-private */
    public final Drawable a(int i) {
        return super.getDrawable(i);
    }

    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = (Context) this.f364b.get();
        return context != null ? ak.a().a(context, this, i) : super.getDrawable(i);
    }
}
