package com.oppo.camera.ui.control;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.app.Activity;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.BaseInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.a.a.e;
import com.a.a.f;
import com.a.a.g;
import com.a.a.h;
import com.a.a.j;
import com.a.a.l;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.i;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.control.ShutterButton;
import com.oppo.camera.ui.menu.b.c;
import com.oppo.camera.ui.menu.b.d;
import com.oppo.camera.v;
import java.util.List;

/* compiled from: CameraControlUI */
public class b implements View.OnClickListener, c, ShutterButton.OnShutterButtonListener, c.e {
    private RotateImageView A = null;
    private ShutterButton B = null;
    private MainShutterButton C = null;
    /* access modifiers changed from: private */
    public ShutterButton D = null;
    private ShutterButton E = null;
    private ShutterButton F = null;
    private ThumbImageView G = null;
    private e H = null;
    private f I = null;
    private TextView J = null;
    private TextView K = null;
    private d L = null;
    private com.oppo.camera.ui.menu.b.c M = null;
    private d N = new d();
    private List<Integer> O = null;
    private int P = 0;
    /* access modifiers changed from: private */
    public ContentResolver Q = null;
    private e R = null;
    private f S = null;
    private f T = null;
    private ShutterButton.OnShutterButtonListener U = new ShutterButton.OnShutterButtonListener() {
        public void H() {
        }

        public void I() {
        }

        public void a(ShutterButton shutterButton) {
            com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, ShutterButton.id: " + shutterButton.getId());
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
                com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, camera menu is popup....");
            }
            if (b.this.n == 3) {
                b.this.t.i();
            } else {
                b.this.t.f();
            }
        }

        public void a(ShutterButton shutterButton, boolean z) {
            if (b.this.t != null) {
                b.this.t.a(z);
            }
        }

        public void b(ShutterButton shutterButton) {
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
            if (b.this.t != null && shutterButton.getId() == R.id.shutter_button) {
                b.this.t.g();
            }
        }

        public void c(ShutterButton shutterButton) {
            if (b.this.t != null && shutterButton != null && shutterButton.getId() == R.id.shutter_button) {
                shutterButton.setPressed(false);
                b.this.t.h();
            }
        }

        public boolean u() {
            return true;
        }
    };
    private ShutterButton.OnShutterButtonListener V = new ShutterButton.OnShutterButtonListener() {
        public void H() {
            if (b.this.t != null) {
                b.this.t.l();
            }
        }

        public void I() {
            if (b.this.t != null) {
                b.this.t.m();
            }
        }

        public void a(ShutterButton shutterButton) {
            com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, switch_camera_button");
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
            }
            b.this.t.k();
        }

        public void a(ShutterButton shutterButton, boolean z) {
        }

        public void b(ShutterButton shutterButton) {
        }

        public void c(ShutterButton shutterButton) {
        }

        public boolean u() {
            if (b.this.D != null) {
                return b.this.D.isEnabled();
            }
            return true;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private boolean f2614a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2615b = false;
    private boolean g = false;
    private boolean h;
    private boolean i;
    /* access modifiers changed from: private */
    public boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    /* access modifiers changed from: private */
    public int n = 1;
    private int o = 0;
    private long p = 0;
    private AsyncTask<Void, Void, e> q = null;
    private Bitmap r = null;
    private Activity s = null;
    /* access modifiers changed from: private */
    public a t = null;
    private com.oppo.camera.ui.d u = null;
    private RelativeLayout v = null;
    private RelativeLayout w = null;
    private RelativeLayout x = null;
    private RotateImageView y = null;
    private RotateImageView z = null;

    /* compiled from: CameraControlUI */
    private class a extends AsyncTask<Void, Void, e> {

        /* renamed from: b  reason: collision with root package name */
        private e f2621b = null;
        private boolean c = false;

        public a(boolean z) {
            this.c = z;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public e doInBackground(Void... voidArr) {
            com.oppo.camera.d.a("CameraControlUI", "doInBackground");
            if (isCancelled() || b.this.j || b.this.Q == null) {
                com.oppo.camera.d.e("CameraControlUI", "doInBackground, isCancelled: " + isCancelled() + ", mbPaused: " + b.this.j + ", mContentResolver: " + b.this.Q);
                return null;
            }
            if (this.f2621b == null) {
                e[] eVarArr = new e[1];
                int a2 = e.a(b.this.Q, eVarArr);
                com.oppo.camera.d.a("CameraControlUI", "doInBackground, code: " + a2);
                if (a2 != 0) {
                    if (a2 == 1) {
                        this.f2621b = eVarArr[0];
                    } else if (a2 == 2) {
                        cancel(true);
                    }
                }
            }
            return this.f2621b;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(e eVar) {
            com.oppo.camera.d.a("CameraControlUI", "LoadThumbnailTask, onPostExecute, thumbnail: " + eVar);
            if (!isCancelled() && !b.this.j) {
                b.this.a(eVar, this.c);
            }
        }
    }

    public b(Activity activity, i iVar, com.oppo.camera.ui.d dVar) {
        this.s = activity;
        this.u = dVar;
        this.Q = this.s.getContentResolver();
    }

    private void K() {
        RelativeLayout relativeLayout = this.w;
        if (relativeLayout != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.bottomMargin = P();
            this.w.setLayoutParams(layoutParams);
        }
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) cVar.getLayoutParams();
            layoutParams2.topMargin = this.s.getResources().getDimensionPixelSize(R.dimen.head_line_margin_top);
            this.M.setLayoutParams(layoutParams2);
        }
        RelativeLayout relativeLayout2 = this.x;
        if (relativeLayout2 != null) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams();
            layoutParams3.bottomMargin = P();
            this.x.setLayoutParams(layoutParams3);
        }
    }

    private void L() {
        com.oppo.camera.d.a("CameraControlUI", "initHeadline");
        if (this.M == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.K());
            layoutParams.addRule(14);
            layoutParams.addRule(10);
            layoutParams.topMargin = this.s.getResources().getDimensionPixelSize(R.dimen.head_line_margin_top);
            this.M = new com.oppo.camera.ui.menu.b.c(this.s);
            this.M.setLayoutParams(layoutParams);
            this.M.a(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.K(), this);
            this.N.a(this.n);
            this.N.a();
            this.v.addView(this.M.getHeadlineBackground(), layoutParams);
            this.v.addView(this.M);
            if (!this.k) {
                this.M.setVisibility(4);
            }
            com.oppo.camera.d.a("CameraControlUI", "initHeadline X");
        }
    }

    private void M() {
        if (this.v != null && this.x == null) {
            this.s.getLayoutInflater().inflate(R.layout.review_control, this.v);
            this.x = (RelativeLayout) this.s.findViewById(R.id.review_control_layout);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.G());
            layoutParams.bottomMargin = P();
            layoutParams.addRule(12);
            this.x.setLayoutParams(layoutParams);
            this.y = (RotateImageView) this.s.findViewById(R.id.done_button);
            this.y.setOnClickListener(this);
            this.z = (RotateImageView) this.s.findViewById(R.id.btn_retake);
            this.z.setOnClickListener(this);
            this.A = (RotateImageView) this.s.findViewById(R.id.btn_play);
            this.A.setOnClickListener(this);
        }
    }

    private void N() {
        RelativeLayout relativeLayout = this.v;
        if (relativeLayout != null) {
            RelativeLayout relativeLayout2 = this.x;
            if (relativeLayout2 != null) {
                relativeLayout.removeView(relativeLayout2);
                this.x = null;
                this.y = null;
                this.z = null;
                this.A = null;
            }
        }
    }

    private void O() {
        com.oppo.camera.d.a("CameraControlUI", "onVideoPauseResumeClicked, mbVideoRecordingPaused: " + this.f2615b);
        if (this.F == null) {
            return;
        }
        if (this.t == null) {
            com.oppo.camera.d.a("CameraControlUI", "onVideoPauseResumeClicked, mCameraControlButtonListener is null.");
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - this.p < 1000) {
            com.oppo.camera.d.a("CameraControlUI", "onVideoPauseResumeClicked, onVideoPauseResumeClicked time less than 1000ms");
        } else if (this.f2615b) {
            if (this.t.o()) {
                if (2 == this.C.getButtonType() && "button_shape_dial_rotate".equals(this.C.getRingShape())) {
                    this.C.g();
                }
                this.F.setImageResource(R.drawable.btn_tk_video_record_pause);
                this.f2615b = false;
                this.p = uptimeMillis;
            }
        } else if (this.t.n()) {
            if (2 == this.C.getButtonType() && "button_shape_dial_rotate".equals(this.C.getRingShape())) {
                this.C.f();
            }
            this.F.setImageResource(R.drawable.btn_tk_video_record_resume);
            this.f2615b = true;
            this.p = uptimeMillis;
        }
    }

    private int P() {
        return 3 == this.n ? this.m ? this.s.getResources().getDimensionPixelSize(R.dimen.control_panel_third_video_margin_bottom_virtual_key) : this.s.getResources().getDimensionPixelSize(R.dimen.control_panel_third_video_margin_bottom) : this.m ? this.s.getResources().getDimensionPixelSize(R.dimen.control_panel_margin_bottom_virtual_key) : this.s.getResources().getDimensionPixelSize(R.dimen.control_panel_margin_bottom);
    }

    private void Q() {
        this.S = j.c().b().a(g.b(5.0d, 10.0d));
    }

    private void R() {
        this.T = j.c().b().a(g.b(5.0d, 10.0d));
    }

    private void o(boolean z2) {
        if (this.G != null && !this.j) {
            e eVar = this.H;
            boolean z3 = false;
            if (eVar != null) {
                Bitmap e = eVar.e();
                Uri b2 = this.H.b();
                this.G.setContentDescription(this.s.getResources().getString(R.string.camera_description_review_thumbnail));
                if (!(e == null || b2 == null || !b2.toString().startsWith("content://media/external/video"))) {
                    this.G.setContentDescription(this.s.getResources().getString(R.string.camera_description_current_video_thumbnail));
                }
                if (e == null || (this.h && !this.i)) {
                    this.G.a(BitmapFactory.decodeResource(this.s.getResources(), R.drawable.thumbnail_bg_normal), false, false);
                    return;
                }
                ThumbImageView thumbImageView = this.G;
                if (e == null) {
                    z3 = true;
                }
                thumbImageView.a(e, z2, z3);
                return;
            }
            com.oppo.camera.d.a("CameraControlUI", "updateThumbnailView, mLastThumbnail is null");
            this.G.a(BitmapFactory.decodeResource(this.s.getResources(), R.drawable.thumbnail_bg_normal), false, false);
        }
    }

    private void p(boolean z2) {
        this.H = g.a(this.s.getContentResolver());
        com.oppo.camera.d.a("CameraControlUI", "getLastThumbnail(), mLastThumbnail: " + this.H);
        e eVar = this.H;
        if (eVar == null || !com.oppo.camera.o.d.a(eVar.b(), this.s.getContentResolver())) {
            q(z2);
        } else {
            o(z2);
        }
    }

    private void q(boolean z2) {
        com.oppo.camera.d.a("CameraControlUI", "getLastThumbnailUncached()");
        AsyncTask<Void, Void, e> asyncTask = this.q;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.q = null;
        }
        this.q = new a(z2).execute(new Void[0]);
    }

    public RelativeLayout A() {
        return this.v;
    }

    public int B() {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            return mainShutterButton.getButtonType();
        }
        return 1;
    }

    public boolean C() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        return cVar != null && cVar.d();
    }

    public void D() {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.d();
        }
    }

    public void E() {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.e();
        }
    }

    public boolean F() {
        com.oppo.camera.ui.d dVar = this.u;
        if (dVar != null) {
            return dVar.r();
        }
        return false;
    }

    public boolean G() {
        com.oppo.camera.ui.d dVar = this.u;
        if (dVar != null) {
            return dVar.s();
        }
        return false;
    }

    public void H() {
        if (this.S == null) {
            Q();
        }
        this.S.a((h) new e() {
            public void a(f fVar) {
                double c = fVar.c();
                float a2 = (float) l.a(c, 0.0d, 1.0d, 1.0d, 0.8999999761581421d);
                float a3 = (float) l.a(c, 0.0d, 1.0d, 1.0d, 0.6000000238418579d);
                if (b.this.D != null) {
                    b.this.D.setScaleX(a2);
                    b.this.D.setScaleY(a2);
                    b.this.D.setAlpha(a3);
                }
            }
        }).a(0.0d).b(1.0d);
    }

    public void I() {
        if (this.T == null) {
            R();
        }
        this.T.a((h) new e() {
            public void a(f fVar) {
                double c = fVar.c();
                float a2 = (float) l.a(c, 0.0d, 1.0d, 0.8999999761581421d, 1.0d);
                float a3 = (float) l.a(c, 0.0d, 1.0d, 0.6000000238418579d, 1.0d);
                if (b.this.D != null) {
                    b.this.D.setScaleX(a2);
                    b.this.D.setScaleY(a2);
                    b.this.D.setAlpha(a3);
                }
            }
        }).a(0.0d).b(1.0d);
    }

    public boolean J() {
        return this.M.a();
    }

    public void a(byte b2, boolean z2) {
        com.oppo.camera.d.a("CameraControlUI", "updateControlPanelBgColor, bgType: " + b2 + ", needAnimation: " + z2);
        if (this.v != null) {
            int a2 = com.oppo.camera.ui.b.a(this.s, 3);
            if (b2 == 1) {
                a2 = com.oppo.camera.ui.b.a(this.s, 1);
            } else if (b2 == 2) {
                a2 = com.oppo.camera.ui.b.a(this.s, 3);
            } else if (b2 == 3) {
                a2 = this.s.getColor(R.color.background_color);
            }
            if (z2) {
                com.oppo.camera.o.d.a((View) this.v, a2, 200, (BaseInterpolator) null, (Animator.AnimatorListener) null);
            } else {
                this.v.setBackgroundColor(a2);
            }
        }
    }

    public void a(int i2) {
        this.P = i2;
    }

    public void a(int i2, long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(i2, j2, j3, timeInterpolator, animatorListener);
        }
    }

    public void a(int i2, String str) {
        List<Integer> b2 = com.oppo.camera.e.a.c(i2) ? this.N.b() : this.N.c();
        int a2 = d.a(str);
        boolean contains = b2.contains(Integer.valueOf(a2));
        int indexOf = b2.indexOf(Integer.valueOf(a2));
        this.O = b2;
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar == null) {
            return;
        }
        if (contains) {
            cVar.a(b2, indexOf);
        } else {
            cVar.a(b2);
        }
    }

    public void a(int i2, String str, boolean z2) {
        this.j = false;
        if (com.oppo.camera.o.d.S() != this.m) {
            this.m = com.oppo.camera.o.d.S();
            K();
        }
        List<Integer> b2 = com.oppo.camera.e.a.c(i2) ? this.N.b() : this.N.c();
        int a2 = d.a(str);
        int i3 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= b2.size()) {
                break;
            } else if (b2.get(i4).intValue() == a2) {
                i3 = i4;
                break;
            } else {
                i4++;
            }
        }
        this.O = b2;
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(b2, i3);
        }
        if (!z2 || this.l) {
            this.D.setVisibility(8);
        } else {
            this.D.setVisibility(0);
        }
        x();
    }

    public void a(int i2, boolean z2) {
        RelativeLayout relativeLayout = this.v;
        if (relativeLayout == null) {
            return;
        }
        if (i2 != 0) {
            com.oppo.camera.o.d.a((View) relativeLayout, com.oppo.camera.ui.b.a(this.s, 3), 300, (BaseInterpolator) null, (Animator.AnimatorListener) null);
        } else if (z2) {
            a((byte) 1, true);
        } else if (this.f2614a) {
            a((byte) 2, true);
        }
    }

    public void a(ShutterButton shutterButton) {
        if (shutterButton == null) {
            com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, ShutterButton is null.");
        } else if (J()) {
            com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, moreTab is showing....");
        } else {
            if (com.oppo.camera.ui.menu.f.a()) {
                com.oppo.camera.ui.menu.f.c();
                com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, camera menu is popup....");
            }
            if (this.t != null) {
                int id = shutterButton.getId();
                if (id == R.id.camera_from_other_app_close_btn) {
                    int i2 = this.n;
                    if (i2 == 2 || i2 == 3) {
                        com.oppo.camera.d.a("CameraControlUI", "onShutterButtonClick, camera_from_other_app_close_btn");
                        this.s.finish();
                    }
                } else if (id == R.id.shutter_button) {
                    if (this.n == 3) {
                        this.t.i();
                    } else {
                        this.t.f();
                    }
                }
            }
        }
    }

    public void a(ShutterButton shutterButton, boolean z2) {
        a aVar = this.t;
        if (aVar != null) {
            aVar.a(z2);
        }
    }

    public void a(a aVar) {
        this.t = aVar;
    }

    public void a(c cVar) {
        if (!this.C.b(cVar)) {
            this.C.a(cVar);
        }
    }

    public void a(c cVar, boolean z2) {
        com.oppo.camera.d.a("CameraControlUI", "onPause");
        this.k = false;
        this.j = true;
        this.g = false;
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.b();
        }
        ShutterButton shutterButton = this.B;
        if (shutterButton != null) {
            shutterButton.clearAnimation();
        }
        AsyncTask<Void, Void, e> asyncTask = this.q;
        if (asyncTask != null) {
            asyncTask.cancel(false);
            this.q = null;
        }
        e(true, false);
        RelativeLayout relativeLayout = this.v;
        if (relativeLayout != null) {
            relativeLayout.clearAnimation();
            this.v.setAlpha(1.0f);
        }
        com.oppo.camera.ui.menu.b.c cVar2 = this.M;
        if (cVar2 != null) {
            cVar2.onPause();
        }
        b(cVar, z2);
        o();
        MainShutterButton mainShutterButton2 = this.C;
        if (mainShutterButton2 != null && mainShutterButton2.getShutterButtonInfo() == null) {
            com.oppo.camera.d.e("CameraControlUI", "onPause, null == currentButtonInfo");
        }
    }

    public void a(d dVar) {
        this.L = dVar;
    }

    public void a(e eVar) {
        this.R = eVar;
        this.G.a(eVar.e(), true, false);
    }

    public void a(e eVar, boolean z2) {
        AsyncTask<Void, Void, e> asyncTask = this.q;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.q = null;
        }
        if (!this.j) {
            this.H = eVar;
            e eVar2 = this.R;
            if (eVar2 == null || this.H == null || eVar2.a() != this.H.a() || this.H.a() == 0) {
                o(z2);
            }
            com.oppo.camera.ui.d dVar = this.u;
            if (dVar != null && dVar.a()) {
                ThumbImageView thumbImageView = this.G;
                if (thumbImageView != null) {
                    thumbImageView.setVisibility(4);
                }
            }
            if (this.g) {
                com.oppo.camera.d.e("CameraControlUI", "CameraTest Thumbnail Updated");
            } else {
                com.oppo.camera.d.a("CameraControlUI", "updateThumbnailView, mbFirstCallHasExcuted: " + this.g + ", mLastThumbnail: " + this.H);
            }
            if (!this.g && this.H != null && this.I != null) {
                this.g = true;
                v.a aVar = new v.a();
                aVar.f2997b = this.H.b();
                aVar.h = this.H.c();
                aVar.l = this.H.d();
                aVar.w = false;
                aVar.x = true;
                this.I.a(aVar);
            }
        }
    }

    public void a(f fVar) {
        this.I = fVar;
    }

    public void a(String str) {
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            shutterButton.setContentDescription(str);
        }
    }

    public void a(boolean z2) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(4, z2);
        }
    }

    public void a(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null && z2) {
            if (z3) {
                cVar.a(0, true);
            } else {
                b(true);
            }
        }
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5) {
        com.oppo.camera.d.a("CameraControlUI", "onResumeMessage, mCameraEntryType: " + this.n + ", isShowBeauty3D: " + z2 + ", isShowModeTitle: " + z3 + ", isPanelMode: " + z4 + ", isShortcut: " + z5);
        this.k = true;
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            shutterButton.setAlpha(1.0f);
        }
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            if (!z2 && this.n != 3 && !z3 && !z4 && !z5) {
                cVar.setVisibility(0);
            }
            this.M.onResume();
        }
    }

    public boolean a() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            return cVar.e();
        }
        return false;
    }

    public void b() {
        if (this.u.g("pref_support_switch_camera")) {
            f(0);
        } else {
            f(4);
        }
        if (this.u.g("pref_support_thumbnail")) {
            g(0);
        } else {
            g(4);
        }
    }

    public void b(int i2) {
        this.n = i2;
        this.f2614a = i2 == 3;
    }

    public void b(int i2, boolean z2) {
        com.oppo.camera.d.a("CameraControlUI", "updateControlPanelBgColor, previewType: " + i2 + ", needAnimation: " + z2);
        if (i2 == 3 || i2 == 5) {
            a((byte) 2, z2);
        } else if (i2 == 0 || i2 == 2) {
            a((byte) 3, z2);
        } else {
            a((byte) 1, z2);
        }
    }

    public void b(ShutterButton shutterButton) {
        if (J()) {
            com.oppo.camera.d.a("CameraControlUI", "onShutterButtonLongClick, moreTab is showing....");
            return;
        }
        if (com.oppo.camera.ui.menu.f.a()) {
            com.oppo.camera.ui.menu.f.c();
        }
        if (this.t != null && shutterButton.getId() == R.id.shutter_button) {
            this.t.g();
        }
    }

    public void b(c cVar) {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setButtonTypeAndInvalidate(cVar);
        }
    }

    public void b(c cVar, boolean z2) {
        com.oppo.camera.d.a("CameraControlUI", "resetShutterButton");
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            if (this.n == 3) {
                this.C.setButtonTypeAndInvalidate(new c(1, "button_color_inside_red"));
            } else {
                if (cVar != null) {
                    mainShutterButton.setButtonTypeAndInvalidate(cVar);
                }
                if (!this.j) {
                    this.C.setVisibility(0);
                } else if (this.n == 2) {
                    this.C.setEnabled(true);
                    this.C.setClickable(true);
                    this.C.setAlpha(1.0f);
                }
            }
            if (this.C.isPressed()) {
                this.C.setPressed(false);
            }
            this.C.setLongClickable(z2);
        }
    }

    public void b(String str) {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setContentDescription(str);
        }
    }

    public void b(boolean z2) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(0, z2);
        }
    }

    public void b(boolean z2, boolean z3) {
        com.oppo.camera.d.a("CameraControlUI", "enableCameraShutterButton, enable: " + z2 + ", ashed: " + z3);
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setEnabled(z2);
            this.C.setClickable(z2);
            this.C.setLongClickable(z2 && this.u.I());
            if (z2) {
                this.C.setAlpha(1.0f);
            } else if (z3) {
                this.C.setAlpha(0.5f);
            } else if (!z3) {
                this.C.setAlpha(1.0f);
            }
        }
    }

    public void c() {
        this.m = com.oppo.camera.o.d.S();
        d();
        this.C = (MainShutterButton) this.s.findViewById(R.id.shutter_button);
        c cVar = new c(1, "button_color_inside_none");
        this.C.setButtonTypeAndInvalidate(cVar);
        this.C.setOnShutterButtonListener(this.U);
        this.C.setVisibility(0);
        this.C.setCameraUIListener(this.u);
        this.D = (ShutterButton) this.s.findViewById(R.id.switch_camera_button);
        this.D.setOnShutterButtonListener(this.V);
        this.D.setVisibility(0);
        this.D.setCameraUIListener(this.u);
        this.E = (ShutterButton) this.s.findViewById(R.id.recording_cap_button);
        this.E.setOnClickListener(this);
        this.E.setVisibility(4);
        this.E.setCameraUIListener(this.u);
        this.F = (ShutterButton) this.s.findViewById(R.id.video_pause_resume);
        this.F.setOnClickListener(this);
        this.F.setVisibility(4);
        this.F.setCameraUIListener(this.u);
        if (this.n == 1) {
            this.G = (ThumbImageView) this.s.findViewById(R.id.thumbnail);
            this.G.setOnClickListener(this);
            this.G.a(BitmapFactory.decodeResource(this.s.getResources(), R.drawable.thumbnail_bg_normal), false, false);
            this.G.setVisibility(0);
            this.o = this.G.getLayoutParams().width;
        } else {
            this.B = (ShutterButton) this.s.findViewById(R.id.camera_from_other_app_close_btn);
            this.B.setOnShutterButtonListener(this);
            this.B.setVisibility(0);
            this.B.setCameraUIListener(this.u);
            if (this.n == 3) {
                cVar.a("button_color_inside_red");
                this.C.setButtonTypeAndInvalidate(cVar);
                this.C.requestFocus();
            }
        }
        L();
    }

    public void c(int i2) {
        ShutterButton shutterButton = this.F;
        if (shutterButton != null) {
            shutterButton.a(i2, true);
        }
        ShutterButton shutterButton2 = this.D;
        if (shutterButton2 != null) {
            shutterButton2.a(i2, true);
        }
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.a(i2, true);
        }
        RotateImageView rotateImageView = this.y;
        if (rotateImageView != null) {
            rotateImageView.a(i2, true);
        }
        RotateImageView rotateImageView2 = this.z;
        if (rotateImageView2 != null) {
            rotateImageView2.a(i2, true);
        }
        RotateImageView rotateImageView3 = this.A;
        if (rotateImageView3 != null) {
            rotateImageView3.a(i2, true);
        }
        ShutterButton shutterButton3 = this.E;
        if (shutterButton3 != null) {
            shutterButton3.a(i2, true);
        }
        if (this.B != null) {
            int i3 = this.n;
            if (3 == i3 || 2 == i3) {
                this.B.a(i2, true);
            }
        }
    }

    public void c(ShutterButton shutterButton) {
        if (this.t != null && shutterButton.getId() == R.id.shutter_button) {
            this.t.h();
        }
    }

    public void c(boolean z2) {
        if (z2) {
            a(true);
            g(8);
            e(8);
            f(8);
            return;
        }
        a(false);
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.setVisibility(8);
        }
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setVisibility(8);
        }
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            shutterButton.setVisibility(8);
        }
    }

    public void c(boolean z2, boolean z3) {
        com.oppo.camera.d.a("CameraControlUI", "enableSwitchCameraButton, enable: " + z2);
        if (!z2 || this.u.g("pref_support_switch_camera")) {
            ShutterButton shutterButton = this.D;
            if (shutterButton != null) {
                shutterButton.setEnabled(z2);
                this.D.setClickable(z2);
                if (z2) {
                    this.D.setAlpha(1.0f);
                } else if (z3) {
                    this.D.setAlpha(0.5f);
                } else if (!z3) {
                    this.D.setAlpha(1.0f);
                }
            }
        }
    }

    public void d() {
        this.v = (RelativeLayout) this.s.findViewById(R.id.control_panel_layout);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.F());
        layoutParams.addRule(12);
        this.v.setLayoutParams(layoutParams);
        this.w = (RelativeLayout) this.s.findViewById(R.id.control_panel_button_layout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.G());
        layoutParams2.addRule(12);
        layoutParams2.bottomMargin = P();
        this.w.setLayoutParams(layoutParams2);
    }

    public void d(int i2) {
        com.oppo.camera.d.a("CameraControlUI", "setCloseFromOtherAppButtonVisibility(), visibility: " + i2);
        if (i2 == 0) {
            com.oppo.camera.o.d.a((View) this.B);
        } else {
            com.oppo.camera.o.d.b((View) this.B);
        }
    }

    public void d(boolean z2) {
        if (z2) {
            a(true);
            g(8);
            f(8);
            return;
        }
        a(false);
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.setVisibility(8);
        }
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            shutterButton.setVisibility(8);
        }
    }

    public void d(boolean z2, boolean z3) {
        com.oppo.camera.d.b("CameraControlUI", "enableThumbView(), enable: " + z2 + ", ashed: " + z3);
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.setEnabled(z2);
            this.G.setClickable(z2);
            if (z2) {
                this.G.setAlpha(1.0f);
            } else if (z3) {
                this.G.setAlpha(0.5f);
            } else if (!z3) {
                this.G.setAlpha(1.0f);
            }
        }
    }

    public void e() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(4, true);
        }
    }

    public void e(int i2) {
        com.oppo.camera.d.a("CameraControlUI", "setCameraShutterButtonVisibilityWithAnimation, visibility: " + i2);
        com.oppo.camera.o.d.a((View) this.C, i2, (Animation.AnimationListener) null, 300);
    }

    public void e(boolean z2) {
        if (z2) {
            g(0);
            e(0);
            if (this.u.g("pref_support_switch_camera")) {
                f(0);
                return;
            }
            return;
        }
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.setVisibility(0);
        }
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setVisibility(0);
        }
        if (this.u.g("pref_support_switch_camera")) {
            ShutterButton shutterButton = this.D;
            if (shutterButton != null) {
                shutterButton.setVisibility(0);
            }
        }
    }

    public void e(boolean z2, boolean z3) {
        b(z2, z3);
        c(z2, z3);
        d(z2, z3);
    }

    public void f() {
        b(true, true);
        c(true, true);
        d(true, true);
    }

    public void f(int i2) {
        com.oppo.camera.d.a("CameraControlUI", "setSwitchCameraButtonVisibilityWithAnimation, visibility: " + i2);
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            com.oppo.camera.o.d.a((View) shutterButton, i2, (Animation.AnimationListener) null, 300);
        }
    }

    public void f(boolean z2) {
        this.h = z2;
    }

    public void f(boolean z2, boolean z3) {
        com.oppo.camera.d.b("CameraControlUI", "stopVideoRecording isEnableThumbView: " + z3);
        if (z3) {
            d(true, true);
        }
        com.oppo.camera.o.d.b((View) this.F);
        com.oppo.camera.o.d.b((View) this.E);
        if (this.n == 1) {
            if (!z2) {
                if (this.u.g("pref_support_switch_camera")) {
                    f(0);
                }
                com.oppo.camera.o.d.a((View) this.G);
            }
            a(0, true);
        }
    }

    public void g() {
        if (this.G != null && this.h) {
            this.G.a(BitmapFactory.decodeResource(this.s.getResources(), R.drawable.thumbnail_bg_normal), false, false);
        }
    }

    public void g(int i2) {
        com.oppo.camera.d.a("CameraControlUI", "setThumbViewVisibilityWithAnimation, visibility: " + i2);
        com.oppo.camera.o.d.a((View) this.G, i2, (Animation.AnimationListener) null, 300);
    }

    public void g(boolean z2) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.a(z2);
        }
    }

    public void h() {
        com.oppo.camera.d.a("CameraControlUI", "onDestroy");
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.a();
        }
        Bitmap bitmap = this.r;
        if (bitmap != null) {
            bitmap.recycle();
            this.r = null;
        }
        ThumbImageView thumbImageView = this.G;
        if (thumbImageView != null) {
            thumbImageView.a((Bitmap) null, false, false);
            this.G.a();
            this.G = null;
        }
        e eVar = this.H;
        if (eVar != null) {
            eVar.f();
            this.H = null;
        }
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.g();
        }
        N();
        this.s = null;
        this.C = null;
        this.B = null;
        this.t = null;
        this.D = null;
        this.I = null;
        this.u = null;
        this.f2614a = false;
        this.J = null;
        this.K = null;
        this.T = null;
        this.S = null;
    }

    public void h(int i2) {
        this.C.setShutterButtonTime(i2);
    }

    public void h(boolean z2) {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            mainShutterButton.setLongClickable(z2);
        }
    }

    public void i() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void i(int i2) {
        String b2 = d.b(this.O.get(i2).intValue());
        d dVar = this.L;
        if (dVar != null) {
            dVar.a(b2);
        }
    }

    public void i(boolean z2) {
        ShutterButton shutterButton = this.B;
        if (shutterButton != null) {
            shutterButton.setEnabled(z2);
        }
    }

    public void j() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.c();
        }
    }

    public void j(boolean z2) {
        com.oppo.camera.d.e("CameraControlUI", "startVideoRecording()");
        if (this.n == 1) {
            d(false, true);
            if (this.u.g("pref_support_recording_capture")) {
                com.oppo.camera.o.d.a((View) this.E);
            }
            com.oppo.camera.o.d.b((View) this.G);
            a(4, true);
        }
        if (z2) {
            ShutterButton shutterButton = this.F;
            if (shutterButton != null) {
                shutterButton.setImageResource(R.drawable.btn_tk_video_record_pause);
                this.f2615b = false;
                this.p = SystemClock.uptimeMillis();
                com.oppo.camera.o.d.a((View) this.F);
            }
        }
        f(8);
    }

    public boolean j(int i2) {
        String b2 = d.b(this.O.get(i2).intValue());
        com.oppo.camera.ui.d dVar = this.u;
        if (dVar != null) {
            return dVar.h(b2);
        }
        return false;
    }

    public void k(boolean z2) {
        p(z2);
    }

    public boolean k() {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            return cVar.f();
        }
        return false;
    }

    public ShutterButton l() {
        return this.C;
    }

    public void l(boolean z2) {
        this.i = z2;
    }

    public e m() {
        return this.H;
    }

    public void m(boolean z2) {
        if (this.v != null) {
            int color2 = this.s.getColor(R.color.beauty3d_guide_background);
            if (z2) {
                com.oppo.camera.o.d.a((View) this.v, color2, 200, (BaseInterpolator) null, (Animator.AnimatorListener) null);
            } else {
                this.v.setBackgroundColor(color2);
            }
        }
    }

    public int n() {
        return this.o;
    }

    public void n(boolean z2) {
        com.oppo.camera.ui.menu.b.c cVar = this.M;
        if (cVar != null) {
            cVar.setMultiFinger(z2);
        }
    }

    public void o() {
        ShutterButton shutterButton = this.D;
        if (shutterButton != null) {
            shutterButton.setScaleX(1.0f);
            this.D.setScaleY(1.0f);
            this.D.setAlpha(1.0f);
        }
    }

    public void onClick(View view) {
        if (this.j) {
            com.oppo.camera.d.a("CameraControlUI", "onClick, Activity is paused, so return!");
            return;
        }
        switch (view.getId()) {
            case R.id.btn_play:
                com.oppo.camera.d.a("CameraControlUI", "onClick, btn_play");
                a aVar = this.t;
                if (aVar != null) {
                    aVar.e();
                    return;
                }
                return;
            case R.id.btn_retake:
                com.oppo.camera.d.a("CameraControlUI", "onClick, btn_retake");
                if (this.n == 3) {
                    this.C.setButtonTypeAndInvalidate(new c(1, "button_color_inside_red"));
                    a aVar2 = this.t;
                    if (aVar2 != null) {
                        aVar2.d();
                        return;
                    }
                    return;
                }
                a aVar3 = this.t;
                if (aVar3 != null) {
                    aVar3.b();
                    return;
                }
                return;
            case R.id.done_button:
                com.oppo.camera.d.a("CameraControlUI", "onClick, done_button");
                a aVar4 = this.t;
                if (aVar4 != null) {
                    int i2 = this.n;
                    if (i2 == 2) {
                        aVar4.a();
                        return;
                    } else if (i2 == 3) {
                        aVar4.c();
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            case R.id.recording_cap_button:
                this.t.j();
                return;
            case R.id.thumbnail:
                com.oppo.camera.d.a("CameraControlUI", "onClick, thumbnail");
                f fVar = this.I;
                if (fVar != null) {
                    fVar.a(this.H, view);
                    return;
                }
                return;
            case R.id.video_pause_resume:
                com.oppo.camera.d.a("CameraControlUI", "onClick, video_pause_resume");
                O();
                return;
            default:
                com.oppo.camera.d.a("CameraControlUI", "onClick, default");
                return;
        }
    }

    public boolean p() {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null) {
            return mainShutterButton.isEnabled();
        }
        return false;
    }

    public void q() {
        M();
        com.oppo.camera.o.d.b((View) this.C);
        f(8);
        com.oppo.camera.o.d.a((View) this.z);
        com.oppo.camera.o.d.a((View) this.y);
        com.oppo.camera.o.d.b((View) this.B);
        b(false, true);
        TextView textView = this.K;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    public void r() {
        com.oppo.camera.o.d.b((View) this.z);
        com.oppo.camera.o.d.b((View) this.y);
        com.oppo.camera.o.d.a((View) this.C);
        if (this.u.g("pref_support_switch_camera")) {
            f(0);
        }
        com.oppo.camera.o.d.a((View) this.B);
        b(true, true);
        c(true, true);
        TextView textView = this.K;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    public void s() {
        M();
        com.oppo.camera.o.d.b((View) this.C);
        com.oppo.camera.o.d.a((View) this.z);
        com.oppo.camera.o.d.a((View) this.y);
        com.oppo.camera.o.d.a((View) this.A);
        com.oppo.camera.o.d.b((View) this.B);
        b(false, true);
        c(false, true);
        TextView textView = this.J;
        if (textView != null) {
            textView.setVisibility(8);
        }
        this.l = true;
    }

    public void t() {
        com.oppo.camera.o.d.b((View) this.y);
        com.oppo.camera.o.d.b((View) this.z);
        com.oppo.camera.o.d.b((View) this.A);
        com.oppo.camera.o.d.a((View) this.C);
        com.oppo.camera.o.d.a((View) this.B);
        b(true, true);
        c(true, true);
        f(0);
        this.l = false;
    }

    public boolean u() {
        return true;
    }

    public void v() {
        MainShutterButton mainShutterButton = this.C;
        if (mainShutterButton != null && mainShutterButton.isClickable()) {
            this.C.performClick();
        }
    }

    public void w() {
        this.C.f();
    }

    public void x() {
        com.oppo.camera.d.a("CameraControlUI", "initThumbnail()");
        if (this.n != 1) {
            return;
        }
        if (this.I.a()) {
            p(false);
        } else {
            a((e) null, false);
        }
    }

    public int y() {
        RelativeLayout relativeLayout = this.v;
        return relativeLayout != null ? relativeLayout.getTop() : com.oppo.camera.o.d.M();
    }

    public int z() {
        return com.oppo.camera.o.d.F();
    }
}
