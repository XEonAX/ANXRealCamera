package com.a.a;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;

/* compiled from: AndroidSpringLooperFactory */
abstract class a {

    @TargetApi(16)
    /* renamed from: com.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: AndroidSpringLooperFactory */
    private static class C0045a extends i {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final Choreographer f1462b;
        /* access modifiers changed from: private */
        public final Choreographer.FrameCallback c = new Choreographer.FrameCallback() {
            public void doFrame(long j) {
                if (C0045a.this.d && C0045a.this.f1476a != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    C0045a.this.f1476a.b((double) (uptimeMillis - C0045a.this.e));
                    long unused = C0045a.this.e = uptimeMillis;
                    C0045a.this.f1462b.postFrameCallback(C0045a.this.c);
                }
            }
        };
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public long e;

        public C0045a(Choreographer choreographer) {
            this.f1462b = choreographer;
        }

        public static C0045a a() {
            return new C0045a(Choreographer.getInstance());
        }

        public void b() {
            if (!this.d) {
                this.d = true;
                this.e = SystemClock.uptimeMillis();
                this.f1462b.removeFrameCallback(this.c);
                this.f1462b.postFrameCallback(this.c);
            }
        }

        public void c() {
            this.d = false;
            this.f1462b.removeFrameCallback(this.c);
        }
    }

    /* compiled from: AndroidSpringLooperFactory */
    private static class b extends i {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final Handler f1464b;
        /* access modifiers changed from: private */
        public final Runnable c = new Runnable() {
            public void run() {
                if (b.this.d && b.this.f1476a != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    b.this.f1476a.b((double) (uptimeMillis - b.this.e));
                    long unused = b.this.e = uptimeMillis;
                    b.this.f1464b.post(b.this.c);
                }
            }
        };
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public long e;

        public b(Handler handler) {
            this.f1464b = handler;
        }

        public static i a() {
            return new b(new Handler());
        }

        public void b() {
            if (!this.d) {
                this.d = true;
                this.e = SystemClock.uptimeMillis();
                this.f1464b.removeCallbacks(this.c);
                this.f1464b.post(this.c);
            }
        }

        public void c() {
            this.d = false;
            this.f1464b.removeCallbacks(this.c);
        }
    }

    public static i a() {
        return Build.VERSION.SDK_INT >= 16 ? C0045a.a() : b.a();
    }
}
