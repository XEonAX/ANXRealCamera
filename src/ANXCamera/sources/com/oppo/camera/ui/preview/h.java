package com.oppo.camera.ui.preview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.d;
import com.oppo.camera.i;
import com.oppo.camera.ui.CommonComponent.SeekBar.ExposureControlSeekBar;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.preview.FocusIndicatorRotateLayout;
import com.oppo.camera.v;

/* compiled from: FocusManager */
public class h implements c, ExposureControlSeekBar.OnSeekBarChangeListener, FocusIndicatorRotateLayout.c {
    private int A = 0;
    private int B = 0;
    /* access modifiers changed from: private */
    public c C = null;
    private i D = null;
    private int E = 4;
    private int F = 0;
    private boolean G = false;
    private String H = "normal";
    private float I = 0.0f;
    private float J = 0.0f;
    private float K = 0.0f;
    private float L = 0.0f;
    private int M = 0;
    private int N = 0;
    private int O = 0;
    private int P = 0;
    private boolean Q = false;
    private boolean R = false;

    /* renamed from: a  reason: collision with root package name */
    private boolean f2959a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2960b = false;
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private Activity j = null;
    /* access modifiers changed from: private */
    public FaceView k = null;
    /* access modifiers changed from: private */
    public FocusIndicatorRotateLayout l = null;
    /* access modifiers changed from: private */
    public ExposureControlSeekBar m = null;
    /* access modifiers changed from: private */
    public boolean n = false;
    /* access modifiers changed from: private */
    public RotateImageView o = null;
    private int p = -1;
    private int q = 0;
    private int r = 1;
    private int s = 2;
    private int t = this.p;
    /* access modifiers changed from: private */
    public Handler u = null;
    private int v = 1;
    private int w;
    private int x = 0;
    private int y = 0;
    private int z = 0;

    /* compiled from: FocusManager */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            d.a("FocusManager", "handleMessage, msg: " + message.what);
            boolean z = true;
            boolean z2 = false;
            switch (message.what) {
                case 1:
                    h.this.p();
                    h.this.C.a();
                    return;
                case 2:
                    if (h.this.k != null && h.this.k.a()) {
                        z2 = true;
                    }
                    (z2 ? h.this.k : h.this.l).a(true);
                    return;
                case 4:
                    h.this.u.removeMessages(4);
                    return;
                case 5:
                    d.d("FocusManager", "MSG_CAPTURE_WHATERVER_CASE");
                    h.this.u.removeMessages(5);
                    if (!h.this.i() || !com.oppo.camera.o.d.w()) {
                        z = false;
                    }
                    if (z) {
                        h.this.u.removeMessages(9);
                        h.this.u.sendEmptyMessageDelayed(9, 100);
                    }
                    if (!z) {
                        h.this.G();
                        return;
                    }
                    return;
                case 6:
                    d.a("FocusManager", "MSG_RESET_AUTO_FOCUS");
                    if (!h.this.w() && !h.this.C.g() && !h.this.C.h()) {
                        if (h.this.l != null) {
                            h.this.l.c();
                        }
                        if (h.this.m != null) {
                            h.this.m.setVisibility(4);
                        }
                        if (h.this.u != null) {
                            h.this.u.sendEmptyMessage(1);
                        }
                        if (!com.oppo.camera.e.a.c(h.this.C.d())) {
                            h.this.d(0);
                            if (h.this.u == null || !h.this.u.hasMessages(5)) {
                                h.this.C.l();
                                return;
                            }
                            h.this.u.removeMessages(9);
                            h.this.u.removeMessages(5);
                            h.this.G();
                            return;
                        }
                        return;
                    }
                    return;
                case 7:
                    if (h.this.m != null && h.this.m.getVisibility() == 0) {
                        h.this.m.setAlpha(0.5f);
                    }
                    if (h.this.l != null) {
                        h.this.l.setAlpha(0.5f);
                    }
                    if (h.this.o != null) {
                        h.this.o.setAlpha(0.5f);
                    }
                    if (h.this.u != null) {
                        h.this.u.removeMessages(8);
                        h.this.u.sendEmptyMessageDelayed(8, 1000);
                        boolean unused = h.this.n = false;
                        return;
                    }
                    return;
                case 8:
                    if (h.this.m != null) {
                        h.this.m.setBarVisibility(false);
                    }
                    if (h.this.u != null && !h.this.z()) {
                        h.this.u.sendEmptyMessageDelayed(6, 4000);
                        return;
                    }
                    return;
                case 9:
                    h.this.G();
                    return;
                case 10:
                    h.this.F();
                    return;
                default:
                    return;
            }
        }
    }

    public h(Activity activity, i iVar, c cVar) {
        this.j = activity;
        this.D = iVar;
        this.u = new a(this.j.getMainLooper());
        this.C = cVar;
    }

    /* access modifiers changed from: private */
    public void F() {
        int i2 = this.F;
        switch (i2) {
            case 1:
                if (1 != this.x) {
                    g(this.G);
                    return;
                }
                return;
            case 2:
                if (1 != this.x) {
                    a(this.E, i2, true, this.G, false);
                    return;
                }
                return;
            case 4:
                if (this.f2959a) {
                    this.C.b(true, true);
                }
                a(this.E, this.F, false, this.G, true);
                Handler handler = this.u;
                if (handler != null) {
                    handler.removeMessages(6);
                    this.u.removeMessages(8);
                    this.u.removeMessages(7);
                    this.u.sendEmptyMessageDelayed(7, 1000);
                    return;
                }
                return;
            case 5:
                if (this.f2959a) {
                    this.C.b(true, true);
                }
                a(this.E, false, this.G);
                Handler handler2 = this.u;
                if (handler2 != null) {
                    handler2.removeMessages(6);
                    this.u.removeMessages(8);
                    this.u.removeMessages(7);
                    this.u.sendEmptyMessageDelayed(7, 1000);
                    return;
                }
                return;
            case 6:
                a(this.E, true, this.G);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void G() {
        d.a("FocusManager", "doCapture, mAfFocusState: " + this.F);
        if (!this.C.o()) {
            if (!this.g || v.s != 0) {
                this.C.a(true, false);
                this.C.a(false);
                return;
            }
            d(2);
            this.C.e();
            this.C.a(false);
            d(0);
            this.u.removeMessages(1);
        }
    }

    private void H() {
        a(this.O, this.P, this.A, true);
    }

    /* access modifiers changed from: private */
    public void I() {
        ExposureControlSeekBar exposureControlSeekBar = this.m;
        if (exposureControlSeekBar != null) {
            exposureControlSeekBar.setVisibility(4);
            this.m.setBarVisibility(false);
        }
        ExposureControlSeekBar exposureControlSeekBar2 = this.m;
        if (!(exposureControlSeekBar2 == null || (this.t == this.p && Float.compare(exposureControlSeekBar2.getValue(), 50.0f) == 0))) {
            this.m.resetProgress();
            a(0.5f);
        }
        this.t = this.p;
    }

    private void a(float f) {
        c cVar = this.C;
        if (cVar != null) {
            int q2 = cVar.q();
            int r2 = this.C.r();
            if (q2 != 0 || r2 != 0) {
                this.C.a((int) (((float) r2) + (((float) (q2 - r2)) * f)));
            }
        }
    }

    private void a(final int i2, final int i3, final int i4, boolean z2) {
        if (z2) {
            ExposureControlSeekBar exposureControlSeekBar = this.m;
            float[] fArr = new float[2];
            FocusIndicatorRotateLayout focusIndicatorRotateLayout = this.l;
            fArr[0] = focusIndicatorRotateLayout != null ? focusIndicatorRotateLayout.getAlpha() : 1.0f;
            fArr[1] = 0.0f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(exposureControlSeekBar, "alpha", fArr);
            ofFloat.setDuration(300);
            ofFloat.start();
            ofFloat.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    h.this.a(i2, i3, i4);
                    h.this.m.requestLayout();
                    ExposureControlSeekBar b2 = h.this.m;
                    float[] fArr = new float[2];
                    fArr[0] = 0.0f;
                    fArr[1] = h.this.l != null ? h.this.l.getAlpha() : 1.0f;
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(b2, "alpha", fArr);
                    ofFloat.setDuration(300);
                    ofFloat.start();
                }
            });
            return;
        }
        a(i2, i3, i4);
    }

    private void a(int i2, int i3, boolean z2, boolean z3, boolean z4) {
        d.a("FocusManager", "onFocusSuccess, mode: " + i2);
        g();
        FaceView faceView = this.k;
        if ((faceView == null || !faceView.a()) && !z3) {
            f();
            this.l.setAlpha(1.0f);
            this.l.a(z2, z4);
            if (this.R) {
                this.l.setVisibility(8);
            }
        }
    }

    private void a(int i2, boolean z2, boolean z3) {
        d.a("FocusManager", "onFocusFail, mode: " + i2);
        g();
        FaceView faceView = this.k;
        if ((faceView == null || !faceView.a()) && !z3) {
            f();
            this.l.setAlpha(1.0f);
            this.l.b(z2);
        }
    }

    private void a(MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2) {
        d.a("FocusManager", "Start autofocus.");
        FaceView faceView = this.k;
        if (faceView != null) {
            faceView.c();
        }
        if (z()) {
            this.Q = true;
        }
        this.C.a(1, meteringRectangleArr, meteringRectangleArr2);
        d(1);
        s();
        this.u.removeMessages(1);
    }

    private void g(boolean z2) {
        d.a("FocusManager", "onFocusStart");
        FaceView faceView = this.k;
        if (faceView != null && faceView.a()) {
            return;
        }
        if (z2) {
            x();
            return;
        }
        f();
        this.l.setAlpha(1.0f);
        this.l.a();
    }

    public void A() {
        if (z() && !w() && this.u != null && C() && this.C.a(CameraFunction.RESET_AUTO_FOCUS)) {
            this.u.removeMessages(6);
            this.u.sendEmptyMessage(6);
        }
    }

    public void B() {
        if (z() && !w() && this.u != null && C() && this.C.a(CameraFunction.RESET_AUTO_FOCUS)) {
            this.u.removeMessages(6);
            this.u.sendEmptyMessageDelayed(6, 3000);
        }
    }

    public boolean C() {
        FocusIndicatorRotateLayout focusIndicatorRotateLayout = this.l;
        if (focusIndicatorRotateLayout == null) {
            d.e("FocusManager", "isFocusIndicatorAshed() is null");
            return false;
        } else if (Math.abs(0.5f - focusIndicatorRotateLayout.getAlpha()) > 0.01f) {
            return false;
        } else {
            FocusIndicatorRotateLayout focusIndicatorRotateLayout2 = this.l;
            return focusIndicatorRotateLayout2 != null && focusIndicatorRotateLayout2.getVisibility() == 0;
        }
    }

    public boolean D() {
        FocusIndicatorRotateLayout focusIndicatorRotateLayout = this.l;
        return focusIndicatorRotateLayout != null && focusIndicatorRotateLayout.getVisibility() == 0;
    }

    public boolean E() {
        int i2 = this.F;
        return (i2 == 3 || i2 == 1) && !this.G;
    }

    public void a() {
        ExposureControlSeekBar exposureControlSeekBar = this.m;
        if (exposureControlSeekBar != null) {
            exposureControlSeekBar.setVisibility(4);
        }
    }

    public void a(int i2) {
        this.v = i2;
    }

    public void a(int i2, int i3) {
        if (this.y != i2 || this.z != i3) {
            this.y = i2;
            this.z = i3;
        }
    }

    public void a(int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.m.getLayoutParams();
        int i5 = this.N;
        if (i5 != 0) {
            if (i5 != 90) {
                if (i5 != 180) {
                    if (i5 == 270) {
                        if (i3 + i4 >= this.z - 5) {
                            layoutParams.setMargins(-i4, 0, 0, 0);
                            return;
                        } else {
                            layoutParams.setMargins(-i4, i4 + this.M, 0, 0);
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } else if (i3 <= 5) {
                layoutParams.setMargins(-i4, i4 + this.M, 0, 0);
                return;
            } else {
                layoutParams.setMargins(-i4, 0, 0, 0);
                return;
            }
        }
        if (i2 + i4 >= this.y - 5) {
            layoutParams.setMargins(-i4, 0, 0, 0);
        } else {
            layoutParams.setMargins(this.M, 0, 0, 0);
        }
    }

    public void a(int i2, int i3, boolean z2) {
        int i4 = i2;
        int i5 = i3;
        boolean z3 = z2;
        if (this.g && this.x != 2) {
            if (z3) {
                c cVar = this.C;
                if (cVar != null) {
                    cVar.a(i4, i5);
                }
                I();
            }
            f();
            d.a("FocusManager", "onSingleTapUp, fromUserTouch: " + z3);
            this.i = z3;
            int i6 = this.A;
            int i7 = this.B;
            c cVar2 = this.C;
            if (cVar2 != null && !cVar2.k() && (com.oppo.camera.e.a.c(this.C.d()) || this.C.a("key_fixed_focus_lens_support_tap_shutter"))) {
                if (!i() || !this.C.f()) {
                    c cVar3 = this.C;
                    if (cVar3 != null && !cVar3.j()) {
                        d.a("FocusManager", "onSingleTapUp(), front camera not support touch ae");
                        return;
                    }
                } else {
                    this.C.a(true);
                    G();
                    return;
                }
            }
            if (this.C != null && 1 == r()) {
                c cVar4 = this.C;
                if (cVar4 != null) {
                    cVar4.m();
                }
                q();
                this.i = z3;
            }
            if (i() && this.C.f()) {
                this.C.a(true);
                this.C.a(false, true);
            }
            int i8 = this.y;
            int i9 = this.z;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.l.getLayoutParams();
            int a2 = com.oppo.camera.o.d.a(i4 - (i6 / 2), 0, i8 - i6);
            int a3 = com.oppo.camera.o.d.a(i5 - (i7 / 2), 0, i9 - i7);
            layoutParams.setMargins(a2, a3, 0, 0);
            layoutParams.getRules()[13] = 0;
            this.l.requestLayout();
            this.O = a2;
            this.P = a3;
            a(a2, a3, i6, false);
            c cVar5 = this.C;
            if (cVar5 != null) {
                cVar5.b();
            }
            c cVar6 = this.C;
            if (cVar6 != null && cVar6.k()) {
                this.u.removeMessages(6);
                if (this.i && z()) {
                    this.u.sendEmptyMessageDelayed(6, 4000);
                }
            }
            this.l.a();
            c cVar7 = this.C;
            if (cVar7 != null && cVar7.i()) {
                this.m.show();
            }
            c cVar8 = this.C;
            if (cVar8 != null) {
                Rect s2 = cVar8.s();
                int d = com.oppo.camera.a.d();
                float f = (float) i4;
                float f2 = (float) i5;
                MeteringRectangle[] a4 = com.oppo.camera.a.a(f, f2, this.y, this.z, this.A, this.h, this.w, 0, s2, d);
                if (this.C.k()) {
                    int c = com.oppo.camera.a.c();
                    MeteringRectangle[] meteringRectangleArr = a4;
                    a(com.oppo.camera.a.a(f, f2, this.y, this.z, this.A, this.h, this.w, 0, s2, c), meteringRectangleArr);
                    if (i()) {
                        k();
                        return;
                    }
                    return;
                }
                this.C.a(a4, (MeteringRectangle[]) null);
                this.Q = false;
                s();
                if (!this.C.a("key_fixed_focus_lens_support_metering") && !com.oppo.camera.e.a.c(this.C.d())) {
                    this.u.removeMessages(6);
                    this.u.removeMessages(1);
                    this.u.sendEmptyMessageDelayed(1, 4000);
                    this.u.removeMessages(2);
                    this.u.sendEmptyMessageDelayed(2, 1000);
                }
            }
        }
    }

    public void a(int i2, int i3, int[] iArr, int i4) {
        if (this.F != i2 && this.j != null) {
            this.F = i2;
            this.E = i3;
            boolean z2 = false;
            this.G = false;
            if (iArr != null) {
                if (iArr[0] == 1) {
                    z2 = true;
                }
                this.G = z2;
            }
            d.a("FocusManager", "updateFocusState, state: " + i2 + ", mode: " + i3 + ", isPdaf: " + this.G);
            if (i4 == 0 || i4 == 3 || i4 == 4 || i4 == 5) {
                d.a("FocusManager", "updateFocusState, return, cameraState: " + i4);
                return;
            }
            this.u.removeMessages(10);
            this.u.sendEmptyMessage(10);
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        if ("pref_camera_timer_shutter_key".equals(str)) {
            String string = sharedPreferences.getString("pref_camera_timer_shutter_key", this.j.getString(R.string.camera_shutter_mode_default_value));
            if (!string.equals(this.H)) {
                this.H = string;
            }
        }
    }

    public void a(RotateImageView rotateImageView) {
        this.o = rotateImageView;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.o.getLayoutParams();
        layoutParams.addRule(5, R.id.focus_indicator_rotate_layout);
        layoutParams.addRule(6, R.id.focus_indicator_rotate_layout);
        layoutParams.addRule(7, R.id.focus_indicator_rotate_layout);
        layoutParams.addRule(8, R.id.focus_indicator_rotate_layout);
        this.o.a(this.N, false);
    }

    public void a(boolean z2) {
        d.a("FocusManager", "initialized");
        this.g = true;
        b(z2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00a8  */
    public boolean a(MotionEvent motionEvent) {
        boolean z2;
        FocusIndicatorRotateLayout focusIndicatorRotateLayout;
        RotateImageView rotateImageView;
        ExposureControlSeekBar exposureControlSeekBar;
        boolean z3 = false;
        if (this.t == this.p) {
            c cVar = this.C;
            if (cVar == null || !cVar.i() || !this.i || !this.n) {
                if (motionEvent.getAction() == 0) {
                    this.n = true;
                }
                return false;
            }
        }
        if (motionEvent.getPointerCount() > 1) {
            Handler handler = this.u;
            if (handler != null) {
                handler.sendEmptyMessageDelayed(7, 1000);
            }
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.I = motionEvent.getX();
            this.J = motionEvent.getY();
            this.L = this.I;
            this.K = this.J;
            Handler handler2 = this.u;
            if (handler2 != null) {
                handler2.removeMessages(6);
                this.u.removeMessages(7);
                this.u.removeMessages(8);
            }
            int i2 = this.t;
            if (i2 != this.p && i2 != this.s) {
                return false;
            }
            this.t = this.q;
            return false;
        } else if (action == 1) {
            Handler handler3 = this.u;
            if (handler3 != null) {
                handler3.sendEmptyMessageDelayed(7, 1000);
            }
            float y2 = this.J - motionEvent.getY();
            float x2 = this.I - motionEvent.getX();
            if (this.t != this.r) {
                return false;
            }
            this.t = this.s;
            int i3 = this.N;
            if (i3 == 0 || i3 == 180) {
                if (Math.abs(x2) >= 250.0f || Math.abs(y2) <= 20.0f) {
                    return false;
                }
            } else if (Math.abs(x2) <= 20.0f) {
                return false;
            }
            return true;
        } else if (action != 2) {
            return false;
        } else {
            ExposureControlSeekBar exposureControlSeekBar2 = this.m;
            if (exposureControlSeekBar2 != null && exposureControlSeekBar2.getVisibility() != 0) {
                return false;
            }
            float y3 = this.K - motionEvent.getY();
            float x3 = this.L - motionEvent.getX();
            int i4 = this.N;
            if (i4 != 0 && i4 != 180) {
                y3 = i4 == 90 ? x3 : -x3;
            } else if (Math.abs(y3) < Math.abs(x3)) {
                z2 = false;
                if (z2 && Math.abs(y3) > 8.0f && this.t == this.r) {
                    focusIndicatorRotateLayout = this.l;
                    if (focusIndicatorRotateLayout != null) {
                        focusIndicatorRotateLayout.setAlpha(1.0f);
                    }
                    rotateImageView = this.o;
                    if (rotateImageView != null) {
                        rotateImageView.setAlpha(1.0f);
                    }
                    float f = (y3 / ((float) this.z)) * 50.0f;
                    exposureControlSeekBar = this.m;
                    if (exposureControlSeekBar != null) {
                        exposureControlSeekBar.setAlpha(1.0f);
                        this.m.setBarVisibility(true);
                        this.m.setMoveProgress(f);
                    }
                    this.K = motionEvent.getY();
                    this.L = motionEvent.getX();
                    z3 = true;
                }
                if (Math.abs(y3) <= 8.0f && this.t == this.q) {
                    this.t = this.r;
                    return z3;
                }
            }
            z2 = true;
            focusIndicatorRotateLayout = this.l;
            if (focusIndicatorRotateLayout != null) {
            }
            rotateImageView = this.o;
            if (rotateImageView != null) {
            }
            float f2 = (y3 / ((float) this.z)) * 50.0f;
            exposureControlSeekBar = this.m;
            if (exposureControlSeekBar != null) {
            }
            this.K = motionEvent.getY();
            this.L = motionEvent.getX();
            z3 = true;
            return Math.abs(y3) <= 8.0f ? z3 : z3;
        }
    }

    public void b() {
        this.k = (FaceView) this.j.findViewById(R.id.face_view);
        Resources resources = this.j.getResources();
        this.A = resources.getDimensionPixelSize(R.dimen.focus_view_size);
        this.B = resources.getDimensionPixelSize(R.dimen.focus_view_size);
        this.M = resources.getDimensionPixelSize(R.dimen.focus_view_exporebar_margin);
    }

    public void b(int i2) {
        ExposureControlSeekBar exposureControlSeekBar = this.m;
        if (exposureControlSeekBar != null) {
            exposureControlSeekBar.setOrientation(i2, true);
        }
        this.N = i2;
    }

    public void b(boolean z2) {
        this.h = z2;
    }

    public void c() {
        this.H = this.D.getString("pref_camera_timer_shutter_key", this.j.getString(R.string.camera_shutter_mode_default_value));
    }

    public void c(int i2) {
        this.w = i2;
    }

    public void c(boolean z2) {
        this.f2959a = z2;
    }

    public void d() {
        v();
        o();
    }

    public void d(int i2) {
        d.a("FocusManager", "setFocusState(), mFocusState: " + this.x + "=>" + i2);
        this.x = i2;
    }

    public void d(boolean z2) {
        d.a("FocusManager", "sceenCenterTouchFocus(), delay: " + z2);
        this.u.removeMessages(4);
        if (z2) {
            this.u.sendEmptyMessageDelayed(4, 600);
        } else if (this.l != null && !com.oppo.camera.e.a.c(this.C.d())) {
            a(this.y / 2, this.z / 2, false);
        }
    }

    public void e() {
        this.j = null;
        this.k = null;
        this.C = null;
        this.u = null;
        FocusIndicatorRotateLayout focusIndicatorRotateLayout = this.l;
        if (focusIndicatorRotateLayout != null) {
            focusIndicatorRotateLayout.c();
            this.l = null;
        }
    }

    public void e(final int i2) {
        Activity activity = this.j;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.l != null) {
                        h.this.l.setVisibility(i2);
                    }
                }
            });
        }
    }

    public void e(boolean z2) {
        this.f2960b = z2;
    }

    public void f() {
        if (this.l == null || this.m == null) {
            this.j.getLayoutInflater().inflate(R.layout.focus_exposure_indicator, (PreviewFrameLayout) this.j.findViewById(R.id.frame_layout));
            if (this.l == null) {
                this.l = (FocusIndicatorRotateLayout) this.j.findViewById(R.id.focus_indicator_rotate_layout);
                this.l.setOnFocusIndicatorDisappearListener(this);
                this.l.setRotation((float) this.N);
            }
            if (this.m == null) {
                this.m = (ExposureControlSeekBar) this.j.findViewById(R.id.exposure_indicator_rotate_layout);
                this.m.setOnSeekBarChangeListener(this);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.m.getLayoutParams();
                layoutParams.addRule(1, R.id.focus_indicator_rotate_layout);
                layoutParams.addRule(6, R.id.focus_indicator_rotate_layout);
                this.m.setOrientation(this.N, false);
            }
        }
    }

    public void f(final int i2) {
        Activity activity = this.j;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.o != null) {
                        h.this.o.setVisibility(i2);
                    }
                }
            });
        }
    }

    public void f(boolean z2) {
        this.R = z2;
    }

    public boolean g() {
        Handler handler = this.u;
        if (handler == null || !handler.hasMessages(5)) {
            return false;
        }
        this.u.removeMessages(9);
        this.u.removeMessages(5);
        G();
        return true;
    }

    public void h() {
        if (i()) {
            this.j.runOnUiThread(new Runnable() {
                public void run() {
                    h.this.C.a(true, false);
                    h.this.C.a(false);
                }
            });
        }
    }

    public boolean i() {
        Activity activity = this.j;
        if (activity == null || !this.D.getString("pref_camera_tap_shutter_key", activity.getString(R.string.camera_tap_shutter_default_value)).equals("on")) {
            return false;
        }
        c cVar = this.C;
        return cVar != null && cVar.c() && !this.C.g() && this.v != 3 && this.i && !this.f2959a && !this.C.o() && this.C.a("pref_camera_tap_shutter_key");
    }

    public boolean j() {
        if (!l()) {
            return false;
        }
        k();
        return true;
    }

    public void k() {
        d.a("FocusManager", "delayCapture");
        d(5);
        Handler handler = this.u;
        if (handler != null) {
            handler.removeMessages(5);
            this.u.sendEmptyMessageDelayed(5, 2000);
        }
    }

    public boolean l() {
        if (z()) {
            Handler handler = this.u;
            if (handler != null && handler.hasMessages(6)) {
                this.u.removeMessages(6);
                this.u.sendEmptyMessageDelayed(6, 4000);
            }
        }
        d.a("FocusManager", "needDelayCapture, mAfFocusState: " + this.F);
        return E();
    }

    public void m() {
        c cVar = this.C;
        if (cVar != null) {
            cVar.a(false);
        }
        Handler handler = this.u;
        if (handler != null) {
            handler.removeMessages(5);
            if (5 == this.x) {
                d(0);
            }
        }
    }

    public void n() {
        d.a("FocusManager", "checkFocusStateBeforeCapture, mFocusState: " + this.x);
        if (r() == 1 && this.x == 1) {
            p();
        }
    }

    public void o() {
        d(0);
        t();
        this.Q = false;
        s();
    }

    public void onOrientationChange(int i2) {
        this.N = i2;
        H();
        RotateImageView rotateImageView = this.o;
        if (rotateImageView != null) {
            rotateImageView.a(this.N, true);
        }
    }

    public void onProgressChange(float f) {
        a(f);
    }

    public void p() {
        d.a("FocusManager", "resetAutoFocusMode()");
        c cVar = this.C;
        if (cVar != null) {
            cVar.l();
        }
        q();
    }

    public void q() {
        d.a("FocusManager", "resetCameraFocusState()");
        t();
        FaceView faceView = this.k;
        if (faceView != null) {
            faceView.d();
        }
        d(0);
        this.u.removeMessages(1);
    }

    public int r() {
        return this.C.p();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0066, code lost:
        if (r0 != 4) goto L_0x0068;
     */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    public void s() {
        RotateImageView rotateImageView;
        if (this.g) {
            f();
            FaceView faceView = this.k;
            g gVar = faceView != null && faceView.a() ? this.k : this.l;
            boolean z2 = !this.i;
            Handler handler = this.u;
            if (handler != null) {
                handler.removeMessages(7);
            }
            this.l.setAlpha(1.0f);
            int i2 = this.x;
            if (i2 == 3) {
                gVar.a(z2);
            } else if (i2 == 4) {
                gVar.b(z2);
            } else {
                int i3 = this.E;
                if (4 == i3 || 3 == i3) {
                    gVar.a(z2);
                }
            }
            if (this.i && this.u != null) {
                if (!com.oppo.camera.e.a.c(this.C.d())) {
                    if (this.Q) {
                        int i4 = this.x;
                        if (i4 != 3) {
                        }
                    }
                    this.u.removeMessages(6);
                    this.u.sendEmptyMessageDelayed(6, 4000);
                    rotateImageView = this.o;
                    if (rotateImageView != null) {
                        rotateImageView.setAlpha(1.0f);
                    }
                    this.u.removeMessages(7);
                    this.u.removeMessages(8);
                    int i5 = this.x;
                    if (i5 == 3 || i5 == 4 || com.oppo.camera.e.a.c(this.C.d())) {
                        this.u.sendEmptyMessageDelayed(7, 1000);
                        this.n = true;
                    }
                    if (!this.C.i()) {
                        FocusIndicatorRotateLayout focusIndicatorRotateLayout = this.l;
                        if ((focusIndicatorRotateLayout instanceof FocusIndicatorRotateLayout) && !focusIndicatorRotateLayout.b()) {
                            this.m.setVisibility(0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.Q && !com.oppo.camera.e.a.c(this.C.d())) {
                    int i6 = this.x;
                    if (i6 == 3 || i6 == 4) {
                        this.u.removeMessages(6);
                    }
                }
                rotateImageView = this.o;
                if (rotateImageView != null) {
                }
                this.u.removeMessages(7);
                this.u.removeMessages(8);
                int i52 = this.x;
                this.u.sendEmptyMessageDelayed(7, 1000);
                this.n = true;
                if (!this.C.i()) {
                }
            }
        }
    }

    public void t() {
        if (this.g) {
            this.i = false;
            this.j.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.l != null) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) h.this.l.getLayoutParams();
                        layoutParams.getRules()[13] = -1;
                        layoutParams.setMargins(0, 0, 0, 0);
                        h.this.l.requestLayout();
                        h.this.l.c();
                    }
                    h.this.I();
                    if (h.this.o != null) {
                        h.this.o.setVisibility(8);
                    }
                }
            });
        }
    }

    public void u() {
        Handler handler = this.u;
        if (handler != null) {
            handler.removeMessages(6);
            this.u.removeMessages(7);
            this.u.removeMessages(8);
        }
    }

    public void v() {
        this.u.removeMessages(1);
        this.u.removeMessages(4);
        this.u.removeMessages(5);
        this.u.removeCallbacksAndMessages((Object) null);
    }

    public boolean w() {
        return this.f2960b;
    }

    public void x() {
        Activity activity = this.j;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (h.this.l != null) {
                        h.this.l.c();
                        h.this.I();
                    }
                    if (h.this.o != null) {
                        h.this.o.setVisibility(8);
                    }
                }
            });
        }
    }

    public boolean y() {
        return this.t > this.q;
    }

    public boolean z() {
        return this.C != null && (!this.D.getString("pref_camera_tap_shutter_key", this.j.getString(R.string.camera_tap_shutter_default_value)).equals("on") || !this.C.c() || !this.C.a("pref_camera_tap_shutter_key")) && this.C.n() && this.v != 3;
    }
}
