package com.oppo.camera.Ipa;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Size;
import b.a.a;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.c;
import com.oppo.camera.d;
import com.oppo.camera.v;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ThumbnailProcessor */
public class e extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Object f1806a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<a> f1807b = new ArrayList<>();
    private b.a.a c = null;
    private b d = null;
    private volatile boolean e = false;

    /* compiled from: ThumbnailProcessor */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f1808a = null;

        /* renamed from: b  reason: collision with root package name */
        public Bitmap f1809b = null;
        public String c = null;
        public Size d = null;
        public Size e = null;
        public String f = null;
        public String g = null;
        public String h = null;
        public long i = 0;
        public int j = 0;
        public int k = 0;
        public int l = 0;
        public ContentResolver m = null;
        public long n = 0;
        public boolean o = false;
        public int p = 0;
        public String q = "";
        public long r = -1;
        public long s = 0;
    }

    /* compiled from: ThumbnailProcessor */
    public interface b {
        void a(com.oppo.camera.ui.control.e eVar, b.c cVar, ContentResolver contentResolver);
    }

    public e() {
        setName("ThumbnailProcessor");
        this.f1807b = new ArrayList<>();
        start();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0015, code lost:
        if (r3.a() != false) goto L_0x0017;
     */
    private b.a.a a(String str, boolean z) {
        File file = new File(str);
        if (z && file.exists()) {
            b.a.a aVar = this.c;
            if (aVar != null) {
            }
            return this.c;
        }
        b.a.a aVar2 = this.c;
        if (aVar2 != null) {
            try {
                aVar2.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            return b.a.a.a(file, 1, 1, 52428800);
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    private void b(a aVar) {
        Bitmap bitmap;
        int i;
        int i2;
        d.a("ThumbnailProcessor", "generateThumbnailAndUri");
        if (aVar.f1808a != null) {
            if (com.oppo.camera.e.a.c(aVar.l)) {
                bitmap = com.oppo.camera.o.d.a(aVar.f1808a, aVar.d.getWidth(), aVar.d.getHeight(), 270, 2, false);
                if (bitmap == null) {
                    d.e("ThumbnailProcessor", "generateThumbnailAndUri, bitmap is null");
                    return;
                }
                int i3 = aVar.j;
                if (i3 != 0) {
                    if (i3 == 90) {
                        bitmap = c.a_.equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap), 90) : com.oppo.camera.o.d.a(bitmap, -90);
                    } else if (i3 == 180) {
                        bitmap = c.a_.equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap, 180)) : com.oppo.camera.o.d.a(bitmap, 180);
                    } else if (i3 != 270) {
                        d.e("ThumbnailProcessor", "generateThumbnailAndUri, mOrientation: " + aVar.j + " is wrong!!");
                    } else {
                        bitmap = c.a_.equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap), -90) : com.oppo.camera.o.d.a(bitmap, 90);
                    }
                } else if (c.a_.equals(aVar.g)) {
                    bitmap = com.oppo.camera.o.d.a(bitmap);
                }
            } else {
                bitmap = com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(aVar.f1808a, aVar.d.getWidth(), aVar.d.getHeight(), 90, 2, false), aVar.j);
            }
        } else if (aVar.f1809b != null) {
            bitmap = com.oppo.camera.o.d.b(aVar.f1809b, 0.6f);
            if (com.oppo.camera.e.a.c(aVar.l)) {
                int i4 = aVar.j;
                if (i4 != 0) {
                    if (i4 == 90) {
                        bitmap = "on".equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap, 90)) : com.oppo.camera.o.d.a(bitmap, 90);
                    } else if (i4 == 180) {
                        bitmap = "on".equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap, 180)) : com.oppo.camera.o.d.a(bitmap, 180);
                    } else if (i4 != 270) {
                        d.e("ThumbnailProcessor", "generateThumbnailAndUri, mOrientation: " + aVar.j + " is wrong!!");
                    } else {
                        bitmap = "on".equals(aVar.g) ? com.oppo.camera.o.d.a(com.oppo.camera.o.d.a(bitmap, -90)) : com.oppo.camera.o.d.a(bitmap, -90);
                    }
                } else if ("on".equals(aVar.g)) {
                    bitmap = com.oppo.camera.o.d.a(bitmap);
                }
            } else {
                bitmap = com.oppo.camera.o.d.a(bitmap, aVar.j);
            }
        } else {
            bitmap = null;
        }
        if (bitmap != null) {
            int i5 = -1;
            if (aVar.e != null) {
                if (aVar.k % 180 == 0) {
                    i5 = -aVar.e.getWidth();
                    i2 = aVar.e.getHeight();
                } else {
                    i5 = -aVar.e.getHeight();
                    i2 = aVar.e.getWidth();
                }
                i = -i2;
            } else {
                i = -1;
            }
            v.a aVar2 = new v.a();
            aVar2.g = aVar.h;
            aVar2.l = aVar.i;
            aVar2.j = aVar.c;
            aVar2.q = aVar.l;
            aVar2.i = "jpeg";
            aVar2.o = i5;
            aVar2.p = i;
            aVar2.z = aVar.f;
            aVar2.f2996a = aVar.m;
            aVar2.n = aVar.p;
            aVar2.m = aVar.r;
            aVar2.k = aVar.q;
            a(aVar2.g, bitmap);
            aVar2.f = bitmap;
            Uri b2 = v.b(aVar2);
            d.a("ThumbnailProcessor", "generateThumbnailAndUri, uri: " + b2 + ", mbBurstShot: " + aVar.o);
            b.c cVar = new b.c();
            cVar.f1803a = b2;
            cVar.f1804b = aVar2.f2996a;
            cVar.c = "jpeg";
            cVar.d = aVar2.g;
            cVar.e = aVar2.f;
            cVar.f = aVar.f1809b;
            cVar.g = aVar.k;
            cVar.h = aVar.n;
            cVar.i = aVar.o;
            cVar.k = aVar2.l;
            cVar.l = aVar.s;
            com.oppo.camera.ui.control.e a2 = com.oppo.camera.ui.control.e.a(aVar2.f, 0, 1, b2, v.a(String.valueOf(aVar2.l), aVar2.i), aVar2.l);
            a2.a(aVar.s);
            synchronized (this.f1806a) {
                if (this.d != null) {
                    this.d.a(a2, cVar, aVar2.f2996a);
                }
            }
        }
    }

    public void a() {
        d.a("ThumbnailProcessor", "onDestroy");
        this.e = true;
        synchronized (this) {
            notifyAll();
        }
    }

    public void a(a aVar) {
        synchronized (this) {
            this.f1807b.add(aVar);
            notifyAll();
        }
    }

    public void a(b bVar) {
        synchronized (this.f1806a) {
            this.d = bVar;
        }
    }

    public void a(String str, Bitmap bitmap) {
        try {
            if (this.c == null) {
                this.c = a(v.c(), false);
            } else {
                this.c = a(v.c(), true);
            }
            if (this.c == null) {
                d.e("ThumbnailProcessor", "saveSmallImageForGallery, mDiskLruCache is null!");
                return;
            }
            a.C0033a b2 = this.c.b(str);
            if (b2 != null) {
                if (com.oppo.camera.o.d.a(bitmap, b2)) {
                    b2.a();
                } else {
                    b2.b();
                }
                this.c.b();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:6|(2:8|(1:10)(1:11))|14|15|16) */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001e, code lost:
        b(r0);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x0025 */
    public void run() {
        while (true) {
            synchronized (this) {
                if (!this.e) {
                    if (this.f1807b != null) {
                        if (!this.f1807b.isEmpty()) {
                            a remove = this.f1807b.remove(0);
                        }
                    }
                    wait();
                } else {
                    return;
                }
            }
        }
    }
}
