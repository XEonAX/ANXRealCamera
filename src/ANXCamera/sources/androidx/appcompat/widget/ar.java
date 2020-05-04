package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: TintContextWrapper */
public class ar extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f344a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<WeakReference<ar>> f345b;
    private final Resources c;
    private final Resources.Theme d;

    private ar(Context context) {
        super(context);
        if (az.a()) {
            this.c = new az(this, context.getResources());
            this.d = this.c.newTheme();
            this.d.setTo(context.getTheme());
            return;
        }
        this.c = new at(this, context.getResources());
        this.d = null;
    }

    public static Context a(Context context) {
        if (!b(context)) {
            return context;
        }
        synchronized (f344a) {
            if (f345b == null) {
                f345b = new ArrayList<>();
            } else {
                for (int size = f345b.size() - 1; size >= 0; size--) {
                    WeakReference weakReference = f345b.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f345b.remove(size);
                    }
                }
                for (int size2 = f345b.size() - 1; size2 >= 0; size2--) {
                    WeakReference weakReference2 = f345b.get(size2);
                    ar arVar = weakReference2 != null ? (ar) weakReference2.get() : null;
                    if (arVar != null && arVar.getBaseContext() == context) {
                        return arVar;
                    }
                }
            }
            ar arVar2 = new ar(context);
            f345b.add(new WeakReference(arVar2));
            return arVar2;
        }
    }

    private static boolean b(Context context) {
        if ((context instanceof ar) || (context.getResources() instanceof at) || (context.getResources() instanceof az)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || az.a();
    }

    public AssetManager getAssets() {
        return this.c.getAssets();
    }

    public Resources getResources() {
        return this.c;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.d;
        return theme == null ? super.getTheme() : theme;
    }

    public void setTheme(int i) {
        Resources.Theme theme = this.d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
