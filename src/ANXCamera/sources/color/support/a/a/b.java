package color.support.a.a;

import android.os.Build;
import android.view.ViewTreeObserver;

/* compiled from: ColorViewTreeObserverCompat */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static final c f1305a;

    /* compiled from: ColorViewTreeObserverCompat */
    static class a implements c {
        a() {
        }

        public void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    /* renamed from: color.support.a.a.b$b  reason: collision with other inner class name */
    /* compiled from: ColorViewTreeObserverCompat */
    static class C0037b extends a {
        C0037b() {
        }

        public void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* compiled from: ColorViewTreeObserverCompat */
    interface c {
        void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener);
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f1305a = new C0037b();
        } else {
            f1305a = new a();
        }
    }

    public static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        f1305a.a(viewTreeObserver, onGlobalLayoutListener);
    }
}
