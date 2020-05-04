package androidx.a.a.a;

import java.util.concurrent.Executor;

/* compiled from: ArchTaskExecutor */
public class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f0a;
    private static final Executor d = new Executor() {
        public void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };
    private static final Executor e = new Executor() {
        public void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private c f1b = this.c;
    private c c = new b();

    private a() {
    }

    public static a a() {
        if (f0a != null) {
            return f0a;
        }
        synchronized (a.class) {
            if (f0a == null) {
                f0a = new a();
            }
        }
        return f0a;
    }

    public void a(Runnable runnable) {
        this.f1b.a(runnable);
    }

    public void b(Runnable runnable) {
        this.f1b.b(runnable);
    }

    public boolean b() {
        return this.f1b.b();
    }
}
