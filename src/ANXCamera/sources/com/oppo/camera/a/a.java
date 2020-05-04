package com.oppo.camera.a;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.oppo.camera.Ipa.ImageProcessService;
import com.oppo.camera.Ipa.b;
import com.oppo.camera.a.d;
import com.oppo.camera.d;
import com.oppo.camera.jni.APSClient;
import com.oppo.camera.jni.NativeBufferProducer;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.providers.downloads.DownloadManager;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ApsController */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f1817a;
    private boolean A;
    private APSClient.BufferCallback B;

    /* renamed from: b  reason: collision with root package name */
    private final Object f1818b;
    private final Object c;
    private long d;
    private int e;
    private int f;
    private int g;
    /* access modifiers changed from: private */
    public int h;
    private String[] i;
    private String[] j;
    private String k;
    private String l;
    private String m;
    private boolean n;
    private boolean o;
    private APSClient p;
    private b q;
    /* access modifiers changed from: private */
    public APSClient.BufferCallback r;
    private ConcurrentHashMap<CaptureResult.Key<?>, Integer> s;
    private d t;
    /* access modifiers changed from: private */
    public ImageProcessService u;
    private HandlerThread v;
    /* access modifiers changed from: private */
    public Handler w;
    /* access modifiers changed from: private */
    public NativeBufferProducer x;
    /* access modifiers changed from: private */
    public Image y;
    private int z;

    /* renamed from: com.oppo.camera.a.a$a  reason: collision with other inner class name */
    /* compiled from: ApsController */
    public static class C0054a {

        /* renamed from: a  reason: collision with root package name */
        public int f1821a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int[] f1822b = null;
        public int c = 0;
        public int d = 0;
        public String e = null;
        public String f = null;
        public String[] g = null;
        public APSClient.BufferCallback h = null;
        public TotalCaptureResult i = null;
        public ImageReader j = null;
        public int k = 0;
    }

    /* compiled from: ApsController */
    public class b extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private Looper f1824b = null;

        b(Looper looper) {
            super(looper);
            this.f1824b = looper;
        }

        public void a(Runnable runnable) {
            if (Looper.myLooper() == this.f1824b) {
                runnable.run();
            } else {
                super.post(runnable);
            }
        }

        public void handleMessage(Message message) {
            if (message == null) {
                d.e("ApsController", "handleMessage, the msg is null, return");
                return;
            }
            d.b("ApsController", "handleMessage, the message type: " + a.this.a(message.what));
            switch (message.what) {
                case 1:
                    a.this.c((C0054a) message.obj);
                    return;
                case 2:
                    Object obj = message.obj;
                    Integer valueOf = Integer.valueOf(message.arg1);
                    if (obj != null && valueOf != null) {
                        a.this.b((TotalCaptureResult) obj, valueOf.intValue());
                        return;
                    }
                    return;
                case 3:
                    Object obj2 = message.obj;
                    if (obj2 != null) {
                        a.this.d((C0054a) obj2);
                        return;
                    }
                    return;
                case 4:
                    a.this.l();
                    return;
                case 5:
                    a.this.k();
                    return;
                case 6:
                    a.this.a(message.getData());
                    return;
                default:
                    d.e("ApsController", "handleMessage, the msg type don't define.");
                    return;
            }
        }
    }

    private a() {
        this.f1818b = new Object();
        this.c = new Object();
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = false;
        this.o = false;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = new ConcurrentHashMap<>();
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = new NativeBufferProducer();
        this.y = null;
        this.z = 0;
        this.A = false;
        this.B = new APSClient.BufferCallback() {
            public void onDataCallback(APSClient.APSResultInfo aPSResultInfo) {
                d.b("ApsController", "mLocalBufferCallback, onDataCallback, callbackInfo: " + aPSResultInfo);
                if (aPSResultInfo != null) {
                    d.a("captureX mLocalBufferCallback onDataCallback");
                    if (a.this.r != null) {
                        if (32 == aPSResultInfo.mBufferType) {
                            d.c("ApsController", "mLocalBufferCallback, onDataCallback, RAW callback will notify to basemode.");
                            try {
                                a.this.y.getPlanes()[0].getBuffer().put(aPSResultInfo.mCopyBuffer, 0, a.this.y.getPlanes()[0].getBuffer().remaining());
                                aPSResultInfo.mImage = a.this.y;
                                a.this.r.onDataCallback(aPSResultInfo);
                            } catch (Exception e) {
                                e.printStackTrace();
                                if (a.this.u != null) {
                                    a.this.u.a(2, aPSResultInfo.mIdentity);
                                }
                            } catch (Throwable th) {
                                aPSResultInfo.mCopyBuffer = null;
                                throw th;
                            }
                            aPSResultInfo.mCopyBuffer = null;
                            return;
                        } else if (a.this.h == 2) {
                            a.this.r.onDataCallback((APSClient.APSResultInfo) null);
                        }
                    }
                    b.a aVar = new b.a();
                    aVar.d = a.this.x.getNativeBufferFromByteArray(aPSResultInfo.mCopyBuffer, aPSResultInfo.mCopyBuffer.length, false);
                    aVar.e = aPSResultInfo.mWidth;
                    aVar.f = aPSResultInfo.mHeight;
                    aVar.i = 17;
                    aVar.g = aPSResultInfo.mStride;
                    aVar.h = aPSResultInfo.mScanline;
                    aVar.j = aPSResultInfo.mRotation;
                    aVar.k = aPSResultInfo.mIdentity;
                    aVar.o = -1;
                    aVar.p = System.currentTimeMillis();
                    d.b("ApsController", "mLocalBufferCallback, onDataCallback, mData.length:" + aPSResultInfo.mCopyBuffer.length + ", orientation: " + aPSResultInfo.mRotation + ", format: " + aVar.i + ", width: " + aPSResultInfo.mWidth + ", height: " + aPSResultInfo.mHeight + ", stride: " + aPSResultInfo.mStride + ", scanline: " + aPSResultInfo.mScanline + ", timeStamp: " + aPSResultInfo.mIdentity);
                    if (a.this.u != null) {
                        a.this.u.a(aVar);
                    }
                    aPSResultInfo.mCopyBuffer = null;
                    a.this.w.sendEmptyMessage(4);
                    d.b("captureX mLocalBufferCallback onDataCallback");
                }
            }

            public void onServiceDied() {
                d.e("ApsController", "onServiceDied, will kill Camera process, need check why APS died");
                if (a.this.u != null) {
                    a.this.u.a(0, 0);
                }
            }
        };
        this.p = new APSClient();
        this.t = new d();
        g();
    }

    public static a a() {
        if (f1817a == null) {
            synchronized (a.class) {
                if (f1817a == null) {
                    f1817a = new a();
                }
            }
        }
        return f1817a;
    }

    /* access modifiers changed from: private */
    public String a(int i2) {
        switch (i2) {
            case 1:
                return "MSG_INT_AND_UPDATE_APS";
            case 2:
                return "MSG_METADATA_ARRIVED";
            case 3:
                return "MSG_IMAGE_RECEIVED";
            case 4:
                return "MSG_DECREASE_PROCESS_IMAGE_NUMBER";
            case 5:
                return "MSG_UNINIT";
            case 6:
                return "MSG_CAPTURE_STARTED";
            default:
                return null;
        }
    }

    private void a(CaptureResult captureResult, long j2) {
        d.b("ApsController", "updateMetaData");
        int[] a2 = c.a(captureResult, this.p);
        if (a2 != null) {
            this.t.c(j2, a2[0]);
            this.t.b(j2, a2[1]);
            this.t.a(j2, a2[2]);
        }
    }

    /* access modifiers changed from: private */
    public void a(Bundle bundle) {
        if (bundle == null) {
            d.b("ApsController", "handlerCaptureStarted, bundle is null, return");
            return;
        }
        boolean z2 = bundle.getBoolean(DownloadManager.CHANGE_TYPE_UPDATE);
        long j2 = bundle.getLong("time_stamp");
        long j3 = bundle.getLong("frame_id");
        d.b("ApsController", "handlerCaptureStarted, usedForTagProcess: " + z2 + ", timestamp: " + j2 + ", frameNumber: " + j3);
        if (z2) {
            synchronized (this.c) {
                this.e = 0;
                this.d = j2;
            }
        }
        this.t.a(j2, j3);
    }

    private void a(d.b bVar, int i2, int i3) {
        String str;
        boolean z2;
        String str2;
        Image image;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        String str3;
        d.b bVar2 = bVar;
        int i7 = i2;
        com.oppo.camera.d.a("captureX addFrameAndProcessImage");
        if (bVar2 == null || bVar2.f1831a == null || !this.o) {
            str = "captureX addFrameAndProcessImage";
            str2 = "ApsController";
            this.e++;
            com.oppo.camera.d.e(str2, "addFrameAndProcessImage, Invalid case, mCallbackNumber: " + this.e + ", needMergeNumber: " + i7 + ", mbInit: " + this.o);
            z2 = true;
            this.t.a(true);
            i4 = 0;
            image = null;
        } else {
            Image image2 = bVar2.f1831a;
            int format = image2.getFormat();
            int i8 = bVar2.f1832b;
            int width = image2.getWidth();
            int height = image2.getHeight();
            int a2 = c.a(format);
            long timestamp = image2.getTimestamp();
            d.a a3 = this.t.a(timestamp);
            String str4 = "ApsController";
            long j2 = a3.f1829a;
            str = "captureX addFrameAndProcessImage";
            ByteBuffer[] a4 = c.a(a2, image2, format);
            int[] a5 = c.a(a4);
            int i9 = i8;
            int[] a6 = c.a(a2, image2);
            int[] a7 = c.a(a5, a6);
            Image image3 = image2;
            if (a3.f1830b != 0 || !m()) {
                i6 = height;
                i5 = width;
                iArr = a6;
                str3 = str4;
            } else {
                i6 = height;
                a3 = this.t.a(this.d);
                StringBuilder sb = new StringBuilder();
                sb.append("addFrameAndProcessImage, camera is closing, use the first frame mCaptureTimeStamp: ");
                i5 = width;
                iArr = a6;
                sb.append(this.d);
                sb.append(", cameraId: ");
                sb.append(a3.e);
                str3 = str4;
                com.oppo.camera.d.b(str3, sb.toString());
            }
            this.e++;
            this.z = format;
            this.f = i7;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("addFrameAndProcessImage, the frameId: ");
            sb2.append(j2);
            sb2.append(", needMergeNumber: ");
            sb2.append(i7);
            sb2.append(", mCallbackNumber: ");
            sb2.append(this.e);
            sb2.append(", imageTimestamp: ");
            sb2.append(timestamp);
            sb2.append(", planNumber: ");
            sb2.append(a2);
            sb2.append(", buffers: ");
            sb2.append(a4);
            sb2.append(", bufferStride: ");
            sb2.append(Arrays.toString(iArr));
            sb2.append(", width: ");
            int i10 = i5;
            sb2.append(i10);
            sb2.append(", height: ");
            int i11 = i6;
            sb2.append(i11);
            sb2.append(", format: ");
            sb2.append(format);
            sb2.append(", mMetaBufferFd: ");
            sb2.append(a3.c);
            sb2.append(", mMetaBufSize: ");
            sb2.append(a3.f1830b);
            sb2.append(", role: ");
            int i12 = i9;
            sb2.append(i12);
            sb2.append(", logicCameraId: ");
            sb2.append(i3);
            com.oppo.camera.d.a(str3, sb2.toString());
            str2 = str3;
            int[] iArr2 = a5;
            i4 = format;
            int addFrameBuff = this.p.addFrameBuff(j2, a4, iArr2, iArr, a7, i4, a3.d, a3.c, a3.f1830b, i12, i10, i11);
            com.oppo.camera.d.a(str2, "addFrameAndProcessImage X, addFrameLength: " + addFrameBuff);
            image = image3;
            z2 = true;
        }
        boolean z3 = i7 == this.e ? z2 : false;
        if (z3) {
            a(String.valueOf(i3));
        }
        if (32 == i4 && z3) {
            com.oppo.camera.d.b(str2, "addFrameAndProcessImage, this is last RAW image, don't need close image");
            this.y = image;
        } else if (image != null) {
            image.close();
            bVar.f1831a = null;
        }
        com.oppo.camera.d.b(str);
    }

    private void a(String str) {
        if (!this.t.a()) {
            if (32 != this.z) {
                this.u.a(this.d);
            }
            b(String.valueOf(str));
            return;
        }
        com.oppo.camera.d.e("ApsController", "checkConditionAndProcess, FrameInfo is Invalid, mCaptureTimeStamp: " + this.d);
        ImageProcessService imageProcessService = this.u;
        if (imageProcessService != null) {
            imageProcessService.a(2, this.d);
        }
        i();
        this.p.clear();
    }

    private void a(int[] iArr) {
        if (iArr == null) {
            this.j = null;
            return;
        }
        int length = iArr.length;
        this.j = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.j[i2] = String.valueOf(iArr[i2]);
        }
    }

    private boolean a(String str, String str2, String str3, String[] strArr, int i2) {
        if (str == null || str2 == null || str3 == null || strArr == null) {
            return false;
        }
        if (str.equals(this.m) && str2.equals(this.k) && str3.equals(this.l)) {
            return i2 != this.h;
        }
        com.oppo.camera.d.a("ApsController", "needUpdateAps, captureMode: " + str + ", cameraId: " + str2 + ", logicCameraId: " + str3 + ", algos: " + strArr.toString());
        return true;
    }

    /* access modifiers changed from: private */
    public void b(TotalCaptureResult totalCaptureResult, int i2) {
        com.oppo.camera.d.a("captureX handleMetadata");
        this.f = i2;
        Long l2 = (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
        this.t.a(l2.longValue(), totalCaptureResult);
        a((CaptureResult) totalCaptureResult, l2.longValue());
        Vector<d.b> vector = this.t.a(l2.longValue()).g;
        StringBuilder sb = new StringBuilder();
        sb.append("handlerMetadata, result: ");
        sb.append(totalCaptureResult);
        sb.append(", totalNumber: ");
        sb.append(i2);
        sb.append(", timeStamp: ");
        sb.append(l2);
        sb.append(", imageWrappers.size: ");
        sb.append(vector != null ? vector.size() : 0);
        com.oppo.camera.d.b("ApsController", sb.toString());
        if (vector != null) {
            for (int i3 = 0; i3 < vector.size(); i3++) {
                a(vector.get(i3), i2, Integer.valueOf(this.l).intValue());
            }
        }
        com.oppo.camera.d.b("captureX handleMetadata");
    }

    private void b(String str) {
        b bVar = new b();
        bVar.a(CameraStatisticsUtil.CAMERA_ID, this.k);
        bVar.a("logic_camera_id", str);
        bVar.a("identity", String.valueOf(this.d));
        String[] a2 = bVar.a();
        com.oppo.camera.d.b("ApsController", "processImage, parameters: " + Arrays.toString(a2) + ", mApsAlgoFlgs: " + Arrays.toString(this.j));
        if (a2 == null || TextUtils.isEmpty(this.k) || TextUtils.isEmpty(str) || TextUtils.isEmpty(String.valueOf(this.d))) {
            this.g = -1;
        } else {
            this.g = this.p.processImages(a2, this.j);
        }
        if (this.g == -1) {
            ImageProcessService imageProcessService = this.u;
            if (imageProcessService != null) {
                imageProcessService.a(1, this.d);
            }
        }
        com.oppo.camera.d.c("ApsController", "processImage, parameters: " + Arrays.toString(bVar.a()) + ", algoFlags: " + Arrays.toString(this.j) + ", mInProcessImageNumber: " + this.g);
        i();
    }

    /* access modifiers changed from: private */
    public void c(C0054a aVar) {
        if (this.o) {
            k();
        }
        this.e = 0;
        synchronized (this.f1818b) {
            this.n = false;
        }
        this.r = aVar.h;
        this.m = aVar.f;
        this.i = aVar.g;
        this.h = aVar.d;
        this.k = String.valueOf(aVar.f1821a);
        this.l = aVar.e;
        this.q = new b();
        this.q.a(CameraStatisticsUtil.PORTRAIT_CAPTURE_MODE, String.valueOf(c.f1826a.get(this.m)));
        this.q.a("logic_camera_id", this.l);
        this.q.a(CameraStatisticsUtil.CAMERA_ID, this.k);
        this.s = c.a((CaptureResult) aVar.i);
        h();
        this.o = true;
    }

    /* access modifiers changed from: private */
    public void d(C0054a aVar) {
        Image acquireNextImage = aVar.j.acquireNextImage();
        long timestamp = acquireNextImage.getTimestamp();
        int i2 = aVar.f1821a;
        int i3 = aVar.c;
        a(aVar.f1822b);
        com.oppo.camera.o.d.a(acquireNextImage);
        d dVar = this.t;
        dVar.getClass();
        d.b bVar = new d.b();
        bVar.f1831a = acquireNextImage;
        bVar.f1832b = aVar.k;
        com.oppo.camera.d.c("ApsController", "handlerImageArrived, timeStamp: " + timestamp + ", need merge number: " + i3);
        if ((!m() || this.d != 0) && (this.t.a(timestamp).f1830b != 0 || m())) {
            a(bVar, i3, Integer.valueOf(this.l).intValue());
            return;
        }
        this.t.a(timestamp, bVar);
        this.t.d(timestamp, i2);
        com.oppo.camera.d.b("ApsController", "handlerImageArrived, metadata don't arrived, put into the cache");
        if (0 == this.d) {
            synchronized (this.c) {
                if (0 == this.d) {
                    this.d = timestamp;
                    com.oppo.camera.d.b("ApsController", "handlerImageArrived, data is before start notify");
                }
            }
        }
    }

    private void g() {
        if (this.v == null) {
            this.v = new HandlerThread("apscontroller");
            this.v.start();
            this.w = new b(this.v.getLooper());
        }
    }

    private void h() {
        if (this.p != null && this.s != null) {
            b bVar = new b();
            for (CaptureResult.Key next : this.s.keySet()) {
                bVar.a(next.getName(), Long.toString((long) this.s.get(next).intValue()));
            }
            String[] a2 = bVar.a();
            String[] a3 = this.q.a();
            int[] a4 = c.a(this.q.a(CameraStatisticsUtil.CAMERA_ID), this.p);
            if (a4 == null) {
                com.oppo.camera.d.e("ApsController", "initApsParameters, getCameraCharacteristicsData fail, need check");
                return;
            }
            int i2 = a4[0];
            int i3 = a4[1];
            int i4 = a4[2];
            com.oppo.camera.d.b("ApsController", "initApsParameters, parameters: " + Arrays.toString(a3) + ", algoFlags: " + Arrays.toString(this.i) + ", chararcteristicsAddr: " + i2 + ", chararcteristicsFd: " + i3 + ", chararcteristicsBuffSize: " + i4);
            this.p.setDataCallback(this.B);
            this.p.algoInit(a3, a2, i2, i3, i4, this.i);
        }
    }

    private void i() {
        com.oppo.camera.d.a("ApsController", "resetProcessStateAndNotify, mBufferCallback: " + this.r + ", mApsCallbackAction: " + this.h);
        j();
        if (this.r != null && (-1 == this.g || !(32 == this.z || this.h == 2))) {
            this.r.onDataCallback((APSClient.APSResultInfo) null);
        }
        if (m()) {
            k();
        }
    }

    private void j() {
        this.t.a(false);
        this.t.b();
        this.e = 0;
        this.f = 0;
        synchronized (this.c) {
            this.d = 0;
        }
    }

    /* access modifiers changed from: private */
    public void k() {
        com.oppo.camera.d.c("ApsController", "doUninit, mbInit: " + this.o);
        if (this.o) {
            com.oppo.camera.d.b("ApsController", "doUninit, parameters: " + Arrays.toString(this.q.a()) + ", mInitAlgos: " + Arrays.toString(this.i));
            this.p.unint(this.q.a(), this.i);
            this.i = null;
            this.q = null;
            this.k = null;
            this.m = null;
            this.o = false;
        }
    }

    /* access modifiers changed from: private */
    public void l() {
        com.oppo.camera.d.b("ApsController", "decreaseInProcessNum, mInProcessImageNumber: " + this.g);
        this.g = this.g + -1;
    }

    private boolean m() {
        boolean z2;
        synchronized (this.f1818b) {
            com.oppo.camera.d.b("ApsController", "isClosingCamera, mbIsCameraClosing: " + this.n);
            z2 = this.n;
        }
        return z2;
    }

    public void a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j2, long j3, boolean z2) {
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putLong("time_stamp", j2);
        bundle.putLong("frame_id", j3);
        bundle.putBoolean(DownloadManager.CHANGE_TYPE_UPDATE, z2);
        message.setData(bundle);
        message.what = 6;
        this.w.sendMessage(message);
    }

    public void a(TotalCaptureResult totalCaptureResult, int i2) {
        this.w.obtainMessage(2, i2, 0, totalCaptureResult).sendToTarget();
    }

    public void a(TotalCaptureResult totalCaptureResult, APSClient.BufferCallback bufferCallback, String str, String str2, String[] strArr, String str3, int i2) {
        if (a(str, str2, str3, strArr, i2)) {
            C0054a aVar = new C0054a();
            aVar.h = bufferCallback;
            aVar.f = str;
            aVar.g = strArr;
            aVar.f1821a = Integer.valueOf(str2).intValue();
            aVar.e = str3;
            aVar.i = totalCaptureResult;
            aVar.d = i2;
            Message message = new Message();
            message.obj = aVar;
            message.what = 1;
            this.w.sendMessage(message);
        }
    }

    public void a(ImageProcessService imageProcessService) {
        this.u = imageProcessService;
    }

    public void a(C0054a aVar) {
        com.oppo.camera.d.e("ApsController", "onCaptureFailed");
        a((d.b) null, aVar.c, Integer.valueOf(this.l).intValue());
    }

    public void b() {
        APSClient aPSClient = this.p;
        if (aPSClient != null) {
            this.A = aPSClient.startConnect() == 0;
        }
        com.oppo.camera.d.b("ApsController", "onAfterStartPreview, mbApsConnected: " + this.A);
    }

    public void b(C0054a aVar) {
        this.w.obtainMessage(3, aVar).sendToTarget();
    }

    public synchronized boolean c() {
        return this.A;
    }

    public synchronized void d() {
        com.oppo.camera.d.c("ApsController", "unInit");
        this.w.sendEmptyMessage(5);
    }

    public void e() {
        com.oppo.camera.d.b("ApsController", "waitHandlerThread");
        ((b) this.w).a(new Runnable() {
            public void run() {
                a.this.w.getLooper().quitSafely();
            }
        });
        try {
            if (this.v != null) {
                this.v.join();
                this.v = null;
                g();
                this.k = null;
                if (this.e < this.f) {
                    com.oppo.camera.d.e("ApsController", "waitHandlerThread, This time capture fail, the mCallbackNumber: " + this.e + ", is not match request mDebugNeedMergeNum: " + this.f + ", mCaptureTimeStamp: " + this.d);
                    if (this.u != null) {
                        this.u.a(2, this.d);
                    }
                    j();
                    k();
                }
            }
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        com.oppo.camera.d.b("ApsController", "waitHandlerThread X");
    }

    public void f() {
        boolean z2;
        boolean z3;
        com.oppo.camera.d.b("ApsController", "beforePause, mCaptureTimeStamp: " + this.d);
        synchronized (this.c) {
            z2 = false;
            z3 = this.d != 0;
        }
        if (z3) {
            synchronized (this.f1818b) {
                this.n = true;
            }
        } else {
            d();
        }
        APSClient aPSClient = this.p;
        if (aPSClient != null) {
            if (aPSClient.resetConnectStatus() == 0) {
                z2 = true;
            }
            this.A = z2;
            com.oppo.camera.d.b("ApsController", "beforePause, mbApsConnected: " + this.A);
        }
    }
}
