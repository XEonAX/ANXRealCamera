package color.support.a.a;

import android.os.Build;
import android.view.KeyEvent;

/* compiled from: KeyEventCompat */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final d f1306a;

    /* compiled from: KeyEventCompat */
    static class a implements d {
        a() {
        }

        public int a(int i) {
            if ((i & 192) != 0) {
                i |= 1;
            }
            if ((i & 48) != 0) {
                i |= 2;
            }
            return i & 247;
        }

        public boolean b(int i) {
            return (a(i) & 247) == 0;
        }
    }

    /* compiled from: KeyEventCompat */
    static class b extends a {
        b() {
        }
    }

    /* renamed from: color.support.a.a.c$c  reason: collision with other inner class name */
    /* compiled from: KeyEventCompat */
    static class C0038c extends b {
        C0038c() {
        }

        public int a(int i) {
            return d.a(i);
        }

        public boolean b(int i) {
            return d.b(i);
        }
    }

    /* compiled from: KeyEventCompat */
    interface d {
        boolean b(int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f1306a = new C0038c();
        } else {
            f1306a = new a();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return f1306a.b(keyEvent.getMetaState());
    }
}
