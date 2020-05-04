package com.oppo.camera.e;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.location.Location;
import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import com.color.compat.hardware.camera2.CameraDevicesNative;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* compiled from: OneCameraImpl */
public class g implements f {
    private boolean A;
    private boolean B;
    private boolean C;
    /* access modifiers changed from: private */
    public int D;
    /* access modifiers changed from: private */
    public int E;
    /* access modifiers changed from: private */
    public int F;
    /* access modifiers changed from: private */
    public int G;
    /* access modifiers changed from: private */
    public int H;
    /* access modifiers changed from: private */
    public int I;
    /* access modifiers changed from: private */
    public int J;
    /* access modifiers changed from: private */
    public int K;
    private int L;
    /* access modifiers changed from: private */
    public ImageWriter M;
    /* access modifiers changed from: private */
    public d N;
    private d O;
    /* access modifiers changed from: private */
    public boolean P;
    /* access modifiers changed from: private */
    public boolean Q;
    /* access modifiers changed from: private */
    public final CameraCaptureSession.StateCallback R;
    /* access modifiers changed from: private */
    public final CameraCaptureSession.CaptureCallback S;
    /* access modifiers changed from: private */
    public com.oppo.camera.h.a T;
    /* access modifiers changed from: private */
    public final com.oppo.camera.b.a U;
    /* access modifiers changed from: private */
    public final CameraCaptureSession.CaptureCallback V;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public CameraManager f2047a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public CameraDevice f2048b;
    /* access modifiers changed from: private */
    public f.C0058f c;
    /* access modifiers changed from: private */
    public CameraCaptureSession d;
    /* access modifiers changed from: private */
    public CaptureRequest.Builder e;
    /* access modifiers changed from: private */
    public h f;
    /* access modifiers changed from: private */
    public f.e g;
    /* access modifiers changed from: private */
    public f.a h;
    /* access modifiers changed from: private */
    public f.c i;
    /* access modifiers changed from: private */
    public c j;
    /* access modifiers changed from: private */
    public com.oppo.camera.n.a k;
    private HandlerThread l;
    /* access modifiers changed from: private */
    public LinkedHashMap<String, Surface> m;
    private HashMap<String, a<?>> n;
    private Object o;
    /* access modifiers changed from: private */
    public Semaphore p;
    /* access modifiers changed from: private */
    public int q;
    /* access modifiers changed from: private */
    public boolean r;
    private String s;
    /* access modifiers changed from: private */
    public boolean t;
    private String u;
    /* access modifiers changed from: private */
    public boolean v;
    private boolean w;
    private boolean x;
    private int y;
    /* access modifiers changed from: private */
    public boolean z;

    /* compiled from: OneCameraImpl */
    private class a<T> {

        /* renamed from: b  reason: collision with root package name */
        private final String f2092b;
        /* access modifiers changed from: private */
        public final i<T> c;

        private a(String str, i<T> iVar) {
            this.f2092b = str;
            this.c = iVar;
        }

        public void a(CaptureRequest.Builder builder) {
            if (g.this.j == null || !g.this.j.a() || this.f2092b == null) {
                d.e("OneCameraImpl", "addToBuilder, mCameraMetadataKey is null or not loaded");
                return;
            }
            CaptureRequest.Key<?> a2 = g.this.j.a(this.f2092b);
            if (a2 == null) {
                d.e("OneCameraImpl", "addToBuilder, key is null, key: " + this.f2092b + ", value: " + this.c);
                return;
            }
            builder.set(a2, this.c.a());
        }
    }

    public g() {
        this.f2047a = null;
        this.f2048b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = new Object();
        this.p = new Semaphore(1, true);
        this.q = 5;
        this.r = false;
        this.s = "session_type_custom";
        this.t = false;
        this.u = c.a_;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = 0;
        this.z = false;
        this.A = false;
        this.B = true;
        this.C = true;
        this.D = 8;
        this.E = 32769;
        this.F = 1;
        this.G = 4;
        this.H = 1;
        this.I = 0;
        this.J = 1;
        this.K = 1;
        this.L = 0;
        this.M = null;
        this.N = null;
        this.O = new d();
        this.P = false;
        this.Q = false;
        this.R = new CameraCaptureSession.StateCallback() {
            public void onClosed(CameraCaptureSession cameraCaptureSession) {
                d.a("OneCameraImpl", "onClosed, session: " + cameraCaptureSession);
                CameraCaptureSession unused = g.this.d = null;
                g.this.u(8);
                if (g.this.g != null) {
                    g.this.g.d();
                }
                if (g.this.z) {
                    boolean unused2 = g.this.z = false;
                    g gVar = g.this;
                    gVar.a(gVar.E, g.this.g, g.this.r, g.this.K);
                }
            }

            public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                d.a("OneCameraImpl", "onConfigureFailed, session: " + cameraCaptureSession);
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                }
                CameraCaptureSession unused = g.this.d = null;
                g.this.u(6);
                if (g.this.g != null) {
                    g.this.g.c();
                }
            }

            public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                d.e("OneCameraImpl", "onConfigured, session: " + cameraCaptureSession);
                CameraCaptureSession unused = g.this.d = cameraCaptureSession;
                g.this.u(5);
                if (g.this.g != null) {
                    g.this.g.b();
                }
            }
        };
        this.S = new CameraCaptureSession.CaptureCallback() {
            public void onCaptureBufferLost(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
                d.a("OneCameraImpl", "PreviewRequestCallback, onCaptureSequenceAborted, target: " + surface + ", frameNum: " + j + ", session: " + cameraCaptureSession);
                super.onCaptureBufferLost(cameraCaptureSession, captureRequest, surface, j);
            }

            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                if (!g.this.t) {
                    d.e("OneCameraImpl", "PreviewRequestCallback, onCaptureCompleted, first frame arrive");
                    d.a("First frame arrive");
                    boolean unused = g.this.t = true;
                    if (g.this.i != null) {
                        g.this.i.a();
                    }
                    d.b("First frame arrive");
                }
                if (totalCaptureResult != null) {
                    int unused2 = g.this.G = ((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE)).intValue();
                    int unused3 = g.this.H = ((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE)).intValue();
                    if (!g.this.j.b()) {
                        g.this.j.a((List<CaptureResult.Key<?>>) totalCaptureResult.getKeys());
                    }
                    if (g.this.i != null) {
                        g.this.i.a(cameraCaptureSession, captureRequest, totalCaptureResult);
                    }
                    if (g.this.T != null) {
                        g.this.T.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                    }
                    if (g.this.U != null) {
                        g.this.U.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                    }
                    if (32775 != g.this.E) {
                        int unused4 = g.this.I = g.this.I + 1;
                        if (g.this.q != 0 && g.this.I % g.this.q == 0) {
                            try {
                                totalCaptureResult.getKeys();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            int unused5 = g.this.I = 0;
                        }
                    }
                }
            }

            public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
                d.d("OneCameraImpl", "PreviewRequestCallback, onCaptureFailed, session: " + cameraCaptureSession + ", fail reason: " + captureFailure.getReason() + ", fail sequenceId:" + captureFailure.getSequenceId());
                super.onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
            }

            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                if (g.this.a() && !com.oppo.camera.o.d.w()) {
                    CaptureResult.Key<?> b2 = g.this.n().b("com.oppo.ae.preflashstate");
                    if (((b2 == null || captureResult.get(b2) == null) ? -1 : ((int[]) captureResult.get(b2))[0]) == 255) {
                        g.this.T.b();
                    }
                }
                super.onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
            }

            public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
                d.a("OneCameraImpl", "PreviewRequestCallback, onCaptureSequenceAborted, sequenceId: " + i + ", session: " + cameraCaptureSession);
                super.onCaptureSequenceAborted(cameraCaptureSession, i);
            }

            public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
                super.onCaptureStarted(cameraCaptureSession, captureRequest, j, j2);
                if (g.this.i != null) {
                    g.this.i.a(cameraCaptureSession, captureRequest, j, j2);
                }
            }
        };
        this.T = new com.oppo.camera.h.a(this) {
            public void a() {
                d.a("OneCameraImpl", "openFrontPreFlash");
                if (g.this.c != null) {
                    g.this.c.b();
                }
            }

            public void b() {
                if (g.this.w() && g.this.a() && g.this.T.g()) {
                    d.a("OneCameraImpl", "closeFrontMainFlash");
                    g.this.o(true);
                    if (g.this.c != null) {
                        g.this.c.c();
                    }
                }
            }

            public void c() {
                d.a("OneCameraImpl", "onAeConverged, mbNeedCapture: " + this.f2201b + ", needWaitAeConverge: " + g.this.u());
                if (g.this.c != null) {
                    g.this.c.a();
                }
                g.this.y();
                if (g.this.h != null && this.f2201b && g.this.u()) {
                    g.this.N.a(d.a.CAPTURE);
                    g gVar = g.this;
                    gVar.a(gVar.J, g.this.N, g.this.h);
                    if (!g.this.v && !g.this.a() && com.oppo.camera.o.d.w() && 2 == g.this.F) {
                        g.this.k();
                    }
                }
            }

            public void d() {
                com.oppo.camera.d.a("OneCameraImpl", "onAeLocked, mbNeedCapture: " + this.f2201b + ", needWaitAelocked: " + g.this.v());
                if (g.this.h != null && this.f2201b && g.this.v()) {
                    g.this.N.a(d.a.CAPTURE);
                    g gVar = g.this;
                    gVar.a(gVar.J, g.this.N, g.this.h);
                }
            }
        };
        this.U = new com.oppo.camera.b.a(this) {
            public void a() {
                com.oppo.camera.d.a("OneCameraImpl", "mApertureControllerCallback, onApertureSwitchDone, needCapture: " + b());
                if (b() && g.this.h != null) {
                    a(false);
                    g gVar = g.this;
                    gVar.a(gVar.J, g.this.N, g.this.h);
                }
            }
        };
        this.V = new CameraCaptureSession.CaptureCallback() {
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                com.oppo.camera.d.a("OneCameraImpl", "mPictureCallback, onCaptureCompleted, session: " + cameraCaptureSession);
                super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                if (g.this.c != null) {
                    g.this.c.a(totalCaptureResult, captureRequest);
                }
                if (g.this.h != null) {
                    g.this.h.a(totalCaptureResult, captureRequest);
                }
            }

            public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
                com.oppo.camera.d.a("OneCameraImpl", "mPictureCallback, onCaptureFailed, session: " + cameraCaptureSession + ", fail reason: " + captureFailure.getReason() + ", fail sequenceId:" + captureFailure.getSequenceId());
                super.onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
                if (g.this.h != null) {
                    g.this.h.a(captureRequest);
                }
                if (g.this.w()) {
                    g.this.o(true);
                }
                if (g.this.M != null) {
                    g.this.M.close();
                    ImageWriter unused = g.this.M = null;
                }
            }

            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                com.oppo.camera.d.a("OneCameraImpl", "mPictureCallback, onCaptureProgressed, session: " + cameraCaptureSession);
                super.onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
                if (g.this.h != null) {
                    g.this.h.a(captureRequest, captureResult);
                }
                if (g.this.f.C() && g.this.P && !com.oppo.camera.o.d.w() && g.this.j != null) {
                    int[] iArr = (int[]) captureResult.get(g.this.j.b("com.mediatek.control.capture.next.ready"));
                    boolean z = false;
                    if (iArr != null && iArr.length > 0) {
                        int length = iArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                break;
                            } else if (iArr[i] == 1) {
                                z = true;
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    if (z) {
                        g.this.N.a(d.a.CAPTURE);
                        g gVar = g.this;
                        gVar.a(1, gVar.N, g.this.h);
                    }
                }
            }

            public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i, long j) {
                super.onCaptureSequenceCompleted(cameraCaptureSession, i, j);
                if (g.this.w() && (!g.this.a() || (g.this.a() && !g.this.T.g()))) {
                    g gVar = g.this;
                    gVar.o(gVar.T.h());
                }
                if (g.this.U != null) {
                    g.this.U.d();
                }
            }

            public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
                com.oppo.camera.d.a("OneCameraImpl", "mPictureCallback, onCaptureStarted, session: " + cameraCaptureSession + ", timestamp: " + j + ", frameNumber: " + j2);
                super.onCaptureStarted(cameraCaptureSession, captureRequest, j, j2);
                if (g.this.c != null) {
                    g.this.c.a(cameraCaptureSession, captureRequest, j);
                }
                if (g.this.h != null) {
                    g.this.h.a(cameraCaptureSession, captureRequest, j, j2);
                }
            }
        };
        this.l = new HandlerThread("Camera Handler Thread");
        this.l.start();
        this.k = new com.oppo.camera.n.a(this.l.getLooper());
        this.n = new HashMap<>();
    }

    /* access modifiers changed from: private */
    public InputConfiguration A() {
        com.oppo.camera.d.a("getInputConfiguration");
        f.e eVar = this.g;
        if (eVar != null) {
            InputConfiguration a2 = eVar.a();
            com.oppo.camera.d.b("getInputConfiguration");
            return a2;
        }
        com.oppo.camera.d.b("getInputConfiguration");
        return null;
    }

    /* access modifiers changed from: private */
    public List<Surface> B() {
        com.oppo.camera.d.a("builderOutputSurfaces");
        if (this.m == null) {
            this.m = new LinkedHashMap<>();
        }
        f.e eVar = this.g;
        if (eVar != null) {
            eVar.a(this.m);
        }
        com.oppo.camera.d.b("builderOutputSurfaces");
        return new ArrayList(this.m.values());
    }

    /* access modifiers changed from: private */
    public void C() throws CameraAccessException {
        com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder, mDeviceState: " + this.D);
        com.oppo.camera.d.a("createPreviewBuilder");
        if (this.f2048b != null) {
            this.t = false;
            this.O.a(d.a.PREVIEW);
            this.e = this.f2048b.createCaptureRequest(this.K);
            this.e.setTag(this.O);
            if (!this.j.a()) {
                CaptureRequest build = this.e.build();
                HashSet hashSet = new HashSet();
                com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder, getAvailableCaptureRequestKeys");
                com.oppo.camera.d.a("getAvailableCaptureRequestKeys");
                hashSet.addAll(this.f.i());
                com.oppo.camera.d.b("getAvailableCaptureRequestKeys");
                com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder, getAvailableCaptureRequestKeys X");
                com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder, CaptureRequest.getKeys");
                com.oppo.camera.d.a("CaptureRequest.getKeys");
                hashSet.addAll(this.f.a(build));
                com.oppo.camera.d.b("CaptureRequest.getKeys");
                com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder, CaptureRequest.getKeys X");
                this.j.a((Set<CaptureRequest.Key<?>>) hashSet);
            }
            if (this.m.get("type_preview") != null) {
                this.e.addTarget(this.m.get("type_preview"));
            }
            if (this.r && 3 == this.K && this.m.get("type_video") != null) {
                this.e.addTarget(this.m.get("type_video"));
            }
            if (this.m.get("type_depth_preview") != null) {
                this.e.addTarget(this.m.get("type_depth_preview"));
            }
            f.C0058f fVar = this.c;
            if (fVar != null) {
                fVar.a(this.O, this.e, (HashMap<String, Surface>) this.m);
            }
        }
        com.oppo.camera.d.b("createPreviewBuilder");
        com.oppo.camera.d.e("OneCameraImpl", "createPreviewBuilder X");
    }

    /* access modifiers changed from: private */
    public CaptureRequest.Builder D() {
        CaptureRequest.Builder builder = null;
        try {
            builder = this.f2048b.createCaptureRequest(4);
            builder.setTag(this.N);
            a(builder);
            return builder;
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
            return builder;
        }
    }

    /* access modifiers changed from: private */
    public CaptureRequest.Builder E() {
        com.oppo.camera.d.a("OneCameraImpl", "createCaptureBuilder, mbZsl: " + this.x);
        CaptureRequest.Builder builder = null;
        if (this.f2048b != null) {
            try {
                builder = !com.oppo.camera.o.d.w() ? this.f2048b.createCaptureRequest(2) : (!this.x || w() || this.P) ? this.f2048b.createCaptureRequest(2) : this.f2048b.createCaptureRequest(5);
                builder.setTag(this.N);
                if (this.P) {
                    CaptureRequest.Key<?> a2 = this.j.a("com.mediatek.cshotfeature.capture");
                    CaptureRequest.Key<?> a3 = this.j.a("com.mediatek.control.capture.early.notification.trigger");
                    if (!(a2 == null || a3 == null)) {
                        builder.set(a2, new int[]{1});
                        builder.set(a3, new int[]{1});
                    }
                }
                if (!com.oppo.camera.o.d.w() && this.x) {
                    builder.set(CaptureRequest.CONTROL_ENABLE_ZSL, true);
                }
                a(builder);
                if (this.m.get("type_still_capture") != null) {
                    builder.addTarget(this.m.get("type_still_capture"));
                }
                if (com.oppo.camera.o.d.w() && !this.P) {
                    builder.addTarget(this.m.get("type_preview"));
                }
                if (this.m.get("type_still_capture_yuv_main") != null) {
                    builder.addTarget(this.m.get("type_still_capture_yuv_main"));
                }
                if (this.m.get("type_still_capture_yuv_sub") != null) {
                    builder.addTarget(this.m.get("type_still_capture_yuv_sub"));
                }
                if (this.m.get("type_still_capture_yuv_third") != null) {
                    builder.addTarget(this.m.get("type_still_capture_yuv_third"));
                }
                if (this.c != null) {
                    this.c.a(this.N, builder, (HashMap<String, Surface>) this.m);
                }
            } catch (CameraAccessException e2) {
                e2.printStackTrace();
            }
        }
        return builder;
    }

    /* access modifiers changed from: private */
    public CaptureRequest.Builder F() {
        com.oppo.camera.d.a("OneCameraImpl", "createRawCaptureBuilder");
        CameraDevice cameraDevice = this.f2048b;
        CaptureRequest.Builder builder = null;
        if (cameraDevice != null) {
            try {
                builder = this.x ? cameraDevice.createCaptureRequest(5) : cameraDevice.createCaptureRequest(2);
                builder.setTag(this.N);
                a(builder);
                if (this.m.get("type_still_capture_raw") != null) {
                    builder.addTarget(this.m.get("type_still_capture_raw"));
                    builder.addTarget(this.m.get("type_preview"));
                }
                if (this.c != null) {
                    this.c.a(this.N, builder, (HashMap<String, Surface>) this.m);
                }
            } catch (CameraAccessException e2) {
                e2.printStackTrace();
            }
        }
        return builder;
    }

    /* access modifiers changed from: private */
    public void G() {
        synchronized (this.o) {
            if (this.n != null) {
                this.n.clear();
            }
        }
    }

    /* access modifiers changed from: private */
    public void H() {
        com.oppo.camera.d.a("OneCameraImpl", "releaseResource");
        com.oppo.camera.d.a("releaseResource");
        LinkedHashMap<String, Surface> linkedHashMap = this.m;
        if (linkedHashMap != null) {
            linkedHashMap.clear();
        }
        ImageWriter imageWriter = this.M;
        if (imageWriter != null) {
            imageWriter.close();
            this.M = null;
        }
        this.e = null;
        com.oppo.camera.d.b("releaseResource");
    }

    private void I() {
        if ("on".equals(this.u)) {
            a(CaptureRequest.CONTROL_AE_MODE, 3);
        } else if (MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(this.u)) {
            a(CaptureRequest.CONTROL_AE_MODE, 2);
        } else if (!this.B || !this.C) {
            a(CaptureRequest.CONTROL_AE_MODE, 0);
        } else if (c.a_.equals(this.u)) {
            a(CaptureRequest.CONTROL_AE_MODE, 1);
        }
    }

    /* access modifiers changed from: private */
    public Rect a(CaptureRequest.Builder builder, Rect rect, Size size) {
        float f2;
        float f3;
        Rect rect2 = new Rect();
        Rect rect3 = (Rect) builder.get(CaptureRequest.SCALER_CROP_REGION);
        Rect d2 = this.f.d();
        if (rect3 == null || d2 == null) {
            f2 = 1.0f;
            f3 = 1.0f;
        } else {
            f3 = ((float) rect3.width()) / ((float) d2.width());
            f2 = ((float) rect3.height()) / ((float) d2.height());
        }
        Rect rect4 = new Rect();
        if (!(d2 == null || rect == null || size == null)) {
            float width = ((float) d2.width()) / (((float) size.getWidth()) * 1.0f);
            float height = ((float) d2.height()) / (((float) size.getHeight()) * 1.0f);
            rect4.set((int) (((float) rect.left) * width), (int) (((float) rect.top) * height), (int) (((float) rect.right) * width), (int) (((float) rect.bottom) * height));
            com.oppo.camera.d.a("OneCameraImpl", "getZoomCropFormRegin, newCropRect: (" + rect4.left + ", " + rect4.top + ", " + rect4.right + ", " + rect4.bottom + ")" + ", scaleW: " + width + ", scaleH: " + height);
        }
        int width2 = (int) ((((float) rect4.width()) * (1.0f - f3)) / 2.0f);
        int height2 = (int) ((((float) rect4.height()) * (1.0f - f2)) / 2.0f);
        rect2.set(rect4.left + width2, rect4.top + height2, rect4.right - width2, rect4.bottom - height2);
        com.oppo.camera.d.a("OneCameraImpl", "getZoomCropFormRegin, newCropRegion: (" + rect2.left + ", " + rect2.top + ", " + rect2.right + ", " + rect2.bottom + ")" + ", scaleWidth: " + f3 + ", scaleHeight: " + f2);
        return rect2;
    }

    /* access modifiers changed from: private */
    public void a(CameraDevice cameraDevice) {
        if (cameraDevice != null) {
            com.oppo.camera.d.a("closeCameraDevice");
            u(2);
            cameraDevice.close();
            com.oppo.camera.d.b("closeCameraDevice");
        }
    }

    /* access modifiers changed from: private */
    public void a(CaptureRequest.Builder builder) {
        synchronized (this.o) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry next : this.n.entrySet()) {
                ((a) next.getValue()).a(builder);
                sb.append(" key: " + next.getKey() + ", value: " + ((a) next.getValue()).c.toString());
            }
            com.oppo.camera.d.a("OneCameraImpl", "addCacheToBuilder, " + sb.toString());
        }
    }

    /* access modifiers changed from: private */
    public void a(CaptureRequest.Builder builder, CameraCaptureSession.CaptureCallback captureCallback, int i2) {
        a(builder, captureCallback, i2, (f.d) null, false);
    }

    private void a(CaptureRequest.Builder builder, CameraCaptureSession.CaptureCallback captureCallback, int i2, f.d dVar, boolean z2) {
        com.oppo.camera.n.a aVar = this.k;
        final CaptureRequest.Builder builder2 = builder;
        final int i3 = i2;
        final f.d dVar2 = dVar;
        final boolean z3 = z2;
        final CameraCaptureSession.CaptureCallback captureCallback2 = captureCallback;
        AnonymousClass13 r1 = new Runnable() {
            public void run() {
                com.oppo.camera.d.a("OneCameraImpl", "submitRequest, builder: " + builder2 + ", mCameraCaptureSession: " + g.this.d + ", type: " + i3 + ", mDeviceState: " + g.this.D);
                f.d dVar = dVar2;
                if (dVar != null) {
                    dVar.b();
                }
                if (g.this.d != null && g.this.D == 5 && builder2 != null) {
                    if (z3 || !g.this.z()) {
                        int i = i3;
                        if (i == 0) {
                            g gVar = g.this;
                            boolean unused = gVar.a(builder2, captureCallback2, gVar.r);
                        } else if (i == 1) {
                            g gVar2 = g.this;
                            boolean unused2 = gVar2.b(builder2, captureCallback2, gVar2.r);
                        }
                        f.d dVar2 = dVar2;
                        if (dVar2 != null) {
                            dVar2.a();
                        }
                    }
                }
            }
        };
        aVar.a(r1);
    }

    /* access modifiers changed from: private */
    public void a(CaptureRequest.Builder builder, d dVar) {
        if (dVar.f2031a && dVar.C == 1) {
            Surface surface = this.m.get("type_still_capture_yuv_main_high_pixel_mfnr");
            if (surface != null) {
                com.oppo.camera.d.a("OneCameraImpl", "filterCaptureBuilder, TYPE_STILL_CAPTURE_YUV_MAIN_HIGH_PIXEL_MFNR");
                builder.removeTarget(this.m.get("type_still_capture_yuv_main"));
                if (this.m.get("type_still_capture_yuv_main_high_pixel_mfnr") != null) {
                    builder.addTarget(surface);
                }
            }
        }
    }

    private <T> void a(CaptureRequest.Key<T> key, i<T> iVar) {
        a(key.getName(), iVar);
    }

    private <T> void a(CaptureRequest.Key<T> key, final T t2) {
        a(key, new i<T>() {
            public T a() {
                return t2;
            }

            public String toString() {
                Object obj = t2;
                if (obj == null) {
                    return null;
                }
                if ((obj instanceof int[]) && ((int[]) obj).length >= 0) {
                    return String.valueOf(((int[]) obj)[0]);
                }
                Object obj2 = t2;
                return (!(obj2 instanceof MeteringRectangle[]) || ((MeteringRectangle[]) obj2).length < 0) ? t2.toString() : ((MeteringRectangle[]) obj2)[0].toString();
            }
        });
    }

    private <T> void a(String str, i<T> iVar) {
        synchronized (this.o) {
            if (this.n != null) {
                this.n.put(str, new a(str, iVar));
            }
        }
    }

    /* access modifiers changed from: private */
    public <T> void a(String str, final T t2) {
        a(str, new i<T>() {
            public T a() {
                return t2;
            }

            public String toString() {
                Object obj = t2;
                if (obj == null) {
                    return null;
                }
                if ((obj instanceof int[]) && ((int[]) obj).length >= 0) {
                    return String.valueOf(((int[]) obj)[0]);
                }
                Object obj2 = t2;
                return (!(obj2 instanceof MeteringRectangle[]) || ((MeteringRectangle[]) obj2).length < 0) ? t2.toString() : ((MeteringRectangle[]) obj2)[0].toString();
            }
        });
    }

    /* access modifiers changed from: private */
    public boolean a(CaptureRequest.Builder builder, CameraCaptureSession.CaptureCallback captureCallback, boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "requestRepeating, builder: " + builder + ", isHFR: " + z2);
        a(builder);
        try {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                Range<Integer> e2 = this.g.e();
                if (e2 == null) {
                    return false;
                }
                builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, e2);
                arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.d).createHighSpeedRequestList(builder.build()));
            } else {
                Range<Integer> e3 = this.g.e();
                if (e3 != null) {
                    builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, e3);
                }
                arrayList.add(builder.build());
            }
            com.oppo.camera.d.e("OneCameraImpl", "requestRepeating start");
            this.d.setRepeatingBurst(arrayList, captureCallback, this.k);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return true;
        }
    }

    /* access modifiers changed from: private */
    public CaptureRequest.Builder b(TotalCaptureResult totalCaptureResult) {
        CaptureRequest.Builder builder = null;
        try {
            builder = this.f2048b.createReprocessCaptureRequest(totalCaptureResult);
            d dVar = new d(d.a.CAPTURE_REPROCESS);
            if (this.N != null) {
                dVar.p = this.N.p;
                dVar.q = this.N.q;
                dVar.u = this.N.u;
                dVar.v = this.N.v;
                dVar.x = this.N.x;
                dVar.y = this.N.y;
                dVar.z = this.N.z;
                dVar.t = this.N.t;
            }
            builder.setTag(dVar);
            a(builder);
            if (this.m.get("type_still_capture") != null) {
                builder.addTarget(this.m.get("type_still_capture"));
            }
            if (this.m.get("type_still_capture_yuv_main") != null) {
                builder.addTarget(this.m.get("type_still_capture_yuv_main"));
            }
            if (this.m.get("type_still_capture_yuv_sub") != null) {
                builder.addTarget(this.m.get("type_still_capture_yuv_sub"));
            }
            if (this.m.get("type_still_capture_yuv_third") != null) {
                builder.addTarget(this.m.get("type_still_capture_yuv_third"));
            }
            if (this.c != null) {
                this.c.a(dVar, builder, (HashMap<String, Surface>) this.m);
            }
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
        }
        return builder;
    }

    /* access modifiers changed from: private */
    public boolean b(CaptureRequest.Builder builder, CameraCaptureSession.CaptureCallback captureCallback, boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "requestCapture, builder: " + builder + ", isHFR: " + z2);
        a(builder);
        try {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                Range<Integer> e2 = this.g.e();
                if (e2 == null) {
                    return false;
                }
                builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, e2);
                arrayList.addAll(((CameraConstrainedHighSpeedCaptureSession) this.d).createHighSpeedRequestList(builder.build()));
            } else {
                arrayList.add(builder.build());
            }
            this.d.captureBurst(arrayList, captureCallback, this.k);
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    /* access modifiers changed from: private */
    public boolean b(boolean z2, f.b bVar) {
        com.oppo.camera.d.a("OneCameraImpl", "closeOldSession, mCameraCaptureSession: " + this.d + ", mDeviceState: " + this.D);
        if (5 != this.D) {
            return false;
        }
        u(7);
        try {
            if (this.d == null) {
                return true;
            }
            com.oppo.camera.d.a("OneCameraImpl", "closeOldSession, begin to stopRepeating");
            com.oppo.camera.d.a("stopRepeating");
            this.d.stopRepeating();
            com.oppo.camera.d.b("stopRepeating");
            com.oppo.camera.d.a("OneCameraImpl", "closeOldSession, begin to abortCaptures");
            com.oppo.camera.d.a("abortCaptures");
            this.d.abortCaptures();
            com.oppo.camera.d.b("abortCaptures");
            if (this.c != null) {
                this.c.d();
            }
            com.oppo.camera.d.a("OneCameraImpl", "closeOldSession, begin to close");
            com.oppo.camera.d.a("closeSession");
            this.d.close();
            com.oppo.camera.d.b("closeSession");
            return true;
        } catch (CameraAccessException e2) {
            com.oppo.camera.d.d("OneCameraImpl", "closeOldSession", e2);
            if (!z2 || bVar == null) {
                return true;
            }
            bVar.a(5);
            return true;
        }
    }

    /* access modifiers changed from: private */
    public <T> void d(String str) {
        synchronized (this.o) {
            if (this.n != null && this.n.containsKey(str)) {
                this.n.remove(str);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean s() {
        if (!w()) {
            return true;
        }
        com.oppo.camera.h.a aVar = this.T;
        if (aVar == null) {
            return true;
        }
        if (((aVar.e() || !u()) && (this.T.f() || !v())) || this.v) {
            return true;
        }
        com.oppo.camera.d.b("OneCameraImpl", "checkAeAfState, flash required, but ae not converged, mFlashControllerCallback.isAeConverged: " + this.T.e() + ", mbAeAfLocked: " + this.v);
        this.T.a(true);
        this.T.a(0);
        x();
        return false;
    }

    /* access modifiers changed from: private */
    public boolean t() {
        com.oppo.camera.b.a aVar = this.U;
        if (aVar == null || !aVar.c()) {
            return true;
        }
        com.oppo.camera.d.b("OneCameraImpl", "checkApertureSwitchState, isApertureSwitching");
        this.U.a(true);
        return false;
    }

    /* access modifiers changed from: private */
    public void u(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setDeviceState, sessionState: " + this.D + " -> " + i2);
        this.D = i2;
    }

    /* access modifiers changed from: private */
    public boolean u() {
        return !a();
    }

    /* access modifiers changed from: private */
    public CaptureRequest.Builder v(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "createTriggerBuilder, templateType: " + i2);
        CameraDevice cameraDevice = this.f2048b;
        CaptureRequest.Builder builder = null;
        if (cameraDevice != null) {
            try {
                builder = cameraDevice.createCaptureRequest(i2);
                if (!(builder == null || this.m.get("type_preview") == null)) {
                    builder.addTarget(this.m.get("type_preview"));
                }
                if ((this.Q || this.r) && 3 == this.K && builder != null && this.m.get("type_video") != null) {
                    builder.addTarget(this.m.get("type_video"));
                }
            } catch (CameraAccessException e2) {
                e2.printStackTrace();
            }
        }
        return builder;
    }

    /* access modifiers changed from: private */
    public boolean v() {
        return a();
    }

    /* access modifiers changed from: private */
    public boolean w() {
        if (a() && CameraConfig.getConfigBooleanValue(ConfigDataBase.KEY_TORCH_SOFT_LIGHT)) {
            return false;
        }
        if (!"on".equals(this.u)) {
            return MenuClickMsgData.VALUE_PROFESSION_AUTO.equals(this.u) && this.w;
        }
        return true;
    }

    private void x() {
        com.oppo.camera.d.a("OneCameraImpl", "triggerAeAfForFlash");
        this.k.a(new Runnable() {
            public void run() {
                g gVar = g.this;
                CaptureRequest.Builder h = gVar.v(gVar.K);
                if (h != null) {
                    h.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
                    if (g.this.m() != 1 && !g.this.a() && !g.this.v) {
                        h.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                    }
                    g gVar2 = g.this;
                    gVar2.a(h, gVar2.S, 1);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void y() {
        if (!this.v) {
            a(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
            a(this.e, this.S, 0);
        }
    }

    /* access modifiers changed from: private */
    public boolean z() {
        boolean z2;
        synchronized (this) {
            z2 = this.A;
        }
        return z2;
    }

    public void a(float f2) {
        a(CaptureRequest.CONTROL_AF_MODE, 0);
        a(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(f2));
        a(this.e, this.S, 0);
    }

    public void a(int i2) {
        a(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(i2));
    }

    public void a(int i2, d dVar, f.a aVar) {
        a(i2, dVar, aVar, (Handler) null);
    }

    public void a(int i2, d dVar, f.a aVar, Handler handler) {
        com.oppo.camera.n.a aVar2 = this.k;
        final d dVar2 = dVar;
        final int i3 = i2;
        final Handler handler2 = handler;
        final f.a aVar3 = aVar;
        AnonymousClass4 r1 = new Runnable() {
            public void run() {
                boolean O = g.this.s();
                boolean P = g.this.t();
                d unused = g.this.N = dVar2;
                com.oppo.camera.d.a("OneCameraImpl", "burstCapture, pictureNum: " + i3 + ", checkAeAfState: " + O + ", mCameraCaptureSession: " + g.this.d + ", requestTag: " + dVar2 + ", checkApertureState: " + P + ", handler: " + handler2);
                if (!O) {
                    f.a unused2 = g.this.h = aVar3;
                    int unused3 = g.this.J = i3;
                } else if (!P) {
                    f.a unused4 = g.this.h = aVar3;
                    int unused5 = g.this.J = i3;
                } else if (g.this.D == 5 && g.this.d != null) {
                    CaptureRequest.Builder builder = null;
                    if (dVar2.a() == d.a.CAPTURE) {
                        builder = g.this.E();
                        if (builder != null) {
                            g.this.a(builder, dVar2);
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    try {
                        f.a unused6 = g.this.h = aVar3;
                        CaptureRequest.Builder builder2 = builder;
                        for (int i = 0; i < i3; i++) {
                            if (dVar2.a() == d.a.CAPTURE_RAW) {
                                builder2 = g.this.F();
                            }
                            if (builder2 != null) {
                                arrayList.add(builder2.build());
                                if (g.this.P) {
                                    g.this.d.capture(builder2.build(), g.this.V, g.this.k);
                                    com.oppo.camera.d.a("OneCameraImpl", "burstCapture, with loop, request hashcode: " + r5.hashCode());
                                }
                            }
                        }
                        if (!g.this.P && arrayList.size() > 0) {
                            g.this.d.captureBurst(arrayList, g.this.V, handler2 != null ? handler2 : g.this.k);
                            com.oppo.camera.d.a("OneCameraImpl", "burstCapture, with burst, request hashcode: " + arrayList.get(0));
                        }
                    } catch (CameraAccessException e2) {
                        e2.printStackTrace();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
        };
        aVar2.a(r1);
    }

    public void a(int i2, f.e eVar, boolean z2, int i3) {
        com.oppo.camera.d.a("OneCameraImpl", (Handler) this.k, "createCaptureSession");
        com.oppo.camera.n.a aVar = this.k;
        final boolean z3 = z2;
        final int i4 = i2;
        final int i5 = i3;
        final f.e eVar2 = eVar;
        AnonymousClass26 r1 = new Runnable() {
            public void run() {
                com.oppo.camera.d.a("OneCameraImpl", "createCaptureSession, mDeviceState: " + g.this.D + ", mCameraDevice: " + g.this.f2048b + ", isHFR: " + z3 + ", operationMode: " + i4 + ", previewTemplate: " + i5);
                if (g.this.f2048b != null) {
                    f.e unused = g.this.g = eVar2;
                    int unused2 = g.this.E = i4;
                    boolean unused3 = g.this.r = z3;
                    int unused4 = g.this.K = i5;
                    g.this.H();
                    if (g.this.d != null) {
                        com.oppo.camera.d.a("OneCameraImpl", "createCaptureSession, wait old session to close");
                        boolean unused5 = g.this.z = true;
                        return;
                    }
                    try {
                        List<Surface> I = g.this.B();
                        InputConfiguration J = g.this.A();
                        if (I.size() == 0) {
                            com.oppo.camera.d.e("OneCameraImpl", "createCaptureSession, outputs is empty");
                            return;
                        }
                        g.this.u(4);
                        g.this.C();
                        if (z3) {
                            com.oppo.camera.d.e("OneCameraImpl", "createCaptureSession, createConstrainedHighSpeedCaptureSession start");
                            com.oppo.camera.d.a("createHighSpeedSession");
                            g.this.f2048b.createConstrainedHighSpeedCaptureSession(I, g.this.R, g.this.k);
                            com.oppo.camera.d.b("createHighSpeedSession");
                        } else {
                            com.oppo.camera.d.a("createCustomCaptureSession");
                            ArrayList arrayList = new ArrayList();
                            for (Surface outputConfiguration : I) {
                                arrayList.add(new OutputConfiguration(outputConfiguration));
                            }
                            if (com.oppo.camera.o.d.w()) {
                                com.oppo.camera.d.e("OneCameraImpl", "createCaptureSession, createCustomCaptureSession start");
                                CameraDevicesNative.createCustomCaptureSession(g.this.f2048b, J, arrayList, i4, g.this.R, g.this.k);
                            } else {
                                g.this.a(g.this.e);
                                CaptureRequest build = g.this.e.build();
                                SessionConfiguration sessionConfiguration = new SessionConfiguration(i4, arrayList, new b(g.this.k), g.this.R);
                                sessionConfiguration.setInputConfiguration(J);
                                sessionConfiguration.setSessionParameters(build);
                                com.oppo.camera.d.e("OneCameraImpl", "createCaptureSession, createCaptureSession start");
                                g.this.f2048b.createCaptureSession(sessionConfiguration);
                            }
                            com.oppo.camera.d.b("createCustomCaptureSession");
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("createCaptureSession, mOutSurfaceList: ");
                        sb.append(g.this.m != null ? g.this.m.toString() : null);
                        sb.append(", isHFR: ");
                        sb.append(z3);
                        com.oppo.camera.d.a("OneCameraImpl", sb.toString());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        if (g.this.g != null) {
                            g.this.g.c();
                        }
                        com.oppo.camera.d.b("createHighSpeedSession");
                    }
                }
            }
        };
        aVar.a(r1);
    }

    public void a(int i2, MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2, boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setFocusMode, focusMode: " + i2 + ", needTrigger: " + z2);
        if (!a()) {
            if (i2 == 1 && z2) {
                this.k.a(new Runnable() {
                    public void run() {
                        com.oppo.camera.d.a("CONTROL_AF_TRIGGER");
                        g gVar = g.this;
                        CaptureRequest.Builder h = gVar.v(gVar.K);
                        if (h != null) {
                            h.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                            g gVar2 = g.this;
                            gVar2.a(h, gVar2.S, 1);
                        }
                        com.oppo.camera.d.b("CONTROL_AF_TRIGGER");
                    }
                });
            }
            a(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(i2));
            a(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
        }
        a(CaptureRequest.CONTROL_MODE, 1);
        a(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr2);
    }

    public void a(long j2) {
        com.oppo.camera.d.a("OneCameraImpl", "setExposureTime, exposureTime: " + j2);
        if (j2 == -1) {
            this.C = true;
            I();
        } else {
            this.C = false;
            a(CaptureRequest.CONTROL_AE_MODE, 0);
        }
        a(CaptureRequest.SENSOR_EXPOSURE_TIME, Long.valueOf(j2));
        a(this.e, this.S, 0);
    }

    public void a(Context context, int i2, f.b bVar, boolean z2, int i3) {
        com.oppo.camera.d.a("OneCameraImpl", "openCamera, context: " + context + ", cameraId: " + i2 + ", this: " + this);
        try {
            if (this.p.tryAcquire(2500, TimeUnit.MILLISECONDS)) {
                com.oppo.camera.d.a("OneCameraImpl", "openCamera, acquire success.");
                this.F = i3;
                this.f = a.a(i2);
                com.oppo.camera.n.a aVar = this.k;
                final Context context2 = context;
                final boolean z3 = z2;
                final f.b bVar2 = bVar;
                final int i4 = i2;
                AnonymousClass1 r0 = new Runnable() {
                    public void run() {
                        try {
                            if (g.this.f2047a == null) {
                                CameraManager unused = g.this.f2047a = (CameraManager) context2.getSystemService("camera");
                            }
                            if (g.this.f2048b != null) {
                                g.this.H();
                                if (z3) {
                                    boolean unused2 = g.this.b(false, bVar2);
                                }
                                g.this.a(g.this.f2048b);
                                CameraDevice unused3 = g.this.f2048b = null;
                            }
                            g.this.u(0);
                            com.oppo.camera.d.e("OneCameraImpl", "openCamera start");
                            com.oppo.camera.d.a("openCamera");
                            g.this.f2047a.openCamera(String.valueOf(i4), new CameraDevice.StateCallback() {
                                public void onClosed(CameraDevice cameraDevice) {
                                    com.oppo.camera.d.a("OneCameraImpl", "onClosed, cameraDevice: " + cameraDevice);
                                    CameraDevice unused = g.this.f2048b = null;
                                    CameraCaptureSession unused2 = g.this.d = null;
                                    g.this.G();
                                    if (bVar2 != null) {
                                        bVar2.b();
                                    }
                                    g.this.u(3);
                                }

                                public void onDisconnected(CameraDevice cameraDevice) {
                                    com.oppo.camera.d.a("OneCameraImpl", "onDisconnected, cameraDevice: " + cameraDevice);
                                    try {
                                        if (g.this.d != null) {
                                            g.this.d.abortCaptures();
                                        }
                                    } catch (Exception unused) {
                                    }
                                    g.this.a(cameraDevice);
                                    CameraDevice unused2 = g.this.f2048b = null;
                                    if (bVar2 != null) {
                                        bVar2.a(true);
                                    }
                                    g.this.p.release();
                                }

                                public void onError(CameraDevice cameraDevice, int i) {
                                    com.oppo.camera.d.a("OneCameraImpl", "onError, cameraDevice: " + cameraDevice + ", error: " + i);
                                    g.this.p.release();
                                    CameraDevice unused = g.this.f2048b = cameraDevice;
                                    g.this.a(true, bVar2);
                                    if (bVar2 != null) {
                                        bVar2.a(i);
                                    }
                                }

                                public void onOpened(CameraDevice cameraDevice) {
                                    com.oppo.camera.d.b("openCamera");
                                    com.oppo.camera.d.e("OneCameraImpl", "onOpened, cameraDevice: " + cameraDevice);
                                    CameraDevice unused = g.this.f2048b = cameraDevice;
                                    if (bVar2 != null) {
                                        bVar2.a();
                                    }
                                    g.this.p.release();
                                    g.this.u(1);
                                }
                            }, g.this.k);
                            if (g.this.j == null) {
                                c unused4 = g.this.j = new c();
                            }
                        } catch (CameraAccessException e2) {
                            e2.printStackTrace();
                            g.this.p.release();
                            f.b bVar = bVar2;
                            if (bVar != null) {
                                bVar.a(false);
                            }
                        } catch (SecurityException e3) {
                            e3.printStackTrace();
                            g.this.p.release();
                            f.b bVar2 = bVar2;
                            if (bVar2 != null) {
                                bVar2.a(false);
                            }
                        }
                    }
                };
                aVar.a(r0);
                return;
            }
            throw new RuntimeException("Time out waiting to lock camera opening.");
        } catch (InterruptedException e2) {
            this.p.release();
            throw new RuntimeException("Interrupted while trying to lock camera opening.", e2);
        }
    }

    public void a(Rect rect) {
        a(CaptureRequest.SCALER_CROP_REGION, rect);
    }

    public void a(Location location) {
        a(CaptureRequest.JPEG_GPS_LOCATION, location);
    }

    public void a(Image image, final TotalCaptureResult totalCaptureResult, final Rect rect, final Size size) {
        com.oppo.camera.d.b("OneCameraImpl", "reprocessImage");
        if (this.f2048b == null || this.d == null) {
            com.oppo.camera.d.e("OneCameraImpl", "reprocessImage request is called even before taking picture");
            image.close();
            return;
        }
        if (image != null) {
            try {
                if (this.M != null) {
                    this.M.close();
                    this.M = null;
                }
                if (this.D != 5 || !this.d.isReprocessable()) {
                    image.close();
                } else {
                    if (this.d.getInputSurface() != null && this.M == null) {
                        this.M = ImageWriter.newInstance(this.d.getInputSurface(), 20);
                    }
                    if (this.M != null) {
                        this.M.queueInputImage(image);
                    }
                }
            } catch (IllegalStateException unused) {
                com.oppo.camera.d.e("OneCameraImpl", "reprocessImage, Queueing more than it can have!");
                image.close();
            }
        }
        this.k.a(new Runnable() {
            public void run() {
                if (g.this.D == 5 && g.this.d != null) {
                    CaptureRequest.Builder a2 = g.this.b(totalCaptureResult);
                    if (a2 != null) {
                        Rect rect = rect;
                        if (rect != null && rect.width() > 0 && rect.height() > 0) {
                            a2.set(CaptureRequest.SCALER_CROP_REGION, g.this.a(a2, rect, size));
                        }
                        try {
                            g.this.d.capture(a2.build(), g.this.V, g.this.k);
                        } catch (CameraAccessException unused) {
                            com.oppo.camera.d.e("OneCameraImpl", "reprocessImage, capture failed!");
                        } catch (Exception unused2) {
                            com.oppo.camera.d.e("OneCameraImpl", "reprocessImage, capture failed!");
                        }
                    }
                }
            }
        });
    }

    public void a(final f.a aVar, final d dVar) {
        this.k.a(new Runnable() {
            public void run() {
                d unused = g.this.N = dVar;
                CaptureRequest.Builder V = g.this.D();
                if (V != null) {
                    if (g.this.m.get("type_preview") != null) {
                        V.addTarget((Surface) g.this.m.get("type_preview"));
                    }
                    com.oppo.camera.d.b("OneCameraImpl", "videoSnapshot, mbNeedTypeVideoSurface:" + dVar.g);
                    if (g.this.m.get("type_video") != null && !g.this.N.g) {
                        V.addTarget((Surface) g.this.m.get("type_video"));
                    }
                    if (g.this.m.get("type_still_capture_yuv_main") != null) {
                        V.addTarget((Surface) g.this.m.get("type_still_capture_yuv_main"));
                    }
                    try {
                        f.a unused2 = g.this.h = aVar;
                        g.this.d.capture(V.build(), g.this.V, g.this.k);
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public void a(f.c cVar) {
        com.oppo.camera.d.a("OneCameraImpl", "setRepeatingRequest, previewCallback: " + cVar + ", mCameraCaptureSession: " + this.d + ", mPreviewBuilder: " + this.e + ", mDeviceState: " + this.D);
        if (cVar != null) {
            this.i = cVar;
        }
        a(this.e, this.S, 0);
    }

    public void a(f.d dVar) {
        a(this.e, this.S, 0, dVar, true);
    }

    public void a(f.C0058f fVar) {
        this.c = fVar;
    }

    public void a(String str) {
        com.oppo.camera.d.b("OneCameraImpl", "setFlashMode, value: " + str);
        if (str != null) {
            this.u = str;
            char c2 = 65535;
            int hashCode = str.hashCode();
            if (hashCode != 3551) {
                if (hashCode != 109935) {
                    if (hashCode != 3005871) {
                        if (hashCode == 110547964 && str.equals("torch")) {
                            c2 = 3;
                        }
                    } else if (str.equals(MenuClickMsgData.VALUE_PROFESSION_AUTO)) {
                        c2 = 2;
                    }
                } else if (str.equals(c.a_)) {
                    c2 = 1;
                }
            } else if (str.equals("on")) {
                c2 = 0;
            }
            if (c2 == 0) {
                a(CaptureRequest.FLASH_MODE, 1);
                a(CaptureRequest.CONTROL_AE_MODE, 3);
            } else if (c2 == 1) {
                a(CaptureRequest.FLASH_MODE, 0);
                a(CaptureRequest.CONTROL_AE_MODE, 1);
            } else if (c2 == 2) {
                a(CaptureRequest.FLASH_MODE, 1);
                a(CaptureRequest.CONTROL_AE_MODE, 2);
            } else if (c2 == 3) {
                a(CaptureRequest.FLASH_MODE, 2);
                a(CaptureRequest.CONTROL_AE_MODE, 1);
            }
        }
    }

    public void a(String str, int[] iArr) {
        a(str, iArr);
    }

    public void a(boolean z2) {
        synchronized (this) {
            com.oppo.camera.d.a("OneCameraImpl", "setSurfaceReleased, hasReleased: " + this.A + " -> " + z2);
            this.A = z2;
        }
    }

    public void a(boolean z2, d dVar, f.a aVar) {
        int i2 = 1;
        if (z2) {
            this.P = true;
        }
        if (z2) {
            i2 = CameraConfig.getConfigIntValue(ConfigDataBase.KEY_CSHOT_FIRST_REQUEST_NUM);
        }
        a(i2, dVar, aVar);
    }

    public void a(final boolean z2, final f.b bVar) {
        com.oppo.camera.d.a("OneCameraImpl", "closeCamera, mCameraDevice: " + this.f2048b + ", fromError: " + z2);
        if (!z2) {
            try {
                this.p.acquire();
            } catch (InterruptedException e2) {
                this.p.release();
                e2.printStackTrace();
            }
            com.oppo.camera.d.a("OneCameraImpl", "closeCamera, acquire success.");
            if (this.f2048b == null) {
                this.p.release();
                return;
            }
        }
        this.k.a(new Runnable() {
            public void run() {
                com.oppo.camera.d.a("OneCameraImpl", "closeCamera Start.");
                g.this.H();
                boolean unused = g.this.b(z2, bVar);
                if (g.this.f2048b != null) {
                    g gVar = g.this;
                    gVar.a(gVar.f2048b);
                    CameraDevice unused2 = g.this.f2048b = null;
                }
                g.this.p.release();
                com.oppo.camera.d.a("OneCameraImpl", "closeCamera X");
            }
        });
    }

    public void a(int[] iArr) {
        com.oppo.camera.d.a("OneCameraImpl", "setCustomBeautyValues, values: " + Arrays.toString(iArr));
        a("com.oppo.facebeauty.custom", iArr);
    }

    public void a(MeteringRectangle[] meteringRectangleArr) {
        a(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr);
    }

    public boolean a() {
        CameraDevice cameraDevice = this.f2048b;
        if (cameraDevice != null) {
            return a.c(Integer.parseInt(cameraDevice.getId()));
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002e, code lost:
        if (r5[0] == 1) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0049, code lost:
        if (r5[0] == 1) goto L_0x0030;
     */
    public boolean a(TotalCaptureResult totalCaptureResult) {
        String str = com.oppo.camera.o.d.w() ? "com.oppo.mirror.enable" : "com.mediatek.control.capture.flipmode";
        c cVar = this.j;
        boolean z2 = false;
        if (cVar != null) {
            CaptureResult.Key<?> b2 = cVar.b(str);
            if (b2 != null) {
                if (totalCaptureResult.get(b2) instanceof int[]) {
                    int[] iArr = (int[]) totalCaptureResult.get(b2);
                    if (iArr != null) {
                        if (iArr.length > 0) {
                        }
                    }
                } else if (totalCaptureResult.get(b2) instanceof byte[]) {
                    byte[] bArr = (byte[]) totalCaptureResult.get(b2);
                    if (bArr != null) {
                        if (bArr.length > 0) {
                        }
                    }
                }
                z2 = true;
            }
        }
        com.oppo.camera.d.b("OneCameraImpl", "getMirrorState, mirror: " + z2);
        return z2;
    }

    public int[] a(String str, TotalCaptureResult totalCaptureResult) {
        c cVar = this.j;
        if (cVar != null) {
            CaptureResult.Key<?> b2 = cVar.b(str);
            if (b2 != null && (totalCaptureResult.get(b2) instanceof int[])) {
                int[] iArr = (int[]) totalCaptureResult.get(b2);
                if (iArr.length > 0) {
                    return iArr;
                }
                return null;
            }
        }
        return null;
    }

    public void b() {
        com.oppo.camera.d.a("OneCameraImpl", "waitHandlerThread");
        ImageWriter imageWriter = this.M;
        if (imageWriter != null) {
            imageWriter.close();
            this.M = null;
        }
        this.k.a(new Runnable() {
            public void run() {
                g.this.k.getLooper().quitSafely();
            }
        });
        try {
            if (this.l != null) {
                this.l.join();
                this.l = null;
            }
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        com.oppo.camera.d.a("OneCameraImpl", "waitHandlerThread X");
    }

    public void b(int i2) {
        a(CaptureRequest.JPEG_QUALITY, Byte.valueOf((byte) i2));
    }

    public void b(final String str) {
        com.oppo.camera.d.a("OneCameraImpl", "openStream, type: " + str);
        this.k.a(new Runnable() {
            public void run() {
                if (!(g.this.e == null || g.this.m.get(str) == null)) {
                    g.this.e.addTarget((Surface) g.this.m.get(str));
                    g gVar = g.this;
                    gVar.a(gVar.e, g.this.S, 0);
                }
                boolean unused = g.this.Q = "type_video".equals(str);
            }
        });
    }

    public void b(boolean z2) {
        this.w = z2;
    }

    public void b(MeteringRectangle[] meteringRectangleArr) {
        a(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
    }

    public h c() {
        return this.f;
    }

    public void c(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setExposureCompensation, value: " + i2);
        a(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(i2));
        a(this.e, this.S, 0);
    }

    public void c(final String str) {
        com.oppo.camera.d.a("OneCameraImpl", "closeStream, type: " + str);
        this.k.a(new Runnable() {
            public void run() {
                if (!(g.this.e == null || g.this.m.get(str) == null)) {
                    g.this.e.removeTarget((Surface) g.this.m.get(str));
                    g gVar = g.this;
                    gVar.a(gVar.e, g.this.S, 0);
                }
                boolean unused = g.this.Q = false;
            }
        });
    }

    public void c(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setMirror, enable: " + z2);
        if (com.oppo.camera.o.d.w()) {
            a("com.oppo.mirror.enable", new byte[]{z2 ? (byte) 1 : 0});
            return;
        }
        a("com.mediatek.control.capture.flipmode", new int[]{z2});
    }

    public void d() {
        com.oppo.camera.d.a("OneCameraImpl", "closeSession");
        this.k.a(new Runnable() {
            public void run() {
                boolean unused = g.this.b(false, (f.b) null);
            }
        });
    }

    public void d(int i2) {
        this.q = i2;
    }

    public void d(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setPIEnable, enable: " + z2);
        a("com.oppo.auto.pi.enable", new int[]{z2});
    }

    public void e() {
        this.k.a(new Runnable() {
            public void run() {
                com.oppo.camera.d.a("OneCameraImpl", "stopRepeating");
                try {
                    if (g.this.d != null) {
                        com.oppo.camera.d.a("stopRepeating");
                        g.this.d.stopRepeating();
                    }
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable th) {
                    com.oppo.camera.d.b("stopRepeating");
                    throw th;
                }
                com.oppo.camera.d.b("stopRepeating");
            }
        });
    }

    public void e(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setAISceneMode, enable: " + i2);
        a("com.oppo.ai.scene.app.enable", new int[]{i2});
    }

    public void e(final boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setAutoExposureLock, aeLock: " + z2);
        a(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(z2));
        this.k.a(new Runnable() {
            public void run() {
                boolean unused = g.this.v = z2;
            }
        });
    }

    public void f() {
        this.P = false;
    }

    public void f(int i2) {
        a("com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg", new int[]{i2});
    }

    public void f(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setAutoWhiteBalanceLock, awbLock: " + z2);
        a(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(z2));
    }

    public void g() {
        com.oppo.camera.d.a("OneCameraImpl", "startFaceDetection, mDeviceState: " + this.D);
        com.oppo.camera.d.a("startFaceDetection");
        a(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 1);
        a(this.e, this.S, 0);
        com.oppo.camera.d.b("startFaceDetection");
    }

    public void g(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setFaceBeautyLevel, level: " + i2);
        a("com.oppo.facebeauty.level", new int[]{i2});
    }

    public void g(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setLongShotEnable, enable: " + z2);
        a("com.oppo.longshot.enable", new int[]{z2});
    }

    public void h() {
        com.oppo.camera.d.a("OneCameraImpl", "stopFaceDetection, mDeviceState: " + this.D);
        a(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
    }

    public void h(int i2) {
        if (com.oppo.camera.o.d.w()) {
            a(CaptureRequest.CONTROL_AWB_MODE, 0);
            a("com.qti.stats.awbwrapper.AWBCCT", new int[]{i2});
        } else {
            a(CaptureRequest.CONTROL_AWB_MODE, 10);
            a("com.oppo.manualWB.color_temperature", new int[]{i2});
        }
        a(this.e, this.S, 0);
    }

    public void h(boolean z2) {
        this.x = z2;
        if (!com.oppo.camera.o.d.w()) {
            a("com.mediatek.control.capture.zsl.mode", new byte[]{z2 ? (byte) 1 : 0});
        } else if (Build.VERSION.SDK_INT >= 26) {
            a(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.valueOf(z2));
        }
    }

    public Handler i() {
        return this.k;
    }

    public void i(int i2) {
        a("org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode", new int[]{i2});
    }

    public void i(final boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "endOfStream, isHFR: " + z2);
        com.oppo.camera.d.a("endOfStream");
        final ConditionVariable conditionVariable = new ConditionVariable();
        conditionVariable.close();
        this.k.a(new Runnable() {
            public void run() {
                if (g.this.e != null) {
                    g.this.e();
                    g.this.a("org.quic.camera.recording.endOfStream", new byte[]{1});
                    g gVar = g.this;
                    boolean b2 = gVar.b(gVar.e, new CameraCaptureSession.CaptureCallback() {
                        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                            com.oppo.camera.d.a("OneCameraImpl", "endOfStream, onCaptureCompleted, CaptureSession.close");
                            super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
                            conditionVariable.open();
                        }

                        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
                            com.oppo.camera.d.a("OneCameraImpl", "endOfStream, onCaptureFailed, fail reason: " + captureFailure.getReason() + ", fail sequenceId:" + captureFailure.getSequenceId());
                            super.onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
                            conditionVariable.open();
                        }

                        public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
                            com.oppo.camera.d.a("OneCameraImpl", "endOfStream, onCaptureSequenceAborted, CaptureSession.close");
                            super.onCaptureSequenceAborted(cameraCaptureSession, i);
                            conditionVariable.open();
                        }
                    }, z2);
                    CaptureRequest.Builder unused = g.this.e = null;
                    g.this.d("org.quic.camera.recording.endOfStream");
                    if (!b2) {
                        conditionVariable.open();
                    }
                }
            }
        });
        conditionVariable.block(2000);
        com.oppo.camera.d.b("endOfStream");
    }

    public void j() {
        a(CaptureRequest.CONTROL_MODE, 1);
        a(CaptureRequest.CONTROL_AF_MODE, 1);
    }

    public void j(int i2) {
        if (i2 == -1) {
            this.B = true;
            I();
        } else {
            this.B = false;
            a(CaptureRequest.CONTROL_AE_MODE, 0);
        }
        int r2 = c().r();
        com.oppo.camera.d.b("OneCameraImpl", "setIso, iso: " + i2 + ", maxISOValue: " + r2);
        if (i2 > r2) {
            a(CaptureRequest.CONTROL_POST_RAW_SENSITIVITY_BOOST, Integer.valueOf((int) ((((float) i2) / ((float) r2)) * 100.0f)));
            a(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(r2));
        } else {
            a(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(i2));
            a(CaptureRequest.CONTROL_POST_RAW_SENSITIVITY_BOOST, 100);
        }
        a(this.e, this.S, 0);
    }

    public void j(boolean z2) {
        a("com.oppo.faceblur.enable", new int[]{z2});
    }

    public void k() {
        this.k.a(new Runnable() {
            public void run() {
                g gVar = g.this;
                CaptureRequest.Builder h = gVar.v(gVar.K);
                if (h != null) {
                    h.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                    g gVar2 = g.this;
                    gVar2.a(h, gVar2.S, 1);
                }
            }
        });
    }

    public void k(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setSceneMode, mode: " + i2);
        a(CaptureRequest.CONTROL_SCENE_MODE, Integer.valueOf(i2));
    }

    public void k(boolean z2) {
        a("com.mediatek.control.capture.early.notification.trigger", new int[]{z2});
    }

    public void l() {
        com.oppo.camera.d.a("OneCameraImpl", "cancelAutoFocus");
        if (!a()) {
            this.k.a(new Runnable() {
                public void run() {
                    if (g.this.T == null || !g.this.T.h()) {
                        g gVar = g.this;
                        CaptureRequest.Builder h = gVar.v(gVar.K);
                        if (h != null) {
                            h.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                            g gVar2 = g.this;
                            gVar2.a(h, gVar2.S, 1);
                            return;
                        }
                        return;
                    }
                    com.oppo.camera.d.e("OneCameraImpl", "cancelAutoFocus, flash triggerStart, so return!");
                }
            });
            a(CaptureRequest.CONTROL_AF_MODE, 4);
            a(CaptureRequest.CONTROL_AF_REGIONS, com.oppo.camera.a.a());
        }
        a(CaptureRequest.CONTROL_MODE, 1);
        a(CaptureRequest.CONTROL_AE_REGIONS, com.oppo.camera.a.a());
        a(this.e, this.S, 0);
    }

    public void l(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setHDRMode, mode: " + i2);
        this.y = i2;
        if (c() != null) {
            int i3 = 1;
            if (c().G()) {
                int i4 = this.y;
                if (i4 == 2) {
                    this.L = 4;
                } else if (i4 == 1) {
                    this.L = 3;
                } else {
                    this.L = 0;
                }
                a("com.mediatek.hdrfeature.SessionParamhdrMode", new int[]{this.L});
            }
            int[] iArr = new int[1];
            if (this.y != 2) {
                i3 = 0;
            }
            iArr[0] = i3;
            a("com.oppo.auto.hdr.enable", iArr);
        }
    }

    public void l(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setPreviewPluginBypass, enable: " + z2);
        a("com.oppo.bypass.tpi.enable", new int[]{z2});
    }

    public int m() {
        return this.G;
    }

    public void m(int i2) {
        a("com.oppo.picture.exif.flag", new int[]{i2});
    }

    public void m(boolean z2) {
        if (z2) {
            a(c.l, new int[]{1});
            return;
        }
        d(c.l.getName());
    }

    public c n() {
        return this.j;
    }

    public void n(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setVideoEISRecordState, value: " + i2);
        a("com.oppo.eis.record.state", new int[]{i2});
    }

    public void n(boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "setVHdrRequest, enable: " + z2);
        if (z2) {
            a("com.mediatek.hdrfeature.hdrMode", new int[]{this.L});
            return;
        }
        d("com.mediatek.hdrfeature.SessionParamhdrMode");
        d("com.mediatek.hdrfeature.hdrMode");
    }

    public void o() {
        a(CaptureRequest.CONTROL_AWB_MODE, 1);
        a(this.e, this.S, 0);
    }

    public void o(int i2) {
        a("com.oppo.camera.3d.api.state", new int[]{i2});
    }

    /* access modifiers changed from: protected */
    public void o(final boolean z2) {
        com.oppo.camera.d.a("OneCameraImpl", "resetParamsForFlash, isFlashRequired: " + w() + ", cancelAETrigger: " + z2);
        this.T.i();
        this.k.a(new Runnable() {
            public void run() {
                g gVar = g.this;
                CaptureRequest.Builder h = gVar.v(gVar.K);
                if (h != null && z2) {
                    h.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
                    if (!g.this.v && !g.this.a()) {
                        h.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                    }
                    g gVar2 = g.this;
                    gVar2.a(h, gVar2.S, 1);
                }
            }
        });
        if (!this.v) {
            a(CaptureRequest.CONTROL_AE_LOCK, Boolean.FALSE);
            a(this.e, this.S, 0);
        }
    }

    public void p() {
        a(CaptureRequest.FLASH_MODE, 0);
    }

    public void p(int i2) {
        a("com.oppo.faceblur.level", new int[]{i2});
    }

    public void q() {
        if (this.H == 0 && this.u.equals("on")) {
            a(CaptureRequest.FLASH_MODE, 1);
            a(CaptureRequest.CONTROL_AE_MODE, 3);
        } else if (this.H == 0 && this.u.equals(MenuClickMsgData.VALUE_PROFESSION_AUTO)) {
            a(CaptureRequest.FLASH_MODE, 1);
            a(CaptureRequest.CONTROL_AE_MODE, 2);
        }
        a(this.e, this.S, 0);
    }

    public void q(int i2) {
        a("com.oppo.supernight.mode", new int[]{i2});
    }

    public void r() {
        ImageWriter imageWriter = this.M;
        if (imageWriter != null) {
            imageWriter.close();
            this.M = null;
        }
    }

    public void r(int i2) {
        a("com.oppo.rear.remosaic.enable", new int[]{i2});
    }

    public void s(int i2) {
        com.oppo.camera.d.a("OneCameraImpl", "setApertureValue, value: " + i2);
        a("com.oppo.iris.aperture.value", new int[]{i2});
    }

    public void t(int i2) {
        com.oppo.camera.d.b("OneCameraImpl", "setHighResolution: " + i2);
        a("com.oppo.high.resolution", new int[]{i2});
    }
}
