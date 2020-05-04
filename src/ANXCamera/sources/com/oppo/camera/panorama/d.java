package com.oppo.camera.panorama;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.fotonation.panorama.PanoramaEngine;
import com.oppo.camera.jni.FormatConverter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: FNPanoramaProcess */
public class d {
    private int A = 0;
    private Bitmap B = null;

    /* renamed from: a  reason: collision with root package name */
    private c f2289a = null;

    /* renamed from: b  reason: collision with root package name */
    private FormatConverter f2290b = null;
    /* access modifiers changed from: private */
    public int c = 0;
    /* access modifiers changed from: private */
    public long d = 0;
    private long e = 0;
    /* access modifiers changed from: private */
    public int f = 0;
    /* access modifiers changed from: private */
    public int g = 0;
    /* access modifiers changed from: private */
    public int h = 0;
    private float i = 0.0f;
    private float j = 0.0f;
    private float k = 0.0f;
    private int l = 34;
    /* access modifiers changed from: private */
    public int m = 0;
    private SensorManager n = null;
    /* access modifiers changed from: private */
    public Sensor o = null;
    private int p = 1440;
    private int q = 1080;
    private int r = 1920;
    private int s = 480;
    private int t = 640;
    private int u = 480;
    private int v = 640;
    private int w = 0;
    private int x = 0;
    private int y = 0;
    private int z = 0;

    /* compiled from: FNPanoramaProcess */
    public class a {

        /* renamed from: b  reason: collision with root package name */
        private int f2292b = 0;
        private int c = 0;
        private Bitmap d = null;

        public a() {
        }

        public int a() {
            return this.f2292b;
        }

        public void a(int i) {
            this.f2292b = i;
        }

        public void a(Bitmap bitmap) {
            this.d = bitmap;
        }

        public int b() {
            return this.c;
        }

        public void b(int i) {
            this.c = i;
        }

        public Bitmap c() {
            return this.d;
        }
    }

    /* compiled from: FNPanoramaProcess */
    public interface b {
        void H_();

        void I_();

        void J_();

        void a(C0063d dVar);

        void a(byte[] bArr);

        void b(boolean z);
    }

    /* compiled from: FNPanoramaProcess */
    private class c extends Handler implements SensorEventListener {

        /* renamed from: a  reason: collision with root package name */
        b f2293a;
        private long c;

        public c(Looper looper) {
            super(looper);
            this.c = 0;
        }

        public c(d dVar, Looper looper, b bVar) {
            this(looper);
            this.f2293a = bVar;
        }

        public void handleMessage(Message message) {
            Message message2 = message;
            int i = message2.what;
            if (i != 1) {
                if (i == 2) {
                    if (d.this.c != 0) {
                        com.oppo.camera.d.a("FNPanoramaProcess", "handleMessage, PanoramaFinish, mPanoramaState: " + d.this.c);
                        this.f2293a.I_();
                    }
                    if (d.this.d != 0) {
                        PanoramaEngine.panoramaDestroy(d.this.d);
                    }
                    long unused = d.this.d = 0;
                    int unused2 = d.this.c = 0;
                } else if (i != 3) {
                    if (i == 4) {
                        if (0 == d.this.d) {
                            com.oppo.camera.d.a("FNPanoramaProcess", "panoramaResult, already destory!");
                            return;
                        }
                        int[] iArr = new int[2];
                        byte[] panoramaResult = PanoramaEngine.panoramaResult(d.this.d, iArr, true);
                        if (panoramaResult != null) {
                            try {
                                YuvImage yuvImage = new YuvImage(panoramaResult, d.this.m, iArr[0], iArr[1], (int[]) null);
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                yuvImage.compressToJpeg(new Rect(0, 0, iArr[0], iArr[1]), 90, byteArrayOutputStream);
                                this.f2293a.a(byteArrayOutputStream.toByteArray());
                                byteArrayOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        } else {
                            com.oppo.camera.d.a("FNPanoramaProcess", "panoramaResult failed!");
                            long unused4 = d.this.d = 0;
                        }
                    }
                } else if (0 == d.this.d) {
                    com.oppo.camera.d.a("FNPanoramaProcess", "panoramaProcess, already destory!");
                } else {
                    byte[] bArr = (byte[]) message2.obj;
                    int[] iArr2 = new int[2];
                    int panoramaProcess = PanoramaEngine.panoramaProcess(d.this.d, bArr, d.this.f, d.this.g, new int[2], iArr2, d.this.h, (int) (d.this.i() * 100.0f), (int) (d.this.j() * 100.0f));
                    if ((panoramaProcess == 0 || 101 == panoramaProcess || 102 == panoramaProcess) && 101 == panoramaProcess) {
                        int unused5 = d.this.a(0.0f, true);
                        d.this.a(0.0f, 0.0f, true);
                    }
                    C0063d dVar = new C0063d();
                    dVar.a(d.this.d);
                    dVar.a(panoramaProcess);
                    dVar.a(iArr2);
                    dVar.a(bArr);
                    this.f2293a.a(dVar);
                    int unused6 = d.this.c = 3;
                }
            } else if (0 != d.this.d) {
                this.f2293a.b(true);
            } else {
                boolean booleanValue = ((Boolean) message2.obj).booleanValue();
                int c2 = d.this.g * 2;
                int d = d.this.f * 15;
                com.oppo.camera.d.a("FNPanoramaProcess", "handleMessage, panoramaInit, W:" + d.this.f + ", H: " + d.this.g + ", ResW: " + c2 + ", ResH: " + d);
                d dVar2 = d.this;
                long unused7 = dVar2.d = PanoramaEngine.panoramaInit(dVar2.f, d.this.g, c2, d, booleanValue ? 34 : 18, true);
                int unused8 = d.this.h = 0;
                if (0 == d.this.d) {
                    this.f2293a.J_();
                    return;
                }
                int unused9 = d.this.c = 1;
                this.f2293a.H_();
            }
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor == d.this.o) {
                if (this.c != 0) {
                    float f = ((float) (sensorEvent.timestamp - this.c)) * 1.0E-9f;
                    d.this.a((-sensorEvent.values[0]) * 57.295776f * f, sensorEvent.values[1] * 57.295776f * f, false);
                    int unused = d.this.a(sensorEvent.values[1] * 57.295776f * f, false);
                } else {
                    d.this.a(0.0f, 0.0f, false);
                    int unused2 = d.this.a(0.0f, false);
                }
                this.c = sensorEvent.timestamp;
            }
        }
    }

    /* renamed from: com.oppo.camera.panorama.d$d  reason: collision with other inner class name */
    /* compiled from: FNPanoramaProcess */
    public class C0063d {

        /* renamed from: b  reason: collision with root package name */
        private long f2296b = 0;
        private int c = 0;
        private int[] d = null;
        private byte[] e = null;

        public C0063d() {
        }

        public long a() {
            return this.f2296b;
        }

        public void a(int i) {
            this.c = i;
        }

        public void a(long j) {
            this.f2296b = j;
        }

        public void a(byte[] bArr) {
            this.e = bArr;
        }

        public void a(int[] iArr) {
            this.d = iArr;
        }

        public int b() {
            return this.c;
        }

        public int[] c() {
            return this.d;
        }

        public byte[] d() {
            return this.e;
        }
    }

    /* access modifiers changed from: private */
    public synchronized int a(float f2, boolean z2) {
        if (z2) {
            this.k = 0.0f;
        } else {
            this.k += f2;
        }
        return (int) (this.k * 100.0f);
    }

    private Bitmap a(Bitmap bitmap, int i2, int i3, int i4, Bitmap bitmap2) {
        Bitmap a2 = com.oppo.camera.o.d.a(i4, Math.max(bitmap.getHeight(), bitmap2.getHeight()), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(a2);
        if (g(this.l)) {
            canvas.drawBitmap(bitmap2, 0.0f, (float) i3, (Paint) null);
            canvas.drawBitmap(bitmap, (float) (i4 - bitmap.getWidth()), 0.0f, (Paint) null);
        } else {
            canvas.drawBitmap(bitmap2, (float) Math.abs(i2), (float) i3, (Paint) null);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        canvas.save();
        canvas.restore();
        return a2;
    }

    /* access modifiers changed from: private */
    public synchronized void a(float f2, float f3, boolean z2) {
        if (z2) {
            this.i = 0.0f;
            this.j = 0.0f;
        } else {
            this.i += f2;
            this.j += f3;
        }
    }

    private boolean d(int i2) {
        return i2 >= 1;
    }

    private int e(int i2) {
        return (i2 != 34 && i2 == 18) ? 33 : 17;
    }

    private int f(int i2) {
        return (i2 * (this.q + Math.abs(this.w))) / this.y;
    }

    private boolean g(int i2) {
        int e2 = e(i2);
        return 34 == e2 || 33 == e2;
    }

    /* access modifiers changed from: private */
    public synchronized float i() {
        return this.i;
    }

    /* access modifiers changed from: private */
    public synchronized float j() {
        return this.j;
    }

    public a a(byte[] bArr, boolean z2) {
        boolean z3 = z2;
        a aVar = new a();
        int g2 = g();
        int h2 = h();
        boolean g3 = g(this.l);
        int i2 = this.q / 2;
        if (this.l != 34) {
            i2 = 0;
        }
        if (this.A > 0) {
            g2 /= 2;
        } else {
            i2 = 0;
        }
        Bitmap a2 = com.oppo.camera.o.d.a(g2, h2, Bitmap.Config.ARGB_8888);
        FormatConverter formatConverter = this.f2290b;
        if (formatConverter != null) {
            formatConverter.nv21ToBitmapProcess(this.e, bArr, i2, a2, g2);
        }
        if (z3) {
            com.oppo.camera.d.a("FNPanoramaProcess", "addKeyFrame, mPreviewH: " + this.v + ", mPreviewW: " + this.u + ", yuv_offset: " + i2 + ", mRgbFactor: " + this.z + ", rgbW: " + g2 + ", mOffsetX: " + this.w + ", mOffsetY: " + this.x + ", mKeyFrameCounter: " + this.A + ", isCapturing: " + z3 + ", mCurrentBitmap: " + this.B);
            this.A = this.A + 1;
            if (this.B == null) {
                this.A = 0;
            }
        }
        int c2 = c(this.w);
        if ((c2 > 0 && g3) || (c2 < 0 && !g3)) {
            c2 = -c2;
        }
        int i3 = c2;
        if (this.A == 1 || !z3) {
            this.B = a2;
            if (this.A == 1) {
                aVar.a(i3);
            } else {
                aVar.a(g2);
            }
            aVar.b(c(this.x));
            aVar.a(this.B);
            return aVar;
        }
        if (this.B != null) {
            this.B = a(this.B, (g() - g2) + Math.abs(i3), c(this.x), g() + Math.abs(i3), a2);
            aVar.a(i3);
            aVar.b(c(this.x));
            aVar.a(this.B);
        }
        return aVar;
    }

    public void a(int i2) {
        if (0 != this.d && d(i2)) {
            this.f2289a.sendEmptyMessage(4);
        }
        this.f2289a.obtainMessage(2).sendToTarget();
    }

    public void a(int i2, int i3) {
        this.u = i2;
        this.v = i3;
        this.q = i2;
        this.r = i3;
    }

    public void a(Activity activity, int i2, int i3, b bVar) {
        HandlerThread handlerThread = new HandlerThread("com/fotonation/panorama");
        handlerThread.start();
        this.f2289a = new c(this, handlerThread.getLooper(), bVar);
        this.f = i2;
        this.g = i3;
        this.m = 17;
        this.n = (SensorManager) activity.getSystemService("sensor");
        this.o = this.n.getDefaultSensor(4);
        Sensor sensor = this.o;
        if (sensor != null) {
            SensorManager sensorManager = this.n;
            c cVar = this.f2289a;
            sensorManager.registerListener(cVar, sensor, 0, cVar);
        }
    }

    public void a(boolean z2) {
        this.f2289a.obtainMessage(1, Boolean.valueOf(z2)).sendToTarget();
    }

    public void a(boolean z2, byte[] bArr) {
        if (z2 && this.d != 0) {
            int i2 = this.c;
            if (i2 == 1 || i2 == 3) {
                this.c = 2;
                this.f2289a.obtainMessage(3, bArr).sendToTarget();
            }
        }
    }

    public boolean a() {
        return this.B != null;
    }

    public void b() {
        this.A = 0;
    }

    public void b(int i2) {
        this.l = i2;
    }

    public void b(int i2, int i3) {
        this.s = i2;
        this.t = i3;
    }

    public void b(boolean z2) {
        int i2 = this.q;
        if (this.r * i2 != 0) {
            this.y = this.u * 8;
            this.z = this.y / i2;
            this.p = f() * this.z;
            int i3 = this.p;
            int i4 = this.y;
            if (i3 > i4) {
                this.p = i4;
            }
            int i5 = this.z;
            if (i5 % 2 != 0) {
                this.z = i5 + 1;
            }
            if (z2) {
                this.A = 0;
            }
        }
    }

    public int c(int i2) {
        return i2 / this.z;
    }

    public void c() {
        SensorManager sensorManager = this.n;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f2289a);
        }
        c cVar = this.f2289a;
        if (cVar != null) {
            cVar.getLooper().quitSafely();
        }
        FormatConverter formatConverter = this.f2290b;
        if (formatConverter != null) {
            formatConverter.nv21ToBitmapUnInit(this.e);
        }
    }

    public void c(int i2, int i3) {
        this.w = i2;
        this.x = i3;
    }

    public void d() {
        if (this.f2290b == null) {
            this.f2290b = new FormatConverter();
        }
        FormatConverter formatConverter = this.f2290b;
        int i2 = this.v;
        int i3 = this.u;
        int i4 = this.q;
        int i5 = this.z;
        this.e = formatConverter.nv21ToBitmapInit(i2, i3, i2, i3, i2, i4 / i5, this.r / i5, (float) i5, 1, 1, 0, 0, 0);
    }

    public boolean e() {
        return ((float) f(240)) >= ((float) (this.p * 240)) / ((float) this.y);
    }

    public int f() {
        return (int) (((float) this.s) / (((float) this.t) / ((float) h())));
    }

    public int g() {
        return this.q / this.z;
    }

    public int h() {
        return this.r / this.z;
    }
}
