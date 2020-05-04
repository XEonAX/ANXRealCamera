package com.oppo.camera.j;

import android.os.Process;
import com.oppo.camera.v;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ProcessQueueThread */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private ExecutorService f2221a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2222b = 0;
    private int c = 0;
    private boolean d = false;

    static /* synthetic */ int a(d dVar) {
        int i = dVar.c;
        dVar.c = i - 1;
        return i;
    }

    /* access modifiers changed from: private */
    public void a() {
        if (this.d && g()) {
            com.oppo.camera.d.e("ProcessQueueThread", "checkAndKillProcess will kill camera process");
            Process.killProcess(Process.myPid());
        }
    }

    static /* synthetic */ int b(d dVar) {
        int i = dVar.f2222b;
        dVar.f2222b = i - 1;
        return i;
    }

    public final void a(boolean z) {
        this.d = z;
        a();
    }

    /* access modifiers changed from: protected */
    public abstract void b();

    /* access modifiers changed from: protected */
    public abstract void b(v.a aVar) throws Exception;

    public final void c(final v.a aVar) {
        com.oppo.camera.d.a("ProcessQueueThread", "pictureArrive, width: " + aVar.o + ", height: " + aVar.p + ", orientation: " + aVar.r);
        synchronized (this) {
            this.c++;
            if ("raw".equals(aVar.i)) {
                this.f2222b++;
            }
        }
        this.f2221a.submit(new Runnable() {
            /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
            public void run() {
                try {
                    d.this.b(aVar);
                    synchronized (d.this) {
                        d.a(d.this);
                        if ("raw".equals(aVar.i)) {
                            d.b(d.this);
                        }
                        d.this.a();
                    }
                } catch (Exception e) {
                    try {
                        e.printStackTrace();
                        synchronized (d.this) {
                            d.a(d.this);
                            if ("raw".equals(aVar.i)) {
                                d.b(d.this);
                            }
                            d.this.a();
                        }
                    } catch (Throwable th) {
                        synchronized (d.this) {
                            d.a(d.this);
                            if ("raw".equals(aVar.i)) {
                                d.b(d.this);
                            }
                            d.this.a();
                            throw th;
                        }
                    }
                }
            }
        });
    }

    public void d() {
        b();
        if (this.f2221a == null) {
            this.f2221a = Executors.newSingleThreadExecutor();
        }
    }

    public int e() {
        int i;
        com.oppo.camera.d.a("ProcessQueueThread", "getSaveListRawCount");
        synchronized (this) {
            i = this.f2222b;
        }
        return i;
    }

    public synchronized boolean f() {
        return this.c > 50;
    }

    public synchronized boolean g() {
        return this.c == 0;
    }
}
