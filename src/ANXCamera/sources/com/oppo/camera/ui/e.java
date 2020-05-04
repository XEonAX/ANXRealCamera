package com.oppo.camera.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.camera2.params.Face;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.oppo.camera.Camera;
import com.oppo.camera.R;
import com.oppo.camera.c;
import com.oppo.camera.config.CameraFunction;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.t;
import com.oppo.camera.i;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.ui.h;
import com.oppo.camera.ui.control.ShutterButton;
import com.oppo.camera.ui.control.b;
import com.oppo.camera.ui.menu.OppoTextView;
import com.oppo.camera.ui.menu.a.g;
import com.oppo.camera.ui.menu.levelcontrol.d;
import com.oppo.camera.ui.menu.setting.l;
import com.oppo.camera.ui.modepanel.d;
import com.oppo.camera.ui.modepanel.f;
import com.oppo.camera.ui.preview.a;
import com.oppo.camera.ui.preview.d;
import com.oppo.camera.ui.preview.e;
import com.oppo.camera.ui.preview.i;
import com.oppo.camera.ui.preview.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: CameraUIManager */
public class e implements c, c, d.b {
    /* access modifiers changed from: private */
    public ViewGroup A = null;
    /* access modifiers changed from: private */
    public CameraScreenHintView B = null;
    private CameraScreenHintView C = null;
    private CameraScreenHintView D = null;
    /* access modifiers changed from: private */
    public CameraScreenHintView E = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.menu.levelcontrol.d F = null;
    private CameraScreenHintView G = null;
    private View H = null;
    /* access modifiers changed from: private */
    public CameraScreenHintView I = null;
    private PopupWindow J = null;
    private PopupWindow K = null;
    private PopupWindow L = null;
    private PopupWindow M = null;
    /* access modifiers changed from: private */
    public RelativeLayout N = null;
    /* access modifiers changed from: private */
    public RelativeLayout O = null;
    private AnimatorSet P = null;
    private AnimatorSet Q = null;
    private byte R = 0;
    private Map<String, ConcurrentHashMap<Integer, View>> S = new HashMap();
    private Map<String, l> T = new HashMap();
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.preview.a U = null;
    /* access modifiers changed from: private */
    public i V = null;
    private com.oppo.camera.ui.modepanel.c W = null;
    private l X = null;
    /* access modifiers changed from: private */
    public RotateImageView Y = null;
    /* access modifiers changed from: private */
    public g Z = null;
    private ObjectAnimator aa = null;
    /* access modifiers changed from: private */
    public boolean ab = false;
    /* access modifiers changed from: private */
    public f ac = null;
    private com.oppo.camera.ui.preview.a.g ad = new com.oppo.camera.ui.preview.a.g() {
        public void a(com.oppo.camera.ui.menu.levelcontrol.e eVar) {
            com.oppo.camera.d.a("CameraUIManager", "imageReady");
            if (e.this.F != null && !e.this.j) {
                e.this.F.a(eVar);
            }
        }

        public void a(ArrayList<h.a> arrayList, int i, StickerItem stickerItem, boolean z) {
        }
    };
    /* access modifiers changed from: private */
    public a.b ae = new a.b() {
        public void a(int i) {
            if (e.this.s == null || e.this.s.g()) {
                if (i == 12) {
                    boolean unused = e.this.k = true;
                    int unused2 = e.this.y = 0;
                    if (e.this.ai != null) {
                        e.this.ai.removeMessages(1);
                    }
                    e.this.bd();
                }
                if (e.this.s != null) {
                    e.this.s.c(i);
                    return;
                }
                return;
            }
            com.oppo.camera.d.e("CameraUIManager", "onAISceneClosed, canRespondTouch is false!");
        }

        public void b(int i) {
            if (e.this.B != null) {
                e.this.B.b(e.this.w(i));
            }
            e.this.aN();
        }
    };
    /* access modifiers changed from: private */
    public a af = new a() {
        public void a(int i) {
            if (e.this.U != null) {
                e.this.U.b(e.this.w(i));
            }
        }

        public void b(int i) {
            if (e.this.U != null) {
                e.this.U.a(i == 0, e.this.h("pref_ai_scene_key"));
            }
        }
    };
    private View.OnLayoutChangeListener ag = new View.OnLayoutChangeListener() {
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (e.this.ae != null) {
                if (e.this.U.d()) {
                    e.this.ae.b(i3 - i);
                } else {
                    e.this.ae.b(0);
                }
            }
            e.this.aN();
        }
    };
    private View.OnLayoutChangeListener ah = new View.OnLayoutChangeListener() {
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (e.this.af != null) {
                e.this.af.a((e.this.B.getHintIconView() == null || e.this.B.getHintIconView().getVisibility() != 0) ? 0 : (e.this.B.getCurrentOrientation() == 90 || e.this.B.getCurrentOrientation() == 270) ? view.getMeasuredHeight() : view.getMeasuredWidth());
            }
            e.this.aN();
        }
    };
    /* access modifiers changed from: private */
    public Handler ai = new Handler() {
        public void handleMessage(Message message) {
            com.oppo.camera.d.a("CameraUIManager", "handleMessage, msg: " + message.what);
            if (message.what == 1 && !e.this.j && e.this.U != null && e.this.s != null && e.this.s.g("pref_support_night_process")) {
                int unused = e.this.y = 2;
                e.this.bd();
            }
        }
    };
    private View.OnClickListener aj = new View.OnClickListener() {
        public void onClick(View view) {
            com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick");
            if (e.this.aO()) {
                com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, isHeadlineScrolling: true");
            } else if (e.this.aT()) {
                com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, isMoreModePanelAnimRunning: true");
            } else if (e.this.x()) {
                com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, isMoreModeShown: true");
            } else if (e.this.s != null && e.this.s.r()) {
                com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, isTimerSnapShotRunning: true");
            } else if (e.this.s != null && e.this.s.A()) {
                com.oppo.camera.d.a("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, isZoomMenuExpand: true");
            } else if (e.this.Z == null || e.this.Z.e() || e.this.F.d()) {
                com.oppo.camera.d.d("CameraUIManager", "mFaceBeautyEnterButtonListener, onClick, return");
            } else if (e.this.Z.f()) {
                e.this.b(true, true, false);
                e.this.Q(false);
            } else {
                if (e.this.s.D()) {
                    e.this.n(true);
                }
                e.this.Q(true);
            }
        }
    };
    private g.a ak = new g.a() {
        public int a(int i) {
            return e.this.s.e(i);
        }

        public void a() {
            e.this.s.v();
        }

        public void a(int i, int i2, boolean z) {
            e.this.s.a(i, i2, z);
        }

        public int b() {
            return e.this.s.x();
        }

        public void b(int i) {
            e.this.s.f(i);
            e.this.ba();
        }

        public boolean c() {
            return e.this.s.g();
        }

        public int d() {
            return e.this.s.y();
        }

        public int[] e() {
            return e.this.s.B();
        }
    };
    private d.a al = new d.a() {
        public void a() {
            if (e.this.s != null) {
                e.this.s.c();
            }
        }

        public void a(int i) {
            if (e.this.s != null) {
                e.this.s.a(i);
            }
        }

        public void a(com.oppo.camera.ui.menu.levelcontrol.f fVar) {
            if (e.this.m != null) {
                e.this.m.a(fVar);
            }
        }

        public void a(String str) {
            if (e.this.s != null) {
                e.this.s.c(str);
            }
        }

        public void b() {
            if (e.this.s != null) {
                e.this.s.f();
            }
        }

        public void b(String str) {
            if (e.this.s != null) {
                e.this.s.d(str);
            }
        }

        public boolean b(int i) {
            if (e.this.s != null) {
                return e.this.s.b(i);
            }
            return false;
        }

        public boolean c() {
            if (e.this.s != null) {
                return e.this.s.g();
            }
            return false;
        }

        public boolean d() {
            return !e.this.n();
        }

        public int e() {
            if (e.this.s != null) {
                return e.this.s.i();
            }
            return 0;
        }

        public int f() {
            if (e.this.A != null) {
                return e.this.A.indexOfChild(e.this.l.A()) + 1;
            }
            return -1;
        }
    };
    private l.b am = new l.b() {
        public void a(String str) {
            if (e.this.aG()) {
                e.this.K(true);
            } else if (e.this.l != null) {
                e.this.l.e();
            }
            if (e.this.s != null) {
                e.this.s.e();
            }
            e.this.a(true, true, false, false);
        }

        public void a(String str, boolean z) {
            e.this.d(str, true);
            if (e.this.ab) {
                if (!e.this.s.r() && z) {
                    e.this.J(true);
                }
            } else if (e.this.l != null && z) {
                e.this.l.a(true, true);
            }
            e.this.i(true);
            e.this.m(true);
        }
    };
    /* access modifiers changed from: private */
    public Activity g = null;
    private boolean h = false;
    private boolean i = false;
    /* access modifiers changed from: private */
    public boolean j = false;
    /* access modifiers changed from: private */
    public boolean k = false;
    /* access modifiers changed from: private */
    public b l = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.ui.preview.d m = null;
    private com.oppo.camera.i n = null;
    private m o = null;
    private com.oppo.camera.ui.preview.f p = null;
    private com.oppo.camera.ui.menu.setting.i q = null;
    private com.oppo.camera.ui.menu.setting.i r = null;
    /* access modifiers changed from: private */
    public d s = null;
    private int t = 1;
    private int u = 0;
    /* access modifiers changed from: private */
    public int v = 0;
    private int w = 0;
    /* access modifiers changed from: private */
    public int x = 0;
    /* access modifiers changed from: private */
    public int y = 0;
    private int z = 0;

    /* compiled from: CameraUIManager */
    private class a implements d.a {
        private a() {
        }

        public void a() {
            e.this.s.u();
        }
    }

    public e(Activity activity, com.oppo.camera.i iVar, d dVar) {
        this.g = activity;
        this.n = iVar;
        this.s = dVar;
        this.l = new b(this.g, this.n, this.s);
        this.m = new com.oppo.camera.ui.preview.d(this.g, this.n, this);
        this.q = new com.oppo.camera.ui.menu.setting.i(this.g, this.n, dVar, false);
        this.r = new com.oppo.camera.ui.menu.setting.i(this.g, this.n, dVar, true);
    }

    /* access modifiers changed from: private */
    public void Q(boolean z2) {
        if (this.s != null) {
            MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.g);
            menuClickMsgData.buildEvent(false);
            menuClickMsgData.mFuncKeyId = 2;
            menuClickMsgData.mCameraId = String.valueOf(this.s.p());
            menuClickMsgData.mOrientation = this.u;
            menuClickMsgData.mCaptureType = ae() ^ true ? 1 : 0;
            menuClickMsgData.mCaptureMode = this.s.C();
            menuClickMsgData.mCameraEnterType = String.valueOf(this.t);
            if (z2) {
                menuClickMsgData.mFuncKeyResult = 1;
            } else {
                menuClickMsgData.mFuncKeyResult = 2;
            }
            menuClickMsgData.report();
        }
    }

    /* access modifiers changed from: private */
    public void R(boolean z2) {
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.setMoreMode(z2);
        }
        CameraScreenHintView cameraScreenHintView2 = this.C;
        if (cameraScreenHintView2 != null) {
            cameraScreenHintView2.setMoreMode(z2);
        }
        CameraScreenHintView cameraScreenHintView3 = this.D;
        if (cameraScreenHintView3 != null) {
            cameraScreenHintView3.setMoreMode(z2);
        }
        CameraScreenHintView cameraScreenHintView4 = this.E;
        if (cameraScreenHintView4 != null) {
            cameraScreenHintView4.setMoreMode(z2);
        }
        CameraScreenHintView cameraScreenHintView5 = this.I;
        if (cameraScreenHintView5 != null) {
            cameraScreenHintView5.setMoreMode(z2);
        }
    }

    private void a(boolean z2, int i2, boolean z3, boolean z4) {
        if (!z3) {
            if (z4) {
                d dVar = this.s;
                if (dVar != null) {
                    dVar.f();
                }
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                d dVar2 = this.s;
                if (dVar2 != null) {
                    dVar2.f();
                }
            }
        } else if (this.ab) {
            a(0, true);
            d dVar3 = this.s;
            if (dVar3 != null) {
                dVar3.f();
            }
        } else {
            b bVar = this.l;
            if (bVar == null) {
                return;
            }
            if (z2) {
                bVar.a(true, true);
            } else {
                bVar.b(z2);
            }
        }
    }

    private void aX() {
        if (this.A != null && this.D == null) {
            this.D = (CameraScreenHintView) this.g.getLayoutInflater().inflate(R.layout.camera_screen_hint, (ViewGroup) null);
            View view = this.H;
            if (view != null) {
                ViewGroup viewGroup = this.A;
                viewGroup.addView(this.D, viewGroup.indexOfChild(view));
            } else {
                this.A.addView(this.D);
            }
            this.D.setOrientation(this.u);
            if (!this.s.g("pref_support_rotate_hint_view")) {
                this.D.setSupportRotateScreen(2);
            }
        }
    }

    private void aY() {
        ViewGroup viewGroup = this.A;
        if (viewGroup != null) {
            CameraScreenHintView cameraScreenHintView = this.B;
            if (cameraScreenHintView != null) {
                viewGroup.removeView(cameraScreenHintView);
                this.B = null;
                this.U.b(0);
            }
            CameraScreenHintView cameraScreenHintView2 = this.D;
            if (cameraScreenHintView2 != null) {
                this.A.removeView(cameraScreenHintView2);
                this.D = null;
            }
            CameraScreenHintView cameraScreenHintView3 = this.E;
            if (cameraScreenHintView3 != null) {
                this.A.removeView(cameraScreenHintView3);
                this.E = null;
            }
            CameraScreenHintView cameraScreenHintView4 = this.I;
            if (cameraScreenHintView4 != null) {
                this.A.removeView(cameraScreenHintView4);
                this.I = null;
            }
        }
    }

    private void aZ() {
        if (this.A != null && this.G == null) {
            this.G = (CameraScreenHintView) this.g.getLayoutInflater().inflate(R.layout.camera_screen_hint, (ViewGroup) null);
            View view = this.H;
            if (view != null) {
                ViewGroup viewGroup = this.A;
                viewGroup.addView(this.G, viewGroup.indexOfChild(view));
            } else {
                this.A.addView(this.G);
            }
            this.G.setOrientation(this.u);
            if (!this.s.g("pref_support_rotate_hint_view")) {
                this.G.setSupportRotateScreen(2);
            }
        }
    }

    private void b(boolean z2, int i2) {
        if (i2 != 1) {
            if (i2 == 2) {
                d dVar = this.s;
                if (dVar != null) {
                    dVar.e();
                }
            }
        } else if (this.ab) {
            K(z2);
            d dVar2 = this.s;
            if (dVar2 != null) {
                dVar2.e();
            }
        } else {
            b bVar = this.l;
            if (bVar == null) {
                return;
            }
            if (z2) {
                bVar.e();
            } else {
                bVar.a(false);
            }
        }
    }

    /* access modifiers changed from: private */
    public void ba() {
        com.oppo.camera.d.a("CameraUIManager", "updateFaceBeautyEnterButton");
        d dVar = this.s;
        if (dVar != null && this.Y != null) {
            if (dVar.x() == 0) {
                this.Y.setImageResource(R.drawable.face_beauty_menu_control_button);
            } else {
                this.Y.setImageResource(R.drawable.face_beauty_menu_control_button_highlight);
            }
        }
    }

    private void bb() {
        if (this.W == null) {
            this.W = new com.oppo.camera.ui.modepanel.c(this.g, this.l.A());
            this.W.a((d.a) new a());
        }
    }

    private void bc() {
        if (this.O == null) {
            View findViewById = this.g.findViewById(R.id.control_panel_layout);
            this.O = new RelativeLayout(this.g);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.C() + com.oppo.camera.o.d.F());
            layoutParams.addRule(12);
            this.O.setBackgroundColor(this.g.getColor(R.color.background_color));
            this.O.setVisibility(8);
            this.A.addView(this.O, this.A.indexOfChild(findViewById) - 1, layoutParams);
        }
        if (this.N == null) {
            View findViewById2 = this.g.findViewById(R.id.oppo_setting_bar);
            this.N = new RelativeLayout(this.g);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.C() + com.oppo.camera.o.d.E());
            layoutParams2.addRule(10);
            this.N.setBackgroundColor(this.g.getColor(R.color.background_color));
            this.N.setVisibility(8);
            this.A.addView(this.N, this.A.indexOfChild(findViewById2) - 1, layoutParams2);
        }
    }

    /* access modifiers changed from: private */
    public void bd() {
        if (this.U != null) {
            v(this.x);
        }
    }

    private boolean be() {
        return !this.n.getString("pref_camera_tap_shutter_key", this.g.getString(R.string.camera_tap_shutter_default_value)).equals(this.n.getString("last_camera_tap_shutter_key", this.g.getString(R.string.camera_tap_shutter_default_value)));
    }

    private void bf() {
        boolean z2;
        if (this.C == null) {
            com.oppo.camera.d.a("CameraUIManager", "addUpModeHintView");
            this.C = (CameraScreenHintView) this.g.getLayoutInflater().inflate(R.layout.camera_screen_hint, (ViewGroup) null);
            this.C.setChangeHintColor(true);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.C.getParent() == null) {
            CameraScreenHintView cameraScreenHintView = this.B;
            if (cameraScreenHintView != null) {
                ViewGroup viewGroup = this.A;
                viewGroup.addView(this.C, viewGroup.indexOfChild(cameraScreenHintView));
            } else {
                this.A.addView(this.C);
            }
            z2 = true;
        }
        if (z2) {
            this.C.getHintTextView().setVisibility(4);
            this.C.a(this.g.getResources().getDimensionPixelSize(R.dimen.video_high_fps_hint_margin_top) - this.C.getViewGap(), 0, 0, false);
            this.C.setOrientation(this.u);
        }
    }

    /* access modifiers changed from: private */
    public void bg() {
        com.oppo.camera.d.a("CameraUIManager", "exitFromMoreMode");
        if (!x()) {
            com.oppo.camera.d.b("CameraUIManager", "exitFromMoreMode, not in MoreMode");
        } else if (this.l.C()) {
            com.oppo.camera.d.b("CameraUIManager", "exitFromMoreMode, Multiple finger operation in Headline");
            this.l.n(false);
        } else {
            this.ac.b(true);
            O(true);
            P(true);
            d dVar = this.s;
            if (dVar != null) {
                dVar.z();
            }
        }
    }

    private void bh() {
        if (this.ac == null) {
            this.ac = new f(this.g, this.A, this.u);
            this.ac.a((f.b) new f.b() {
                public void a() {
                    e.this.J();
                }

                public void a(int i) {
                    com.oppo.camera.d.a("CameraUIManager", "onModeItemClick, itemId: " + i);
                    if (e.this.aO()) {
                        com.oppo.camera.d.a("CameraUIManager", "onModeItemClick, headline is scrolling, can't response");
                        return;
                    }
                    if (e.this.ac != null) {
                        if (!e.this.l.a() && e.this.s.t()) {
                            e.this.ac.b(false);
                        } else {
                            return;
                        }
                    }
                    if (e.this.s != null) {
                        e.this.s.d(i);
                    }
                    e.this.R(false);
                    e.this.bj();
                }

                public void b() {
                    e.this.bg();
                }
            });
        }
    }

    private void bi() {
        com.oppo.camera.ui.preview.a aVar = this.U;
        if (aVar != null) {
            aVar.a();
            aK();
        }
    }

    /* access modifiers changed from: private */
    public void bj() {
        if (this.q != null) {
            com.oppo.camera.d.a("CameraUIManager", "showSettingMenu");
            this.q.k();
        }
    }

    private void e(String str, boolean z2) {
        com.oppo.camera.i iVar = this.n;
        if (iVar == null) {
            com.oppo.camera.d.e("CameraUIManager", "updateBubbleValue, mPreference null");
            return;
        }
        i.a a2 = iVar.edit();
        a2.putBoolean(str, z2);
        a2.commit();
    }

    private PopupWindow f(int i2, int i3) {
        View inflate = LayoutInflater.from(this.g).inflate(R.layout.camera_bubble, (ViewGroup) null);
        inflate.setBackgroundResource(i2);
        ((OppoTextView) inflate.findViewById(R.id.camera_bubble_text)).setText(i3);
        PopupWindow popupWindow = new PopupWindow(this.g);
        popupWindow.setWidth(-2);
        popupWindow.setHeight(-2);
        popupWindow.setContentView(inflate);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setFocusable(false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setAnimationStyle(R.style.PopupWindowStyle);
        return popupWindow;
    }

    private void f(int i2, boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "setFaceBeautyEnterButtonVisibility, visibility: " + i2 + ", needAnim: " + z2);
        if (i2 == 0) {
            this.Y.setAlpha(1.0f);
        }
        long j2 = 160;
        long j3 = i2 == 0 ? 160 : 0;
        if (i2 != 0) {
            j2 = 80;
        }
        long j4 = j2;
        if (z2) {
            Activity activity = this.g;
            if (activity != null) {
                com.oppo.camera.o.d.a((View) this.Y, i2, (Animation.AnimationListener) null, j4, j3, AnimationUtils.loadInterpolator(activity, R.anim.alpha_path_interpolator));
                return;
            }
        }
        this.Y.setVisibility(i2);
    }

    private void u(int i2) {
        if (com.oppo.camera.o.d.c(i2)) {
            D(true);
            b bVar = this.l;
            if (bVar != null) {
                bVar.m(true);
            }
        }
    }

    /* access modifiers changed from: private */
    public void v(int i2) {
        this.U.a(i2, this.u, this.y);
        int c = this.U.c();
        if (i2 == 0) {
            aK();
            return;
        }
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.b(w(c));
        }
    }

    /* access modifiers changed from: private */
    public int w(int i2) {
        if (i2 != 0) {
            return i2 + this.z;
        }
        return 0;
    }

    public void A() {
        d dVar = this.s;
        if (dVar != null) {
            dVar.H();
        }
    }

    public void A(boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.e(z2);
        }
    }

    public void B(boolean z2) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.m != null) {
                        e.this.m.m();
                    }
                }
            });
        }
    }

    public boolean B() {
        return this.l.a();
    }

    public void C() {
        com.oppo.camera.ui.preview.i iVar = this.V;
        if (iVar != null) {
            iVar.b();
        }
    }

    public void C(boolean z2) {
        if (!z2) {
            a(false, false);
        }
        b(false, false);
        e(false, false);
        c(false, false);
        b(false);
        o(false);
    }

    public void D() {
        com.oppo.camera.ui.preview.i iVar = this.V;
        if (iVar != null && this.A != null) {
            iVar.c();
            this.A.removeView(this.V);
            this.V = null;
        }
    }

    public void D(boolean z2) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.e(z2);
        }
    }

    public void E() {
        if (this.O == null) {
            return;
        }
        if (!com.oppo.camera.o.d.O() || 1 != this.v) {
            this.O.setVisibility(8);
        }
    }

    public void E(boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "startScreenTorch, preflashing: " + z2 + ", mScreenTorchView: " + this.H);
        aw();
        View view = this.H;
        if (view != null) {
            if (z2) {
                view.setBackgroundColor(this.g.getColor(R.color.front_pre_torch));
            } else {
                view.setBackgroundColor(this.g.getColor(R.color.front_main_torch));
            }
            this.H.setVisibility(0);
        }
        r(false);
    }

    public void F() {
        com.oppo.camera.d.a("CameraUIManager", "onStop");
        M(false);
        if (this.t == 2) {
            ab();
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.e();
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.g();
        }
    }

    public void F(boolean z2) {
        CameraScreenHintView cameraScreenHintView = this.E;
        if (cameraScreenHintView != null && cameraScreenHintView.getHintTextView().getVisibility() == 0) {
            this.E.b(z2);
        }
    }

    public void G() {
        com.oppo.camera.d.a("CameraUIManager", "onDestroy");
        this.s = null;
        this.g = null;
        b bVar = this.l;
        if (bVar != null) {
            bVar.h();
            this.l = null;
        }
        f fVar = this.ac;
        if (fVar != null) {
            fVar.d();
            this.ac = null;
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.d();
            this.q = null;
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.f();
            this.m = null;
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.d();
            this.r = null;
        }
        ViewGroup viewGroup = this.A;
        if (viewGroup != null) {
            viewGroup.removeAllViewsInLayout();
            this.A.removeAllViews();
            this.A = null;
        }
    }

    public void G(boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.h(z2);
        }
    }

    public void H() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void H(boolean z2) {
        if (z2) {
            k(true);
        }
        if (this.Y != null) {
            m(true);
        }
    }

    public void I() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.i();
        }
    }

    public void I(boolean z2) {
        if (com.oppo.camera.ui.menu.f.a()) {
            k(true, true);
            j(false, false);
        }
        h(4);
        b(4, z2);
        f(8);
        a(8);
        K(true);
        c(false, false);
        a(true, false);
        e(false, false);
        e(8);
        b(false);
        o(false);
        if (m()) {
            l(false);
        } else {
            j(false);
        }
        a(true, true, false, false);
    }

    public void J() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.j();
        }
    }

    public void J(boolean z2) {
        com.oppo.camera.ui.modepanel.c cVar = this.W;
        if (cVar != null) {
            cVar.a(z2);
        }
    }

    public void K(boolean z2) {
        com.oppo.camera.ui.modepanel.c cVar = this.W;
        if (cVar != null) {
            cVar.b(z2);
        }
    }

    public boolean K() {
        return this.h;
    }

    public void L(boolean z2) {
        f fVar = this.ac;
        if (fVar != null) {
            fVar.a(z2);
        }
    }

    public boolean L() {
        d dVar = this.s;
        if (dVar != null) {
            return dVar.q();
        }
        return false;
    }

    public ShutterButton M() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.l();
        }
        return null;
    }

    public void M(boolean z2) {
        com.oppo.camera.ui.preview.a aVar = this.U;
        if (aVar != null) {
            aVar.a();
            aK();
        }
        if (z2) {
            aN();
        }
        this.x = 0;
        this.k = false;
    }

    public com.oppo.camera.ui.control.e N() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.m();
        }
        return null;
    }

    public void N(boolean z2) {
        this.m.f(z2);
    }

    public int O() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.n();
        }
        return 0;
    }

    public void O(boolean z2) {
        if (this.l != null) {
            com.oppo.camera.d.a("CameraUIManager", "backToLastHeadlineIndex");
            this.l.g(z2);
        }
    }

    public Surface P() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            return dVar.u();
        }
        return null;
    }

    public void P(boolean z2) {
        R(false);
        bj();
        d(true, false);
        g(true);
        d dVar = this.s;
        if (dVar != null && dVar.g(CameraFunction.FACE_BEAUTY_PROCESS) && z2) {
            m(false);
        }
    }

    public Size Q() {
        return this.m.v();
    }

    public boolean R() {
        return com.oppo.camera.ui.menu.f.a();
    }

    public void S() {
        l lVar = this.X;
        if (lVar != null) {
            lVar.f();
        }
    }

    public void T() {
        l lVar = this.X;
        if (lVar != null) {
            lVar.g();
        }
    }

    public int U() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            return dVar.k();
        }
        return 0;
    }

    public boolean V() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.p();
        }
        return false;
    }

    public boolean W() {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            return iVar.i();
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            return iVar2.i();
        }
        return false;
    }

    public int X() {
        return com.oppo.camera.o.d.C();
    }

    public void Y() {
        com.oppo.camera.d.a("CameraUIManager", "afterEnterCameraStartPreviewDone");
        if (!this.h) {
            e(true, false);
        }
    }

    public void Z() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.x();
        }
    }

    public GLRootView a() {
        return this.m.D();
    }

    public void a(byte b2, boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(b2, z2);
        }
    }

    public void a(final float f) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.m != null) {
                        e.this.m.a(f);
                    }
                }
            });
        }
    }

    public void a(int i2) {
        b bVar = this.l;
        if (bVar != null && !this.j) {
            if (i2 == 0) {
                bVar.b(true);
            } else {
                bVar.a(true);
            }
        }
    }

    public void a(int i2, int i3) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(i2, i3);
        }
    }

    public void a(final int i2, final int i3, final boolean z2, final boolean z3, final boolean z4) {
        if (!this.r.f()) {
            if (i2 > 0) {
                Activity activity = this.g;
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() {
                        public void run() {
                            e.this.i();
                            if (e.this.B != null) {
                                e.this.B.a(e.this.g.getString(i2), z4, z2);
                            }
                        }
                    });
                }
            }
            if (i3 > 0) {
                Activity activity2 = this.g;
                if (activity2 != null) {
                    activity2.runOnUiThread(new Runnable() {
                        public void run() {
                            e.this.i();
                            if (e.this.B != null) {
                                e.this.B.a(i3, z3);
                                if (e.this.E != null && e.this.A != null) {
                                    int indexOfChild = e.this.A.indexOfChild(e.this.E);
                                    com.oppo.camera.d.a("CameraUIManager", "showCameraScreenHintView, indexOfHighFpsHintView: " + indexOfChild);
                                    if (indexOfChild >= 0) {
                                        e.this.F(true);
                                    }
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    public void a(int i2, long j2, long j3, TimeInterpolator timeInterpolator, Animator.AnimatorListener animatorListener) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(i2, j2, j3, timeInterpolator, animatorListener);
        }
    }

    public void a(int i2, String str) {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            dVar.a(i2, str);
        }
    }

    public void a(int i2, String str, boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a();
        }
        m mVar = this.o;
        if (mVar != null) {
            mVar.a(false);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(i2, str, z2);
        }
        f fVar = this.ac;
        if (fVar != null) {
            fVar.c();
            this.ac.b(false);
            P(true);
            d dVar2 = this.s;
            if (dVar2 != null) {
                dVar2.z();
            }
        }
        com.oppo.camera.ui.menu.levelcontrol.d dVar3 = this.F;
        if (dVar3 != null) {
            dVar3.a();
            a("pref_filter_menu", (l) this.F);
            a("pref_portrait_new_style_menu", (l) this.F);
            a("pref_video_filter_menu", (l) this.F);
        }
    }

    public void a(int i2, boolean z2) {
        if (i2 == 0) {
            J(z2);
        } else {
            K(z2);
        }
    }

    public void a(int i2, boolean z2, String str) {
        com.oppo.camera.d.b("CameraUIManager", "updateGradienterView, orientation: " + i2);
        if (this.V == null) {
            return;
        }
        if (!z2 || !str.equals("professional")) {
            this.V.a(i2);
            return;
        }
        this.V.setOrientation(i2);
        this.V.b();
    }

    public void a(int i2, boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        boolean z4 = true;
        if (iVar != null) {
            iVar.b(i2, z3, !this.h && !z2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            if (this.h || z2) {
                z4 = false;
            }
            iVar2.b(i2, z3, z4);
        }
    }

    public void a(long j2, boolean z2) {
        m mVar = this.o;
        if (mVar != null) {
            mVar.a(j2, z2);
        }
    }

    public void a(DialogInterface.OnCancelListener onCancelListener) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(onCancelListener);
        }
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        if (!this.j) {
            com.oppo.camera.ui.preview.d dVar = this.m;
            if (dVar != null) {
                dVar.a(sharedPreferences, str);
            }
            if ("pref_camera_torch_mode_key".equals(str)) {
                if (c.a_.equals(sharedPreferences.getString("pref_camera_torch_mode_key", this.g.getResources().getString(R.string.camera_torch_mode_default_value)))) {
                    ax();
                    return;
                }
                d dVar2 = this.s;
                if (dVar2 != null && !dVar2.g(CameraFunction.TORCH_SOFT_LIGHT)) {
                    aw();
                }
            } else if ("pref_camera_flashmode_key".equals(str) && !sharedPreferences.getString("pref_camera_flashmode_key", c.a_).equals(c.a_) && sharedPreferences.getString("pref_high_resolution_key", c.a_).equals("on")) {
                b("pref_high_resolution_key", c.a_);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString("pref_high_resolution_key", c.a_);
                edit.apply();
            }
        }
    }

    public void a(Bitmap bitmap) {
        com.oppo.camera.d.a("CameraUIManager", "showPostCaptureAlert");
        this.i = true;
        ay();
        if (this.t == 2) {
            if (m()) {
                l(false);
            } else {
                j(false);
            }
            a(true, true, false, false);
            com.oppo.camera.ui.menu.setting.i iVar = this.q;
            if (iVar != null) {
                iVar.a(false, true);
                if (com.oppo.camera.o.d.c(this.v)) {
                    this.q.c(4);
                } else {
                    this.q.b(0.0f);
                }
            }
            if (this.r != null) {
                z();
            }
            a(4);
            if (this.l != null) {
                if (com.oppo.camera.o.d.d(this.v)) {
                    this.l.a(4, true);
                }
                this.l.q();
            }
            com.oppo.camera.ui.preview.d dVar = this.m;
            if (dVar != null) {
                dVar.a(bitmap);
                CameraScreenHintView cameraScreenHintView = this.C;
                if (cameraScreenHintView != null) {
                    cameraScreenHintView.a(false, false);
                }
            }
            a(true, false, false);
            i(false);
            aJ();
        }
    }

    public void a(Bitmap bitmap, Size size, Size size2, d.a aVar, int i2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(bitmap, size, size2, aVar, i2);
        }
    }

    public void a(final Rect rect) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.m != null) {
                        e.this.m.a(rect);
                    }
                }
            });
        }
    }

    public void a(Size size, boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(size, z2);
        }
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        if (com.oppo.camera.o.d.b(size.getWidth(), size.getHeight()) == 2) {
            fArr[0] = 0.0f;
        }
        b(size);
    }

    public void a(View view, int i2, int i3, int i4) {
        if (this.A == null) {
            com.oppo.camera.d.e("CameraUIManager", "showBubble, mCameraRootView: " + this.A + ", type: " + i2);
        } else if (i2 == 3) {
            if (this.J == null) {
                this.J = f((int) R.drawable.bubble_up_right, (int) R.string.camera_bubble_sticker);
                ((ImageView) this.J.getContentView().findViewById(R.id.camera_bubble_close)).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        e.this.c(3, true);
                    }
                });
                this.J.setTouchInterceptor(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        e.this.c(3, true);
                        return false;
                    }
                });
            }
            if (!this.J.isShowing()) {
                try {
                    this.J.showAtLocation(this.A, 85, i3, i4);
                } catch (WindowManager.BadTokenException e) {
                    if (this.J.isShowing()) {
                        this.J.dismiss();
                    }
                    com.oppo.camera.d.d("CameraUIManager", "showBubble, type: " + i2 + ", exception: " + e.getMessage());
                }
            }
        } else if (i2 == 4) {
            if (this.K == null) {
                this.K = f((int) R.drawable.bubble_down_middle, (int) R.string.camera_bubble_short_video);
                ((ImageView) this.K.getContentView().findViewById(R.id.camera_bubble_close)).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        e.this.c(4, true);
                    }
                });
                this.K.setTouchInterceptor(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        e.this.c(4, true);
                        return false;
                    }
                });
            }
            if (!this.K.isShowing()) {
                try {
                    this.K.showAtLocation(this.A, 81, i3, i4);
                } catch (WindowManager.BadTokenException e2) {
                    if (this.K.isShowing()) {
                        this.K.dismiss();
                    }
                    com.oppo.camera.d.d("CameraUIManager", "showBubble, type: " + i2 + ", exception: " + e2.getMessage());
                }
            }
        } else if (i2 == 5) {
            if (this.M == null) {
                this.M = f((int) R.drawable.bubble_down_right, (int) R.string.beauty3d_customize_success);
                ((ImageView) this.M.getContentView().findViewById(R.id.camera_bubble_close)).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        e.this.c(5, true);
                    }
                });
                this.M.setTouchInterceptor(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        e.this.c(5, true);
                        return false;
                    }
                });
            }
            if (!this.M.isShowing()) {
                try {
                    this.M.showAtLocation(this.A, 85, i3, i4);
                } catch (WindowManager.BadTokenException e3) {
                    if (this.M.isShowing()) {
                        this.M.dismiss();
                    }
                    com.oppo.camera.d.d("CameraUIManager", "showBubble, type: " + i2 + ", exception: " + e3.getMessage());
                }
            }
        } else if (i2 == 6) {
            if (this.L == null) {
                this.L = f((int) R.drawable.bubble_down_left, (int) R.string.beauty3d_add_hint);
                ((ImageView) this.L.getContentView().findViewById(R.id.camera_bubble_close)).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        e.this.c(6, true);
                    }
                });
                this.L.setTouchInterceptor(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        e.this.c(6, true);
                        return false;
                    }
                });
            }
            if (!this.L.isShowing()) {
                try {
                    this.L.showAtLocation(this.A, 83, i3, i4);
                } catch (WindowManager.BadTokenException e4) {
                    if (this.L.isShowing()) {
                        this.L.dismiss();
                    }
                    com.oppo.camera.d.d("CameraUIManager", "showBubble, type: " + i2 + ", exception: " + e4.getMessage());
                }
            }
        }
    }

    public void a(View view, String str, int i2) {
        ConcurrentHashMap concurrentHashMap = this.S.get(str);
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap();
        }
        if (((View) concurrentHashMap.get(Integer.valueOf(i2))) == null && this.A.indexOfChild(view) == -1) {
            view.setTag(R.id.tag_name_specific_mode_view_type, Integer.valueOf(i2));
            this.A.addView(view);
        }
        view.clearAnimation();
        concurrentHashMap.put(Integer.valueOf(i2), view);
        this.S.put(str, concurrentHashMap);
    }

    public void a(t.a aVar, boolean z2, boolean z3, String str) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(aVar, z2, z3, str);
        }
    }

    public void a(RotateImageView rotateImageView) {
        d dVar = this.s;
        if (dVar != null) {
            dVar.a(rotateImageView);
        }
    }

    public void a(com.oppo.camera.ui.control.a aVar) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }

    public void a(com.oppo.camera.ui.control.c cVar) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(cVar);
        }
    }

    public void a(final com.oppo.camera.ui.control.c cVar, final boolean z2) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.l != null) {
                        e.this.l.b(cVar, z2);
                    }
                }
            });
        }
    }

    public void a(com.oppo.camera.ui.control.d dVar) {
        this.l.a(dVar);
    }

    public void a(com.oppo.camera.ui.control.e eVar) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(eVar);
        }
    }

    public void a(com.oppo.camera.ui.control.f fVar) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(fVar);
        }
    }

    public void a(com.oppo.camera.ui.preview.a.i iVar) {
        com.oppo.camera.d.a("CameraUIManager", "onCreate");
        com.oppo.camera.d.a("UIManager.onCreate");
        this.h = false;
        this.A = (ViewGroup) this.g.findViewById(R.id.camera);
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(iVar);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.c();
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.q;
        if (iVar2 != null) {
            iVar2.a();
        }
        com.oppo.camera.ui.menu.setting.i iVar3 = this.r;
        if (iVar3 != null) {
            iVar3.a();
        }
        this.U = new com.oppo.camera.ui.preview.a(this.g, this.A, this.n);
        this.U.a(this.ae);
        this.U.a(this.ag);
        this.U.c(this.g.getResources().getDimensionPixelSize(R.dimen.camera_up_hint_margin_top) - this.U.e());
        this.z = this.U.e();
        this.F = new com.oppo.camera.ui.menu.levelcontrol.d(this.g);
        this.F.setCameraEntryType(this.t);
        this.F.a(this.u);
        this.F.setFilterEffectMenuListener(this.al);
        this.Y = (RotateImageView) this.g.findViewById(R.id.face_beauty_enter_button);
        this.Y.setOnClickListener(this.aj);
        this.Z = new g(this.g, this.ak, this.t);
        bc();
        if (this.t == 1) {
            bb();
            bh();
        }
        com.oppo.camera.d.b("UIManager.onCreate");
    }

    public void a(e.b bVar) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(bVar);
        }
    }

    public void a(Float f, int i2) {
        if (this.o == null) {
            this.o = new m(this.g, i2);
        }
        m mVar = this.o;
        if (mVar != null) {
            mVar.a(this.u);
            this.o.a(f, i2);
        }
    }

    public void a(String str) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(str);
        }
    }

    public void a(String str, int i2) {
        if (m()) {
            if (str != null) {
                e(str);
            } else {
                i(true);
            }
        }
        this.F.b(i2);
        if (h("pref_portrait_new_style_menu")) {
            f("pref_portrait_new_style_menu");
        } else if (h("pref_filter_menu")) {
            f("pref_filter_menu");
        } else if (h("pref_video_filter_menu")) {
            f("pref_video_filter_menu");
        }
    }

    public void a(String str, int i2, int i3) {
        if (!this.r.f() && !x()) {
            bf();
            this.C.a(str, true, false, 0, R.color.screen_hint_text_color);
        }
    }

    public void a(String str, com.oppo.camera.ui.control.c cVar, boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(cVar, z2);
            if (this.t != 3 && !this.j) {
                this.l.b();
            }
        }
        if (this.t != 3) {
            this.s.k();
            w(true);
        }
        c(str, true);
        if (this.s.g("pref_filter_process_key")) {
            k(true);
        } else {
            j(false);
            i(false);
        }
        if (this.s.g(CameraFunction.FACE_BEAUTY_PROCESS)) {
            m(true);
        } else {
            a(false, false, false, false);
        }
        d(false);
    }

    public void a(String str, l lVar) {
        if (lVar != null && !this.T.containsKey(str)) {
            this.T.put(str, lVar);
        }
        com.oppo.camera.d.a("CameraUIManager", "addMenuToExpandMenuMap, Map size : " + this.T.size());
    }

    public void a(String str, String str2) {
        if (com.oppo.camera.ui.menu.f.a()) {
            com.oppo.camera.ui.menu.f.c();
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(str, str2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(str, str2);
        }
    }

    public void a(String str, String str2, int i2, int i3) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(str, str2, i2, i3);
        }
    }

    public void a(String str, boolean z2) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(str, z2);
        }
    }

    public void a(String str, String... strArr) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(str, strArr);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(str, strArr);
        }
    }

    public void a(List<String> list, String str, int i2) {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            dVar.a(list, str, i2);
        }
    }

    public void a(ConcurrentHashMap<Integer, View> concurrentHashMap, final boolean z2, boolean z3) {
        if (concurrentHashMap != null) {
            for (final View next : concurrentHashMap.values()) {
                if (next != null) {
                    int i2 = 8;
                    if (z3) {
                        next.clearAnimation();
                        if (!z2) {
                            Object tag = next.getTag(R.id.tag_name_specific_mode_view_type);
                            if (tag != null) {
                                concurrentHashMap.remove(tag);
                            }
                        }
                        if (z2) {
                            i2 = 0;
                        }
                        com.oppo.camera.o.d.a(next, i2, (Animation.AnimationListener) new Animation.AnimationListener() {
                            public void onAnimationEnd(Animation animation) {
                            }

                            public void onAnimationRepeat(Animation animation) {
                            }

                            public void onAnimationStart(Animation animation) {
                                View view = next;
                                if (view != null) {
                                    view.setVisibility(z2 ? 0 : 8);
                                }
                            }
                        }, 300);
                    } else if (!z2) {
                        next.setVisibility(8);
                        Object tag2 = next.getTag(R.id.tag_name_specific_mode_view_type);
                        if (tag2 != null) {
                            concurrentHashMap.remove(tag2);
                        }
                    } else {
                        next.setVisibility(0);
                    }
                }
            }
        }
    }

    public void a(boolean z2) {
        CameraScreenHintView cameraScreenHintView = this.I;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.a(z2);
        }
    }

    public void a(final boolean z2, final int i2) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.V == null) {
                        int N = com.oppo.camera.o.d.N() / 2;
                        int top = (e.this.v == 0 || e.this.v == 2) ? e.this.m.x().getTop() + (e.this.m.x().getHeight() / 2) : e.this.g.getResources().getDimensionPixelSize(R.dimen.gradienter_full_margin_top);
                        com.oppo.camera.d.b("CameraUIManager", "showGradienterView, top: " + e.this.m.x().getTop() + ", height: " + e.this.m.x().getHeight() + ", centerY: " + top + ", mSizeRatioType: " + e.this.v);
                        e eVar = e.this;
                        com.oppo.camera.ui.preview.i unused = eVar.V = new com.oppo.camera.ui.preview.i(eVar.g, N, top, i2);
                        e.this.V.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                        e.this.A.addView(e.this.V);
                        e.this.V.setVisibility(4);
                    }
                    if (e.this.V != null && z2) {
                        e.this.V.a();
                    }
                }
            });
        }
    }

    public void a(final boolean z2, final boolean z3) {
        Activity activity = this.g;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (e.this.l != null) {
                        e.this.l.b(z2, z3);
                    }
                }
            });
        }
    }

    public void a(boolean z2, boolean z3, final boolean z4) {
        if (z2) {
            Activity activity = this.g;
            if (activity != null) {
                activity.runOnUiThread(new Runnable() {
                    public void run() {
                        if (e.this.B != null) {
                            e.this.B.b(z4);
                        }
                    }
                });
            }
        }
        if (z3) {
            Activity activity2 = this.g;
            if (activity2 != null) {
                activity2.runOnUiThread(new Runnable() {
                    public void run() {
                        if (e.this.B != null) {
                            e.this.B.a(z4);
                        }
                    }
                });
            }
        }
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5) {
        com.oppo.camera.d.a("CameraUIManager", "hideFaceBeautyMenu, needAnim: " + z2 + ", needClose: " + z3 + ", showEnterButton: " + z4 + ", showZoom: " + z5);
        g gVar = this.Z;
        if (gVar == null) {
            return;
        }
        if (!z3 || !gVar.f()) {
            this.Z.a(8, z2);
            if (!this.Z.f()) {
                f(8, z2);
                return;
            }
            return;
        }
        b(z2, z4, z5);
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        com.oppo.camera.d.a("CameraUIManager", "onResumeMessage");
        this.j = false;
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(z4, aG(), z6, z7);
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b();
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b();
        }
        if (!this.h && !z3 && !z4) {
            v(z5);
        }
        if (this.t == 3) {
            j(false);
            a(false, false, false, false);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            if (dVar.s() && this.t == 2) {
                ab();
            }
            this.m.b();
        }
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.b();
        }
        CameraScreenHintView cameraScreenHintView2 = this.C;
        if (cameraScreenHintView2 != null) {
            cameraScreenHintView2.b();
        }
        CameraScreenHintView cameraScreenHintView3 = this.D;
        if (cameraScreenHintView3 != null) {
            cameraScreenHintView3.b();
        }
        CameraScreenHintView cameraScreenHintView4 = this.E;
        if (cameraScreenHintView4 != null) {
            cameraScreenHintView4.b();
        }
        CameraScreenHintView cameraScreenHintView5 = this.G;
        if (cameraScreenHintView5 != null) {
            cameraScreenHintView5.b();
        }
        if (!Camera.f1749a) {
            b((int) R.string.camera_low_battery_flash_disable);
        }
        if (!Camera.f1750b) {
            b((int) R.string.camera_high_temperature_flash_disable);
        }
        ay();
        G(z2);
        String string = this.n.getString("pref_camera_tap_shutter_key", this.g.getString(R.string.camera_tap_shutter_default_value));
        if (this.s.g("pref_camera_tap_shutter_key") && string.equals("on") && be() && this.R != 2) {
            this.R = 1;
        }
        if (this.R == 1) {
            a((int) R.string.camera_tab_shutter_toast, -1, true, false, false);
            this.R = 2;
        }
    }

    public void a(Face[] faceArr) {
        if (!aQ()) {
            com.oppo.camera.ui.preview.d dVar = this.m;
            if (dVar != null) {
                dVar.a(faceArr);
            }
        }
    }

    public boolean a(Size size) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            return dVar.a(size);
        }
        return false;
    }

    public boolean a(MotionEvent motionEvent) {
        if (aO() || b(motionEvent)) {
            return true;
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        return dVar != null && dVar.a(motionEvent);
    }

    public void aA() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            dVar.e();
        }
    }

    public boolean aB() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            return dVar.j();
        }
        return false;
    }

    public void aC() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null && !dVar.h()) {
            j(false);
        }
        if (this.Y != null) {
            a(true, true, false, true);
        }
    }

    public void aD() {
        if (L()) {
            B(false);
        }
    }

    public void aE() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.H();
        }
    }

    public void aF() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.I();
        }
    }

    public boolean aG() {
        com.oppo.camera.ui.modepanel.c cVar = this.W;
        if (cVar != null) {
            return cVar.a();
        }
        return false;
    }

    public void aH() {
        this.q.k();
        this.r.k();
        k(true);
        this.l.e(true);
        if (this.t != 1) {
            this.l.d(0);
            this.l.i(true);
        }
        if (this.F.h()) {
            com.oppo.camera.d.a("CameraUIManager", "showAllCameraView, mEffectLevelMenu is open, hideRollGLSurfaceView");
            r(false);
        }
        d(true, false);
    }

    public void aI() {
        M(true);
    }

    public void aJ() {
        com.oppo.camera.ui.preview.a aVar = this.U;
        if (aVar != null) {
            aVar.b();
            aK();
        }
    }

    public void aK() {
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.b(0);
        }
    }

    public Rect[] aL() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            return dVar.M();
        }
        return null;
    }

    public void aM() {
        this.m.I();
    }

    public void aN() {
        CameraScreenHintView cameraScreenHintView = this.C;
        if (cameraScreenHintView != null && cameraScreenHintView.getParent() != null) {
            CameraScreenHintView cameraScreenHintView2 = this.B;
            boolean z2 = cameraScreenHintView2 == null || !cameraScreenHintView2.isShown();
            if (z2) {
                com.oppo.camera.ui.preview.a aVar = this.U;
                z2 = aVar == null || !aVar.f();
                com.oppo.camera.d.b("CameraUIManager", "showOrHideUpModeHintView, mAISceneUI.isShown: " + (!z2) + ", mUpModeHintView.isShow: " + this.C.isShown());
            } else {
                com.oppo.camera.d.b("CameraUIManager", "showOrHideUpModeHintView, mUpHintView.isShown: true, mUpModeHintView.isShow: " + this.C.isShown());
            }
            if (z2 != this.C.isShown()) {
                if (!z2 || y()) {
                    this.C.a(false, false);
                } else {
                    this.C.c();
                }
            }
        }
    }

    public boolean aO() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.k();
        }
        return false;
    }

    public void aP() {
        d(true, false);
        g(true);
        if (this.s.g(CameraFunction.FACE_BEAUTY_PROCESS)) {
            m(false);
        }
    }

    public boolean aQ() {
        f fVar = this.ac;
        return fVar != null && fVar.b();
    }

    public void aR() {
        if (this.ac != null) {
            com.oppo.camera.d.a("CameraUIManager", "hideMoreView");
            this.ac.b(true);
        }
    }

    public void aS() {
        com.oppo.camera.d.a("CameraUIManager", "onMoreModeShown");
        R(true);
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.j();
        }
        d();
        bi();
        a(false);
        p(false);
        a(true, true, false);
        i(false);
        F(false);
        a(true, true, false, false);
        g(false);
        b bVar = this.l;
        if (bVar != null) {
            bVar.e(false, true);
        }
        if (y()) {
            z();
        }
    }

    public boolean aT() {
        f fVar = this.ac;
        if (fVar != null) {
            return fVar.a();
        }
        return false;
    }

    public boolean aU() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            return dVar.d();
        }
        return false;
    }

    public boolean aV() {
        com.oppo.camera.ui.preview.f fVar = this.p;
        if (fVar != null) {
            return fVar.c();
        }
        return false;
    }

    public boolean aW() {
        b bVar = this.l;
        return bVar != null && bVar.J();
    }

    public void aa() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.B();
        }
    }

    public void ab() {
        com.oppo.camera.d.a("CameraUIManager", "hidePostCaptureAlert");
        this.i = false;
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.r();
            aN();
        }
        k(true);
        m(true);
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.c(0);
            this.q.a(true, false);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.r();
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(true, false);
        }
        a(0);
    }

    public void ac() {
        com.oppo.camera.d.a("CameraUIManager", "hideVideoAlert");
        this.h = false;
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.t();
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.t();
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(true, false);
            this.q.c(0);
        }
    }

    public void ad() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.A();
        }
    }

    public boolean ae() {
        d dVar = this.s;
        if (dVar != null) {
            return dVar.l();
        }
        return false;
    }

    public void af() {
        d dVar = this.s;
        if (dVar != null) {
            dVar.b();
        }
    }

    public void ag() {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null && dVar.h() && this.s.g("pref_filter_process_key") && !this.s.a() && !this.i) {
            this.F.i();
        }
    }

    public void ah() {
        d dVar = this.s;
        if (dVar != null) {
            dVar.m();
        }
    }

    public void ai() {
        d dVar = this.s;
        if (dVar != null) {
            dVar.n();
        }
    }

    public int aj() {
        d dVar = this.s;
        if (dVar != null) {
            return dVar.o();
        }
        return 0;
    }

    public int ak() {
        d dVar = this.s;
        if (dVar != null) {
            return dVar.p();
        }
        return 0;
    }

    public void al() {
        if (com.oppo.camera.ui.menu.f.a()) {
            com.oppo.camera.ui.menu.f.c();
        }
    }

    public int am() {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            return iVar.l();
        }
        return 0;
    }

    public int an() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.y();
        }
        return 0;
    }

    public void ao() {
        if (!aQ()) {
            com.oppo.camera.ui.preview.d dVar = this.m;
            if (dVar != null) {
                dVar.l();
            }
            i();
            this.B.setOrientation(this.u);
            this.B.a(this.g.getString(R.string.camera_toast_lock_ae_af), false, true, R.drawable.screen_hint_textview_prewarn_bg, R.color.screen_hint_text_prewarn_color);
        }
    }

    public void ap() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.o();
        }
    }

    public void aq() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.p();
        }
    }

    public void ar() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.v();
        }
    }

    public boolean as() {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar == null || !iVar.e()) {
            l lVar = this.X;
            if (lVar == null || !lVar.c()) {
                if (x()) {
                    bg();
                    return true;
                }
                g gVar = this.Z;
                if (gVar == null || !gVar.f()) {
                    return false;
                }
                if (!this.Z.e()) {
                    b(true, true, false);
                }
                return true;
            }
        }
        return true;
    }

    public void at() {
        if (this.I == null && this.A != null) {
            this.I = (CameraScreenHintView) this.g.getLayoutInflater().inflate(R.layout.camera_screen_hint, (ViewGroup) null);
            View view = this.H;
            if (view != null) {
                ViewGroup viewGroup = this.A;
                viewGroup.addView(this.I, viewGroup.indexOfChild(view));
            } else {
                this.A.addView(this.I);
            }
        }
        final String string = this.n.getString("pref_camera_photo_ratio_key", this.g.getString(R.string.camera_photo_ratio_default_value));
        this.B.getHintTextView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                if (e.this.B != null) {
                    e.this.B.getHintTextView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    if ("square".equals(string)) {
                        if (e.this.I != null) {
                            e.this.I.a(e.this.X(), 0, e.this.B.getHintTextView().getHeight() + e.this.B.getMarginLeft(), false);
                        }
                    } else if (e.this.I != null) {
                        e.this.I.a(e.this.B.getHintTextView().getHeight() + e.this.B.getMarginTop(), 0, e.this.B.getHintTextView().getHeight() + e.this.B.getMarginLeft(), false);
                    }
                }
            }
        });
        CameraScreenHintView cameraScreenHintView = this.I;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.setOrientation(this.u);
            this.I.a((int) R.drawable.gesture_shutter_hint, false, true);
        }
    }

    public boolean au() {
        if (!az()) {
            return false;
        }
        com.oppo.camera.d.a("CameraUIManager", "beforeCameraShutterButtonClick(), screen torch is filling..");
        return true;
    }

    public void av() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.H();
        }
    }

    public void aw() {
        if (this.A != null && this.H == null) {
            this.g.getLayoutInflater().inflate(R.layout.screen_torch, this.A);
            this.H = this.g.findViewById(R.id.screen_torch);
        }
    }

    public void ax() {
        ViewGroup viewGroup = this.A;
        if (viewGroup != null) {
            View view = this.H;
            if (view != null) {
                viewGroup.removeView(view);
                this.H = null;
            }
        }
    }

    public void ay() {
        com.oppo.camera.d.a("CameraUIManager", "stopScreenTorch");
        View view = this.H;
        if (view != null && view.getVisibility() != 8) {
            this.H.setVisibility(8);
        }
    }

    public boolean az() {
        View view = this.H;
        if (view != null) {
            return view.isShown();
        }
        return false;
    }

    public ViewGroup b() {
        return this.A;
    }

    public void b(float f) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.b(f);
        }
    }

    public void b(int i2) {
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.a(i2);
        }
    }

    public void b(int i2, String str) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(i2, str);
        }
    }

    public void b(int i2, boolean z2) {
        if (3 != this.t) {
            b bVar = this.l;
            if (bVar != null) {
                bVar.a(i2, z2);
            }
        }
    }

    public void b(long j2, boolean z2) {
        com.oppo.camera.ui.preview.f fVar = this.p;
        if (fVar != null) {
            fVar.a(j2, z2);
        }
    }

    public void b(Bitmap bitmap) {
        com.oppo.camera.d.a("CameraUIManager", "showVideoAlert");
        this.h = true;
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.b(bitmap);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.s();
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(false, true);
            this.q.c(4);
            if (this.g.getResources().getDimensionPixelSize(R.dimen.third_video_preview_margin_top) > 0) {
                this.q.d(!com.oppo.camera.o.d.O(), true);
            }
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(false, true);
            this.r.c(4);
        }
        a(true, true, false);
    }

    public void b(Size size) {
        com.oppo.camera.d.a("CameraUIManager", "notifyEffectMenuPreviewSizeChanged, previewSize: " + size.getWidth() + "x" + size.getHeight());
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            int textureWidth = dVar.getTextureWidth();
            int textureHeight = this.F.getTextureHeight();
            int width = size.getWidth();
            int height = size.getHeight();
            if (this.w % 180 == 0) {
                int i2 = width;
                width = height;
                height = i2;
            }
            if (textureWidth != height || textureHeight != width) {
                this.F.b(height, width);
            }
        }
    }

    public void b(com.oppo.camera.ui.control.c cVar) {
        com.oppo.camera.d.a("CameraUIManager", "switchToModeType, buttonType: " + cVar.a() + ", insideColor: " + cVar.b() + ", shape: " + cVar.c());
        com.oppo.camera.ui.menu.f.c();
        this.k = false;
        this.x = 0;
        Handler handler = this.ai;
        if (handler != null) {
            handler.removeMessages(1);
        }
        if (L()) {
            B(false);
        }
        if (this.t != 3) {
            this.l.a(cVar);
        }
        g gVar = this.Z;
        if (gVar != null) {
            gVar.d();
        }
    }

    public void b(com.oppo.camera.ui.control.c cVar, boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "onPause");
        this.j = true;
        this.R = 0;
        this.y = 0;
        this.x = 0;
        this.k = false;
        this.v = -1;
        if (be()) {
            i.a a2 = this.n.edit();
            a2.putString("last_camera_tap_shutter_key", this.n.getString("pref_camera_tap_shutter_key", this.g.getString(R.string.camera_tap_shutter_default_value)));
            a2.apply();
        }
        Handler handler = this.ai;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.c();
        }
        L(true);
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.c();
        }
        com.oppo.camera.ui.menu.f.e();
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(cVar, z2);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.d();
        }
        m mVar = this.o;
        if (mVar != null) {
            mVar.a();
        }
        View view = this.H;
        if (view != null) {
            view.setVisibility(8);
        }
        CameraScreenHintView cameraScreenHintView = this.C;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.a();
            p(true);
        }
        CameraScreenHintView cameraScreenHintView2 = this.B;
        if (cameraScreenHintView2 != null) {
            cameraScreenHintView2.a();
        }
        CameraScreenHintView cameraScreenHintView3 = this.D;
        if (cameraScreenHintView3 != null) {
            cameraScreenHintView3.a();
        }
        CameraScreenHintView cameraScreenHintView4 = this.E;
        if (cameraScreenHintView4 != null) {
            cameraScreenHintView4.b(false);
            this.E.a();
        }
        com.oppo.camera.ui.menu.levelcontrol.d dVar2 = this.F;
        if (dVar2 != null) {
            dVar2.b();
        }
        CameraScreenHintView cameraScreenHintView5 = this.G;
        if (cameraScreenHintView5 != null) {
            this.A.removeView(cameraScreenHintView5);
            this.G = null;
        }
        CameraScreenHintView cameraScreenHintView6 = this.I;
        if (cameraScreenHintView6 != null) {
            ViewGroup viewGroup = this.A;
            if (viewGroup != null) {
                viewGroup.removeView(cameraScreenHintView6);
                this.I = null;
            }
        }
        g gVar = this.Z;
        if (gVar != null && gVar.f()) {
            b(false, true, false);
        }
        RelativeLayout relativeLayout = this.N;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        com.oppo.camera.ui.menu.setting.i iVar3 = this.q;
        if (iVar3 != null && 1 == this.t) {
            iVar3.a(0.0f);
        }
        com.oppo.camera.ui.menu.setting.i iVar4 = this.r;
        if (iVar4 != null && 1 == this.t) {
            iVar4.a(0.0f);
        }
        Map<String, l> map = this.T;
        if (map != null) {
            map.clear();
        }
        if (this.O != null && (!com.oppo.camera.o.d.O() || 1 != this.v)) {
            this.O.setVisibility(8);
        }
        this.X = null;
        b(true);
        o(true);
        aY();
        D();
        g gVar2 = this.Z;
        if (gVar2 != null) {
            gVar2.g();
        }
    }

    public void b(com.oppo.camera.ui.control.e eVar) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(eVar, true);
        }
    }

    public void b(String str) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(str);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(str);
        }
    }

    public void b(String str, String str2) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(str, str2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b(str, str2);
        }
    }

    public void b(String str, boolean z2) {
        com.oppo.camera.ui.menu.setting.i iVar = this.r;
        if (iVar != null) {
            iVar.a(str, z2);
        }
    }

    public void b(String str, String... strArr) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(str, strArr);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b(str, strArr);
        }
    }

    public void b(boolean z2) {
        if (this.F == null) {
            return;
        }
        if (!z2 || this.s.g("pref_filter_process_key")) {
            this.F.setEnabled(z2);
            this.F.setClickable(z2);
        }
    }

    public void b(boolean z2, boolean z3) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.c(z2, z3);
        }
    }

    public void b(boolean z2, boolean z3, boolean z4) {
        com.oppo.camera.d.a("CameraUIManager", "closeFaceBeautyMenu, needAnim: " + z2 + ", showEnterButton: " + z3 + ", showZoom: " + z4);
        g gVar = this.Z;
        if (gVar == null) {
            com.oppo.camera.d.d("CameraUIManager", "closeFaceBeautyMenu, return");
            return;
        }
        gVar.a(false);
        this.Z.b(z2);
        int b2 = this.Z.b();
        a(z2, b2, z3, z4);
        if (2 == b2) {
            if (!z3) {
                this.Y.setVisibility(8);
            }
        } else if (!z3) {
        } else {
            if (z2) {
                this.aa = ObjectAnimator.ofFloat(this.Y, "alpha", new float[]{0.0f, 1.0f});
                this.aa.setInterpolator(AnimationUtils.loadInterpolator(this.g, R.anim.alpha_path_interpolator));
                this.aa.setStartDelay(160);
                this.aa.setDuration(160);
                this.aa.addListener(new Animator.AnimatorListener() {
                    public void onAnimationCancel(Animator animator) {
                    }

                    public void onAnimationEnd(Animator animator) {
                        e.this.Y.setAlpha(1.0f);
                        e.this.Y.setVisibility(0);
                    }

                    public void onAnimationRepeat(Animator animator) {
                    }

                    public void onAnimationStart(Animator animator) {
                    }
                });
                this.aa.start();
                return;
            }
            this.Y.setAlpha(1.0f);
            this.Y.setVisibility(0);
        }
    }

    public boolean b(int i2, int i3) {
        com.oppo.camera.d.a("CameraUIManager", "onSingleTapUp, x: " + i2 + ", y: " + i3);
        f fVar = this.ac;
        if (fVar != null && fVar.b()) {
            return true;
        }
        l lVar = this.X;
        if (lVar != null && lVar.a(i2, i3)) {
            return true;
        }
        g gVar = this.Z;
        if (gVar == null || !gVar.f()) {
            com.oppo.camera.ui.menu.setting.i iVar = this.r;
            if (iVar == null || !iVar.f()) {
                return false;
            }
            this.n.edit().putString("pref_subsetting_key", c.a_).apply();
            d("pref_subsetting_key");
            return true;
        }
        if (!this.Z.e()) {
            b(true, true, false);
        }
        return true;
    }

    public boolean b(MotionEvent motionEvent) {
        if (this.r == null || !y()) {
            return false;
        }
        return this.r.a(motionEvent);
    }

    public com.oppo.camera.ui.preview.e c() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            return dVar.w();
        }
        return null;
    }

    public void c(float f) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(f);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(f);
        }
    }

    public void c(int i2) {
        CameraScreenHintView cameraScreenHintView = this.B;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.setSupportRotateScreen(i2);
        }
    }

    public void c(int i2, int i3) {
        RelativeLayout relativeLayout = this.O;
        if (relativeLayout != null) {
            int height = relativeLayout.getHeight();
            int C2 = i2 == 2 ? com.oppo.camera.o.d.C() + com.oppo.camera.o.d.F() : 0;
            if (i3 == 1 || i2 == 1) {
                C2 = (com.oppo.camera.o.d.L() - com.oppo.camera.o.d.E()) - ((int) (((double) com.oppo.camera.o.d.N()) * 1.7777777777777777d));
            }
            com.oppo.camera.d.a("CameraUIManager", "updateCoverViewHeight, bottomTargetHeight: " + C2);
            if (C2 == 0) {
                this.O.setVisibility(8);
            } else {
                this.O.setAlpha(1.0f);
                this.O.setVisibility(0);
                if (height != C2) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, C2);
                    layoutParams.addRule(12);
                    this.O.setLayoutParams(layoutParams);
                } else {
                    return;
                }
            }
        }
        RelativeLayout relativeLayout2 = this.N;
        if (relativeLayout2 != null) {
            int height2 = relativeLayout2.getHeight();
            int C3 = i2 == 2 ? com.oppo.camera.o.d.C() + com.oppo.camera.o.d.E() : 0;
            if (C3 == 0) {
                this.N.setVisibility(8);
                return;
            }
            this.N.setAlpha(1.0f);
            this.N.setVisibility(0);
            if (height2 != C3) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, C3);
                layoutParams2.addRule(10);
                this.N.setLayoutParams(layoutParams2);
            }
        }
    }

    public void c(int i2, boolean z2) {
        if (i2 == 3) {
            PopupWindow popupWindow = this.J;
            if (popupWindow != null) {
                if (popupWindow.isShowing()) {
                    this.J.dismiss();
                }
                if (z2) {
                    e("key_bubble_sticker", false);
                    this.J = null;
                }
            }
        } else if (i2 == 4) {
            PopupWindow popupWindow2 = this.K;
            if (popupWindow2 != null) {
                if (popupWindow2.isShowing()) {
                    this.K.dismiss();
                }
                if (z2) {
                    e("key_bubble_short_video", false);
                    this.K = null;
                }
            }
        } else if (i2 == 5) {
            PopupWindow popupWindow3 = this.M;
            if (popupWindow3 != null) {
                if (popupWindow3.isShowing()) {
                    this.M.dismiss();
                }
                if (z2) {
                    e("key_bubble_type_custom_beuty3d", false);
                    this.M = null;
                }
            }
        } else if (i2 == 6) {
            PopupWindow popupWindow4 = this.L;
            if (popupWindow4 != null) {
                if (popupWindow4.isShowing()) {
                    this.L.dismiss();
                }
                if (z2) {
                    e("key_bubble_type_add_beuty3d", false);
                    this.L = null;
                }
            }
        }
    }

    public void c(com.oppo.camera.ui.control.c cVar, boolean z2) {
        this.h = false;
        b bVar = this.l;
        if (bVar != null) {
            bVar.t();
            this.l.b(cVar, z2);
            if (this.t != 3 && !this.j) {
                this.l.b();
            }
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(true, false);
            this.q.c(0);
        }
    }

    public void c(String str) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(str);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b(str);
        }
    }

    public void c(String str, boolean z2) {
        for (String next : this.S.keySet()) {
            a(this.S.get(next), TextUtils.equals(next, str), z2);
        }
    }

    public void c(boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "updateLastThumbNailView(), animation: " + z2);
        b bVar = this.l;
        if (bVar != null) {
            bVar.k(z2);
        }
    }

    public void c(boolean z2, boolean z3) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.d(z2, z3);
        }
    }

    public void c(boolean z2, boolean z3, boolean z4) {
        com.oppo.camera.d.a("CameraUIManager", "stopVideoRecording");
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.c(z2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.c(z2);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.d(false);
        }
        m mVar = this.o;
        if (mVar != null) {
            mVar.a(true);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.f(z3, z4);
        }
        if (R()) {
            al();
        }
        g(true);
    }

    public void d() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.z();
        }
    }

    public void d(int i2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.e(i2);
        }
    }

    public void d(int i2, int i3) {
        RelativeLayout relativeLayout = this.O;
        if (relativeLayout != null) {
            if (i3 == i2 || i2 != 2 || i3 == 1) {
                this.N.setVisibility(8);
                if (i3 != 1) {
                    this.O.setVisibility(8);
                    return;
                }
                return;
            }
            int height = relativeLayout.getHeight();
            if (this.Q == null) {
                this.Q = new AnimatorSet();
            }
            this.Q.cancel();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
            ofFloat.setDuration(200);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.O.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{height, 0});
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int i = e.this.O.getLayoutParams().height;
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (i != intValue) {
                        e.this.O.getLayoutParams().height = intValue;
                        e.this.O.requestLayout();
                    }
                }
            });
            ofInt.addListener(new Animator.AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                    e.this.O.setVisibility(8);
                }

                public void onAnimationEnd(Animator animator) {
                    e.this.O.setVisibility(8);
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                    e.this.O.setVisibility(0);
                }
            });
            ofInt.setDuration(200);
            this.Q.playTogether(new Animator[]{ofInt, ofFloat});
            this.Q.start();
            int height2 = this.N.getHeight();
            if (this.P == null) {
                this.P = new AnimatorSet();
            }
            this.P.cancel();
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
            ofFloat2.setDuration(200);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.N.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            ValueAnimator ofInt2 = ValueAnimator.ofInt(new int[]{height2, 0});
            ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int i = e.this.N.getLayoutParams().height;
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (i != intValue) {
                        e.this.N.getLayoutParams().height = intValue;
                        e.this.N.requestLayout();
                    }
                }
            });
            ofInt2.addListener(new Animator.AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                    e.this.N.setVisibility(8);
                }

                public void onAnimationEnd(Animator animator) {
                    e.this.N.setVisibility(8);
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                    e.this.N.setVisibility(0);
                }
            });
            ofInt2.setDuration(200);
            this.P.playTogether(new Animator[]{ofInt2, ofFloat2});
            this.P.start();
        }
    }

    public void d(int i2, boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "afterOpenCameraUpdateUI");
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(i2, false, !this.h && z2);
            if (this.h) {
                this.q.a(false, true);
                this.q.b(4);
            }
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(i2, false, !this.h && z2);
            if (this.h) {
                this.r.a(false, true);
                this.r.b(4);
            }
        }
    }

    public void d(String str) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.c(str);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.c(str);
        }
    }

    public void d(String str, boolean z2) {
        d dVar = this.s;
        if (dVar != null) {
            com.oppo.camera.ui.menu.setting.i iVar = this.q;
            if (iVar != null) {
                iVar.b(str, dVar.j());
            }
        }
        d dVar2 = this.s;
        if (dVar2 != null) {
            com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
            if (iVar2 != null) {
                iVar2.b(str, dVar2.j());
            }
        }
    }

    public void d(boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.b(z2);
        }
    }

    public void d(boolean z2, boolean z3) {
        com.oppo.camera.d.a("CameraUIManager", "enableAllCameraView, enable: " + z2 + ", ashed: " + z3);
        a(z2, z3);
        b(z2, z3);
        c(z2, z3);
        e(z2, z3);
        b(z2);
        o(z2);
    }

    public RelativeLayout e() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            return dVar.x();
        }
        return null;
    }

    public void e(int i2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.f(i2);
        }
    }

    public void e(int i2, int i3) {
        d dVar = this.s;
        if (dVar != null) {
            dVar.a(i2, i3);
        }
    }

    public void e(int i2, boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "previewType: " + i2 + ", needControlAnimation: " + z2);
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(i2, z2);
        }
    }

    public void e(String str) {
        int i2;
        int i3;
        if (this.D == null) {
            aX();
            if (this.D != null) {
                if (3 == this.t) {
                    i3 = ((com.oppo.camera.o.d.L() - com.oppo.camera.o.d.E()) - ((int) (((double) com.oppo.camera.o.d.N()) * 1.5d))) + this.g.getResources().getDimensionPixelSize(R.dimen.camera_hint_margin_bottom_third_party);
                    i2 = this.D.getViewGap();
                } else {
                    i3 = this.g.getResources().getDimensionPixelSize(R.dimen.down_hint_margin_bottom) + com.oppo.camera.o.d.F();
                    i2 = this.D.getViewGap();
                }
                this.D.a(0, i3 - i2, 0, true);
            }
        }
        if (str != null) {
            CameraScreenHintView cameraScreenHintView = this.D;
            if (cameraScreenHintView != null && str.equals(cameraScreenHintView.getHintTextView().getText())) {
                return;
            }
        }
        CameraScreenHintView cameraScreenHintView2 = this.D;
        if (cameraScreenHintView2 != null) {
            cameraScreenHintView2.a(str, true, false, R.drawable.screen_hint_textview_white_bg, R.color.screen_hint_text_prewarn_color);
        }
    }

    public void e(boolean z2) {
        m mVar = this.o;
        if (mVar != null) {
            mVar.b(z2);
        }
    }

    public void e(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(z2, z3);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(z2, z3);
        }
    }

    public void f() {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.h();
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.h();
        }
    }

    public void f(int i2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.g(i2);
        }
    }

    public void f(String str) {
        d(str, false);
    }

    public void f(boolean z2) {
        com.oppo.camera.ui.preview.f fVar = this.p;
        if (fVar != null) {
            fVar.a(z2);
        }
    }

    public void f(boolean z2, boolean z3) {
        j(z2);
        a(z2, false, false, false);
        b bVar = this.l;
        if (bVar != null) {
            bVar.d(z3);
        }
    }

    public int g() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.z();
        }
        return 0;
    }

    public void g(int i2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    public void g(String str) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public void g(boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.a(z2);
        }
    }

    public void g(boolean z2, boolean z3) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.e(z3);
            this.l.f();
        }
    }

    public int h() {
        b bVar = this.l;
        if (bVar != null) {
            return bVar.B();
        }
        return 1;
    }

    public void h(int i2) {
        if (3 != this.t) {
            com.oppo.camera.ui.menu.setting.i iVar = this.q;
            if (iVar != null) {
                iVar.c(i2);
            }
        }
    }

    public void h(boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "hideAllCameraView");
        if (z2) {
            com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
            if (dVar != null) {
                dVar.b(false);
            }
        }
        this.q.j();
        this.q.a(false, false);
        this.r.j();
        this.r.a(false, false);
        j(false);
        a(false, false, false, false);
        b(false);
        o(false);
        i(false);
        this.l.c(false);
        if (this.t != 1) {
            this.l.d(8);
            this.l.i(false);
        }
        this.l.e(false, false);
    }

    public void h(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            dVar.a(z2, z3);
        }
    }

    public boolean h(String str) {
        d dVar = this.s;
        if (dVar != null) {
            return dVar.g(str);
        }
        return false;
    }

    public void i() {
        if (this.A != null && this.B == null) {
            this.B = (CameraScreenHintView) this.g.getLayoutInflater().inflate(R.layout.camera_screen_hint, (ViewGroup) null);
            this.B.setCameraScreenHintListener(this.af);
            this.B.b(w(this.U.c()));
            this.B.addOnLayoutChangeListener(this.ah);
            View view = this.H;
            if (view != null) {
                ViewGroup viewGroup = this.A;
                viewGroup.addView(this.B, viewGroup.indexOfChild(view));
            } else if (this.U.g() != null) {
                ViewGroup viewGroup2 = this.A;
                viewGroup2.addView(this.B, viewGroup2.indexOfChild(this.U.g()));
            } else {
                this.A.addView(this.B);
            }
            this.B.setOrientation(this.u);
            this.B.a(this.g.getResources().getDimensionPixelSize(R.dimen.camera_up_hint_margin_top) - this.B.getViewGap(), 0, 0, false);
            if (!this.s.g("pref_support_rotate_hint_view")) {
                this.B.setSupportRotateScreen(2);
            }
        }
    }

    public void i(int i2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.h(i2);
        }
    }

    public void i(String str) {
        if (this.G == null) {
            aZ();
            if (this.G != null) {
                this.G.a(0, (this.g.getResources().getDimensionPixelSize(R.dimen.sticker_hint_bottom_margin_vertical) + com.oppo.camera.o.d.F()) - this.G.getViewGap(), this.g.getResources().getDimensionPixelSize(R.dimen.sticker_hint_bottom_margin_horizontal) - this.G.getViewGap(), true);
            }
        }
        CameraScreenHintView cameraScreenHintView = this.G;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.a(str, true, false, R.color.sticker_hint_background_color, R.color.screen_hint_text_color);
        }
    }

    public void i(boolean z2) {
        CameraScreenHintView cameraScreenHintView = this.D;
        if (cameraScreenHintView != null && cameraScreenHintView.getHintTextView().getVisibility() == 0) {
            this.D.b(z2);
        }
    }

    public void i(boolean z2, boolean z3) {
        com.oppo.camera.d.a("CameraUIManager", "startVideoRecording");
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(z2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b(z2);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.C();
            this.m.d(true);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.j(z3);
        }
        g(false);
    }

    public CameraScreenHintView j() {
        return this.B;
    }

    public void j(int i2) {
        if (this.p == null) {
            this.p = new com.oppo.camera.ui.preview.f(this.g, i2);
        }
        com.oppo.camera.ui.preview.f fVar = this.p;
        if (fVar != null) {
            fVar.a((Float) null, i2);
        }
    }

    public void j(String str) {
        com.oppo.camera.ui.modepanel.c cVar = this.W;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    public void j(boolean z2) {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null) {
            dVar.a(4, z2);
        }
    }

    public void j(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.b(z2, z3);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.b(z2, z3);
        }
    }

    public void k() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.G();
        }
    }

    public void k(int i2) {
        ba();
    }

    public void k(String str) {
        if (m(str)) {
            l lVar = this.X;
            if (lVar == null) {
                if (l(str)) {
                    this.X.a(str);
                }
            } else if (str.equals(lVar.getCurrentMenuKey())) {
                this.X.a(true);
            } else if (!"DefaultExpandPanel".equals(this.X.getCurrentMenuKey())) {
                this.X.a(true);
                if (l(str)) {
                    this.X.a(str);
                }
            } else if (l(str)) {
                this.X.a(str);
            }
        }
    }

    public void k(boolean z2) {
        if (this.F != null && this.s.g("pref_filter_process_key") && !this.s.a() && !this.i) {
            this.F.a(0, z2);
        }
    }

    public void k(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.c(z2, z3);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.c(z2, z3);
        }
    }

    public void l() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.w();
        }
    }

    public void l(int i2) {
        this.w = i2;
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.d(i2);
        }
    }

    public void l(boolean z2) {
        l lVar = this.X;
        if (lVar != null) {
            lVar.b(z2, true);
        }
    }

    public void l(boolean z2, boolean z3) {
        com.oppo.camera.ui.menu.levelcontrol.d dVar = this.F;
        if (dVar != null && dVar.h()) {
            this.F.a(z2, z3);
        }
    }

    public boolean l(String str) {
        if (this.T.get(str) != null && this.T.get(str).r == null) {
            this.T.get(str).setExpandMenuListener(this.am);
        }
        this.X = this.T.get(str);
        return this.X != null;
    }

    public void m(int i2) {
        this.t = i2;
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(this.t);
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.d(this.t);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.d(this.t);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.b(this.t);
        }
    }

    public void m(boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "showFaceBeautyMenu, needAnim: " + z2);
        if ((!aW() || !aQ()) && this.s.g(CameraFunction.FACE_BEAUTY_PROCESS) && !this.s.a() && !this.i && this.Z != null && !this.F.h() && !this.s.r()) {
            this.Z.a(0, z2);
            if (!this.Z.f()) {
                f(0, z2);
            }
            ba();
        }
    }

    public boolean m() {
        l lVar = this.X;
        if (lVar != null) {
            return lVar.h();
        }
        return false;
    }

    public boolean m(String str) {
        return "pref_filter_menu".equals(str) || "pref_portrait_new_style_menu".equals(str) || "pref_video_filter_menu".equals(str);
    }

    public void n(int i2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.e(i2);
        }
    }

    public void n(boolean z2) {
        com.oppo.camera.d.a("CameraUIManager", "openFaceBeautyMenu, needAnim: " + z2);
        ObjectAnimator objectAnimator = this.aa;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            g gVar = this.Z;
            if (gVar == null) {
                com.oppo.camera.d.d("CameraUIManager", "openFaceBeautyMenu, return");
                return;
            }
            gVar.a(true);
            aq();
            this.n.getString("pref_camera_gesture_shutter_key", this.g.getString(R.string.camera_gesture_shutter_default_value));
            d dVar = this.s;
            int w2 = dVar != null ? dVar.w() : 0;
            b(z2, w2);
            View a2 = this.Z.a(w2);
            ViewGroup.LayoutParams c = this.Z.c();
            if (!(a2 == null || c == null)) {
                a2.setVisibility(0);
                if (a2.getParent() == null) {
                    this.A.addView(a2, this.A.indexOfChild(this.l.A()) + 1, c);
                }
                this.Z.a(z2, com.oppo.camera.e.a.c(this.s.p()));
            }
            if (2 == w2) {
                return;
            }
            if (z2) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.Y, "alpha", new float[]{1.0f, 0.0f});
                ofFloat.setInterpolator(AnimationUtils.loadInterpolator(this.g, R.anim.alpha_path_interpolator));
                ofFloat.setDuration(80);
                ofFloat.addListener(new Animator.AnimatorListener() {
                    public void onAnimationCancel(Animator animator) {
                    }

                    public void onAnimationEnd(Animator animator) {
                        e.this.Y.setVisibility(8);
                    }

                    public void onAnimationRepeat(Animator animator) {
                    }

                    public void onAnimationStart(Animator animator) {
                    }
                });
                ofFloat.start();
                return;
            }
            this.Y.setVisibility(8);
            return;
        }
        com.oppo.camera.d.a("CameraUIManager", "openFaceBeautyMenu, mCloseFaceAlphaButtonAnimator.isRunning()");
    }

    public boolean n() {
        b bVar = this.l;
        if (bVar == null || this.F == null || this.s == null || this.Z == null) {
            return false;
        }
        return bVar.a() || this.F.d() || this.s.h() || this.Z.e();
    }

    public void o() {
        CameraScreenHintView cameraScreenHintView = this.G;
        if (cameraScreenHintView != null && cameraScreenHintView.getHintTextView().getVisibility() == 0) {
            this.G.b(true);
        }
    }

    public void o(int i2) {
        this.u = i2;
        b bVar = this.l;
        if (bVar != null) {
            bVar.c(this.u);
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.e(this.u);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.e(this.u);
        }
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.c(this.u);
        }
        m mVar = this.o;
        if (mVar != null) {
            mVar.a(this.u);
        }
        CameraScreenHintView cameraScreenHintView = this.C;
        if (cameraScreenHintView != null) {
            cameraScreenHintView.setOrientation(this.u);
        }
        CameraScreenHintView cameraScreenHintView2 = this.B;
        if (cameraScreenHintView2 != null) {
            cameraScreenHintView2.setOrientation(this.u);
        }
        CameraScreenHintView cameraScreenHintView3 = this.D;
        if (cameraScreenHintView3 != null) {
            cameraScreenHintView3.setOrientation(this.u);
        }
        CameraScreenHintView cameraScreenHintView4 = this.E;
        if (cameraScreenHintView4 != null) {
            cameraScreenHintView4.setOrientation(i2);
        }
        CameraScreenHintView cameraScreenHintView5 = this.G;
        if (cameraScreenHintView5 != null) {
            cameraScreenHintView5.setOrientation(this.u);
        }
        CameraScreenHintView cameraScreenHintView6 = this.I;
        if (cameraScreenHintView6 != null) {
            cameraScreenHintView6.setOrientation(this.u);
        }
        com.oppo.camera.ui.preview.a aVar = this.U;
        if (aVar != null) {
            aVar.a(this.u);
        }
        RotateImageView rotateImageView = this.Y;
        if (rotateImageView != null) {
            rotateImageView.a(this.u, true);
        }
        f fVar = this.ac;
        if (fVar != null) {
            fVar.e(this.u);
        }
    }

    public void o(boolean z2) {
        if (this.Y == null) {
            return;
        }
        if (!z2 || this.s.g(CameraFunction.FACE_BEAUTY_PROCESS)) {
            com.oppo.camera.d.a("CameraUIManager", "enableFaceBeautyMenu, enable: " + z2);
            this.Y.a(z2, false);
            this.Y.setClickable(z2);
        }
    }

    public void p() {
        this.l.b(false, true);
        if (m()) {
            this.F.a(true, true);
        }
        j(false);
        b(false);
        o(false);
        Size Q2 = Q();
        if (Q2 != null) {
            u(com.oppo.camera.o.d.b(Q2.getWidth(), Q2.getHeight()));
        }
    }

    public void p(int i2) {
        this.v = i2;
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(this.v);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(this.v);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(this.v);
        }
    }

    public void p(boolean z2) {
        CameraScreenHintView cameraScreenHintView = this.C;
        if (cameraScreenHintView != null) {
            if (z2) {
                this.A.removeView(cameraScreenHintView);
                this.C = null;
            } else if (cameraScreenHintView.getParent() != null) {
                this.C.b(false);
            }
        }
    }

    public void q() {
        int i2 = 0;
        this.l.b(true, false);
        k(false);
        if (m()) {
            this.F.a(true, true);
        }
        Size Q2 = Q();
        if (Q2 != null) {
            i2 = com.oppo.camera.o.d.b(Q2.getWidth(), Q2.getHeight());
        }
        e(i2, true);
    }

    public void q(int i2) {
        f fVar = this.ac;
        if (fVar != null) {
            fVar.b(i2);
        }
    }

    public void q(boolean z2) {
        this.ab = z2;
    }

    public com.oppo.camera.ui.preview.a.g r() {
        return this.ad;
    }

    public void r(int i2) {
        f fVar = this.ac;
        if (fVar != null) {
            fVar.c(i2);
        }
    }

    public void r(boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(z2);
        }
    }

    public void s() {
        if (this.E != null && this.A != null) {
            com.oppo.camera.d.a("CameraUIManager", "removeHighFpsHintView");
            this.A.removeView(this.E);
            this.E = null;
        }
    }

    public void s(final int i2) {
        if (!this.r.f() && !x() && !this.i && this.U != null) {
            if (this.s.g("pref_support_night_process") && this.x != 12 && 12 == i2 && !this.k) {
                this.y = 1;
                Handler handler = this.ai;
                if (handler != null) {
                    handler.removeMessages(1);
                    this.ai.sendEmptyMessageDelayed(1, 3000);
                }
            }
            this.g.runOnUiThread(new Runnable() {
                public void run() {
                    e.this.v(i2);
                    int unused = e.this.x = i2;
                }
            });
        }
    }

    public void s(boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.b(z2);
        }
    }

    public void t() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.D();
        }
    }

    public void t(int i2) {
        if (this.ac != null) {
            com.oppo.camera.d.a("CameraUIManager", "showMoreView");
            this.ac.d(i2);
        }
    }

    public void t(boolean z2) {
        int i2 = 0;
        if (!h("pref_subsetting_key") || !z2) {
            aN();
            d dVar = this.s;
            if (dVar != null && !dVar.F()) {
                this.s.E();
                if (this.U != null && !aQ()) {
                    v(this.s.G());
                }
            }
        } else {
            a(true, true, false);
            aJ();
            p(false);
            a(true);
        }
        com.oppo.camera.ui.menu.setting.i iVar = this.r;
        if (iVar != null) {
            iVar.c(z2 ? 0 : 8);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.q;
        if (iVar2 != null) {
            if (!z2) {
                i2 = 8;
            }
            iVar2.a("pref_subsetting_key", i2);
        }
    }

    public void u() {
        b bVar = this.l;
        if (bVar != null) {
            bVar.E();
        }
    }

    public void u(boolean z2) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.f(z2);
        }
    }

    public void v() {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.y();
        }
    }

    public void v(boolean z2) {
        H();
        d(0);
        g(true);
        b bVar = this.l;
        if (bVar != null) {
            bVar.d(0);
        }
        if (z2) {
            u(this.v);
            a(false, true);
            return;
        }
        if (this.s.g("pref_filter_process_key")) {
            k(false);
        } else {
            j(false);
        }
        if (this.s.g(CameraFunction.FACE_BEAUTY_PROCESS)) {
            m(false);
        } else {
            a(false, false, false, false);
        }
        e(this.v, false);
    }

    public void w(boolean z2) {
        com.oppo.camera.ui.menu.setting.i iVar = this.q;
        if (iVar != null) {
            iVar.a(z2);
        }
        com.oppo.camera.ui.menu.setting.i iVar2 = this.r;
        if (iVar2 != null) {
            iVar2.a(z2);
        }
    }

    public boolean w() {
        g gVar = this.Z;
        return gVar != null && gVar.f();
    }

    public void x(boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.c(z2);
        }
    }

    public boolean x() {
        return aW() && aQ();
    }

    public void y(boolean z2) {
        com.oppo.camera.ui.preview.d dVar = this.m;
        if (dVar != null) {
            dVar.g(z2);
        }
    }

    public boolean y() {
        return this.r.f();
    }

    public void z() {
        com.oppo.camera.i iVar = this.n;
        if (iVar != null) {
            iVar.edit().putString("pref_subsetting_key", c.a_).apply();
            d("pref_subsetting_key");
        }
    }

    public void z(boolean z2) {
        this.l.l(z2);
    }
}
