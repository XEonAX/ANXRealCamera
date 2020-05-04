package androidx.dynamicanimation.a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.b.g;
import java.util.ArrayList;

/* compiled from: AnimationHandler */
class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<a> f641a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<b> f642b = new ArrayList<>();
    long c = 0;
    private final g<b, Long> d = new g<>();
    private final C0022a e = new C0022a();
    private c f;
    private boolean g = false;

    /* renamed from: androidx.dynamicanimation.a.a$a  reason: collision with other inner class name */
    /* compiled from: AnimationHandler */
    class C0022a {
        C0022a() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            a.this.c = SystemClock.uptimeMillis();
            a aVar = a.this;
            aVar.a(aVar.c);
            if (a.this.f642b.size() > 0) {
                a.this.b().a();
            }
        }
    }

    /* compiled from: AnimationHandler */
    interface b {
        boolean a(long j);
    }

    /* compiled from: AnimationHandler */
    static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final C0022a f644a;

        c(C0022a aVar) {
            this.f644a = aVar;
        }

        /* access modifiers changed from: package-private */
        public abstract void a();
    }

    /* compiled from: AnimationHandler */
    private static class d extends c {

        /* renamed from: b  reason: collision with root package name */
        long f645b = -1;
        private final Runnable c = new Runnable() {
            public void run() {
                d.this.f645b = SystemClock.uptimeMillis();
                d.this.f644a.a();
            }
        };
        private final Handler d = new Handler(Looper.myLooper());

        d(C0022a aVar) {
            super(aVar);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.d.postDelayed(this.c, Math.max(10 - (SystemClock.uptimeMillis() - this.f645b), 0));
        }
    }

    /* compiled from: AnimationHandler */
    private static class e extends c {

        /* renamed from: b  reason: collision with root package name */
        private final Choreographer f647b = Choreographer.getInstance();
        private final Choreographer.FrameCallback c = new Choreographer.FrameCallback() {
            public void doFrame(long j) {
                e.this.f644a.a();
            }
        };

        e(C0022a aVar) {
            super(aVar);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f647b.postFrameCallback(this.c);
        }
    }

    a() {
    }

    public static a a() {
        if (f641a.get() == null) {
            f641a.set(new a());
        }
        return f641a.get();
    }

    private boolean b(b bVar, long j) {
        Long l = this.d.get(bVar);
        if (l == null) {
            return true;
        }
        if (l.longValue() >= j) {
            return false;
        }
        this.d.remove(bVar);
        return true;
    }

    private void c() {
        if (this.g) {
            for (int size = this.f642b.size() - 1; size >= 0; size--) {
                if (this.f642b.get(size) == null) {
                    this.f642b.remove(size);
                }
            }
            this.g = false;
        }
    }

    /* access modifiers changed from: package-private */
    public void a(long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.f642b.size(); i++) {
            b bVar = this.f642b.get(i);
            if (bVar != null && b(bVar, uptimeMillis)) {
                bVar.a(j);
            }
        }
        c();
    }

    public void a(b bVar) {
        this.d.remove(bVar);
        int indexOf = this.f642b.indexOf(bVar);
        if (indexOf >= 0) {
            this.f642b.set(indexOf, (Object) null);
            this.g = true;
        }
    }

    public void a(b bVar, long j) {
        if (this.f642b.size() == 0) {
            b().a();
        }
        if (!this.f642b.contains(bVar)) {
            this.f642b.add(bVar);
        }
        if (j > 0) {
            this.d.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    /* access modifiers changed from: package-private */
    public c b() {
        if (this.f == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f = new e(this.e);
            } else {
                this.f = new d(this.e);
            }
        }
        return this.f;
    }
}
