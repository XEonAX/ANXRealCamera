package com.oppo.camera;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.PathInterpolator;
import android.widget.RelativeLayout;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.model.ZoomAdjustMsgData;
import com.oppo.camera.ui.g;
import com.oppo.camera.ui.preview.n;
import com.oppo.camera.ui.preview.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ZoomManager */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f3001a = {1.0f, 5.0f};

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<Float> f3002b = new ArrayList<>();
    private ArrayList<Float> c = new ArrayList<>();
    /* access modifiers changed from: private */
    public float d = 1.0f;
    private float e = 0.0f;
    private float f = 0.0f;
    private float g = 0.0f;
    private float h = 0.0f;
    private Rect i = null;
    private float j = 0.0f;
    private int k = 0;
    /* access modifiers changed from: private */
    public boolean l = true;
    /* access modifiers changed from: private */
    public boolean m = false;
    /* access modifiers changed from: private */
    public boolean n = false;
    /* access modifiers changed from: private */
    public a o = null;
    private o p = null;
    /* access modifiers changed from: private */
    public Handler q = null;
    private HandlerThread r = null;
    private ScaleGestureDetector s = null;
    private Activity t = null;
    private int u = 0;
    /* access modifiers changed from: private */
    public boolean v = false;
    private int w = 0;
    /* access modifiers changed from: private */
    public i x = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.d.b y = null;

    /* compiled from: ZoomManager */
    public interface a {
        void a(float f, boolean z, boolean z2);

        boolean a();

        boolean a(float f);

        void b();

        void c();

        boolean d();

        boolean e();

        void f();

        void g();

        void h();

        boolean i();

        boolean j();

        void k();

        void l();
    }

    /* compiled from: ZoomManager */
    private class b implements ScaleGestureDetector.OnScaleGestureListener {

        /* renamed from: b  reason: collision with root package name */
        private float f3007b;
        private float c;

        private b() {
            this.f3007b = 0.0f;
            this.c = 0.0f;
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (!Float.isInfinite(scaleFactor) && !Float.isNaN(scaleFactor)) {
                if (x.this.v) {
                    x.this.o.h();
                    return true;
                }
                float a2 = x.this.a(this.c, scaleGestureDetector.getCurrentSpan() - this.f3007b);
                if (x.this.a(a2)) {
                    x.this.a(a2, false, false);
                }
            }
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            if (x.this.y.W()) {
                return false;
            }
            x.this.i();
            this.f3007b = scaleGestureDetector.getCurrentSpan();
            this.c = x.this.d;
            x.this.o.b();
            x.this.c();
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            if (x.this.o != null) {
                x.this.o.c();
            }
            x.this.d(4);
        }
    }

    /* compiled from: ZoomManager */
    private class c implements n {
        private c() {
        }

        public Drawable a(float f) {
            return x.this.b(f);
        }

        public boolean a() {
            return x.this.o.d();
        }
    }

    public x(Activity activity, i iVar, com.oppo.camera.d.b bVar) {
        this.t = activity;
        this.x = iVar;
        this.y = bVar;
        this.p = new o(this.t);
        this.k = this.t.getResources().getDimensionPixelSize(R.dimen.optical_zoom_scale_gesture_step);
        this.p.setOnSeekBarChangeListener(new g.a() {
            public void a() {
                if (!x.this.y.W()) {
                    if (x.this.o != null) {
                        x.this.o.f();
                    }
                    x.this.i();
                }
            }

            public void a(float f) {
                if (x.this.o.e()) {
                    x.this.i();
                    if (x.this.q != null && x.this.l) {
                        x.this.q.removeCallbacksAndMessages((Object) null);
                        x.this.q.obtainMessage(1, Float.valueOf(f)).sendToTarget();
                    }
                }
            }

            public void b() {
                if (x.this.o != null) {
                    x.this.o.g();
                }
            }

            public void b(float f) {
                d.a("ZoomManager", "onChanged, zoomValue: " + f);
                x.this.i();
                x.this.q.removeCallbacksAndMessages((Object) null);
                x.this.q.obtainMessage(2, Float.valueOf(f)).sendToTarget();
            }

            public void c(float f) {
            }

            public void d(float f) {
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(float f2, boolean z) {
        c(f2);
        a(f2, z, false);
    }

    /* access modifiers changed from: private */
    public void a(float f2, boolean z, boolean z2) {
        if (Float.compare(this.d, f2) != 0) {
            this.d = f2;
            if (this.m) {
                for (float f3 : f3001a) {
                    if (f2 < f3 && f2 >= f3 - 0.1f) {
                        float width = ((float) this.i.width()) / 2.0f;
                        float f4 = (width * 1.0f) / ((float) ((int) ((width / f3) + 1.0f)));
                        if (f2 >= f4) {
                            f2 = f4;
                        }
                    }
                }
            }
            float a2 = d.a(((float) ((int) ((f2 + 1.0E-5f) / 0.01f))) / 100.0f, this.g, this.j);
            if (Float.compare(a2, this.e) != 0) {
                this.o.a(a2, true, z);
                this.e = a2;
            }
            d.a("ZoomManager", "changeZoom, mZoomValue: " + this.d + ", mHalZoomValue: " + this.e);
        }
    }

    private void c(float f2) {
        if (this.o.j()) {
            float d2 = this.p.d(f2);
            if (Float.compare(this.f, d2) != 0) {
                Iterator<Float> it = this.f3002b.iterator();
                while (it.hasNext()) {
                    if (Float.compare(d2, it.next().floatValue()) == 0) {
                        this.f = d2;
                        this.o.l();
                        return;
                    }
                }
                this.f = d2;
                this.o.k();
            }
        }
    }

    /* access modifiers changed from: private */
    public void d(int i2) {
        if (this.o != null) {
            ZoomAdjustMsgData zoomAdjustMsgData = new ZoomAdjustMsgData(this.t);
            zoomAdjustMsgData.mCaptureType = this.o.i() ^ true ? 1 : 0;
            zoomAdjustMsgData.mCaptureMode = this.x.getString("pref_camera_mode_key", "");
            zoomAdjustMsgData.mCameraId = this.x.getString("pref_camera_id_key", "");
            zoomAdjustMsgData.mOrientation = this.w;
            zoomAdjustMsgData.mZoomType = i2;
            zoomAdjustMsgData.mZoomValue = f();
            com.oppo.camera.d.b bVar = this.y;
            if (bVar != null) {
                if (bVar.g()) {
                    zoomAdjustMsgData.mCameraEnterType = String.valueOf(1);
                } else if (this.y.h()) {
                    zoomAdjustMsgData.mCameraEnterType = String.valueOf(3);
                } else {
                    zoomAdjustMsgData.mCameraEnterType = String.valueOf(2);
                }
                zoomAdjustMsgData.mbVideoRecording = this.y.V();
            }
            zoomAdjustMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    public void i() {
        if (this.r == null) {
            this.r = new HandlerThread("HANDLER_THREAD_NAME");
            this.r.start();
        }
        if (this.q == null) {
            this.q = new Handler(this.r.getLooper()) {

                /* renamed from: b  reason: collision with root package name */
                private PathInterpolator f3005b = new PathInterpolator(0.42f, 0.42f, 0.52f, 0.92f);

                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int i = message.what;
                    if (i != 1) {
                        if (i == 2) {
                            x.this.a(((Float) message.obj).floatValue(), false);
                            x.this.d(2);
                        }
                    } else if (!x.this.o.d()) {
                        d.e("ZoomManager", "handleMessage, cancel click");
                    } else {
                        boolean unused = x.this.l = false;
                        float floatValue = ((Float) message.obj).floatValue();
                        float f = x.this.d;
                        if (x.this.o.j()) {
                            x.this.o.k();
                        }
                        if (Float.compare(0.6f, floatValue) != 0) {
                            for (int i2 = 1; i2 <= 5; i2++) {
                                if (x.this.o.d()) {
                                    x.this.a(((floatValue - f) * this.f3005b.getInterpolation(((float) i2) / ((float) 5))) + f, true, false);
                                }
                            }
                            if (x.this.n && x.this.x.contains("pref_none_sat_ultra_wide_angle_key")) {
                                x.this.x.edit().putString("pref_none_sat_ultra_wide_angle_key", c.a_).apply();
                            }
                        } else if (x.this.m) {
                            x.this.a(floatValue, true, false);
                        } else if (x.this.n) {
                            x.this.x.edit().putString("pref_none_sat_ultra_wide_angle_key", "on").apply();
                            x.this.a(1.0f, true, false);
                        }
                        boolean unused2 = x.this.l = true;
                        x.this.d(1);
                    }
                }
            };
        }
    }

    public float a() {
        return this.d;
    }

    public float a(float f2, float f3) {
        if (this.j < 1.0f) {
            return 0.0f;
        }
        return d.a(f2 + (((float) Math.round(f3 / ((float) this.k))) * 0.1f), this.g, this.j);
    }

    public void a(int i2) {
        this.p.setVisibility(i2);
    }

    public void a(int i2, boolean z) {
        this.p.a(i2, z);
        this.w = i2;
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            View findViewById = this.t.findViewById(R.id.face_beauty_enter_button);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(10);
            viewGroup.addView(this.p, viewGroup.indexOfChild(findViewById), layoutParams);
            this.p.setVisibility(4);
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.l = true;
        }
        this.p.a(animationListener);
    }

    public void a(a aVar) {
        this.o = aVar;
        this.p.setZoomListener(new c());
        if (this.s == null) {
            this.s = new ScaleGestureDetector(this.t, new b());
        }
    }

    public void a(List<Float> list, boolean z, boolean z2, boolean z3, float f2, float f3, Rect rect) {
        this.v = z;
        this.h = f3;
        this.i = rect;
        this.m = z2;
        this.n = z3;
        this.d = f2;
        this.e = f2;
        this.g = list.get(0).floatValue();
        this.j = list.get(list.size() - 1).floatValue();
        this.f3002b.clear();
        this.c.clear();
        float f4 = this.g;
        Float valueOf = Float.valueOf(1.0f);
        float f5 = 0.6f;
        if (Float.compare(f4, 1.0f) < 0) {
            this.f3002b.add(Float.valueOf(this.g));
            this.c.add(Float.valueOf(this.g));
        } else if (this.n) {
            this.f3002b.add(Float.valueOf(0.6f));
        }
        this.f3002b.add(valueOf);
        this.f3002b.add(Float.valueOf(2.0f));
        float f6 = this.j;
        if (f6 > 2.0f) {
            this.f3002b.add(Float.valueOf(Math.min(f6, 5.0f)));
        }
        this.c.add(valueOf);
        this.c.add(Float.valueOf(2.0f));
        if (Float.compare(this.j, 5.0f) >= 0) {
            this.c.add(Float.valueOf(5.0f));
            if (Float.compare(this.j, 10.0f) > 0) {
                this.c.add(Float.valueOf(10.0f));
            }
        }
        o oVar = this.p;
        if (!this.y.W()) {
            f5 = this.d;
        }
        oVar.a(f5, this.g, this.j, this.c, this.f3002b, !this.y.W());
        d.a("ZoomManager", "initializeZoom, mMinZoomValue: " + this.g + ", mMaxZoomValue: " + this.j);
    }

    public void a(boolean z) {
        if (!z) {
            this.p.setEnabled(false);
        } else if (g()) {
            this.p.setEnabled(true);
        }
    }

    public boolean a(float f2) {
        return this.p.b(f2);
    }

    public boolean a(MotionEvent motionEvent) {
        if (this.s == null) {
            return false;
        }
        if (!this.o.a() && !this.v) {
            return false;
        }
        if (motionEvent.getPointerCount() >= 2) {
            this.s.onTouchEvent(motionEvent);
        }
        this.p.a(motionEvent);
        return !this.v && this.s.isInProgress();
    }

    public Drawable b(float f2) {
        if (this.o.a(f2) || this.y.W()) {
            return this.t.getResources().getDrawable(R.drawable.zoom_ultra_wide_angel);
        }
        return null;
    }

    public void b() {
        if (!g()) {
            d.a("ZoomManager", "performShow, isSupportZoomMenu is false, so return");
        } else {
            this.p.b();
        }
    }

    public void b(int i2) {
        this.p.setLayoutDirection(i2);
    }

    public void b(boolean z) {
        if (!this.y.W()) {
            float a2 = d.a(this.d + (z ? 0.1f : -0.1f) + 1.0E-5f, this.g, this.j);
            if (this.d != a2 && a(a2)) {
                a(a2, false, false);
                d(3);
            }
        }
    }

    public void c() {
        if (!g()) {
            d.a("ZoomManager", "performCollapse, isSupportZoomMenu is false, so return");
            return;
        }
        Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.l = true;
        }
        this.p.K_();
    }

    public void c(int i2) {
        if (this.u != i2) {
            this.u = i2;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
            layoutParams.topMargin = i2;
            this.p.setLayoutParams(layoutParams);
        }
    }

    public boolean d() {
        if (g()) {
            return this.p.e();
        }
        d.a("ZoomManager", "isZoomMenuExpand, isSupportZoomMenu is false, so return");
        return false;
    }

    public void e() {
        HandlerThread handlerThread = this.r;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.r = null;
        }
        Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.q = null;
        }
        this.p.a();
        this.l = true;
        if (!this.o.a()) {
            this.p.setVisibility(8);
        }
    }

    public String f() {
        return this.p.getCurrentValue();
    }

    public boolean g() {
        return this.o.a();
    }

    public boolean h() {
        return this.p.d();
    }
}
