package com.oppo.camera.ui.preview;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.params.Face;
import android.os.Handler;
import android.os.Message;
import android.util.Size;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import color.support.v7.app.b;
import com.oppo.camera.R;
import com.oppo.camera.gl.GLImageView;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.GLView;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.t;
import com.oppo.camera.i;
import com.oppo.camera.ui.RotableTextView;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.i;
import com.oppo.camera.ui.menu.levelcontrol.f;
import com.oppo.camera.ui.preview.PreviewFrameLayout;
import com.oppo.camera.ui.preview.e;
import com.oppo.camera.v;

/* compiled from: CameraPreviewUI */
public class d implements View.OnLayoutChangeListener, com.oppo.camera.c, PreviewFrameLayout.OnSizeChangedListener, e.a {
    private int A = 0;
    /* access modifiers changed from: private */
    public b B = null;
    private ImageView C = null;
    /* access modifiers changed from: private */
    public PreviewFrameLayout D = null;
    private RelativeLayout.LayoutParams E = null;
    private RotateImageView F = null;
    private j G = null;
    /* access modifiers changed from: private */
    public ImageView H = null;
    private RelativeLayout I = null;
    private GLImageView J = null;
    private Bitmap K = null;
    private String L = null;
    private String M = com.oppo.camera.c.a_;
    private Size N = null;
    private SurfaceTexture O = null;
    private Surface P = null;
    private Size Q = null;
    private Size R = null;
    private a S = null;
    private e.b T = null;
    private GLRootView U = null;
    /* access modifiers changed from: private */
    public RotableTextView V = null;
    /* access modifiers changed from: private */
    public i W = null;
    private Thread X = null;
    /* access modifiers changed from: private */
    public boolean Y = false;
    /* access modifiers changed from: private */
    public boolean Z = (!com.oppo.camera.o.d.b("oppo.phonemanager.disable.clean"));
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f2935a = false;
    private Handler aa = new Handler() {
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                d.this.T();
            } else if (i == 2) {
                d.this.U();
            } else if (i != 3) {
                if (i == 4 && d.this.W != null && d.this.W.getVisibility() == 0) {
                    d.this.W.setVisibility(8);
                }
            } else if (d.this.W != null && d.this.W.getVisibility() != 0) {
                d.this.W.setVisibility(0);
            }
        }
    };
    private final GLView ab = new GLView() {
        /* access modifiers changed from: protected */
        public void a(int i, int i2) {
            d.this.u.b(i, i2);
        }

        public void a(int i, int i2, int i3, int i4) {
            super.a(i, i2, i3, i4);
        }

        /* access modifiers changed from: protected */
        public void a(h hVar) {
            d dVar = d.this;
            dVar.a((dVar.D.getRight() - d.this.D.getLeft()) / 2, (d.this.D.getBottom() - d.this.D.getTop()) / 2, false);
            hVar.a(new float[]{1.0f, 0.0f, 0.0f, 0.0f});
            d.this.u.a(hVar, (f) null, d.this.O(), d.this.P(), d.this.Q(), d.this.R());
        }

        /* access modifiers changed from: protected */
        public void b(h hVar) {
            if (d.this.u != null) {
                d.this.u.a(hVar, 0, 0, d.this.r, d.this.q, d.this.f2935a ? d.this.f2936b : d.this.B.aj());
            }
        }

        /* access modifiers changed from: protected */
        public void c(h hVar) {
            super.c(hVar);
        }

        /* access modifiers changed from: protected */
        public void f() {
            d.this.u.j();
        }
    };
    private Animation.AnimationListener ac = new Animation.AnimationListener() {
        public void onAnimationEnd(Animation animation) {
            if (!d.this.Y) {
                d.this.N();
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    };
    private Animation.AnimationListener ad = new Animation.AnimationListener() {
        public void onAnimationEnd(Animation animation) {
            if (d.this.H != null) {
                d.this.H.setVisibility(8);
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    };
    private final DialogInterface.OnClickListener ae = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialogInterface, int i) {
            int i2 = v.s;
            if (i2 == 0) {
                dialogInterface.dismiss();
            } else if (i2 == 1 || i2 == 2 || i2 == 3) {
                dialogInterface.dismiss();
                if (d.this.Z) {
                    Intent intent = new Intent("com.oppo.cleandroid.ui.ClearMainActivity");
                    intent.putExtra("enter_from", d.this.s.getPackageName());
                    try {
                        intent.addFlags(67108864);
                        d.this.s.startActivity(intent);
                    } catch (Exception e) {
                        com.oppo.camera.d.e("CameraPreviewUI", "mDialogOnClickListener.onClick, Exception when start ClearMainActivity: " + e);
                    }
                }
            }
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public volatile int f2936b = 0;
    private Object g = new Object();
    /* access modifiers changed from: private */
    public boolean h = false;
    private boolean i = false;
    private boolean j = false;
    /* access modifiers changed from: private */
    public boolean k = false;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private int p = 0;
    /* access modifiers changed from: private */
    public int q = 0;
    /* access modifiers changed from: private */
    public int r = 0;
    /* access modifiers changed from: private */
    public Activity s = null;
    /* access modifiers changed from: private */
    public com.oppo.camera.i t = null;
    /* access modifiers changed from: private */
    public e u = null;
    /* access modifiers changed from: private */
    public color.support.v7.app.b v = null;
    private b.a w = null;
    /* access modifiers changed from: private */
    public FaceView x = null;
    private int y = 1;
    /* access modifiers changed from: private */
    public int z = 0;

    /* compiled from: CameraPreviewUI */
    public interface a {
        void a();

        void a(Size size);

        void a(Size size, Size size2);

        int b();
    }

    /* compiled from: CameraPreviewUI */
    public interface b {
        boolean L();

        void a(RotateImageView rotateImageView);

        boolean ae();

        void af();

        void ag();

        void ah();

        void ai();

        int aj();

        int ak();

        void e(int i, int i2);

        boolean h(String str);
    }

    /* compiled from: CameraPreviewUI */
    public class c extends AccelerateInterpolator {
        public c() {
        }

        public float getInterpolation(float f) {
            if (((double) Math.abs(f - 1.0f)) <= 1.0E-6d && !d.this.Y) {
                d.this.N();
            }
            return ((float) (Math.cos(((double) (f + 1.0f)) * 3.141592653589793d) / 2.0d)) + 0.5f;
        }
    }

    public d(Activity activity, com.oppo.camera.i iVar, b bVar) {
        this.s = activity;
        this.t = iVar;
        this.B = bVar;
        com.oppo.camera.d.b("CameraPreviewUI", "CameraPreviewUI, mbCanUseCleanFunction: " + this.Z);
    }

    /* access modifiers changed from: private */
    public void N() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(10);
        alphaAnimation.setAnimationListener(this.ad);
        if (this.H == null) {
            this.H = b((ViewGroup) this.D);
        }
        this.H.startAnimation(alphaAnimation);
        this.Y = true;
    }

    /* access modifiers changed from: private */
    public int O() {
        int i2;
        synchronized (this.g) {
            i2 = this.l;
        }
        return i2;
    }

    /* access modifiers changed from: private */
    public int P() {
        int i2;
        synchronized (this.g) {
            i2 = this.m;
        }
        return i2;
    }

    /* access modifiers changed from: private */
    public int Q() {
        int i2;
        synchronized (this.g) {
            i2 = this.n;
        }
        return i2;
    }

    /* access modifiers changed from: private */
    public int R() {
        int i2;
        synchronized (this.g) {
            i2 = this.o;
        }
        return i2;
    }

    private boolean S() {
        boolean z2;
        synchronized (this) {
            z2 = this.i;
        }
        return z2;
    }

    /* access modifiers changed from: private */
    public void T() {
        com.oppo.camera.d.a("CameraPreviewUI", "notifyPreviewImageAnimOnStart");
        a aVar = this.S;
        if (aVar != null) {
            aVar.a(this.Q);
        }
        Activity activity = this.s;
        if (activity != null) {
            activity.onUserInteraction();
        }
    }

    /* access modifiers changed from: private */
    public void U() {
        com.oppo.camera.d.a("CameraPreviewUI", "notifyPreviewImageAnimOnMiddle, mbCancleBlurAnimation: " + this.j);
        a aVar = this.S;
        if (aVar != null) {
            aVar.a(this.R, this.Q);
        }
        if (this.j) {
            GLImageView gLImageView = this.J;
            if (gLImageView != null) {
                gLImageView.setVisibility(0);
                this.J.c();
            }
        }
    }

    private ImageView a(ViewGroup viewGroup) {
        ImageView imageView = new ImageView(this.s);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        imageView.setVisibility(8);
        imageView.setBackgroundColor(-16777216);
        viewGroup.addView(imageView, layoutParams);
        return imageView;
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (this.p % 180 != 0) {
            int i6 = i5;
            i5 = i4;
            i4 = i6;
        }
        if (i2 != i4 || i3 != i5) {
            this.u.a(i4, i5);
        }
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3, boolean z2) {
        if (S()) {
            synchronized (this.g) {
                if (this.N != null) {
                    int e = this.u.e();
                    int f = this.u.f();
                    float f2 = (float) e;
                    float N2 = ((float) com.oppo.camera.o.d.N()) / f2;
                    float f3 = f2 * N2;
                    this.l = Math.round(((float) i2) - (f3 / 2.0f));
                    float f4 = (float) i3;
                    float f5 = ((float) f) * N2;
                    this.m = Math.round(f4 - (f5 / 2.0f));
                    if (this.m < this.D.getTop()) {
                        this.m = this.D.getTop();
                    }
                    if (this.l < this.D.getLeft()) {
                        this.l = this.D.getLeft();
                    }
                    if (this.m != this.D.getTop()) {
                        if (!z2) {
                            this.m = com.oppo.camera.o.d.E();
                        } else {
                            this.m = 0;
                        }
                    }
                    this.n = Math.round(f3);
                    this.o = Math.round(f5);
                    h(false);
                    if (this.B.ae()) {
                        int b2 = com.oppo.camera.o.d.b(this.N.getWidth(), this.N.getHeight());
                        if (b2 == 0) {
                            this.m = com.oppo.camera.o.d.E();
                        } else if (b2 != 1) {
                            if (b2 != 2) {
                                this.m = 0;
                                this.o = com.oppo.camera.o.d.L();
                            } else {
                                this.m = com.oppo.camera.o.d.C() + com.oppo.camera.o.d.E();
                            }
                        } else if (com.oppo.camera.o.d.O()) {
                            this.m = com.oppo.camera.o.d.E();
                        } else {
                            this.m = 0;
                            this.o = com.oppo.camera.o.d.L();
                        }
                    } else {
                        if (this.y != 3) {
                            this.o = (int) (((double) this.n) * 1.7777777777777777d);
                        }
                        this.m = com.oppo.camera.o.d.E();
                        if (this.y != 3 && !com.oppo.camera.o.d.O()) {
                            this.o = (com.oppo.camera.o.d.L() - com.oppo.camera.o.d.I()) - com.oppo.camera.o.d.J();
                        }
                    }
                    com.oppo.camera.d.a("CameraPreviewUI", "layoutPreview, l: " + this.l + ", t: " + this.m + ", w: " + this.n + ", h: " + this.o);
                }
            }
        }
    }

    private void a(boolean z2, com.oppo.camera.ui.preview.a.i iVar) {
        if (this.u == null) {
            this.u = new e(this.s, this, z2);
            this.u.a(this.T);
            this.u.a(iVar);
        }
        this.u.a(this.U);
    }

    private ImageView b(ViewGroup viewGroup) {
        ImageView imageView = new ImageView(this.s);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        imageView.setVisibility(8);
        imageView.setLayerType(2, (Paint) null);
        viewGroup.addView(imageView, layoutParams);
        return imageView;
    }

    private void b(DialogInterface.OnClickListener onClickListener) {
        if (this.L != null) {
            color.support.v7.app.b bVar = this.v;
            if (bVar == null || !bVar.isShowing()) {
                color.support.v7.app.b bVar2 = this.v;
                if (bVar2 != null) {
                    bVar2.dismiss();
                }
                this.w = new b.a(this.s, R.style.DialogAlert);
                this.w.a((CharSequence) this.L);
                this.w.a((DialogInterface.OnKeyListener) new DialogInterface.OnKeyListener() {
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i != 4 || keyEvent.getRepeatCount() != 0) {
                            return false;
                        }
                        d.this.v.dismiss();
                        return false;
                    }
                });
                int i2 = v.s;
                if (i2 == 1) {
                    if (v.r == 1 || v.r == 4 || v.r == 5) {
                        a(onClickListener);
                    }
                    if (v.r == 2 || v.r == 3) {
                        E();
                    }
                } else if (i2 == 2 || i2 == 3) {
                    if (v.r == 5) {
                        F();
                    }
                    if (v.r == 1 || v.r == 4) {
                        a(onClickListener);
                    }
                }
                this.v = this.w.b();
                this.v.show();
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(Size size) {
        RelativeLayout.LayoutParams layoutParams;
        if (this.s == null) {
            com.oppo.camera.d.a("CameraPreviewUI", "layoutPreviewFrameToPreviewSize, mActivity is null");
            return;
        }
        e eVar = this.u;
        boolean z2 = true;
        if (eVar != null) {
            eVar.a(com.oppo.camera.o.d.w() && this.B.h("pref_video_eis"));
        }
        if (this.D != null) {
            if (size.getWidth() == 0 || size.getWidth() != size.getHeight() || !this.B.ae()) {
                boolean z3 = Math.abs((((double) size.getWidth()) / ((double) size.getHeight())) - 1.3333333333333333d) > 0.01d;
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                if (!z3) {
                    int width = size.getWidth();
                    int height = size.getHeight();
                    float f = ((float) height) / ((float) width);
                    if ((((double) width) / ((double) height)) - 1.0d != 0.0d) {
                        z2 = false;
                    }
                    if (z2) {
                        layoutParams2.topMargin = com.oppo.camera.o.d.E() + com.oppo.camera.o.d.C();
                        layoutParams2.height = com.oppo.camera.o.d.E() + com.oppo.camera.o.d.C() + com.oppo.camera.o.d.N();
                    } else {
                        layoutParams2.topMargin = com.oppo.camera.o.d.E();
                        layoutParams2.bottomMargin = (int) (((float) (com.oppo.camera.o.d.L() - com.oppo.camera.o.d.E())) - (((float) com.oppo.camera.o.d.N()) / f));
                    }
                } else if (Math.abs((((double) size.getWidth()) / ((double) size.getHeight())) - 1.5d) < 0.01d) {
                    int width2 = size.getWidth();
                    int height2 = size.getHeight();
                    if (this.p % 180 != 0) {
                        width2 = size.getHeight();
                        height2 = size.getWidth();
                    }
                    float f2 = 1.0f;
                    float N2 = width2 != 0 ? ((float) com.oppo.camera.o.d.N()) / ((float) width2) : 1.0f;
                    if (height2 != 0) {
                        f2 = ((float) com.oppo.camera.o.d.M()) / ((float) height2);
                    }
                    layoutParams = N2 != f2 ? new RelativeLayout.LayoutParams((int) (((float) width2) * N2), (int) (((float) height2) * N2)) : layoutParams2;
                    layoutParams.addRule(10);
                    layoutParams.topMargin = com.oppo.camera.o.d.E();
                } else {
                    float width3 = ((float) size.getWidth()) / ((float) size.getHeight());
                    int b2 = com.oppo.camera.o.d.b(size.getWidth(), size.getHeight());
                    if (!this.B.ae() || b2 == 1) {
                        layoutParams2.topMargin = com.oppo.camera.o.d.E();
                        layoutParams2.bottomMargin = (int) (((float) (com.oppo.camera.o.d.L() - com.oppo.camera.o.d.E())) - (((float) com.oppo.camera.o.d.N()) * width3));
                    }
                }
                layoutParams = layoutParams2;
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-1, com.oppo.camera.o.d.N());
                layoutParams.topMargin = com.oppo.camera.o.d.E() + com.oppo.camera.o.d.C();
                layoutParams.bottomMargin = com.oppo.camera.o.d.L() - ((com.oppo.camera.o.d.E() + com.oppo.camera.o.d.C()) + com.oppo.camera.o.d.N());
            }
            this.E = layoutParams;
            this.D.setLayoutParams(this.E);
            Activity activity = this.s;
            if (activity != null) {
                View childAt = ((ViewGroup) activity.getWindow().getDecorView()).getChildAt(0);
                if (childAt != null) {
                    childAt.requestLayout();
                }
            }
            b bVar = this.B;
            if (bVar != null) {
                bVar.e(this.D.getWidth(), this.D.getHeight());
            }
        }
    }

    private Bitmap c(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int height = bitmap.getHeight();
        float width = (float) bitmap.getWidth();
        float f = (float) height;
        return com.oppo.camera.o.d.a(bitmap, (int) (width * 0.1f), (int) (0.1f * f), (int) (width * 0.8f), (int) (f * 0.8f));
    }

    private void h(boolean z2) {
        synchronized (this) {
            this.i = z2;
        }
    }

    public void A() {
        this.Y = false;
        if (this.H == null) {
            this.H = b((ViewGroup) this.D);
        }
        this.H.setImageBitmap((Bitmap) null);
        this.H.setVisibility(0);
        this.H.setBackgroundColor(-16777216);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setInterpolator(new c());
        alphaAnimation.setDuration(50);
        alphaAnimation.setAnimationListener(this.ac);
        this.H.clearAnimation();
        this.H.startAnimation(alphaAnimation);
    }

    public void B() {
        Activity activity = this.s;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (d.this.x != null) {
                        d.this.x.c();
                        d.this.x.b();
                        boolean unused = d.this.k = false;
                    }
                }
            });
        }
    }

    public void C() {
        this.A = this.z;
    }

    public GLRootView D() {
        return this.U;
    }

    public void E() {
        Resources resources = this.s.getResources();
        boolean z2 = this.Z;
        int i2 = R.array.storage_tip_internal_full_external_available_can_clean;
        String[] stringArray = resources.getStringArray(z2 ? R.array.storage_tip_internal_full_external_available_can_clean : R.array.storage_tip_internal_full_external_available_can_not_clean);
        int i3 = v.r;
        final boolean z3 = false;
        if (i3 == 2) {
            Resources resources2 = this.s.getResources();
            if (!this.Z) {
                i2 = R.array.storage_tip_internal_full_external_available_can_not_clean;
            }
            stringArray = resources2.getStringArray(i2);
            z3 = true;
        } else if (i3 == 3) {
            stringArray = this.s.getResources().getStringArray(this.Z ? R.array.storage_tip_external_full_internal_available_can_clean : R.array.storage_tip_external_full_internal_available_can_not_clean);
        }
        this.w.a((CharSequence[]) stringArray, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface == null) {
                    return;
                }
                if (i == 0) {
                    dialogInterface.dismiss();
                    if (d.this.Z) {
                        Intent intent = new Intent("com.oppo.cleandroid.ui.ClearMainActivity");
                        intent.putExtra("enter_from", d.this.s.getPackageName());
                        try {
                            intent.addFlags(67108864);
                            d.this.s.startActivity(intent);
                        } catch (Exception e) {
                            com.oppo.camera.d.e("CameraPreviewUI", "makeMultipleOptionStorageDialog, Exception when start ClearMainActivity: " + e);
                        }
                    }
                } else if (i == 1) {
                    String string = d.this.t.getString("pref_camera_storage_key", d.this.s.getString(R.string.camera_storage_default_value));
                    if (z3) {
                        if (com.oppo.camera.c.a_.equals(string)) {
                            i.a a2 = d.this.t.edit();
                            a2.putString("pref_camera_storage_key", "on");
                            a2.apply();
                        }
                        v.q = "on";
                    } else {
                        if ("on".equals(string)) {
                            i.a a3 = d.this.t.edit();
                            a3.putString("pref_camera_storage_key", com.oppo.camera.c.a_);
                            a3.apply();
                        }
                        v.q = com.oppo.camera.c.a_;
                    }
                    v.s = v.a(v.q);
                } else if (i == 2) {
                    dialogInterface.dismiss();
                }
            }
        });
    }

    public void F() {
        this.w.b((int) R.string.camera_button_ok, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null && "on".equals(d.this.t.getString("pref_camera_storage_key", d.this.s.getString(R.string.camera_storage_default_value)))) {
                    i.a a2 = d.this.t.edit();
                    a2.putString("pref_camera_storage_key", com.oppo.camera.c.a_);
                    a2.commit();
                    d.this.B.af();
                }
            }
        });
    }

    public void G() {
        com.oppo.camera.d.a("CameraPreviewUI", "updateStorageHint(), storage_status = " + v.s + ", Storage.sStorageOverrideState = " + v.r);
        int i2 = v.s;
        if (i2 == 0) {
            color.support.v7.app.b bVar = this.v;
            if (bVar != null) {
                bVar.cancel();
            }
        } else if (i2 == 1) {
            if (v.r == 1) {
                this.L = this.s.getString(R.string.camera_storage_all_full);
            } else if (v.r == 2) {
                this.L = this.s.getString(R.string.camera_storage_internal_full_external_avaliable);
            } else if (v.r == 3) {
                this.L = this.s.getString(R.string.camera_storage_internal_avaliable_external_full);
            } else if (v.r == 4) {
                this.L = this.s.getString(R.string.camera_storage_internal_fullL_external_full);
            } else if (v.r == 5) {
                this.L = this.s.getString(R.string.camera_storage_all_full);
            }
            b(this.ae);
        } else if (i2 == 2 || i2 == 3) {
            if (v.r == 5) {
                this.L = this.s.getString(R.string.camera_storage_external_fail);
            } else if (v.r == 1) {
                this.L = this.s.getString(R.string.camera_storage_all_full);
            } else if (v.r == 4) {
                this.L = this.s.getString(R.string.camera_storage_internal_fullL_external_full);
            }
            b(this.ae);
        }
    }

    public void H() {
        com.oppo.camera.d.a("CameraPreviewUI", "cancelBlurAnimation");
        this.j = true;
        Handler handler = this.aa;
        if (handler != null) {
            handler.removeMessages(1);
            this.aa.removeMessages(2);
        }
    }

    public void I() {
        if (this.R != null && this.Q != null && this.S != null) {
            boolean z2 = this.j;
            if (z2) {
                return;
            }
            if (z2) {
                com.oppo.camera.d.a("CameraPreviewUI", "notifyPreviewImageAnimationOnMiddle cancel animation");
                return;
            }
            this.aa.removeMessages(2);
            this.aa.sendEmptyMessage(2);
        }
    }

    public void J() {
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.a();
        }
        b bVar = this.B;
        if (bVar != null) {
            bVar.ag();
        }
    }

    public void K() {
        b bVar = this.B;
        if (bVar != null) {
            bVar.ah();
        }
    }

    public void L() {
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.setBackground((Drawable) null);
        }
        b bVar = this.B;
        if (bVar != null) {
            bVar.ai();
        }
    }

    public Rect[] M() {
        FaceView faceView = this.x;
        if (faceView != null) {
            return faceView.getFaceRects();
        }
        return null;
    }

    public void a() {
        this.h = false;
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.c();
        }
    }

    public void a(float f) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setEISScale(f);
        }
    }

    public void a(int i2) {
        h();
        RotableTextView rotableTextView = this.V;
        if (rotableTextView != null) {
            if (i2 < 10) {
                rotableTextView.setText("0" + String.valueOf(i2));
            } else {
                rotableTextView.setText(String.valueOf(i2));
            }
            this.V.setVisibility(0);
        }
    }

    public void a(int i2, int i3) {
        this.q = i2;
        this.r = i3;
    }

    public void a(DialogInterface.OnCancelListener onCancelListener) {
        new b.a(this.s, R.style.DialogAlert).a((CharSequence) this.s.getResources().getString(R.string.camera_video_rec_disable_title)).b((int) R.string.camera_button_ok, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        }).a(onCancelListener).d();
    }

    public void a(DialogInterface.OnClickListener onClickListener) {
        this.w.a(this.Z ? R.string.camera_storage_button_clean : R.string.camera_button_ok, onClickListener);
        this.w.b((int) R.string.camera_storage_button_cancel, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        });
    }

    public void a(SharedPreferences sharedPreferences, String str) {
        if (str.equals("pref_camera_assistant_line_key")) {
            this.M = sharedPreferences.getString("pref_camera_assistant_line_key", this.s.getResources().getString(R.string.camera_assistant_line_default_value));
        }
    }

    public void a(Bitmap bitmap) {
        a(false);
        if (this.C == null) {
            this.C = a((ViewGroup) this.D);
        }
        if (bitmap != null) {
            ImageView imageView = this.C;
            if (imageView != null) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                this.C.setImageBitmap(bitmap);
                this.C.setVisibility(0);
            }
        }
        m();
    }

    public void a(Bitmap bitmap, Size size, Size size2, final a aVar, int i2) {
        com.oppo.camera.d.a("CameraPreviewUI", "startShowPreviewImageAnimation, size: " + size.getWidth() + "x" + size.getHeight() + "=>" + size2.getWidth() + " x " + size2.getHeight() + ", moreTime: " + i2 + ", isRecycled: " + bitmap.isRecycled());
        this.R = size;
        this.Q = size2;
        this.S = aVar;
        boolean z2 = false;
        this.j = false;
        if (this.I == null) {
            this.I = (RelativeLayout) this.s.findViewById(R.id.camera);
        }
        if (this.J == null) {
            this.J = new GLImageView(this.s);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.I.addView(this.J, ((ViewGroup) this.U.getParent()).indexOfChild(this.U) + 1, layoutParams);
        }
        this.J.setAnimationEndListener(new GLImageView.BlurAnimationEndListener() {
            public void onBlurAnimationEnd() {
                if (!d.this.h) {
                    a aVar = aVar;
                    if (aVar != null) {
                        aVar.a();
                    }
                }
            }
        });
        this.J.setVisibility(0);
        if (!bitmap.isRecycled()) {
            if (com.oppo.camera.o.d.b(bitmap.getHeight(), bitmap.getWidth()) != com.oppo.camera.o.d.b(size2.getHeight(), size2.getWidth()) || !this.B.h("pref_video_eis")) {
                this.J.setImageBitmap(bitmap);
            } else {
                this.J.setImageBitmap(c(bitmap));
            }
            z2 = this.J.c();
        }
        com.oppo.camera.d.a("CameraPreviewUI", "startShowPreviewImageAnimation, isStartAnimation: " + z2);
        if (z2) {
            this.J.setChangeToSize(com.oppo.camera.o.d.b(size2.getWidth(), size2.getHeight()));
        }
        this.K = bitmap;
        Activity activity = this.s;
        if (activity != null) {
            activity.onUserInteraction();
        }
        if (!this.j) {
            this.aa.removeMessages(1);
            this.aa.sendEmptyMessageDelayed(1, (long) i2);
        }
    }

    public void a(Rect rect) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setCropRegion(rect);
        }
    }

    public void a(final Size size, boolean z2) {
        com.oppo.camera.d.a("CameraPreviewUI", "updatePreviewSize, previewSize: " + size.getWidth() + "x" + size.getHeight() + ", layoutPreview: " + z2);
        a(size);
        if (Thread.currentThread() != this.X) {
            this.s.runOnUiThread(new Runnable() {
                public void run() {
                    d.this.b(size);
                }
            });
        } else {
            b(size);
        }
    }

    public void a(t.a aVar, boolean z2, boolean z3, String str) {
        e eVar = this.u;
        if (eVar != null) {
            eVar.a(aVar, z2, z3, str);
        }
    }

    public void a(f fVar) {
        this.u.a((h) null, fVar, O(), P(), Q(), R());
    }

    public void a(com.oppo.camera.ui.preview.a.i iVar) {
        this.U = (GLRootView) this.s.findViewById(R.id.gl_root_view);
        this.U.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.U.setContentPane(this.ab);
        a(com.oppo.camera.e.a.c(this.B.ak()), iVar);
        this.I = (RelativeLayout) this.s.findViewById(R.id.camera);
        this.x = (FaceView) this.s.findViewById(R.id.face_view);
        this.D = (PreviewFrameLayout) this.s.findViewById(R.id.frame_layout);
        this.D.setOnSizeChangedListener(this);
        this.D.addOnLayoutChangeListener(this);
    }

    public void a(e.b bVar) {
        this.T = bVar;
    }

    public void a(boolean z2) {
        if (this.G == null) {
            this.G = new j(this.s);
            this.G.setForceDarkAllowed(false);
            this.G.setVisibility(8);
            this.D.addView(this.G, new ViewGroup.LayoutParams(-1, -1));
        }
        if (this.G == null) {
            return;
        }
        if (!z2 || !this.B.h("pref_camera_assistant_line_key") || !this.M.equals("on")) {
            this.G.a();
        } else {
            this.G.a(this.D.getLeft(), this.D.getTop(), this.D.getRight(), this.D.getBottom());
        }
    }

    public void a(Face[] faceArr) {
        if (this.x == null) {
            return;
        }
        if (!this.u.g()) {
            this.x.setFaces(faceArr);
        } else if (this.x.a()) {
            z();
        }
    }

    public boolean a(Size size) {
        com.oppo.camera.d.a("CameraPreviewUI", "updateSurfaceTexture, previewSize: " + size.getWidth() + "x" + size.getHeight() + ", mSurfaceTexture: " + this.O);
        synchronized (this.g) {
            this.N = size;
            b(size.getWidth(), size.getHeight());
            int e = this.u.e();
            int f = this.u.f();
            if (!this.h) {
                this.u.h();
                if (this.O == null) {
                    a(-1, -1, size.getWidth(), size.getHeight());
                    this.u.a();
                    this.O = this.u.b();
                    this.P = new Surface(this.O);
                } else {
                    a(e, f, size.getWidth(), size.getHeight());
                }
                this.u.d();
                this.O.setDefaultBufferSize(size.getWidth(), size.getHeight());
                return true;
            }
            com.oppo.camera.d.a("CameraPreviewUI", "updateSurfaceTexture, Activity already pause. Avoid 0x502.");
            return false;
        }
    }

    public boolean a(MotionEvent motionEvent) {
        ImageView imageView = this.C;
        if (imageView == null || !imageView.isShown()) {
            return false;
        }
        com.oppo.camera.d.a("CameraPreviewUI", "dispatchTouchEvent, mReviewImage is show");
        return true;
    }

    public void b() {
        com.oppo.camera.d.a("CameraPreviewUI", "onResumeMessage");
        this.M = this.t.getString("pref_camera_assistant_line_key", this.s.getResources().getString(R.string.camera_assistant_line_default_value));
        a("on".equals(this.M));
        m();
        this.X = Thread.currentThread();
    }

    public void b(float f) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setZoomValue(f);
        }
    }

    public void b(int i2) {
        this.y = i2;
    }

    public void b(int i2, int i3) {
        b bVar = this.B;
        if (bVar != null) {
            bVar.e(i2, i3);
        }
        h(true);
        this.l = 0;
    }

    public void b(Bitmap bitmap) {
        if (this.C == null) {
            this.C = a((ViewGroup) this.D);
        }
        this.C.setScaleType(ImageView.ScaleType.FIT_START);
        if (bitmap != null) {
            this.C.setImageBitmap(com.oppo.camera.o.d.a(bitmap, -this.A, false));
            this.C.setVisibility(0);
        }
    }

    public void b(boolean z2) {
        RotableTextView rotableTextView = this.V;
        if (rotableTextView != null) {
            if (!z2) {
                rotableTextView.setText((CharSequence) null);
                this.V.setVisibility(8);
            } else if (rotableTextView.isShown()) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(100);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() {
                    public void onAnimationEnd(Animation animation) {
                        if (d.this.V != null) {
                            d.this.V.setText((CharSequence) null);
                        }
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.V.startAnimation(alphaAnimation);
                this.V.setVisibility(8);
            }
        }
    }

    public void c() {
        com.oppo.camera.d.a("CameraPreviewUI", "releaseSurfaceTexture");
        if (this.O != null) {
            this.u.c();
            this.u.a(t.a.f);
            this.O = null;
        }
        Surface surface = this.P;
        if (surface != null) {
            surface.release();
            this.P = null;
        }
    }

    public void c(int i2) {
        this.z = i2;
        RotableTextView rotableTextView = this.V;
        if (rotableTextView != null) {
            rotableTextView.a(i2, true);
        }
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.a(i2, false);
        }
        com.oppo.camera.ui.i iVar = this.W;
        if (iVar != null) {
            iVar.a(i2, true);
        }
    }

    public void c(boolean z2) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setMirror(z2);
        }
    }

    public void d() {
        com.oppo.camera.d.a("CameraPreviewUI", "onPause");
        this.h = true;
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.d();
        }
        m();
        k();
        q();
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.b();
        }
        ImageView imageView = this.H;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        GLRootView gLRootView2 = this.U;
        if (gLRootView2 != null) {
            gLRootView2.setAlpha(1.0f);
        }
        Bitmap bitmap = this.K;
        if (bitmap != null) {
            bitmap.recycle();
            this.K = null;
        }
        this.u.b(true);
        i();
        h(false);
        this.k = false;
        this.aa.removeCallbacksAndMessages((Object) null);
        c();
    }

    public void d(int i2) {
        this.p = i2;
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setDisplayOrientation(i2);
        }
    }

    public void d(boolean z2) {
        this.f2935a = z2;
        if (this.f2935a) {
            this.f2936b = this.B.aj();
        }
    }

    public void e() {
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.setBackgroundColor(-16777216);
        }
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout != null) {
            GLImageView gLImageView = this.J;
            if (gLImageView != null && relativeLayout.indexOfChild(gLImageView) > 0) {
                this.I.removeView(this.J);
                this.J = null;
            }
        }
        e eVar = this.u;
        if (eVar != null) {
            eVar.a(t.a.g);
        }
    }

    public void e(int i2) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setMainFaceIndex(i2);
        }
    }

    public void e(boolean z2) {
        FaceView faceView = this.x;
        if (faceView != null && !this.k) {
            faceView.setMirror(z2);
            this.x.setVisibility(0);
            this.x.b();
            this.x.d();
            this.k = true;
        }
    }

    public void f() {
        com.oppo.camera.d.a("CameraPreviewUI", "onDestroy");
        g();
        this.v = null;
        this.s = null;
        this.C = null;
        this.w = null;
        this.U = null;
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.e();
            this.x = null;
        }
        PreviewFrameLayout previewFrameLayout = this.D;
        if (previewFrameLayout != null) {
            previewFrameLayout.removeAllViewsInLayout();
            this.D.removeAllViews();
            this.D = null;
        }
    }

    public void f(boolean z2) {
        GLImageView gLImageView = this.J;
        if (gLImageView == null) {
            return;
        }
        if (z2) {
            gLImageView.b();
        } else {
            gLImageView.a();
        }
    }

    public void g() {
        e eVar = this.u;
        if (eVar != null) {
            eVar.i();
        }
        GLRootView gLRootView = this.U;
        if (gLRootView != null) {
            gLRootView.f();
        }
    }

    public void g(boolean z2) {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.setShowBeauty3DFace(z2);
        }
    }

    public void h() {
        if (this.I != null && this.V == null) {
            this.s.getLayoutInflater().inflate(R.layout.burst, this.I);
            this.V = (RotableTextView) this.s.findViewById(R.id.burst_num_view);
            ((RelativeLayout.LayoutParams) this.V.getLayoutParams()).addRule(2, R.id.control_panel_layout);
            this.V.setTypeface(com.oppo.camera.o.d.u());
            this.V.a(this.z, false);
            this.V.setVisibility(8);
        }
    }

    public void i() {
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout != null) {
            RotableTextView rotableTextView = this.V;
            if (rotableTextView != null) {
                relativeLayout.removeView(rotableTextView);
                this.V = null;
            }
        }
    }

    public void j() {
        if (this.D != null && this.F == null) {
            this.F = new RotateImageView(this.s);
            this.F.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            this.F.setScaleType(ImageView.ScaleType.CENTER);
            this.F.setImageResource(R.drawable.ae_af_lock);
            this.D.addView(this.F);
            b bVar = this.B;
            if (bVar != null) {
                bVar.a(this.F);
            }
        }
    }

    public void k() {
        PreviewFrameLayout previewFrameLayout = this.D;
        if (previewFrameLayout != null) {
            RotateImageView rotateImageView = this.F;
            if (rotateImageView != null) {
                previewFrameLayout.removeView(rotateImageView);
                this.F = null;
            }
        }
    }

    public void l() {
        j();
        RotateImageView rotateImageView = this.F;
        if (rotateImageView != null) {
            rotateImageView.setVisibility(0);
        }
    }

    public void m() {
        RotateImageView rotateImageView = this.F;
        if (rotateImageView != null) {
            rotateImageView.setVisibility(8);
        }
    }

    public void n() {
        if (this.I != null && this.W == null) {
            Activity activity = this.s;
            if (activity != null) {
                activity.runOnUiThread(new Runnable() {
                    public void run() {
                        if (d.this.W == null) {
                            d dVar = d.this;
                            com.oppo.camera.ui.i unused = dVar.W = new com.oppo.camera.ui.i(dVar.s);
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                            layoutParams.addRule(13);
                            d.this.W.setImage(BitmapFactory.decodeResource(d.this.s.getResources(), R.drawable.no_face_detect));
                            d.this.W.setText(d.this.s.getResources().getString(R.string.camera_omoji_no_faces));
                            d.this.W.setViewGap(d.this.s.getResources().getDimensionPixelSize(R.dimen.omoji_no_face_view_gap));
                            d.this.D.addView(d.this.W, layoutParams);
                            d.this.W.a(d.this.z, false);
                            d.this.W.setVisibility(8);
                        }
                    }
                });
            }
        }
    }

    public void o() {
        n();
        if (this.s != null) {
            com.oppo.camera.ui.i iVar = this.W;
            if (iVar != null && iVar.getVisibility() != 0) {
                this.aa.removeMessages(3);
                this.aa.sendEmptyMessage(3);
            }
        }
    }

    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i2 != i6 || i3 != i7 || i4 != i8 || i5 != i9) {
            int i10 = i4 - i2;
            int i11 = i5 - i3;
            if (com.oppo.camera.o.d.a(this.s) % 180 == 0) {
                this.u.c(i10, i11);
            } else {
                this.u.c(i11, i10);
            }
        }
    }

    public void p() {
        if (this.s != null) {
            com.oppo.camera.ui.i iVar = this.W;
            if (iVar != null && iVar.getVisibility() == 0) {
                this.aa.removeMessages(4);
                this.aa.sendEmptyMessage(4);
            }
        }
    }

    public void q() {
        PreviewFrameLayout previewFrameLayout = this.D;
        if (previewFrameLayout != null) {
            com.oppo.camera.ui.i iVar = this.W;
            if (iVar != null) {
                previewFrameLayout.removeView(iVar);
                this.W = null;
            }
        }
    }

    public void r() {
        ImageView imageView = this.C;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (this.B.L()) {
            l();
        }
        this.u.b(true);
        a(true);
    }

    public boolean s() {
        ImageView imageView = this.C;
        if (imageView != null) {
            return imageView.isShown();
        }
        return false;
    }

    public void t() {
        this.C.setVisibility(8);
    }

    public Surface u() {
        return this.P;
    }

    public Size v() {
        Size size;
        synchronized (this.g) {
            size = this.N;
        }
        return size;
    }

    public e w() {
        return this.u;
    }

    public RelativeLayout x() {
        return this.D;
    }

    public void y() {
        e eVar = this.u;
        if (eVar != null) {
            eVar.m();
        }
    }

    public void z() {
        FaceView faceView = this.x;
        if (faceView != null) {
            faceView.b();
        }
    }
}
