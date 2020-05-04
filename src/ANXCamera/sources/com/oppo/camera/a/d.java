package com.oppo.camera.a;

import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: FrameInfos */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<Long, a> f1827a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f1828b = false;

    /* compiled from: FrameInfos */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1829a;

        /* renamed from: b  reason: collision with root package name */
        public int f1830b;
        public int c;
        public int d;
        public int e;
        public TotalCaptureResult f;
        public Vector<b> g = new Vector<>();
    }

    /* compiled from: FrameInfos */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public Image f1831a = null;

        /* renamed from: b  reason: collision with root package name */
        public int f1832b = 0;

        public b() {
        }
    }

    public a a(long j) {
        a aVar = this.f1827a.get(Long.valueOf(j));
        return aVar == null ? new a() : aVar;
    }

    public void a(long j, int i) {
        a a2 = a(j);
        a2.f1830b = i;
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void a(long j, long j2) {
        a a2 = a(j);
        a2.f1829a = j2;
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void a(long j, TotalCaptureResult totalCaptureResult) {
        a a2 = a(j);
        a2.f = totalCaptureResult;
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void a(long j, b bVar) {
        a a2 = a(j);
        a2.g.add(a2.g.size(), bVar);
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void a(boolean z) {
        this.f1828b = z;
    }

    public boolean a() {
        return this.f1828b;
    }

    public void b() {
        this.f1827a.clear();
    }

    public void b(long j, int i) {
        a a2 = a(j);
        a2.c = i;
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void c(long j, int i) {
        a a2 = a(j);
        a2.d = i;
        this.f1827a.put(Long.valueOf(j), a2);
    }

    public void d(long j, int i) {
        a a2 = a(j);
        a2.e = i;
        this.f1827a.put(Long.valueOf(j), a2);
    }
}
