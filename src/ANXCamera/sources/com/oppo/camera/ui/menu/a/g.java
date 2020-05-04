package com.oppo.camera.ui.menu.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import color.support.v7.app.b;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.camera.ui.OppoNumAISeekBar;
import com.oppo.camera.ui.OppoNumSeekBar;
import com.oppo.camera.ui.menu.a.c;

/* compiled from: FaceBeautyMenu */
public class g implements View.OnClickListener, OppoNumSeekBar.b, c.b {

    /* renamed from: a  reason: collision with root package name */
    private int f2715a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2716b = 0;
    private int c = 0;
    /* access modifiers changed from: private */
    public int d = 0;
    private int e;
    private int f = 0;
    /* access modifiers changed from: private */
    public int g = 0;
    /* access modifiers changed from: private */
    public int h = 0;
    private int i = 0;
    private int[] j = {0, 0, 0, 0, 0, 0, 0, 0};
    /* access modifiers changed from: private */
    public boolean k = false;
    private boolean l = false;
    private PathInterpolator m = new PathInterpolator(0.33f, 0.0f, 0.66f, 1.0f);
    private PathInterpolator n = new PathInterpolator(0.35f, 0.62f, 0.2f, 1.0f);
    private PathInterpolator o = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    private Activity p = null;
    /* access modifiers changed from: private */
    public a q = null;
    /* access modifiers changed from: private */
    public e r = null;
    private d s = null;
    /* access modifiers changed from: private */
    public b t = null;
    private AnimatorSet u = null;
    private AnimatorSet v = null;
    private AnimatorSet w = null;
    private AnimatorSet x = null;
    private Animator.AnimatorListener y = new Animator.AnimatorListener() {
        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (!g.this.k) {
                g gVar = g.this;
                gVar.a(gVar.h());
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
            if (g.this.k && 1 == g.this.d) {
                g.this.r.b().setVisibility(0);
                g.this.r.b().setAlpha(1.0f);
                g.this.r.g().setVisibility(0);
                g.this.r.g().setAlpha(1.0f);
            }
        }
    };

    /* compiled from: FaceBeautyMenu */
    public interface a {
        int a(int i);

        void a();

        void a(int i, int i2, boolean z);

        int b();

        void b(int i);

        boolean c();

        int d();

        int[] e();
    }

    public g(Activity activity, a aVar, int i2) {
        this.p = activity;
        this.q = aVar;
        this.e = i2;
        this.f2715a = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_menu_translate_x);
        this.f2716b = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_menu_translate_hide_x);
        this.c = activity.getResources().getDimensionPixelSize(R.dimen.face_beauty_menu_translate_y);
    }

    private void a(View view) {
        view.setVisibility(4);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", new float[]{0.0f, 1.0f});
        ofFloat.setInterpolator(this.m);
        ofFloat.setDuration(330);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationX", new float[]{(float) this.f2715a, 0.0f});
        ofFloat2.setInterpolator(this.n);
        ofFloat2.setDuration(330);
        ofFloat2.addListener(this.y);
        this.u = new AnimatorSet();
        this.u.play(ofFloat2).with(ofFloat);
        this.u.start();
    }

    private void a(View view, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", new float[]{1.0f, 0.0f});
        ofFloat.setInterpolator(this.m);
        ofFloat.setDuration(160);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationY", new float[]{0.0f, (float) this.c});
        ofFloat2.setInterpolator(this.o);
        ofFloat2.setDuration(330);
        this.x = new AnimatorSet();
        if (z) {
            this.x.addListener(this.y);
        }
        this.x.play(ofFloat2).with(ofFloat);
        this.x.start();
    }

    /* access modifiers changed from: private */
    public void a(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void b(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", new float[]{1.0f, 0.0f});
        ofFloat.setInterpolator(this.m);
        ofFloat.setDuration(160);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationX", new float[]{0.0f, (float) this.f2716b});
        ofFloat2.setInterpolator(this.o);
        ofFloat2.setDuration(410);
        this.v = new AnimatorSet();
        this.v.play(ofFloat2).with(ofFloat);
        this.v.addListener(this.y);
        this.v.start();
    }

    private void b(boolean z, boolean z2) {
        this.l = this.q.b() != 0;
        if (2 == this.d) {
            this.s.a(this.q.a(0), z2, this.q.d());
        }
        if (z) {
            c(this.s.b());
        }
        this.i++;
    }

    private void c(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", new float[]{0.0f, 1.0f});
        ofFloat.setInterpolator(this.m);
        ofFloat.setDuration(160);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationY", new float[]{(float) this.c, 0.0f});
        ofFloat2.setInterpolator(this.n);
        ofFloat2.setDuration(330);
        this.w = new AnimatorSet();
        this.w.play(ofFloat2).with(ofFloat);
        this.w.start();
    }

    private void c(boolean z) {
        this.l = this.q.b() != 0;
        if (this.l) {
            this.r.d();
            int e2 = this.r.e();
            if (e2 < 0) {
                e2 = 0;
            }
            this.r.a(e2, true);
            e eVar = this.r;
            eVar.a(this.q.a(eVar.e()), this.q.e());
            this.r.a(true);
            this.r.b(l());
        } else {
            this.r.a(-1, false);
            this.r.c();
            this.r.a(false);
            this.r.b(true);
        }
        if (z) {
            a(this.r.g());
            c(this.r.h());
            return;
        }
        this.r.b().setAlpha(1.0f);
        this.r.g().setAlpha(1.0f);
        this.r.g().setTranslationX(0.0f);
        this.r.h().setEnabled(true);
    }

    private void d(boolean z) {
        if (this.r != null) {
            b bVar = this.t;
            if (bVar != null && bVar.isShowing()) {
                this.t.cancel();
            }
            if (((OppoNumAISeekBar) this.r.h()).b()) {
                d.a("FaceBeautyMenu", "closeCustomBeautyMenu, isThumbOnDragging");
                ((OppoNumAISeekBar) this.r.h()).a();
            }
            if (z) {
                b(this.r.g());
                if (this.l) {
                    a(this.r.h(), false);
                    return;
                }
                return;
            }
            a((a) this.r);
        }
    }

    private void e(boolean z) {
        d dVar = this.s;
        if (dVar != null) {
            if (((OppoNumAISeekBar) dVar.b()).b()) {
                d.a("FaceBeautyMenu", "closeCommonBeautyMenu, isThumbOnDragging");
                ((OppoNumAISeekBar) this.s.b()).a();
            }
            if (z) {
                a(this.s.b(), true);
            } else {
                a((a) this.s);
            }
        }
    }

    /* access modifiers changed from: private */
    public void f(boolean z) {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.p);
        menuClickMsgData.buildEvent(true);
        menuClickMsgData.mFuncKeyId = 2;
        menuClickMsgData.mItem = MenuClickMsgData.KEY_RESET_SMOOTH;
        menuClickMsgData.mCameraEnterType = String.valueOf(this.e);
        if (z) {
            menuClickMsgData.mItemValue = String.valueOf(0);
        } else {
            menuClickMsgData.mItemValue = String.valueOf(1);
        }
        menuClickMsgData.report();
    }

    /* access modifiers changed from: private */
    public a h() {
        int i2 = this.d;
        if (i2 == 1) {
            return this.r;
        }
        if (i2 != 2) {
            return null;
        }
        return this.s;
    }

    private void i() {
        if (this.t == null) {
            b.a aVar = new b.a(this.p, 2131755476);
            aVar.a((int) R.string.camera_face_beauty_menu_reset_alert);
            aVar.a((int) R.string.camera_face_beauty_menu_reset, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    g.this.r.a(-100000, g.this.q.e());
                    g.this.q.a();
                    g.this.r.b(true);
                    g.this.t.cancel();
                    int unused = g.this.g = g.this.g + 1;
                    g.this.f(true);
                }
            });
            aVar.b((int) R.string.camera_face_beauty_menu_cancle, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    int unused = g.this.h = g.this.h + 1;
                    g.this.f(false);
                }
            });
            aVar.a(true);
            this.t = aVar.b();
            this.f++;
        }
        this.t.show();
    }

    private void j() {
        this.q.b(102);
        this.l = true;
    }

    private void k() {
        this.q.b(0);
        this.l = false;
    }

    private boolean l() {
        int i2 = 0;
        for (int i3 : this.q.e()) {
            int a2 = this.q.a(i2);
            if (a2 != i3 && a2 != -100000) {
                return false;
            }
            i2++;
        }
        return true;
    }

    private void m() {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int[] iArr = this.j;
            if (i2 >= iArr.length) {
                break;
            }
            if (iArr[i2] > 0) {
                sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.CUSTOM_BEAUTY_CLICK_NUMS[i2], String.valueOf(this.j[i2])));
                this.j[i2] = 0;
            }
            i2++;
        }
        int i3 = this.f;
        if (i3 > 0) {
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.FACE_BEAUTY_RESET_SHOW, String.valueOf(i3)));
            this.f = 0;
        }
        int i4 = this.g;
        if (i4 > 0) {
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.FACE_BEAUTY_RESET_OK, String.valueOf(i4)));
            this.g = 0;
        }
        int i5 = this.h;
        if (i5 > 0) {
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.FACE_BEAUTY_RESET_CANCEL, String.valueOf(i5)));
            this.h = 0;
        }
        int i6 = this.i;
        if (i6 > 0) {
            sb.append(CameraStatisticsUtil.format(CameraStatisticsUtil.FACE_BEAUTY_COMMON_SHOW, String.valueOf(i6)));
            this.i = 0;
        }
        if (sb.length() > 0) {
            CameraStatisticsUtil.onCommon(this.p, CameraStatisticsUtil.EVENT_MENU_CLICK, sb.toString(), false);
        }
    }

    private void n() {
        MenuClickMsgData menuClickMsgData = new MenuClickMsgData(this.p);
        menuClickMsgData.buildEvent(true);
        menuClickMsgData.mFuncKeyId = 2;
        menuClickMsgData.mItem = MenuClickMsgData.KEY_NONE_SMOOTH;
        menuClickMsgData.mCameraEnterType = String.valueOf(this.e);
        menuClickMsgData.report();
    }

    public View a(int i2) {
        int i3 = this.d;
        this.d = i2;
        if (i3 != this.d) {
            a h2 = h();
            if (h2 != null) {
                h2.a();
            }
        }
        int i4 = this.d;
        if (i4 == 1) {
            if (this.r == null) {
                this.r = new e(this.p, this, this, this);
            }
            return this.r.b();
        } else if (i4 != 2) {
            return null;
        } else {
            if (this.s == null) {
                this.s = new d(this.p, this);
            }
            return this.s.b();
        }
    }

    public void a(int i2, boolean z) {
        d.a("FaceBeautyMenu", "setVisibility, visibility: " + i2 + ", needAnim: " + z);
        long j2 = 160;
        long j3 = i2 == 0 ? 160 : 0;
        if (i2 != 0) {
            j2 = 80;
        }
        long j4 = j2;
        if (this.k) {
            a h2 = h();
            if (h2 == null) {
                return;
            }
            if (z) {
                com.oppo.camera.o.d.a(h2.b(), i2, (Animation.AnimationListener) null, j4, j3, (Interpolator) this.m);
            } else {
                h2.b().setVisibility(i2);
            }
        }
    }

    public void a(View view, int i2) {
        d.a("FaceBeautyMenu", "onItemClick, position: " + i2 + ", mMenuType: " + this.d);
        if (e()) {
            d.d("FaceBeautyMenu", "onItemClick, isAnimationRunning");
        } else if (((OppoNumAISeekBar) this.r.h()).b()) {
            d.a("FaceBeautyMenu", "onItemClick, isThumbOnDragging");
            ((OppoNumAISeekBar) this.r.h()).a();
        } else if (1 == this.d) {
            if (!this.l) {
                j();
                c(this.r.h());
                this.r.d();
                this.r.b(l());
            }
            this.r.a(i2, false);
            this.r.a(this.q.a(i2), this.q.e());
            int[] iArr = this.j;
            if (i2 < iArr.length) {
                iArr[i2] = iArr[i2] + 1;
            }
        }
    }

    public void a(OppoNumSeekBar oppoNumSeekBar, int i2) {
    }

    public void a(OppoNumSeekBar oppoNumSeekBar, int i2, boolean z) {
        int i3 = this.d;
        if (1 == i3) {
            if (this.r.e() >= 0) {
                this.q.a(this.r.e(), i2, false);
            }
        } else if (2 == i3) {
            this.q.a(0, i2, false);
            if (!this.l && i2 != 0) {
                j();
            } else if (this.l && i2 == 0) {
                k();
            }
        }
    }

    public void a(boolean z) {
        d.a("FaceBeautyMenu", "setMenuOpen, menuOpen: " + z);
        this.k = z;
    }

    public void a(boolean z, boolean z2) {
        d.a("FaceBeautyMenu", "open, needAnim: " + z);
        int i2 = this.d;
        if (i2 == 1) {
            c(z);
        } else if (i2 == 2) {
            b(z, z2);
        }
    }

    public boolean a() {
        return this.q.c();
    }

    public int b() {
        return this.d;
    }

    public void b(OppoNumSeekBar oppoNumSeekBar, int i2) {
        int i3 = this.d;
        if (1 == i3) {
            if (this.r.e() >= 0) {
                this.q.a(this.r.e(), i2, true);
            }
            this.r.b(l());
        } else if (2 == i3) {
            this.q.a(0, i2, true);
            if (this.l && i2 == 0) {
                k();
            } else if (!this.l && i2 != 0) {
                j();
            }
        }
    }

    public void b(boolean z) {
        d.a("FaceBeautyMenu", "close, needAnim: " + z);
        int i2 = this.d;
        if (i2 == 1) {
            d(z);
        } else if (i2 == 2) {
            e(z);
        }
    }

    public ViewGroup.LayoutParams c() {
        int i2 = this.d;
        if (i2 == 1) {
            return this.r.f();
        }
        if (i2 != 2) {
            return null;
        }
        return this.s.c();
    }

    public void d() {
        if (1 == this.d) {
            e eVar = this.r;
            if (eVar != null && this.l) {
                eVar.a(0, false);
            }
        }
    }

    public boolean e() {
        AnimatorSet animatorSet = this.u;
        if (animatorSet == null || !animatorSet.isRunning()) {
            AnimatorSet animatorSet2 = this.v;
            if (animatorSet2 == null || !animatorSet2.isRunning()) {
                AnimatorSet animatorSet3 = this.w;
                if (animatorSet3 == null || !animatorSet3.isRunning()) {
                    AnimatorSet animatorSet4 = this.x;
                    if (animatorSet4 == null || !animatorSet4.isRunning()) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public boolean f() {
        return this.k;
    }

    public void g() {
        m();
    }

    public void onClick(View view) {
        if (e()) {
            d.d("FaceBeautyMenu", "onClick, isAnimationRunning");
            return;
        }
        switch (view.getId()) {
            case R.id.face_beauty_none:
                d.a("FaceBeautyMenu", "onClick, close face beauty");
                if (this.l) {
                    a(this.r.h(), false);
                    k();
                    this.r.a(false);
                    this.r.b(true);
                    this.r.a(-1, false);
                } else {
                    j();
                    c(this.r.h());
                    this.r.d();
                    this.r.b(l());
                    this.r.a(0, false);
                    this.r.a(this.q.a(0), this.q.e());
                }
                n();
                return;
            case R.id.face_beauty_reset:
                d.a("FaceBeautyMenu", "onClick, reset face beauty");
                if (this.l && !l()) {
                    i();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
