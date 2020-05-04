package com.oppo.camera.panorama;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Size;
import android.util.SizeF;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fotonation.panorama.PanoramaEngine;
import com.oppo.camera.R;
import com.oppo.camera.config.CameraConfig;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.config.ConfigDataBase;
import com.oppo.camera.d.a;
import com.oppo.camera.d.b;
import com.oppo.camera.e.d;
import com.oppo.camera.e.f;
import com.oppo.camera.e.h;
import com.oppo.camera.panorama.FrontPanoramaGuideView;
import com.oppo.camera.panorama.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.CaptureMsgData;
import com.oppo.camera.statistics.model.DcsMsgData;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.CameraScreenHintView;
import com.oppo.camera.ui.control.c;
import com.oppo.camera.ui.preview.a.i;
import com.oppo.camera.v;
import java.util.HashMap;
import java.util.List;
import visidon.Lib.Panorama;

/* compiled from: PanoramaCapMode */
public class e extends a implements d.b, Panorama.PanoramaCam1Listener {
    FrontPanoramaGuideView.a W = new FrontPanoramaGuideView.a() {
        public void a(int i) {
            if (!com.oppo.camera.o.d.y() && e.this.ap != null && e.this.ao != null) {
                e.this.ap.setText(e.this.ao.getCurrentGuideTips());
            }
        }
    };
    /* access modifiers changed from: private */
    public int X = 4;
    /* access modifiers changed from: private */
    public int Y = 1080;
    /* access modifiers changed from: private */
    public int Z = 282;
    /* access modifiers changed from: private */
    public boolean aA = false;
    /* access modifiers changed from: private */
    public int aB = 0;
    private float[] aC = null;
    private SizeF aD = null;
    /* access modifiers changed from: private */
    public int aE = 0;
    private int aF = 0;
    private int aG = 1;
    private boolean aH;
    private boolean aI = false;
    private byte[] aJ = null;
    private byte[] aK = null;
    /* access modifiers changed from: private */
    public int aL = 0;
    private String aM = "normal";
    private Handler aN = new Handler(Looper.getMainLooper()) {
        /* JADX WARNING: Code restructure failed: missing block: B:92:0x0328, code lost:
            return;
         */
        public void handleMessage(Message message) {
            int i = 0;
            switch (message.what) {
                case 1:
                    e.this.cG();
                    e.this.n(((Boolean) message.obj).booleanValue());
                    return;
                case 2:
                    Bitmap bitmap = (Bitmap) message.obj;
                    if (e.this.aj && !e.this.s && e.this.an != null && bitmap != null && !bitmap.isRecycled()) {
                        e.this.an.setImageBitmap(bitmap);
                        return;
                    }
                    return;
                case 3:
                    if (e.this.aj) {
                        e.this.x(((Integer) message.obj).intValue());
                        return;
                    }
                    return;
                case 4:
                    com.oppo.camera.d.a("PanoramaCapMode", "handleMessage, MSG_REAR_PANORAMA_START");
                    boolean unused = e.this.aA = true;
                    if (e.this.az.getFrameSize() == 0) {
                        e.this.az.setFrameSize(e.this.aL);
                    }
                    synchronized (e.this.as) {
                        int unused2 = e.this.aB = 0;
                    }
                    return;
                case 5:
                    synchronized (e.this.as) {
                        if (e.this.ay != null) {
                            if (e.this.aA) {
                                d.C0063d dVar = (d.C0063d) message.obj;
                                if (dVar != null) {
                                    if (dVar.a() == 0) {
                                        break;
                                    } else {
                                        if (!(dVar.b() == 0 || 101 == dVar.b())) {
                                            if (102 != dVar.b()) {
                                                e.this.ay.c(-dVar.c()[1], dVar.c()[0]);
                                                dVar.a((byte[]) null);
                                                return;
                                            }
                                        }
                                        if (101 == dVar.b()) {
                                            e.this.M.a(true, false);
                                            int unused3 = e.this.aB = e.this.aB + 1;
                                        }
                                        if (e.this.aB == 2) {
                                            e.this.ay.b(PanoramaEngine.panoramaGetDirection(dVar.a()));
                                        }
                                        e.this.ay.c(-dVar.c()[1], dVar.c()[0]);
                                        if (101 == dVar.b()) {
                                            d.a a2 = e.this.ay.a(dVar.d(), true);
                                            Bitmap c = a2.c();
                                            float m = ((float) (e.this.Z - (e.this.X * 2))) / ((float) c.getHeight());
                                            Matrix matrix = new Matrix();
                                            matrix.postScale(m, m);
                                            e.this.az.a(com.oppo.camera.o.d.a(c, 0, 0, c.getWidth(), c.getHeight(), matrix, true), Math.round(((float) a2.a()) * m), Math.round(((float) a2.b()) * m));
                                        }
                                        if (102 == dVar.b() || e.this.ay.e()) {
                                            e.this.b(true);
                                        }
                                        dVar.a((byte[]) null);
                                        return;
                                    }
                                }
                            }
                        }
                        com.oppo.camera.d.a("PanoramaCapMode", "handleMessage, MSG_REAR_PANORAMA_PROCESS, mFNPanoramaProcess: " + e.this.ay + ", mbPanning: " + e.this.aA);
                        return;
                    }
                case 6:
                    if (e.this.az != null) {
                        e.this.az.c();
                    }
                    e eVar = e.this;
                    eVar.c(eVar.aE);
                    e.this.x(0);
                    com.oppo.camera.d.a("PanoramaCapMode", "handleMessage, MSG_REAR_PANORAMA_FINISH");
                    e.this.M.a(new c(11, "button_color_inside_none"));
                    e.this.M.h(0);
                    e.this.M.b(0, true);
                    e.this.M.d(0);
                    e.this.M.e(0);
                    e.this.M.f(0);
                    e.this.M.a(0, true);
                    e.this.M.d(true, false);
                    if (!e.this.L.p()) {
                        e.this.L.M();
                        e.this.K.e(false);
                        e.this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
                        e.this.K.c(com.oppo.camera.a.b());
                    }
                    e.this.K.f(false);
                    e.this.K.a((f.c) null);
                    boolean unused4 = e.this.ah = false;
                    e eVar2 = e.this;
                    eVar2.a((byte[]) null, 0, 0, com.oppo.camera.o.d.a(eVar2.ab()), false, false);
                    return;
                case 7:
                    synchronized (e.this.as) {
                        com.oppo.camera.d.a("PanoramaCapMode", "handleMessage, MSG_REAR_PANORAMA_ERROR, error: " + PanoramaEngine.panoramaGetErrorStr(0));
                        if (e.this.ay != null) {
                            e.this.ay.a(e.this.aB);
                        }
                    }
                    return;
                case 8:
                    synchronized (e.this.as) {
                        com.oppo.camera.d.a("PanoramaCapMode", "handleMessage, MSG_REAR_PANORAMA_RESET, mbPanning: " + e.this.aA);
                        boolean unused5 = e.this.aA = false;
                        if (e.this.ay != null) {
                            e.this.ay.b();
                            d h = e.this.ay;
                            if (((Boolean) message.obj).booleanValue()) {
                                i = e.this.aB;
                            }
                            h.a(i);
                        }
                    }
                    return;
                case 9:
                    synchronized (e.this.as) {
                        if (!(e.this.aA || e.this.az == null || e.this.ay == null)) {
                            Bitmap c2 = e.this.ay.a((byte[]) message.obj, false).c();
                            if (!e.this.s) {
                                float m2 = ((float) (e.this.Z - (e.this.X * 2))) / ((float) c2.getHeight());
                                Matrix matrix2 = new Matrix();
                                matrix2.postScale(m2, m2);
                                Bitmap a3 = com.oppo.camera.o.d.a(c2, 0, 0, c2.getWidth(), c2.getHeight(), matrix2, true);
                                int unused6 = e.this.aL = a3.getWidth();
                                e.this.az.setFrameSize(a3.getWidth());
                                e.this.az.a(a3, 0, 0);
                            }
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private int aa = 0;
    private int ab = 0;
    private int ac = 0;
    /* access modifiers changed from: private */
    public int ad = 0;
    private int ae = 42;
    private int af = 66;
    private int ag = 0;
    /* access modifiers changed from: private */
    public boolean ah = false;
    private boolean ai = false;
    /* access modifiers changed from: private */
    public boolean aj = false;
    private boolean ak = false;
    private boolean al = false;
    private Bitmap am = null;
    /* access modifiers changed from: private */
    public ImageView an = null;
    /* access modifiers changed from: private */
    public FrontPanoramaGuideView ao = null;
    /* access modifiers changed from: private */
    public TextView ap = null;
    /* access modifiers changed from: private */
    public Resources aq = null;
    /* access modifiers changed from: private */
    public Object ar = new Object();
    /* access modifiers changed from: private */
    public Object as = new Object();
    /* access modifiers changed from: private */
    public Panorama at = null;
    private RelativeLayout au = null;
    /* access modifiers changed from: private */
    public CameraScreenHintView av = null;
    private Size aw = null;
    private Size ax = null;
    /* access modifiers changed from: private */
    public d ay = null;
    /* access modifiers changed from: private */
    public f az = null;

    public e(Activity activity, b bVar, com.oppo.camera.ui.c cVar, i iVar) {
        super(activity, bVar, cVar, iVar);
    }

    private void A(int i) {
        boolean equals = TextUtils.equals(this.O != null ? this.O.getString("pref_mirror_key", this.N.getString(R.string.camera_mirror_default_value)) : com.oppo.camera.c.a_, com.oppo.camera.c.a_);
        com.oppo.camera.d.a("PanoramaCapMode", "getJPEGImageFromPanorama, isCloseMirrorSwitch: " + equals);
        if ((i == 90 || i == 270) && !equals) {
            i = (i + 180) % 360;
        }
        com.oppo.camera.d.a("PanoramaCapMode", "getJPEGImageFromPanorama, currentOrientation: " + i);
        Panorama panorama = this.at;
        if (panorama != null) {
            panorama.getJPEGImage(95, i, equals);
        }
    }

    private Bitmap a(Bitmap bitmap, float f, float f2) {
        if (bitmap == null) {
            com.oppo.camera.d.a("PanoramaCapMode", "drawPreviewBitmap, bitmap is null");
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap a2 = com.oppo.camera.o.d.a(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(a2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        float f3 = (float) 3;
        paint.setStrokeWidth(f3);
        double d = ((double) width) * 0.5d;
        double d2 = (((double) f2) + 0.5d) * d;
        int max = Math.max(0, (int) d2);
        int min = Math.min(width, (int) (d2 + d));
        paint.setColor(Color.parseColor("#FFCC00"));
        float f4 = f3 / 2.0f;
        canvas.drawRect(((float) max) + f4, f4, (float) (min - 3), (float) (height - 3), paint);
        paint.reset();
        return a2;
    }

    private void b(byte[] bArr) {
        synchronized (this.ar) {
            if (!(this.at == null || bArr == null || this.am == null || this.am.isRecycled())) {
                if (this.ax != null) {
                    if (this.ak) {
                        this.ak = false;
                        this.at.addPreviewFrame(bArr, this.aw.getWidth(), this.aw.getHeight());
                    }
                    this.at.updateOrientationWithCameraInfo(bArr, this.aw.getWidth(), this.aw.getHeight());
                    this.at.getGuidanceBitmap(bArr, this.aw.getWidth(), this.aw.getHeight(), this.am);
                    Bitmap a2 = a(this.am, this.at.getXdisplacement(), this.at.getYdisplacement());
                    this.aN.removeMessages(2);
                    Message obtainMessage = this.aN.obtainMessage(2);
                    obtainMessage.obj = a2;
                    obtainMessage.sendToTarget();
                    return;
                }
            }
            com.oppo.camera.d.a("PanoramaCapMode", "onPreviewCaptured, mPanorama is null or data is null so return");
        }
    }

    private void cB() {
        this.ag = com.oppo.camera.o.d.E();
        this.Y = this.aq.getDimensionPixelSize(R.dimen.panorama_rect_width);
        this.Z = this.aq.getDimensionPixelSize(R.dimen.panorama_rect_height);
        this.aa = this.aq.getDimensionPixelSize(R.dimen.panorama_rect_to_left);
        this.ab = this.aq.getDimensionPixelSize(R.dimen.panorama_rect_to_top);
        this.ae = this.aq.getDimensionPixelSize(R.dimen.panorama_view_gap);
        this.af = this.aq.getDimensionPixelSize(R.dimen.panorama_front_guide_gap);
        this.X = this.aq.getDimensionPixelSize(R.dimen.panorama_rear_camera_aperture_margin_top);
        int i = this.Z;
        this.ac = this.ae + i;
        this.ad = (this.ab + i) - this.ag;
        if (this.au == null) {
            LayoutInflater from = LayoutInflater.from(this.N);
            this.au = (RelativeLayout) from.inflate(this.aq.getLayout(R.layout.panorama), (ViewGroup) null);
            this.av = (CameraScreenHintView) from.inflate(this.aq.getLayout(R.layout.camera_screen_hint), (ViewGroup) null);
            this.an = (ImageView) this.au.findViewById(R.id.preview_view);
            this.ao = (FrontPanoramaGuideView) this.au.findViewById(R.id.capture_guide_view);
            this.ao.setOnDirectionChangeListener(this.W);
            this.ao.setForceDarkAllowed(false);
            if (!com.oppo.camera.o.d.y()) {
                this.ap = (TextView) this.au.findViewById(R.id.capture_guide_tips);
            }
            this.az = new f(this.N);
            this.az.setForceDarkAllowed(false);
            this.az.setContentDescription(this.N.getString(R.string.camera_description_arrow_left_to_right));
            this.au.addView(this.av);
            this.au.addView(this.az);
            this.au.setVisibility(8);
            this.Q.removeView(this.au);
            this.Q.addView(this.au);
        }
        z(this.j);
        this.az.c();
    }

    private void cC() {
        if (this.au != null) {
            f fVar = this.az;
            if (fVar != null) {
                fVar.d();
                this.au.removeView(this.az);
                this.az = null;
            }
            FrontPanoramaGuideView frontPanoramaGuideView = this.ao;
            if (frontPanoramaGuideView != null) {
                frontPanoramaGuideView.b();
            }
            this.au.removeAllViews();
            this.Q.removeView(this.au);
            this.au = null;
        }
        this.aG = 1;
        cH();
    }

    private void cD() {
        synchronized (this.ar) {
            if (this.at != null && this.at.initialized()) {
                this.at.Release();
                this.at = null;
                this.aJ = null;
                this.ak = false;
            }
        }
    }

    private void cE() {
        com.oppo.camera.d.a("PanoramaCapMode", "releaseRearPanorama");
        synchronized (this.as) {
            this.aA = false;
            if (this.ay != null) {
                this.ay.b();
                this.ay.a(0);
                this.ay.c();
                this.ay = null;
            }
        }
    }

    private void cF() {
        synchronized (this.ar) {
            if (this.at != null) {
                this.at.process();
            }
        }
    }

    /* access modifiers changed from: private */
    public void cG() {
        if (this.ai) {
            a((byte[]) null, 0, 0, com.oppo.camera.o.d.a(ab()), false, false);
        }
        this.M.h(0);
        if (!this.aI) {
            c cVar = new c(11, "button_color_inside_none");
            cVar.b(0);
            this.M.a(cVar);
        }
        this.aI = false;
        this.M.d(0);
        this.M.e(0);
        this.M.f(0);
        this.M.a(0, true);
        this.K.e(false);
        this.K.f(false);
        this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
        this.K.a((f.c) null);
        this.ah = false;
        this.aF = 0;
        y(8);
    }

    private void cH() {
        synchronized (this.ar) {
            if (this.am != null) {
                this.am.recycle();
                this.am = null;
            }
        }
    }

    private void cI() {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.N);
        menuClickMsgData.buildEvent(false);
        menuClickMsgData.mCaptureMode = "panorama";
        menuClickMsgData.mCaptureType = 0;
        menuClickMsgData.mFuncKeyId = 19;
        menuClickMsgData.mOrientation = this.aE;
        if (this.az != null && !com.oppo.camera.e.a.c(this.j)) {
            menuClickMsgData.mFuncKeyResult = this.az.a() ? 1 : 2;
        }
        menuClickMsgData.report();
    }

    /* access modifiers changed from: private */
    public void z(int i) {
        f fVar = this.az;
        if (fVar != null) {
            fVar.a(this.Y, this.Z, this.aa, this.ab);
        }
        if (com.oppo.camera.e.a.c(i)) {
            this.an.setImageBitmap((Bitmap) null);
            x(8);
            return;
        }
        this.an.setVisibility(4);
        this.aE = 0;
        f fVar2 = this.az;
        if (fVar2 != null) {
            fVar2.postInvalidate();
        }
    }

    public boolean B() {
        return false;
    }

    public void H() {
        if (com.oppo.camera.e.a.c(this.j)) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    e.this.av.a(e.this.N.getString(R.string.camera_toast_camera_Low_memory_hint), false, true);
                }
            });
        } else {
            this.M.a(R.string.camera_toast_camera_Low_memory_hint, -1, true, false, false);
        }
    }

    public void H_() {
        this.aN.sendEmptyMessage(4);
    }

    public void I_() {
        this.aN.sendEmptyMessage(6);
    }

    public void J_() {
        this.aN.sendEmptyMessage(7);
    }

    public boolean P() {
        super.P();
        return false;
    }

    public void X() {
        com.oppo.camera.d.a("PanoramaCapMode", "onAfterStartPreview");
        this.ai = true;
        this.aH = true;
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (com.oppo.camera.e.a.c(e.this.j)) {
                    e.this.n(true);
                    return;
                }
                e eVar = e.this;
                Size e = eVar.e(eVar.K.c());
                synchronized (e.this.as) {
                    if (e.this.ay == null) {
                        int dimensionPixelSize = e.this.aq.getDimensionPixelSize(R.dimen.panorama_progressbar_margin_left);
                        d unused = e.this.ay = new d();
                        e.this.ay.a(e.this.N, e.getWidth(), e.getHeight(), (d.b) e.this);
                        e.this.ay.a(e.getHeight(), e.getWidth());
                        e.this.ay.b(e.this.Y - (dimensionPixelSize * 2), e.this.Z - (e.this.X * 2));
                        e.this.ay.b(true);
                        e.this.ay.d();
                    }
                }
            }
        });
        super.X();
    }

    public boolean Z() {
        com.oppo.camera.d.a("PanoramaCapMode", "onAfterSnapping");
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (com.oppo.camera.e.a.c(e.this.j)) {
                    e.this.av.b(false);
                    e.this.L.a(1);
                    e.this.ao.setNextDirection(1);
                    e.this.y(0);
                    synchronized (e.this.ar) {
                        if (e.this.at != null) {
                            e.this.at.start();
                        }
                    }
                    boolean unused = e.this.ah = true;
                    return;
                }
                e.this.av.b(false);
                e.this.av.a(e.this.ad, 0, 0, false);
                if (!com.oppo.camera.o.d.y()) {
                    e.this.av.a(e.this.N.getResources().getString(R.string.camera_panorama_rear_capturing), false, true);
                }
                e.this.L.a(1);
            }
        });
        return true;
    }

    public String a() {
        return "panorama";
    }

    public void a(int i, boolean z) {
        super.a(i, z);
        if (i != 1) {
            if (i != 2) {
                if (i == 5) {
                    if (!z) {
                        x(8);
                    } else if (!com.oppo.camera.e.a.c(this.j)) {
                        x(0);
                    }
                }
            } else if (z) {
                com.oppo.camera.o.d.a((View) this.au, 0, (Animation.AnimationListener) null, 300);
            } else {
                this.M.a(true, true, true);
                this.au.setVisibility(8);
            }
        } else if (z) {
            com.oppo.camera.o.d.a((View) this.au, 0, (Animation.AnimationListener) null, 300);
        } else {
            com.oppo.camera.o.d.a((View) this.au, 8, (Animation.AnimationListener) null, 300);
        }
    }

    /* access modifiers changed from: protected */
    public void a(com.oppo.camera.e.d dVar, CaptureRequest.Builder builder, HashMap<String, Surface> hashMap) {
        if (d.a.PREVIEW == dVar.a() && hashMap.containsKey("type_preview_frame")) {
            builder.addTarget(hashMap.get("type_preview_frame"));
        }
        super.a(dVar, builder, hashMap);
    }

    public void a(d.C0063d dVar) {
        this.aN.obtainMessage(5, dVar).sendToTarget();
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        com.oppo.camera.d.a("PanoramaCapMode", "onResume");
        RelativeLayout relativeLayout = this.au;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
            this.au.setAlpha(1.0f);
        }
        if (com.oppo.camera.e.a.c(this.j)) {
            x(8);
        }
        this.M.a(g(), false);
        this.M.d(0);
        this.M.e(0);
        this.M.f(0);
        this.M.b(0, true);
        this.M.a(0, false);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        if (com.oppo.camera.e.a.c(this.j)) {
            this.L.a(0);
        }
    }

    public void a(byte[] bArr) {
        com.oppo.camera.d.a("PanoramaCapMode", "onRearPanoramaSave, data: " + bArr);
        this.L.a(1);
        if (bArr != null) {
            v.a aVar = new v.a();
            aVar.d = bArr;
            aVar.i = "jpeg";
            aVar.r = com.oppo.camera.o.d.b(bArr);
            aVar.h = null;
            aVar.y = true;
            aVar.c = this.L.o();
            this.L.a(aVar);
        }
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, boolean z) {
        if (com.oppo.camera.e.a.c(this.j)) {
            this.M.d(true, false);
        }
    }

    public boolean a(String str) {
        return false;
    }

    public void aJ() {
        this.M.c("pref_camera_photo_ratio_key");
        super.aJ();
    }

    /* access modifiers changed from: protected */
    public void am() {
        this.aN.removeCallbacksAndMessages((Object) null);
        f fVar = this.az;
        if (fVar != null) {
            fVar.c();
            this.az.postInvalidate();
        }
        this.M.a(g(), false);
        if (com.oppo.camera.e.a.c(this.j)) {
            cD();
            this.aN.removeMessages(1);
            Handler handler = this.aN;
            handler.sendMessage(handler.obtainMessage(1, true));
        } else {
            b(false);
        }
        synchronized (this.ar) {
            this.ak = false;
        }
        this.ah = false;
    }

    /* access modifiers changed from: protected */
    public boolean aq() {
        return true;
    }

    public boolean as() {
        com.oppo.camera.d.a("PanoramaCapMode", "isAllowSwitch, mbStartPreviewed: " + this.ai);
        if (this.aH) {
            return !this.ah && this.ai;
        }
        return true;
    }

    public boolean at() {
        if (com.oppo.camera.e.a.c(this.j)) {
            return super.at();
        }
        return true;
    }

    public int b() {
        return 32775;
    }

    public Size b(h hVar) {
        if (com.oppo.camera.e.a.c(this.j)) {
            return com.oppo.camera.o.d.b(hVar.a(256), 1.3333333333333333d);
        }
        return null;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData) {
        CaptureMsgData captureMsgData;
        if (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) {
            captureMsgData = null;
        } else {
            captureMsgData = (CaptureMsgData) dcsMsgData;
            captureMsgData.mShutterType = aA();
        }
        if (captureMsgData != null && !com.oppo.camera.e.a.c(this.j)) {
            f fVar = this.az;
            if (fVar != null) {
                captureMsgData.mPanoramaDirection = fVar.a() ? 1 : 2;
                captureMsgData.mAeAfLock = String.valueOf(this.L.O());
            }
        }
        return captureMsgData;
    }

    public DcsMsgData b(DcsMsgData dcsMsgData, v.a aVar) {
        CaptureMsgData captureMsgData;
        if (dcsMsgData == null || !(dcsMsgData instanceof CaptureMsgData)) {
            captureMsgData = null;
        } else {
            captureMsgData = (CaptureMsgData) dcsMsgData;
            if (this.al) {
                captureMsgData.mShutterType += "|" + this.aM;
            } else {
                captureMsgData.mShutterType += "|end";
            }
            Size a2 = v.a(com.oppo.camera.o.d.a(aVar.d));
            if (a2 != null) {
                captureMsgData.mWidth = String.valueOf(a2.getWidth());
                captureMsgData.mHeight = String.valueOf(a2.getHeight());
            }
        }
        return super.b((DcsMsgData) captureMsgData, aVar);
    }

    public void b(int i) {
        com.oppo.camera.d.a("PanoramaCapMode", "cameraIdChanged, mCameraId: " + this.j);
        super.b(i);
        Handler handler = this.aN;
        if (handler != null) {
            handler.removeMessages(3);
        }
        cD();
        cE();
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (!e.this.s) {
                    e eVar = e.this;
                    eVar.z(eVar.j);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void b(Image image) {
        super.b(image);
        if (image != null && !this.s && this.aj) {
            if (com.oppo.camera.e.a.c(this.j)) {
                this.aJ = com.oppo.camera.o.d.a(image, 17, this.aJ);
                b(this.aJ);
            } else if (this.aA) {
                final byte[] a2 = com.oppo.camera.o.d.a(image, 17);
                this.aN.post(new Runnable() {
                    public void run() {
                        synchronized (e.this.as) {
                            if (e.this.ay != null) {
                                e.this.ay.a(e.this.aA, a2);
                            }
                        }
                    }
                });
            } else {
                this.aK = com.oppo.camera.o.d.a(image, 17, this.aK);
                this.aN.removeMessages(9);
                this.aN.obtainMessage(9, this.aK).sendToTarget();
            }
        }
    }

    public void b(boolean z) {
        this.aN.removeMessages(8);
        Handler handler = this.aN;
        handler.sendMessage(handler.obtainMessage(8, Boolean.valueOf(z)));
    }

    /* access modifiers changed from: protected */
    public void b(byte[] bArr, boolean z) {
        this.M.a(true, false);
    }

    public boolean b(MotionEvent motionEvent) {
        if (!this.aA && !this.ah && !com.oppo.camera.e.a.c(this.j)) {
            cI();
            f fVar = this.az;
            if (fVar != null) {
                return fVar.a(motionEvent);
            }
        }
        return false;
    }

    public boolean bn() {
        return false;
    }

    public String bo() {
        return "on";
    }

    public void c(int i) {
        com.oppo.camera.d.a("PanoramaCapMode", "setOrientation(), orientation: " + i);
        if (com.oppo.camera.e.a.c(this.j)) {
            this.aE = i;
        }
    }

    public boolean c() {
        return this.L.g();
    }

    public CameraStatisticsUtil.MakerNote cj() {
        return null;
    }

    public void cn() {
        super.cn();
        this.K.e(false);
        this.K.f(false);
        this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
    }

    /* access modifiers changed from: protected */
    public void cs() {
        f fVar = this.az;
        if (fVar != null) {
            fVar.setVisibility(8);
        }
    }

    /* access modifiers changed from: protected */
    public String ct() {
        return com.oppo.camera.e.a.c(this.j) ? this.N.getString(R.string.camera_picture_size_standard) : this.N.getString(R.string.camera_picture_size_full);
    }

    public boolean d(String str) {
        if ("pref_camera_tap_shutter_key".equals(str) || "pref_camera_gesture_shutter_key".equals(str) || "pref_time_lapse_key".equals(str) || "pref_zoom_key".equals(str) || "pref_camera_slogan_key".equals(str) || "pref_mirror_key".equals(str) || "pref_support_rotate_hint_view".equals(str)) {
            return false;
        }
        if ("pref_sstart_preview_sync".equals(str)) {
            return true;
        }
        return CameraFunction.RESET_AUTO_FOCUS.equals(str) ? this.L.e() == 1 : super.d(str);
    }

    public Size e(h hVar) {
        List<Size> a2 = hVar.a();
        return com.oppo.camera.e.a.c(this.j) ? com.oppo.camera.o.d.a(a2, 1.3333333333333333d, CameraConfig.getConfigIntValue(ConfigDataBase.KEY_FRONT_PANORAMA_MAX_HEIGHT)) : com.oppo.camera.o.d.a(a2, 1.3333333333333333d, CameraConfig.getConfigIntValue(ConfigDataBase.KEY_REAR_PANORAMA_MAX_HEIGHT));
    }

    public boolean e() {
        return this.L.g();
    }

    public boolean f(String str) {
        if ("pref_camera_timer_shutter_key".equals(str) || "pref_camera_photo_ratio_key".equals(str)) {
            return false;
        }
        return super.f(str);
    }

    /* access modifiers changed from: protected */
    public void h() {
        com.oppo.camera.d.a("PanoramaCapMode", "onPause");
        if (this.ah) {
            am();
        }
        cE();
        cD();
        this.M.h(0);
        y(8);
        this.an.setVisibility(4);
        if (com.oppo.camera.e.a.c(this.j)) {
            this.av.b(false);
        }
        this.ai = false;
    }

    /* access modifiers changed from: protected */
    public void i() {
    }

    /* access modifiers changed from: protected */
    public void j() {
        cC();
    }

    /* access modifiers changed from: protected */
    public void k() {
        com.oppo.camera.d.a("PanoramaCapMode", "onInitCameraMode()");
        this.aj = true;
        int i = 0;
        this.ai = false;
        this.aH = false;
        this.aq = this.N.getResources();
        cB();
        this.aE = this.L.k();
        if (com.oppo.camera.e.a.c(this.j)) {
            i = this.aE;
        }
        this.aE = i;
        this.M.a(true);
        this.M.a(true, true, true);
        this.M.c("pref_camera_photo_ratio_key");
        this.M.c(2);
        this.M.a(this.N.getString(R.string.camera_description_common_shutter_button));
        com.oppo.camera.d.a("PanoramaCapMode", "onInitCameraMode X");
    }

    public boolean k(String str) {
        if ("type_still_capture".equals(str)) {
            return false;
        }
        if ("type_preview_frame".equals(str)) {
            return true;
        }
        return super.k(str);
    }

    public void l() {
        com.oppo.camera.d.a("PanoramaCapMode", "onDeInitCameraMode()");
        this.aj = false;
        this.ah = false;
        this.aH = false;
        this.av.b(false);
        Handler handler = this.aN;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        cD();
        cE();
        this.aL = 0;
        if (this.K != null) {
            this.K.k(0);
            this.K.e(false);
            this.K.f(false);
            this.K.a(4, com.oppo.camera.a.a(), com.oppo.camera.a.a(), true);
        }
        this.M.b("pref_camera_photo_ratio_key", (String) null);
        this.M.c(1);
    }

    /* access modifiers changed from: protected */
    public void m() {
        com.oppo.camera.d.a("PanoramaCapMode", "onBeforePreview");
        this.ai = false;
        if (!com.oppo.camera.e.a.c(this.j)) {
            this.aN.removeMessages(3);
            this.aN.obtainMessage(3, 0).sendToTarget();
        }
    }

    public void n(boolean z) {
        com.oppo.camera.d.a("PanoramaCapMode", "initFrontPanorama, mbPaused: " + this.s + ", mbStartPreviewed: " + this.ai + ", mViewGroup: " + this.au);
        if (!this.s && this.au != null && this.ai) {
            synchronized (this.ar) {
                if (this.am != null) {
                    this.am.recycle();
                    this.am = null;
                }
            }
            cD();
            this.aF = 0;
            this.ax = b(this.K.c());
            this.aw = e(this.K.c());
            if (this.aw != null) {
                synchronized (this.ar) {
                    this.am = com.oppo.camera.o.d.a((this.aw.getHeight() * 2) / 6, this.aw.getWidth() / 6, Bitmap.Config.ARGB_8888);
                    int dimensionPixelSize = this.aq.getDimensionPixelSize(R.dimen.panorama_front_rect_height);
                    int width = (int) (((((float) this.am.getWidth()) * 1.0f) * ((float) dimensionPixelSize)) / ((float) this.am.getHeight()));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, dimensionPixelSize);
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    layoutParams.topMargin = this.ae + this.ag;
                    layoutParams.leftMargin = (com.oppo.camera.o.d.N() - width) / 2;
                    if (z) {
                        this.an.setImageBitmap((Bitmap) null);
                    }
                    this.an.setLayoutParams(layoutParams);
                    this.an.setVisibility(0);
                }
                this.au.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                com.oppo.camera.d.a("PanoramaCapMode", "initFrontPanorama, mPictureSize: " + this.ax.getWidth() + " x " + this.ax.getHeight() + ", mPreviewFrameSize: " + this.aw.getWidth() + " x " + this.aw.getHeight());
                this.aC = this.K.c().k();
                this.aD = this.K.c().e();
                int height = (int) ((this.aC[0] * ((float) this.aw.getHeight())) / this.aD.getHeight());
                if (height < this.aw.getHeight() / 3 || height > this.aw.getHeight() * 8) {
                    height = this.aw.getHeight();
                }
                int i = height;
                synchronized (this.ar) {
                    Panorama panorama = new Panorama(this.aw.getWidth(), this.aw.getHeight(), i, true, true, this.N, this);
                    this.at = panorama;
                    this.at.VDSetMode(false);
                    if (!this.at.initialized()) {
                        com.oppo.camera.d.a("PanoramaCapMode", "initFrontPanorama, panorama initialized failed!");
                    }
                    this.at.SetInputSaving(false);
                }
            }
            this.av.a(this.ac, 0, 0, false);
            if (!com.oppo.camera.o.d.y()) {
                this.av.a(this.N.getString(R.string.camera_panorama_front_previewing), true, false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        com.oppo.camera.d.a("PanoramaCapMode", "onBeforeSnapping(), mOrientation: " + this.aE);
        this.N.runOnUiThread(new Runnable() {
            public void run() {
                if (!com.oppo.camera.e.a.c(e.this.j)) {
                    synchronized (e.this.as) {
                        if (e.this.ay != null) {
                            e.this.ay.a(e.this.az.a());
                        }
                    }
                    boolean unused = e.this.ah = true;
                    e eVar = e.this;
                    eVar.c(eVar.aE);
                    e.this.x(0);
                    e.this.M.b(4, true);
                }
                e.this.M.h(4);
                e.this.M.e(4);
                e.this.M.f(4);
                e.this.M.a(8, true);
                c cVar = new c(10, "button_color_inside_none");
                cVar.b(0);
                e.this.M.a(cVar);
            }
        });
        if (1 != this.K.m()) {
            this.K.j();
        }
        this.al = false;
        this.K.e(true);
        this.K.f(true);
        this.K.a((f.c) null);
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a8, code lost:
        return true;
     */
    public boolean o() {
        this.al = true;
        this.aM = this.L.S();
        if (com.oppo.camera.e.a.c(this.j)) {
            com.oppo.camera.d.a("PanoramaCapMode", "onStopTakePicture, mFrontJpegCount: " + this.aF + ", mbSnapShoting: " + this.ah);
            int i = this.aF;
            if (i == 0) {
                return false;
            }
            if (this.ah && i > 0) {
                this.ah = false;
                this.aI = true;
                final c cVar = new c(11, "button_color_inside_none");
                cVar.b(0);
                this.N.runOnUiThread(new Runnable() {
                    public void run() {
                        e.this.M.a(cVar);
                    }
                });
                cF();
            }
            return true;
        }
        com.oppo.camera.d.a("PanoramaCapMode", "onStopTakePicture, mbPanning: " + this.aA + ", mbSnapShoting: " + this.ah);
        if (this.aA) {
            b(true);
        }
        if (this.ah || this.az.e()) {
            return true;
        }
        synchronized (this.as) {
            if (this.ay != null) {
                if (this.ay.a()) {
                    return false;
                }
            }
        }
    }

    public void onBitmapReady(Bitmap bitmap) {
        com.oppo.camera.d.a("PanoramaCapMode", "onBitmapReady, bitmap: " + bitmap);
    }

    public void onFailure(Panorama.FailureCode failureCode) {
        com.oppo.camera.d.c("PanoramaCapMode", "onFailure, failureCode: " + failureCode);
        if (failureCode == Panorama.FailureCode.REGISTRATION_FAILED || failureCode == Panorama.FailureCode.TIMEOUT || failureCode == Panorama.FailureCode.MAX_MOTION || failureCode == Panorama.FailureCode.WRONG_MOTION) {
            cF();
        }
        if (failureCode == Panorama.FailureCode.PROCESSING_FAILED) {
            cD();
            Handler handler = this.aN;
            if (handler != null) {
                handler.removeMessages(1);
                Handler handler2 = this.aN;
                handler2.sendMessage(handler2.obtainMessage(1, false));
            }
        }
    }

    public void onFrameAdded(Bitmap bitmap) {
    }

    public void onGuide(final Panorama.Guide guide, final int i) {
        if (this.ah) {
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    if (guide != Panorama.Guide.NONE) {
                        if (guide != Panorama.Guide.MOVE && guide != Panorama.Guide.MOVE_FREE) {
                            Panorama.Guide guide = guide;
                            Panorama.Guide guide2 = Panorama.Guide.HOLD;
                        } else if (i > 0) {
                            e.this.ao.setNextDirection(1);
                        } else {
                            e.this.ao.setNextDirection(0);
                        }
                    }
                }
            });
        }
    }

    public void onJPEGImageReady(byte[] bArr) {
        int i;
        int i2;
        com.oppo.camera.d.a("PanoramaCapMode", "onJPEGImageReady, data: " + bArr);
        if (bArr != null) {
            Size b2 = b(this.K.c());
            if (com.oppo.camera.e.a.b(this.j, this.L.k()) % 180 == 0) {
                i = b2.getWidth();
                i2 = b2.getHeight();
            } else {
                i = b2.getHeight();
                i2 = b2.getWidth();
            }
            v.a aVar = new v.a();
            aVar.o = i;
            aVar.p = i2;
            aVar.d = bArr;
            aVar.i = com.oppo.camera.o.d.a(ab());
            aVar.r = com.oppo.camera.o.d.b(bArr);
            aVar.h = null;
            aVar.y = true;
            aVar.c = this.L.o();
            this.L.a(aVar);
        }
        if (this.aN != null && !this.s) {
            this.aN.removeMessages(1);
            Handler handler = this.aN;
            handler.sendMessageDelayed(handler.obtainMessage(1, false), 150);
        }
    }

    public void onNV21ImageReady(byte[] bArr) {
        com.oppo.camera.d.a("PanoramaCapMode", "onNV21ImageReady: " + bArr);
    }

    public void onProcessingReady(int i, int i2) {
        com.oppo.camera.d.a("PanoramaCapMode", "onProcessingReady, width: " + i + ", height: " + i2);
        if (this.L != null) {
            this.L.a(1);
        }
        int i3 = 0;
        if (i <= 0 || i2 <= 0) {
            com.oppo.camera.d.a("PanoramaCapMode", "panorama shot failed!");
            Handler handler = this.aN;
            if (handler != null) {
                handler.removeMessages(1);
                Handler handler2 = this.aN;
                handler2.sendMessage(handler2.obtainMessage(1, false));
                return;
            }
            return;
        }
        synchronized (this.ar) {
            if (this.at != null) {
                if (this.L != null) {
                    i3 = this.L.l();
                }
                A(i3);
            }
        }
    }

    public void onSetPreviewParameters(boolean z) {
        com.oppo.camera.d.a("PanoramaCapMode", "onSetPreviewParameters, lockExposure: " + z);
    }

    public void onTakeImage() {
        com.oppo.camera.d.a("PanoramaCapMode", "onTakeImage, mbSnapShoting: " + this.ah);
        if (this.ah) {
            synchronized (this.ar) {
                this.ak = true;
            }
            this.N.runOnUiThread(new Runnable() {
                public void run() {
                    e.this.M.a(true, false);
                }
            });
            this.aF++;
        }
    }

    /* access modifiers changed from: protected */
    public int w(int i) {
        return com.oppo.camera.e.a.c(i) ? CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PANORAMA_TO_REAL_SWITCH_ANIM_TIME) : CameraConfig.getConfigIntValue(ConfigDataBase.KEY_PANORAMA_TO_FRONT_SWITCH_ANIM_TIME);
    }

    public void x(int i) {
        com.oppo.camera.d.a("PanoramaCapMode", "setProgressBarVisble, visible: " + i);
        if (i == 0) {
            this.av.a(this.ad, 0, 0, false);
            String string = this.N.getString(R.string.camera_panorama_rear_previewing);
            if (!com.oppo.camera.o.d.y() && (this.av.getHintTextView().getVisibility() != 0 || !string.equals(this.av.getHintTextView().getText()))) {
                this.av.a(string, true, false);
            }
        } else {
            this.av.b(false);
        }
        f fVar = this.az;
        if (fVar != null && fVar.getVisibility() != i) {
            this.az.setVisibility(i);
        }
    }

    public void y(final int i) {
        FrontPanoramaGuideView frontPanoramaGuideView = this.ao;
        if (frontPanoramaGuideView == null) {
            return;
        }
        if (frontPanoramaGuideView.getVisibility() != i) {
            AlphaAnimation alphaAnimation = i == 0 ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() {
                public void onAnimationEnd(Animation animation) {
                    e.this.ao.setVisibility(i);
                    if (!com.oppo.camera.o.d.y()) {
                        e.this.ap.setVisibility(i);
                    }
                }

                public void onAnimationRepeat(Animation animation) {
                }

                public void onAnimationStart(Animation animation) {
                    if (i == 0) {
                        e.this.ao.setVisibility(i);
                        if (!com.oppo.camera.o.d.y()) {
                            e.this.ap.setVisibility(i);
                        }
                    }
                }
            });
            if (!com.oppo.camera.o.d.y()) {
                this.ap.clearAnimation();
                this.ap.startAnimation(alphaAnimation);
            }
            this.ao.clearAnimation();
            this.ao.startAnimation(alphaAnimation);
            return;
        }
        Animation animation = this.ao.getAnimation();
        if (animation != null) {
            animation.reset();
            animation.cancel();
        }
        if (!com.oppo.camera.o.d.y()) {
            this.ap.clearAnimation();
            this.ap.setVisibility(i);
        }
        this.ao.clearAnimation();
        this.ao.setVisibility(i);
    }
}
