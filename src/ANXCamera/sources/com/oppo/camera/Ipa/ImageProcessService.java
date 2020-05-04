package com.oppo.camera.Ipa;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.OppoWhiteListManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.location.Location;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.core.app.h;
import co.polarr.renderer.FilterPackageUtil;
import com.oppo.camera.Ipa.a.f;
import com.oppo.camera.Ipa.a.g;
import com.oppo.camera.Ipa.a.h;
import com.oppo.camera.Ipa.a.i;
import com.oppo.camera.Ipa.a.j;
import com.oppo.camera.Ipa.a.k;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.debug.DebugUtil;
import com.oppo.camera.jni.NativeBufferProducer;
import com.oppo.camera.jni.YuvProcessUtil;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.ui.control.e;
import com.oppo.camera.v;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ImageProcessService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f1768a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final Object f1769b = new Object();
    private OppoWhiteListManager c = null;
    /* access modifiers changed from: private */
    public b d = null;
    /* access modifiers changed from: private */
    public ExecutorService e = null;
    /* access modifiers changed from: private */
    public NativeBufferProducer f = new NativeBufferProducer();
    /* access modifiers changed from: private */
    public boolean g = false;
    private int h = 1;
    private int i = 1;
    private int j = -1;
    /* access modifiers changed from: private */
    public long k = 0;

    /* renamed from: com.oppo.camera.Ipa.ImageProcessService$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1770a = new int[a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            f1770a[a.CHECK_QUEUE_TYPE_BURST.ordinal()] = 1;
            f1770a[a.CHECK_QUEUE_TYPE_NIGHT.ordinal()] = 2;
            f1770a[a.CHECK_QUEUE_TYPE_HIGHT_PICTURE_SIZE.ordinal()] = 3;
            try {
                f1770a[a.CHECK_QUEUE_TYPE_SUPER_PHOTO.ordinal()] = 4;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum a {
        CHECK_QUEUE_TYPE_COMMON,
        CHECK_QUEUE_TYPE_BURST,
        CHECK_QUEUE_TYPE_NIGHT,
        CHECK_QUEUE_TYPE_SUPER_PHOTO,
        CHECK_QUEUE_TYPE_HIGHT_PICTURE_SIZE
    }

    private class b extends Thread {

        /* renamed from: b  reason: collision with root package name */
        private final Object f1772b = new Object();
        private final Object c = new Object();
        private com.oppo.camera.Ipa.a.b d = null;
        private com.oppo.camera.Ipa.a.b e = null;
        private com.oppo.camera.Ipa.a.b f = null;
        private com.oppo.camera.Ipa.a.b g = null;
        private com.oppo.camera.Ipa.a.b h = null;
        private com.oppo.camera.Ipa.a.b i = null;
        private com.oppo.camera.Ipa.a.b j = null;
        private com.oppo.camera.Ipa.a.b k = null;
        private ArrayList<b> l = null;
        private ConcurrentHashMap<Long, b> m = null;
        private boolean n = false;
        private boolean o = false;
        private boolean p = false;
        private HashMap<Long, a> q = new HashMap<>();
        private ConcurrentHashMap<Long, Long> r = null;

        private class a {

            /* renamed from: a  reason: collision with root package name */
            public int f1777a;

            /* renamed from: b  reason: collision with root package name */
            public int f1778b;
            public String c;
            public int d;

            private a() {
                this.f1777a = 0;
                this.f1778b = 0;
                this.c = null;
                this.d = d.s();
            }

            /* synthetic */ a(b bVar, AnonymousClass1 r2) {
                this();
            }

            public String toString() {
                return "BurstShotParameter info: " + "mCount: " + this.f1777a + "\n mCshotPath: " + this.c + "\n mBurstShotNum: " + this.d;
            }
        }

        public b() {
            setName("CameraImageProcessor");
            this.l = new ArrayList<>();
            this.m = new ConcurrentHashMap<>();
            this.r = new ConcurrentHashMap<>();
            start();
        }

        private void a(CaptureMsgData captureMsgData, b bVar) {
            CaptureMsgData a2 = a.a(captureMsgData, bVar);
            if (a2 != null) {
                a2.report();
            }
        }

        private boolean a(int i2) {
            com.oppo.camera.d.e("ImageProcessService", "checkAlgoFlagFromeCache, algoFlag: " + i2);
            ConcurrentHashMap<Long, b> concurrentHashMap = this.m;
            Iterator<Map.Entry<Long, b>> it = concurrentHashMap != null ? concurrentHashMap.entrySet().iterator() : null;
            if (it != null) {
                while (it.hasNext()) {
                    Map.Entry next = it.next();
                    if (((b) next.getValue()).f1798b != null && 0 != (((b) next.getValue()).f1798b.f & ((long) i2))) {
                        return true;
                    }
                }
            }
            ArrayList<b> arrayList = this.l;
            if (arrayList == null) {
                return false;
            }
            Iterator<b> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                b next2 = it2.next();
                if (next2.f1798b != null && 0 != (next2.f1798b.f & ((long) i2))) {
                    return true;
                }
            }
            return false;
        }

        private boolean a(b.C0052b bVar) {
            return (bVar.ac == 0 || bVar.ag == 0 || bVar.ac == bVar.ag || bVar.ad == 0 || bVar.ah == 0 || bVar.ad == bVar.ah || bVar.ae == 0 || bVar.ai == 0 || bVar.ae == bVar.ai || bVar.af == 0 || bVar.aj == 0 || bVar.af == bVar.aj || bVar.I) ? false : true;
        }

        private boolean a(String str) {
            boolean z;
            synchronized (this.f1772b) {
                com.oppo.camera.d.a("ImageProcessService", "createBurstShotFlagFile, burstShotPath: " + str);
                z = true;
                try {
                    File file = new File(str);
                    if (!file.exists() || !file.isDirectory()) {
                        com.oppo.camera.d.a("ImageProcessService", "createBurstShotFlagFile, make directory");
                        z = file.mkdirs();
                    }
                    File file2 = new File(str + File.separator + ".cshot");
                    if (!file2.exists() || !file2.isFile()) {
                        com.oppo.camera.d.a("ImageProcessService", "createBurstShotFlagFile, path: " + file2.getAbsolutePath());
                        z = file2.createNewFile();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    z = false;
                    com.oppo.camera.d.e("ImageProcessService", "createBurstShotFlagFile, Exception");
                }
            }
            return z;
        }

        private void b(final b.c cVar) {
            if (cVar != null) {
                com.oppo.camera.d.b("ImageProcessService", "deleteThumbnailAndCache, thumbnailItem: " + cVar + ", timeStamp: " + cVar.h);
                v.a aVar = new v.a();
                aVar.f2996a = cVar.f1804b;
                aVar.f2997b = cVar.f1803a;
                aVar.t = false;
                aVar.v = new e.a() {
                    public void a(e eVar, boolean z) {
                        if (cVar.f1803a != null && cVar.j != null) {
                            com.oppo.camera.d.b("ImageProcessService", "deleteThumbnailAndCache, updateThumbnail after invalid uri is deleted");
                            cVar.j.a();
                        }
                    }
                };
                com.oppo.camera.j.b.a().c(aVar);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:39:0x00d5, code lost:
            if (90 == r3.v) goto L_0x00d7;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:0x00d9, code lost:
            r9 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x00e9, code lost:
            if (90 == r3.v) goto L_0x00d9;
         */
        private void b(b bVar) {
            final b bVar2 = bVar;
            com.oppo.camera.d.b("ImageProcessService", "processImage, start, timestamp: " + bVar2.f1798b.f1802b + ", mRecBurstNum: " + bVar2.f1797a.o);
            com.oppo.camera.d.a("captureX processImage");
            final b.a aVar = bVar2.f1797a;
            b.C0052b bVar3 = bVar2.f1798b;
            b.c cVar = bVar2.c;
            if (aVar.l && aVar.n != null && !TextUtils.equals(aVar.n, "") && aVar.o == 1) {
                a(aVar.n);
            }
            if (!b(aVar)) {
                b(cVar);
                com.oppo.camera.d.e("ImageProcessService", "processImage, no valid data to process, so return!");
                if (!aVar.l || aVar.i == 256) {
                    com.oppo.camera.d.b("captureX processImage");
                    return;
                }
            }
            com.oppo.camera.d.b("ImageProcessService", "processImage, mFormat: " + aVar.i + ", algoFlag: " + bVar3.f);
            if (aVar.i != 256 || aVar.f1799a == null) {
                if (b(aVar)) {
                    e(bVar);
                    b(true);
                }
                if (cVar.f != null && !cVar.f.isRecycled()) {
                    cVar.f.recycle();
                }
                if (cVar.j != null) {
                    int i2 = 90;
                    if (bVar3.E) {
                        if (bVar3.v % 180 != 0) {
                            if (!aVar.q) {
                                i2 = 270;
                            }
                        }
                        cVar.j.a(aVar.f1799a, aVar.e, aVar.f, i2, bVar2.f1797a.g, bVar2.f1797a.h, bVar3.e);
                    } else {
                        if (aVar.q && bVar3.v % 180 != 0) {
                        }
                        cVar.j.a(aVar.f1799a, aVar.e, aVar.f, i2, bVar2.f1797a.g, bVar2.f1797a.h, bVar3.e);
                    }
                    i2 = 180;
                    cVar.j.a(aVar.f1799a, aVar.e, aVar.f, i2, bVar2.f1797a.g, bVar2.f1797a.h, bVar3.e);
                }
                if (bVar2.f1797a.l) {
                    synchronized (this.f1772b) {
                        if (this.q.get(Long.valueOf(aVar.m)) == null) {
                            this.q.put(Long.valueOf(aVar.m), new a(this, (AnonymousClass1) null));
                        }
                    }
                    if (ImageProcessService.this.e != null) {
                        ImageProcessService.this.e.execute(new Runnable() {
                            public void run() {
                                com.oppo.camera.i.a.a().b();
                                if (b.this.b(aVar)) {
                                    com.oppo.camera.Ipa.a.e eVar = new com.oppo.camera.Ipa.a.e();
                                    eVar.a(d.e(), bVar2);
                                    eVar.a(bVar2);
                                    eVar.a();
                                    b.this.d(bVar2);
                                }
                                if (aVar.l && aVar.n != null && !TextUtils.equals(aVar.n, "") && aVar.m != -1) {
                                    b.this.c(bVar2);
                                }
                                com.oppo.camera.i.a.a().c();
                            }
                        });
                    }
                } else {
                    com.oppo.camera.i.a.a().b();
                    if (aVar.i != 256) {
                        com.oppo.camera.Ipa.a.e eVar = new com.oppo.camera.Ipa.a.e();
                        eVar.a(d.e(), bVar2);
                        eVar.a(bVar2);
                        eVar.a();
                    }
                    d(bVar);
                    com.oppo.camera.i.a.a().c();
                }
            } else {
                d(bVar);
            }
            com.oppo.camera.d.b("captureX processImage");
        }

        private void b(boolean z, boolean z2) {
            if (this.e == null) {
                com.oppo.camera.d.b("ImageProcessService", "initFacebeautyProcess, isFrontCamera: " + z + ", isPortrait: " + z2);
                b bVar = new b();
                bVar.f1798b = new b.C0052b();
                bVar.f1798b.E = z;
                bVar.f1798b.F = z2;
                this.e = new com.oppo.camera.Ipa.a.c();
                this.e.a(d.e(), bVar);
            }
        }

        /* access modifiers changed from: private */
        public boolean b(b.a aVar) {
            return (aVar.f1799a == null && aVar.f1800b == null && aVar.c == null && aVar.d == null) ? false : true;
        }

        private boolean b(String str) {
            boolean z;
            synchronized (this.f1772b) {
                com.oppo.camera.d.a("ImageProcessService", "deleteBurstShotFlagFile, burstShotPath: " + str);
                z = true;
                try {
                    File file = new File(str);
                    File file2 = new File(str + File.separator + ".cshot");
                    if (file.exists() && file2.exists()) {
                        com.oppo.camera.d.a("ImageProcessService", "deleteBurstShotFlagFile, path: " + file2.getAbsolutePath());
                        z = file2.delete();
                        com.oppo.camera.d.a("ImageProcessService", "deleteBurstShotFlagFile, notify gallery start");
                        ImageProcessService.this.getContentResolver().notifyChange(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (ContentObserver) null);
                        com.oppo.camera.d.a("ImageProcessService", "deleteBurstShotFlagFile, notify gallery end");
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    z = false;
                    com.oppo.camera.d.e("ImageProcessService", "deleteBurstShotFlagFile, Exception");
                }
            }
            return z;
        }

        /* access modifiers changed from: private */
        public void c(b bVar) {
            synchronized (this.f1772b) {
                b.a aVar = bVar.f1797a;
                a aVar2 = this.q.get(Long.valueOf(aVar.m));
                if (aVar2 == null) {
                    aVar2 = new a(this, (AnonymousClass1) null);
                }
                aVar2.f1777a++;
                aVar2.c = aVar.n;
                if (!(aVar.f1799a == null && aVar.f1800b == null && aVar.c == null && aVar.d == null)) {
                    aVar2.f1778b++;
                }
                com.oppo.camera.d.a("ImageProcessService", "countBurstShot, mCount: " + aVar2.f1777a + ", mCshotPath: " + aVar2.c + ", mBurstShotFlagId: " + aVar.m + ", map size: " + this.q.size() + ", mRecBurstNum: " + bVar.f1797a.o);
                if (aVar2.f1777a >= aVar2.d) {
                    bVar.f1797a.o = aVar2.f1778b;
                    b(aVar2.c);
                    this.q.remove(Long.valueOf(aVar.m));
                    f(bVar);
                } else {
                    this.q.put(Long.valueOf(aVar.m), aVar2);
                }
            }
        }

        /* access modifiers changed from: private */
        public void d(b bVar) {
            b.c cVar = bVar.c;
            b.a aVar = bVar.f1797a;
            b.C0052b bVar2 = bVar.f1798b;
            v.a aVar2 = new v.a();
            aVar2.f2996a = cVar.f1804b;
            aVar2.g = cVar.d;
            aVar2.d = aVar.f1799a;
            aVar2.f2997b = cVar.f1803a;
            aVar2.o = aVar.e;
            aVar2.p = aVar.f;
            aVar2.n = aVar.o;
            aVar2.t = true;
            aVar2.u = true;
            if (bVar2.m != null) {
                aVar2.c = new Location("network");
                aVar2.c.setLongitude(bVar2.o);
                aVar2.c.setLatitude(bVar2.n);
            }
            aVar2.C = aVar.k;
            aVar2.m = aVar.m;
            aVar2.k = aVar.n;
            if (cVar.o != null) {
                aVar2.v = cVar.o;
                aVar2.s = cVar.m;
            }
            if (aVar.l || cVar.k == 0) {
                aVar2.l = aVar.p;
            } else {
                aVar2.l = cVar.k;
            }
            aVar2.r = d.b(aVar.f1799a);
            aVar2.E = cVar.n;
            if (aVar2.C == ImageProcessService.this.k) {
                aVar2.D = true;
            }
            if (cVar.j != null) {
                cVar.j.a(aVar2);
            } else {
                com.oppo.camera.j.b.a().c(aVar2);
            }
            if (!aVar.l) {
                f(bVar);
            }
            com.oppo.camera.d.e("ImageProcessService", "processImage, End");
        }

        private int e() {
            int size = this.l.size() - 1;
            Iterator<b> it = this.l.iterator();
            while (it.hasNext()) {
                b next = it.next();
                if (next.f1798b.d) {
                    return this.l.indexOf(next);
                }
            }
            return size;
        }

        private void e(b bVar) {
            int[] iArr;
            int i2;
            int i3;
            b bVar2 = bVar;
            long currentTimeMillis = System.currentTimeMillis();
            com.oppo.camera.i.a.a().b();
            com.oppo.camera.d.e("ImageProcessService", "processAlgorithm, Start");
            b.a aVar = bVar2.f1797a;
            b.C0052b bVar3 = bVar2.f1798b;
            b.c cVar = bVar2.c;
            if ((bVar3.f & 256) != 0) {
                if (this.j == null) {
                    this.j = new com.oppo.camera.Ipa.a.a();
                    this.j.a(d.e(), bVar2);
                }
                this.j.a(bVar2);
                if (aVar.i == 256) {
                    ImageProcessService.this.f.freeNativeBuffer(aVar.d);
                    return;
                }
            }
            if ((bVar3.f & 128) == 0 || !bVar3.ar) {
                if (com.oppo.camera.Ipa.a.b.e(bVar3.f) || a(bVar3)) {
                    aVar.e = bVar3.ac;
                    aVar.f = bVar3.ad;
                    aVar.g = bVar3.ae;
                    aVar.h = bVar3.af;
                }
                if (!aVar.l) {
                    ImageProcessService.this.f.removePadding(aVar.d, aVar.e, aVar.f, aVar.g, aVar.h, false);
                    aVar.g = aVar.e;
                    aVar.h = aVar.f;
                    if (com.oppo.camera.Ipa.a.b.e(bVar3.f) || a(bVar3)) {
                        bVar3.ae = bVar3.ac;
                        bVar3.af = bVar3.ad;
                        bVar3.ai = bVar3.ag;
                        bVar3.aj = bVar3.ah;
                    }
                    com.oppo.camera.d.a("ImageProcessService", "processImage, remove padding ion buffer info: " + aVar.d.toString());
                }
                if (com.oppo.camera.Ipa.a.b.g(bVar3.f)) {
                    if (this.k == null) {
                        this.k = new f();
                        this.k.a((Context) null, (b) null);
                    }
                    this.k.a(bVar2);
                }
                if (aVar.d != null) {
                    aVar.f1799a = ImageProcessService.this.f.freeNativeBuffer(aVar.d);
                }
                if (DebugUtil.debugPropertyEnabled(DebugUtil.PROPERTIES_DUMP_CAPTURE_YUV, DebugUtil.DEBUG_DISABLE)) {
                    com.oppo.camera.d.e("ImageProcessService", "processAlgorithm, start dump now !");
                    byte[] bArr = aVar.f1799a;
                    d.a(bArr, DebugUtil.DUMP_DIR_CAPTURE_YUV, cVar.d + "_" + aVar.e + "x" + aVar.f + ".yuv");
                }
                if (com.oppo.camera.Ipa.a.b.b(bVar3.f) || bVar2.f1798b.z != 0) {
                    synchronized (this.c) {
                        if (this.e == null) {
                            this.e = new com.oppo.camera.Ipa.a.c();
                            this.e.a(d.e(), bVar2);
                        }
                        this.e.a(bVar2);
                    }
                }
                if (com.oppo.camera.Ipa.a.b.c(bVar3.f)) {
                    if (CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_ARCSOFT_SINGLE_BOKEH)) {
                        if (this.d == null) {
                            this.d = new h();
                            this.d.a(d.e(), bVar2);
                        }
                        this.d.a(bVar2);
                    } else if (bVar3.f1801a != null && bVar3.f1801a.length > 0) {
                        if (this.d == null) {
                            this.d = new g();
                            this.d.a(d.e(), bVar2);
                        }
                        this.d.a(bVar2);
                    }
                }
                if (com.oppo.camera.Ipa.a.b.a(bVar3.f) && !FilterPackageUtil.F_DEFAULT.equals(bVar2.f1798b.O)) {
                    if (this.g == null) {
                        this.g = new com.oppo.camera.Ipa.a.d();
                        this.g.a(d.e(), bVar2);
                    }
                    this.g.a(bVar2);
                }
                if (com.oppo.camera.Ipa.a.b.e(bVar3.f) || a(bVar3)) {
                    int[] iArr2 = {aVar.g, aVar.g};
                    int[] iArr3 = {aVar.h, aVar.h};
                    int i4 = aVar.e;
                    int i5 = aVar.f;
                    if (bVar3.e) {
                        i3 = i5;
                        i2 = i4;
                        iArr = iArr3;
                        aVar.f1799a = YuvProcessUtil.mirrorYUV(aVar.f1799a, aVar.f1799a.length, iArr2, iArr3, i4, i3, bVar3.v);
                        bVar3.e = false;
                    } else {
                        i3 = i5;
                        i2 = i4;
                        iArr = iArr3;
                    }
                    if (bVar3.v == 90 || bVar3.v == 270) {
                        aVar.f1799a = YuvProcessUtil.rotateYUV(aVar.f1799a, aVar.f1799a.length, iArr2, iArr, i2, i3, bVar3.v);
                        aVar.e = i3;
                        aVar.f = i2;
                        aVar.g = aVar.e;
                        aVar.h = aVar.f;
                        int i6 = bVar3.ac;
                        bVar3.ac = bVar3.ad;
                        bVar3.ad = i6;
                        bVar3.ae = bVar3.ac;
                        bVar3.af = bVar3.ad;
                        int i7 = bVar3.ag;
                        bVar3.ag = bVar3.ah;
                        bVar3.ah = i7;
                        bVar3.ai = bVar3.ag;
                        bVar3.aj = bVar3.ah;
                        int i8 = bVar3.L;
                        bVar3.L = bVar3.M;
                        bVar3.M = i8;
                        aVar.j = 0;
                        aVar.q = true;
                    }
                    if (this.h == null) {
                        this.h = new j();
                        this.h.a(d.e(), bVar2);
                    }
                    this.h.a(bVar2);
                }
                if (bVar3.e) {
                    aVar.f1799a = YuvProcessUtil.mirrorYUV(aVar.f1799a, aVar.f1799a.length, new int[]{aVar.g, aVar.g}, new int[]{aVar.h, aVar.h}, aVar.e, aVar.f, bVar3.v);
                    bVar3.e = false;
                }
                if (com.oppo.camera.Ipa.a.b.f(bVar3.f)) {
                    if (this.i == null) {
                        this.i = new i();
                        this.i.a(d.e(), bVar2);
                    }
                    this.i.a(bVar2);
                }
                if (com.oppo.camera.Ipa.a.b.d(bVar3.f)) {
                    if (this.f == null) {
                        this.f = new k();
                        this.f.a(d.e(), bVar2);
                    }
                    this.f.a(bVar2);
                }
                com.oppo.camera.d.a("ImageProcessService", "processAlgorithm X");
                com.oppo.camera.i.a.a().c();
                com.oppo.camera.d.e("ImageProcessService", "processAlgorithm X, Cost time: " + (System.currentTimeMillis() - currentTimeMillis));
                return;
            }
            if (this.i == null) {
                this.i = new i();
                this.i.a(d.e(), bVar2);
            }
            this.i.a(bVar2);
            if (aVar.d != null) {
                ImageProcessService.this.f.freeNativeBuffer(aVar.d);
            }
        }

        private void f() {
            com.oppo.camera.d.a("ImageProcessService", "destroyProcessor");
            com.oppo.camera.Ipa.a.b bVar = this.d;
            if (bVar != null) {
                bVar.a();
                this.d = null;
            }
            com.oppo.camera.Ipa.a.b bVar2 = this.e;
            if (bVar2 != null) {
                bVar2.a();
                this.e = null;
            }
            com.oppo.camera.Ipa.a.b bVar3 = this.f;
            if (bVar3 != null) {
                bVar3.a();
                this.f = null;
            }
            com.oppo.camera.Ipa.a.b bVar4 = this.g;
            if (bVar4 != null) {
                bVar4.a();
                this.g = null;
            }
            com.oppo.camera.Ipa.a.b bVar5 = this.h;
            if (bVar5 != null) {
                bVar5.a();
                this.h = null;
            }
            com.oppo.camera.Ipa.a.b bVar6 = this.i;
            if (bVar6 != null) {
                bVar6.a();
                this.i = null;
            }
            com.oppo.camera.Ipa.a.b bVar7 = this.j;
            if (bVar7 != null) {
                bVar7.a();
                this.j = null;
            }
            com.oppo.camera.Ipa.a.b bVar8 = this.k;
            if (bVar8 != null) {
                bVar8.a();
                this.k = null;
            }
        }

        private void f(b bVar) {
            if (bVar != null) {
                CaptureMsgData captureMsgData = bVar.d;
                if (captureMsgData != null) {
                    b.a aVar = bVar.f1797a;
                    if (aVar != null && captureMsgData != null) {
                        if (!aVar.l || captureMsgData == null) {
                            a(captureMsgData, bVar);
                            return;
                        }
                        captureMsgData.mBurstCount = aVar.o;
                        a(captureMsgData, bVar);
                    }
                }
            }
        }

        public int a() {
            int i2;
            synchronized (this) {
                i2 = 0;
                Iterator<Map.Entry<Long, b>> it = this.m.entrySet().iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next().getValue();
                    if (!bVar.a()) {
                        if (bVar.c != null) {
                            b(bVar.c);
                        }
                        it.remove();
                        i2++;
                    }
                }
            }
            return i2;
        }

        public void a(int i2, long j2) {
            synchronized (this.f1772b) {
                com.oppo.camera.d.b("ImageProcessService", "updateBurstNum, burstTotalNum: " + i2 + ", burstShotFlagId: " + j2);
                a aVar = this.q.get(Long.valueOf(j2));
                if (aVar != null) {
                    com.oppo.camera.d.b("ImageProcessService", "updateBurstNum, parameter: " + aVar.toString());
                    if (aVar.f1777a >= i2) {
                        aVar.f1777a = i2;
                        b(aVar.c);
                    }
                    aVar.d = i2;
                }
            }
        }

        public void a(long j2) {
            synchronized (this) {
                if (this.m.containsKey(Long.valueOf(j2))) {
                    this.m.get(Long.valueOf(j2)).a(true);
                } else {
                    b bVar = new b();
                    bVar.a(true);
                    this.m.put(Long.valueOf(j2), bVar);
                }
            }
        }

        public void a(long j2, long j3) {
            synchronized (this) {
                if (this.m != null) {
                    com.oppo.camera.d.a("ImageProcessService", "changeThumbnailInfo, timestamp: " + j2 + ", hashCode: " + j3);
                    if (this.m.containsKey(Long.valueOf(j3))) {
                        b.c cVar = this.m.get(Long.valueOf(j3)).c;
                        cVar.h = j2;
                        this.m.remove(Long.valueOf(j3));
                        this.r.remove(Long.valueOf(j3));
                        long unused = ImageProcessService.this.k = 0;
                        a(cVar);
                        com.oppo.camera.d.a("ImageProcessService", "changeThumbnailInfo, changed");
                    } else {
                        this.r.put(Long.valueOf(j3), Long.valueOf(j2));
                    }
                }
            }
        }

        public void a(b.a aVar) {
            synchronized (this) {
                long j2 = aVar.k;
                com.oppo.camera.d.b("ImageProcessService", "addImageInfo, timeStamp: " + j2);
                b bVar = null;
                if (this.m != null) {
                    if (this.m.containsKey(Long.valueOf(j2))) {
                        bVar = this.m.get(Long.valueOf(j2));
                        bVar.f1797a = aVar;
                    } else {
                        bVar = new b();
                        bVar.f1797a = aVar;
                        this.m.put(Long.valueOf(j2), bVar);
                    }
                }
                if (bVar != null) {
                    com.oppo.camera.d.b("ImageProcessService", "addImageInfo, isValid: " + bVar.b());
                    if (bVar.b()) {
                        a(bVar);
                    }
                }
            }
        }

        public void a(b.C0052b bVar, CaptureMsgData captureMsgData) {
            synchronized (this) {
                long j2 = bVar.f1802b;
                com.oppo.camera.d.b("ImageProcessService", "addMetaInfo, timeStamp: " + j2);
                b bVar2 = null;
                if (this.m != null) {
                    if (this.m.containsKey(Long.valueOf(j2))) {
                        bVar2 = this.m.get(Long.valueOf(j2));
                        bVar2.f1798b = bVar;
                        bVar2.d = captureMsgData;
                    } else {
                        bVar2 = new b();
                        bVar2.f1798b = bVar;
                        bVar2.d = captureMsgData;
                        this.m.put(Long.valueOf(j2), bVar2);
                    }
                }
                if (bVar2 != null) {
                    com.oppo.camera.d.b("ImageProcessService", "addMetaInfo, isValid: " + bVar2.b());
                    if (bVar2.b()) {
                        a(bVar2);
                    }
                }
            }
        }

        public void a(b.c cVar) {
            synchronized (this) {
                long j2 = cVar.h;
                if (0 == j2) {
                    long j3 = cVar.l;
                    if (this.r.containsKey(Long.valueOf(j3))) {
                        cVar.h = this.r.get(Long.valueOf(j3)).longValue();
                        this.r.remove(Long.valueOf(j3));
                    } else {
                        cVar.h = cVar.l;
                    }
                    j2 = cVar.h;
                }
                com.oppo.camera.d.b("ImageProcessService", "addThumbnailInfo, timeStamp: " + j2 + ", hash: " + cVar.l);
                b bVar = null;
                if (this.m != null) {
                    if (j2 > ImageProcessService.this.k) {
                        long unused = ImageProcessService.this.k = j2;
                    }
                    if (this.m.containsKey(Long.valueOf(j2))) {
                        bVar = this.m.get(Long.valueOf(j2));
                        bVar.c = cVar;
                    } else {
                        bVar = new b();
                        bVar.c = cVar;
                        this.m.put(Long.valueOf(j2), bVar);
                    }
                }
                if (bVar != null) {
                    com.oppo.camera.d.b("ImageProcessService", "addThumbnailInfo, isValid: " + bVar.b());
                    if (bVar.b()) {
                        a(bVar);
                    }
                }
            }
        }

        public void a(b bVar) {
            synchronized (this) {
                if (this.l != null) {
                    long j2 = bVar.f1797a.k;
                    if (this.m != null) {
                        if (this.m.containsKey(Long.valueOf(j2))) {
                            this.m.remove(Long.valueOf(j2));
                        }
                        com.oppo.camera.d.b("ImageProcessService", "addImageCategory, timeStamp: " + j2 + ", mImageCacheMap.size: " + this.m.size());
                    }
                    this.l.add(bVar);
                    notifyAll();
                }
            }
        }

        public void a(boolean z) {
            synchronized (this) {
                com.oppo.camera.d.a("ImageProcessService", "setDestroyProcessor, destroy: " + z);
                this.o = z;
                if (this.o) {
                    notifyAll();
                }
            }
        }

        public void a(boolean z, List list) {
            com.oppo.camera.d.b("ImageProcessService", "notifyCameraClosed, isClosed: " + z);
            if (!z) {
                com.oppo.camera.d.b("ImageProcessService", "notifyCameraClosed, camera is opened, don't need check the cache");
                return;
            }
            synchronized (this) {
                Iterator<Map.Entry<Long, b>> it = this.m.entrySet().iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next().getValue();
                    if (bVar.f1798b == null) {
                        b(bVar.c);
                        b.a aVar = bVar.f1797a;
                        if (!(aVar == null || !aVar.l || aVar.n == null || TextUtils.equals(aVar.n, "") || aVar.m == -1)) {
                            c(bVar);
                        }
                        it.remove();
                    } else if (bVar.f1797a != null && bVar.c == null) {
                        if (list == null || !list.contains(Long.valueOf(bVar.f1797a.k))) {
                            b.c cVar = new b.c();
                            cVar.f1803a = null;
                            cVar.k = System.currentTimeMillis();
                            cVar.f1804b = d.e().getContentResolver();
                            cVar.c = "jpeg";
                            cVar.e = null;
                            cVar.h = bVar.f1797a.k;
                            cVar.d = d.a(cVar.k);
                            ImageProcessService.this.d.a(cVar);
                        }
                    }
                }
            }
        }

        public void a(boolean z, boolean z2) {
            if (this.e == null) {
                synchronized (this.c) {
                    b(z, z2);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ac, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:39:0x00b5, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:56:0x00fc, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:61:0x0103, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:77:0x0150, code lost:
            return true;
         */
        public boolean a(a aVar) {
            int i2;
            int i3;
            int i4;
            synchronized (this) {
                int size = this.l != null ? this.l.size() : 0;
                int size2 = this.m != null ? this.m.size() : 0;
                if (this.m != null) {
                    i3 = 0;
                    i2 = 0;
                    for (Map.Entry next : this.m.entrySet()) {
                        if (((b) next.getValue()).f1798b != null) {
                            i3 += ((b) next.getValue()).f1798b.g;
                            if (((b) next.getValue()).f1798b.au.f2031a) {
                                i2++;
                            }
                        }
                    }
                } else {
                    i3 = 0;
                    i2 = 0;
                }
                com.oppo.camera.d.b("ImageProcessService", "isImageQueueAvailable, queue size: " + size + " cache size: " + size2 + ", mergeNum: " + i3 + ", type: " + aVar);
                int i5 = AnonymousClass1.f1770a[aVar.ordinal()];
                if (i5 == 1) {
                    synchronized (this.f1772b) {
                        i4 = 0;
                        for (Map.Entry next2 : this.q.entrySet()) {
                            i4 += ((a) next2.getValue()).d - ((a) next2.getValue()).f1777a;
                        }
                    }
                    com.oppo.camera.d.a("ImageProcessService", "isImageQueueAvailable, waitBurstShotNum: " + i4);
                    if (size + size2 + i4 > 5) {
                        return false;
                    }
                } else if (i5 != 2) {
                    if (i5 == 3) {
                        if (this.l != null) {
                            Iterator<b> it = this.l.iterator();
                            while (it.hasNext()) {
                                b next3 = it.next();
                                if (!(next3.f1798b == null || next3.f1798b.au == null || !next3.f1798b.au.f2031a)) {
                                    i2++;
                                }
                            }
                        }
                        com.oppo.camera.d.a("ImageProcessService", "isImageQueueAvailable, highPictureSizeNum: " + i2);
                        if (i2 > 3 || i3 > 20) {
                        }
                    } else if (i5 != 4) {
                        if (i3 > 30 || size + size2 > 15) {
                        }
                    } else if (i3 > 23 || size + size2 > 4) {
                    }
                } else if (i3 > 20 || size + size2 > 4) {
                }
            }
        }

        public void b() {
            com.oppo.camera.d.c("ImageProcessService", "waitProcessImageAndFinish");
            synchronized (this) {
                Iterator<Map.Entry<Long, b>> it = this.m.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry next = it.next();
                    if (((b) next.getValue()).f1797a == null) {
                        if (((b) next.getValue()).c != null) {
                            c(((b) next.getValue()).c.h);
                            it = this.m.entrySet().iterator();
                        } else {
                            it.remove();
                        }
                    }
                }
                notifyAll();
            }
        }

        public void b(long j2) {
            synchronized (this) {
                this.m.remove(Long.valueOf(j2));
            }
        }

        public void b(boolean z) {
            synchronized (this) {
                com.oppo.camera.d.a("ImageProcessService", "setDestroyCurrentProcessor, destroy: " + z);
                this.p = z;
                if (this.p) {
                    notifyAll();
                }
            }
        }

        public int c() {
            int i2;
            synchronized (this) {
                int i3 = 0;
                int size = this.l != null ? this.l.size() : 0;
                if (this.m != null) {
                    i3 = this.m.size();
                }
                com.oppo.camera.d.a("ImageProcessService", "getIpaImageQueueSize, queueLength: " + size + ", cacheLength: " + i3);
                i2 = size + i3;
            }
            return i2;
        }

        public void c(long j2) {
            b.a aVar = new b.a();
            aVar.k = j2;
            ImageProcessService.this.a(aVar);
        }

        public void d() {
            if (!a(com.oppo.camera.Ipa.a.b.f())) {
                com.oppo.camera.Ipa.a.b bVar = this.k;
                if (bVar != null) {
                    bVar.a();
                    this.k = null;
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0053, code lost:
            if (r1 == null) goto L_0x0000;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0059, code lost:
            if (r1.b() == false) goto L_0x0000;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x005b, code lost:
            b(r1);
         */
        /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
        /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x00aa */
        public void run() {
            while (true) {
                synchronized (this) {
                    if (this.n) {
                        com.oppo.camera.d.b("ImageProcessService", "ImageProcessor, run");
                        return;
                    }
                    if (this.l != null) {
                        if (!this.l.isEmpty()) {
                            int e2 = e();
                            b bVar = this.l.get(e2);
                            StringBuilder sb = new StringBuilder();
                            sb.append("ImageProcessor, run, index: ");
                            sb.append(e2);
                            sb.append(", recNum: ");
                            sb.append(bVar != null ? bVar.f1797a.o : -1);
                            com.oppo.camera.d.b("ImageProcessService", sb.toString());
                            this.l.remove(e2);
                        }
                    }
                    if (this.m != null && this.m.size() == 0) {
                        ImageProcessService.this.b(ImageProcessService.this.getPackageName());
                        if (this.o) {
                            f();
                        }
                        if (this.p) {
                            d();
                        }
                        long unused = ImageProcessService.this.k = 0;
                    }
                    if (ImageProcessService.this.g) {
                        com.oppo.camera.d.b("ImageProcessService", "ImageProcessor, run, will notify processqueuethread kill camera process");
                        com.oppo.camera.j.b.a().a(ImageProcessService.this.g);
                    }
                    wait();
                }
            }
        }
    }

    public class c extends Binder {
        public c() {
        }

        public ImageProcessService a() {
            return ImageProcessService.this;
        }
    }

    private String a(String str, String str2) {
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, 0);
        notificationChannel.setLightColor(-16711936);
        notificationChannel.setLockscreenVisibility(0);
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
        return str;
    }

    private void a(String str) {
        synchronized (this.f1769b) {
            if (this.c != null) {
                ArrayList stageProtectListFromPkg = this.c.getStageProtectListFromPkg(str, 0);
                StringBuilder sb = new StringBuilder("StageProtectList: ");
                Iterator it = stageProtectListFromPkg.iterator();
                while (it.hasNext()) {
                    sb.append("[");
                    sb.append((String) it.next());
                    sb.append("] ");
                }
                com.oppo.camera.d.b("ImageProcessService", "addStageProtectInfo, " + sb.toString());
                if (!stageProtectListFromPkg.contains(getPackageName())) {
                    this.c.addStageProtectInfo(str, 600000);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(String str) {
        synchronized (this.f1769b) {
            if (this.c != null) {
                com.oppo.camera.d.b("ImageProcessService", "removeStageProtectInfo, pkgName: " + str);
                this.c.removeStageProtectInfo(str);
            }
        }
    }

    private String c(int i2) {
        if (i2 == 0) {
            return "DIED_TYPE_APS_SERVICE_DIED";
        }
        if (i2 == 1) {
            return "DIED_TYPE_APS_PROCESS_DIED";
        }
        if (i2 != 2) {
            return null;
        }
        return "DIED_TYPE_CAPTURE_FAIL";
    }

    public void a() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(false);
            this.d.b(false);
        }
    }

    public void a(int i2) {
        if (i2 >= 0 && this.h != i2) {
            com.oppo.camera.d.b("ImageProcessService", "setMetaQueueLimit, metaQueueLimit: " + this.h + " -> " + i2);
            this.h = i2;
        }
    }

    public void a(int i2, long j2) {
        com.oppo.camera.d.e("ImageProcessService", "notifyErrorType, type: " + c(i2) + ", timestamp: " + j2);
        b bVar = this.d;
        if (bVar == null) {
            return;
        }
        if (i2 == 0) {
            this.g = true;
            if (bVar != null) {
                bVar.b();
            }
        } else if (i2 == 1 || i2 == 2) {
            b bVar2 = this.d;
            if (bVar2 != null) {
                bVar2.c(j2);
            }
        }
    }

    public void a(long j2) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(j2);
        }
    }

    public void a(long j2, long j3) {
        this.d.a(j2, j3);
    }

    public void a(b.a aVar) {
        int length = aVar.f1799a != null ? aVar.f1799a.length : 0;
        com.oppo.camera.d.b("ImageProcessService", "handleActionImageInfo, timeStamp: " + aVar.k + ", data.length: " + length);
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }

    public void a(b.C0052b bVar, CaptureMsgData captureMsgData) {
        com.oppo.camera.d.b("ImageProcessService", "handleActionMetaInfo, timeStamp: " + bVar.f1802b);
        b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(bVar, captureMsgData);
        }
    }

    public void a(b.c cVar) {
        com.oppo.camera.d.b("ImageProcessService", "handleActionThumbnailInfo, timeStamp: " + cVar.h);
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(cVar);
            a(getPackageName());
        }
    }

    public void a(boolean z, List list) {
        com.oppo.camera.d.b("ImageProcessService", "onCameraClosed, isClosed: " + z);
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(z, list);
        }
    }

    public void a(boolean z, boolean z2) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(z, z2);
        }
    }

    public boolean a(a aVar) {
        com.oppo.camera.d.b("ImageProcessService", "checkImageProcessState, type: " + aVar);
        b bVar = this.d;
        if (bVar != null) {
            return bVar.a(aVar);
        }
        return false;
    }

    public void b() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(true);
        }
    }

    public void b(int i2) {
        if (i2 >= 0 && this.i != i2) {
            com.oppo.camera.d.b("ImageProcessService", "setImageQueueLimit, imageQueueLimit: " + this.i + " -> " + i2);
            this.i = i2;
        }
    }

    public void b(int i2, long j2) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(i2, j2);
        }
    }

    public void b(long j2) {
        com.oppo.camera.d.b("ImageProcessService", "removeExtraCache, timestamp: " + j2);
        b bVar = this.d;
        if (bVar != null) {
            bVar.b(j2);
        }
    }

    public int c() {
        b bVar = this.d;
        if (bVar != null) {
            return bVar.c();
        }
        return 0;
    }

    public void d() {
        b bVar = this.d;
        if (bVar != null) {
            int a2 = bVar.a();
            if (a2 > 0) {
                this.k = 0;
            }
            com.oppo.camera.d.a("ImageProcessService", "removeInvalidInfo, remove number: " + a2);
        }
    }

    public IBinder onBind(Intent intent) {
        com.oppo.camera.d.a("ImageProcessService", "onBind, this: " + this);
        if (this.d == null) {
            this.d = new b();
        }
        if (this.e == null) {
            this.e = Executors.newFixedThreadPool(3);
        }
        synchronized (this.f1769b) {
            if (this.c == null) {
                this.c = new OppoWhiteListManager(this);
            }
        }
        return this.f1768a;
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        com.oppo.camera.d.b("ImageProcessService", "onDestroy");
        stopForeground(true);
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        com.oppo.camera.d.b("ImageProcessService", "onStartCommand");
        super.onStartCommand(intent, i2, i3);
        if (Build.VERSION.SDK_INT > 26) {
            startForeground(1, new h.b(this, a("com.oppo.camera", getString(R.string.camera_app_name))).a(true).a(-2).a("service").b());
        } else {
            startForeground(1, new Notification());
        }
        return 1;
    }
}
