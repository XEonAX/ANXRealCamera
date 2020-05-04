package color.support.a.a;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* compiled from: ColorViewCompat */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final d f1304a;

    /* renamed from: color.support.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: ColorViewCompat */
    static class C0036a implements d {
        C0036a() {
        }

        public int a(View view) {
            return 0;
        }

        public void a(View view, int i) {
        }

        @SuppressLint({"NewApi"})
        public int b(View view) {
            return view.getLayoutDirection();
        }

        public boolean c(View view) {
            return true;
        }
    }

    /* compiled from: ColorViewCompat */
    static class b extends C0036a {
        b() {
        }

        @SuppressLint({"NewApi"})
        public int a(View view) {
            return view.getTextAlignment();
        }

        @SuppressLint({"NewApi"})
        public void a(View view, int i) {
            view.setTextAlignment(i);
        }

        public boolean c(View view) {
            return true;
        }
    }

    /* compiled from: ColorViewCompat */
    static class c extends b {
        c() {
        }

        public int b(View view) {
            return 2;
        }
    }

    /* compiled from: ColorViewCompat */
    interface d {
        int a(View view);

        void a(View view, int i);

        int b(View view);

        boolean c(View view);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            f1304a = new c();
        } else if (i >= 16) {
            f1304a = new b();
        } else {
            f1304a = new C0036a();
        }
    }

    public static int a(View view) {
        return f1304a.a(view);
    }

    public static void a(View view, int i) {
        f1304a.a(view, i);
    }

    public static int b(View view) {
        return f1304a.b(view);
    }

    public static boolean c(View view) {
        return f1304a.c(view);
    }
}
