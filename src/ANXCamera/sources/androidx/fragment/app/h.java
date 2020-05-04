package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* compiled from: FragmentManager */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    static final f f687a = new f();

    /* renamed from: b  reason: collision with root package name */
    private f f688b = null;

    /* compiled from: FragmentManager */
    public static abstract class a {
        public void a(h hVar, Fragment fragment) {
        }

        public void a(h hVar, Fragment fragment, Context context) {
        }

        public void a(h hVar, Fragment fragment, Bundle bundle) {
        }

        public void a(h hVar, Fragment fragment, View view, Bundle bundle) {
        }

        public void b(h hVar, Fragment fragment) {
        }

        public void b(h hVar, Fragment fragment, Context context) {
        }

        public void b(h hVar, Fragment fragment, Bundle bundle) {
        }

        public void c(h hVar, Fragment fragment) {
        }

        public void c(h hVar, Fragment fragment, Bundle bundle) {
        }

        public void d(h hVar, Fragment fragment) {
        }

        public void d(h hVar, Fragment fragment, Bundle bundle) {
        }

        public void e(h hVar, Fragment fragment) {
        }

        public void f(h hVar, Fragment fragment) {
        }

        public void g(h hVar, Fragment fragment) {
        }
    }

    /* compiled from: FragmentManager */
    public interface b {
        void a();
    }

    public abstract Fragment a(String str);

    public abstract k a();

    public abstract void a(int i, int i2);

    public void a(f fVar) {
        this.f688b = fVar;
    }

    public abstract void a(a aVar);

    public abstract void a(a aVar, boolean z);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean b();

    public abstract boolean c();

    public abstract List<Fragment> d();

    public abstract boolean e();

    public f f() {
        if (this.f688b == null) {
            this.f688b = f687a;
        }
        return this.f688b;
    }

    public abstract boolean g();
}
