package com.oppo.camera;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: CameraThreadExector */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private a f2198a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f2199b;

    /* compiled from: CameraThreadExector */
    public class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        String f2202a = null;

        public a() {
        }

        public void a(String str) {
            d.a("CameraThreadExector", "thread name: " + str);
            this.f2202a = str;
        }

        public Thread newThread(Runnable runnable) {
            if (this.f2202a == null) {
                d.e("CameraThreadExector", "thread name is null");
            }
            return new Thread(runnable, this.f2202a);
        }
    }

    public h() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 3, TimeUnit.SECONDS, new LinkedBlockingQueue(), this.f2198a);
        this.f2199b = threadPoolExecutor;
        this.f2199b.allowCoreThreadTimeOut(true);
    }

    public void a() {
        this.f2199b.shutdown();
    }

    public void a(Runnable runnable, String str) {
        this.f2198a.a(str);
        this.f2199b.execute(runnable);
    }
}
