package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import java.lang.reflect.Field;

final class ImmLeaksCleaner implements f {

    /* renamed from: a  reason: collision with root package name */
    private static int f17a;

    /* renamed from: b  reason: collision with root package name */
    private static Field f18b;
    private static Field c;
    private static Field d;
    private Activity e;

    ImmLeaksCleaner(Activity activity) {
        this.e = activity;
    }

    private static void a() {
        try {
            f17a = 2;
            c = InputMethodManager.class.getDeclaredField("mServedView");
            c.setAccessible(true);
            d = InputMethodManager.class.getDeclaredField("mNextServedView");
            d.setAccessible(true);
            f18b = InputMethodManager.class.getDeclaredField("mH");
            f18b.setAccessible(true);
            f17a = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:29|30|31) */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0045, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0044 */
    public void a(h hVar, e.a aVar) {
        if (aVar == e.a.ON_DESTROY) {
            if (f17a == 0) {
                a();
            }
            if (f17a == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.e.getSystemService("input_method");
                try {
                    Object obj = f18b.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                View view = (View) c.get(inputMethodManager);
                                if (view != null) {
                                    if (!view.isAttachedToWindow()) {
                                        d.set(inputMethodManager, (Object) null);
                                        inputMethodManager.isActive();
                                    }
                                }
                            } catch (IllegalAccessException unused) {
                            } catch (ClassCastException unused2) {
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (IllegalAccessException unused3) {
                }
            }
        }
    }
}
