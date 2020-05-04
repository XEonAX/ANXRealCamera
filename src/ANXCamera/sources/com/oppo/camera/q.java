package com.oppo.camera;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.Size;
import com.oppo.camera.gl.t;
import com.oppo.camera.ui.preview.d;
import java.util.ArrayList;

/* compiled from: PreviewImageProcess */
public class q {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Bitmap f2358a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2359b;
    /* access modifiers changed from: private */
    public volatile boolean c;
    /* access modifiers changed from: private */
    public boolean d;
    /* access modifiers changed from: private */
    public ArrayList<a> e;
    private d.a f;
    /* access modifiers changed from: private */
    public Handler g;
    /* access modifiers changed from: private */
    public b h;
    private a i;
    /* access modifiers changed from: private */
    public boolean j;

    /* compiled from: PreviewImageProcess */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Size f2363a;

        /* renamed from: b  reason: collision with root package name */
        public Size f2364b;
        public int c;
        public int d;
        public Bitmap e;
        public boolean f;
        public int g;
    }

    /* compiled from: PreviewImageProcess */
    public interface b {
        boolean S();

        void U();

        void V();

        void a(Bitmap bitmap, Size size, Size size2, d.a aVar, int i);

        void a(t.a aVar, boolean z, boolean z2, String str);
    }

    public q(b bVar) {
        this.f2358a = null;
        this.f2359b = false;
        this.c = false;
        this.d = false;
        this.e = new ArrayList<>();
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = false;
        this.g = new Handler() {
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    q.this.a(true);
                } else if (i == 2) {
                    q.this.e();
                }
            }
        };
        this.h = bVar;
    }

    /* access modifiers changed from: private */
    public void d() {
        d.a("PreviewImageProcess", "sendToDisplay, mBitmap: " + this.f2358a);
        a aVar = this.i;
        if (aVar != null && this.f2358a == null) {
            this.f2358a = aVar.e;
        }
        this.j = true;
        if (!this.e.isEmpty()) {
            this.i = this.e.get(0);
        }
        this.g.removeMessages(1);
        this.g.removeMessages(2);
        this.g.sendEmptyMessage(2);
        d.a("PreviewImageProcess", this.g, "sendToDisplay");
    }

    /* access modifiers changed from: private */
    public void e() {
        boolean z;
        d.a("PreviewImageProcess", "handleImage");
        synchronized (this) {
            if (this.h.S() || !this.f2359b || (this.e.isEmpty() && this.i == null)) {
                d.a("PreviewImageProcess", "handleImage, maybe some wrong, mbShowBlurImage: " + this.f2359b + ", bitmap: " + this.f2358a + ", mQueue.isEmpty: " + this.e.isEmpty());
                if (this.f2358a != null && !this.f2358a.isRecycled()) {
                    this.f2358a.recycle();
                }
                this.j = false;
                z = true;
            } else {
                if (!this.e.isEmpty()) {
                    this.i = this.e.get(0);
                }
                d.a("PreviewImageProcess", "handleImage, size: " + this.i.f2363a.getWidth() + "x" + this.i.f2363a.getHeight() + "=>" + this.i.f2364b.getWidth() + "x" + this.i.f2364b.getHeight());
                this.h.a(this.f2358a, this.i.f2363a, this.i.f2364b, this.f, this.i.g);
                z = false;
            }
            d.a("PreviewImageProcess", "handleImage, mbShowBlurImage false!!");
            this.f2359b = false;
            this.e.clear();
        }
        if (z) {
            this.h.U();
            d.a aVar = this.f;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public void a() {
        a(true);
    }

    public synchronized void a(Size size, Size size2) {
        if (this.i != null) {
            this.i.f2363a = size;
            this.i.f2364b = size2;
        }
    }

    public synchronized void a(boolean z) {
        d.a("PreviewImageProcess", "resetData allClean: " + z);
        if (!z) {
            this.d = false;
            return;
        }
        if (this.f2358a != null && !this.f2358a.isRecycled() && !this.j) {
            this.f2358a.recycle();
        }
        this.f2358a = null;
        this.f2359b = false;
        this.d = false;
        this.c = false;
        this.e.clear();
    }

    public boolean a(Size size, Size size2, boolean z, int i2) {
        synchronized (this) {
            d.a("PreviewImageProcess", "getPreviewFrame, mbShowBlurImage: " + this.f2359b + " mbRunning: " + this.c + ", mbDataGetting: " + this.d + ", mBitmap: " + this.f2358a + ", currSize: " + size.getWidth() + "x" + size.getHeight() + ", newSize: " + size2.getWidth() + "x" + size2.getHeight() + ", modeTypeChange: " + z);
            if (!this.c && !this.d && this.f2358a == null) {
                if (!this.f2359b) {
                    this.d = true;
                    b bVar = this.h;
                    final Size size3 = size;
                    final Size size4 = size2;
                    final int i3 = i2;
                    final boolean z2 = z;
                    AnonymousClass2 r3 = new t.a() {
                        public void a(Bitmap bitmap, long j) {
                            if (!q.this.h.S()) {
                                d.a("PreviewImageProcess", "getPreviewFrame, onPreviewCaptured, bitmap: " + bitmap);
                                synchronized (q.this) {
                                    if (q.this.e.isEmpty()) {
                                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 10, bitmap.getHeight() / 10, false);
                                        a aVar = new a();
                                        aVar.f2363a = size3;
                                        aVar.f2364b = size4;
                                        aVar.e = createScaledBitmap;
                                        aVar.c = size3.getWidth();
                                        aVar.d = size3.getHeight();
                                        aVar.f = false;
                                        aVar.g = i3;
                                        q.this.e.add(aVar);
                                        boolean unused = q.this.c = true;
                                        boolean unused2 = q.this.d = false;
                                        Bitmap unused3 = q.this.f2358a = createScaledBitmap;
                                        boolean unused4 = q.this.j = false;
                                        if (q.this.b()) {
                                            q.this.d();
                                            if (z2) {
                                                q.this.a(false);
                                                q.this.h.V();
                                            }
                                        } else if (q.this.g != null) {
                                            q.this.g.removeMessages(1);
                                            q.this.g.sendEmptyMessageDelayed(1, 3000);
                                        }
                                        boolean unused5 = q.this.c = false;
                                    } else {
                                        d.e("PreviewImageProcess", "getPreviewFrame, onPreviewCaptured, setData fail!");
                                    }
                                }
                            }
                        }
                    };
                    bVar.a(r3, false, false, t.a.f);
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        return true;
     */
    public boolean a(d.a aVar) {
        synchronized (this) {
            d.a("PreviewImageProcess", "showBlurBitmap, mBitmap: " + this.f2358a + "mCurrentPreviewData: " + this.i + ", mbRunning: " + this.c + ", mbDataGetting: " + this.d);
            if (this.f2359b) {
                d.a("PreviewImageProcess", "showBlurBitmap, The blur image size may not correct!!");
                return true;
            }
            this.f = aVar;
            this.f2359b = true;
            if (this.f2358a == null) {
                if (this.i == null) {
                    this.g.removeMessages(1);
                    if (!this.c && !this.d) {
                        this.f2359b = false;
                        return false;
                    }
                }
            }
            d();
            this.c = false;
        }
    }

    public synchronized void b(boolean z) {
        this.f2359b = false;
        this.j = false;
        d.a("PreviewImageProcess", "resetBlurAnimation mbShowBlurImage false!!");
        if (z) {
            this.f2358a = null;
            this.e.clear();
            this.i = null;
        }
        this.g.removeMessages(2);
    }

    public synchronized boolean b() {
        d.a("PreviewImageProcess", "isShowBlurBitmap: " + this.f2359b);
        return this.f2359b;
    }

    public boolean c() {
        boolean z;
        synchronized (this) {
            if (this.f2358a != null) {
                if (this.f2358a == null || !this.f2358a.isRecycled()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }
}
