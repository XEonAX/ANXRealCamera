package com.oppo.camera.ui.menu.levelcontrol;

import android.animation.AnimatorSet;
import android.app.Activity;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.oppo.camera.R;
import com.oppo.camera.ui.menu.levelcontrol.ThreeDScrollBar;
import com.oppo.camera.ui.menu.setting.l;
import java.util.List;

/* compiled from: FilterEffectMenu */
public class d extends l {

    /* renamed from: a  reason: collision with root package name */
    private int f2787a = 0;

    /* renamed from: b  reason: collision with root package name */
    private Activity f2788b = null;
    private RelativeLayout c = null;
    private RelativeLayout d = null;
    /* access modifiers changed from: private */
    public ThreeDScrollBar e = null;
    /* access modifiers changed from: private */
    public a f = null;
    private Handler g = new Handler();
    /* access modifiers changed from: private */
    public AnimatorSet h = null;
    private List<String> i = null;
    /* access modifiers changed from: private */
    public int j = 0;
    /* access modifiers changed from: private */
    public boolean k = false;
    /* access modifiers changed from: private */
    public int l = 0;
    /* access modifiers changed from: private */
    public int m = 0;
    private int n = 0;
    private int s = 1;
    private int t = 1;

    /* compiled from: FilterEffectMenu */
    public interface a {
        void a();

        void a(int i);

        void a(f fVar);

        void a(String str);

        void b();

        void b(String str);

        boolean b(int i);

        boolean c();

        boolean d();

        int e();

        int f();
    }

    /* compiled from: FilterEffectMenu */
    private class b implements ThreeDScrollBar.a {
        private b() {
        }

        public void a() {
            if (d.this.f != null) {
                d.this.f.a();
            }
            if (d.this.e != null) {
                d.this.e.a(d.this.l, d.this.m);
            }
        }

        public void a(int i) {
            if (d.this.f != null) {
                d.this.f.a(i);
            }
        }

        public void a(f fVar) {
            if (d.this.f != null) {
                d.this.f.a(fVar);
            }
        }

        public boolean b() {
            return d.this.f != null && d.this.f.c() && !d.this.d() && (d.this.h == null || !d.this.h.isRunning()) && d.this.k;
        }

        public boolean b(int i) {
            if (d.this.f != null) {
                return d.this.f.b(i);
            }
            return false;
        }

        public int c() {
            return d.this.j;
        }

        public int d() {
            if (d.this.f != null) {
                return d.this.f.e();
            }
            return 0;
        }
    }

    public d(Activity activity) {
        super(activity);
        this.f2788b = activity;
    }

    private void l() {
        if (this.d == null) {
            this.d = (RelativeLayout) this.f2788b.getLayoutInflater().inflate(R.layout.effects_menu, (ViewGroup) null);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.f2788b.getResources().getDimensionPixelSize(R.dimen.effects_menu_height));
            layoutParams.addRule(10);
            layoutParams.topMargin = (com.oppo.camera.o.d.L() - com.oppo.camera.o.d.F()) + this.f2788b.getResources().getDimensionPixelSize(R.dimen.effects_menu_margin_top);
            a aVar = this.f;
            if (aVar != null) {
                this.c.addView(this.d, aVar.f(), layoutParams);
            } else {
                this.c.addView(this.d, layoutParams);
            }
            this.e = (ThreeDScrollBar) this.d.findViewById(R.id.effect_scrollbar);
            this.e.setCameraEntryType(this.s);
            this.e.setThreeDScrollBarTextureViewCallback(new b());
        } else if (this.t == 1) {
            a aVar2 = this.f;
            if (aVar2 != null) {
                aVar2.a("filter");
            }
        }
    }

    public void a() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.b();
        }
    }

    public void a(int i2) {
        this.f2787a = i2;
        this.c = (RelativeLayout) this.f2788b.findViewById(R.id.camera);
        if (this.c == null) {
        }
    }

    public void a(int i2, String str) {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.a(i2, str);
        }
    }

    public void a(int i2, boolean z) {
        com.oppo.camera.d.a("FilterEffectMenu", "setVisibility, visible: " + i2 + ", isAnim: " + z + ", isEffectMenuOpen: " + h());
        if (z) {
            if (h()) {
                a(this.d, i2, true);
            }
        } else if (h()) {
            a(this.d, i2, false);
        }
    }

    public void a(e eVar) {
        if (this.e != null && eVar != null) {
            eVar.b(this.l);
            eVar.c(this.m);
            this.j = eVar.g();
            this.e.a(eVar);
        }
    }

    public void a(String str) {
        if (this.q) {
            com.oppo.camera.d.a("FilterEffectMenu", "showMenuPanel, ExitAnimatorSet.isRunning, return");
            return;
        }
        a aVar = this.f;
        if (aVar == null || !aVar.d()) {
            com.oppo.camera.d.a("FilterEffectMenu", "showMenuPanel, mMenuListener null, return!");
            return;
        }
        if (this.f.c()) {
            this.t = 1;
            this.f.b("filter");
            b(true);
        }
        super.a(str);
    }

    public void a(List<String> list, String str, int i2) {
        this.i = list;
        this.j = i2;
    }

    public void a(boolean z) {
        if (!h()) {
            return;
        }
        if (d() || j()) {
            com.oppo.camera.d.a("FilterEffectMenu", "hideMenuPanel, anim isRunning, return.");
        } else {
            a(true, true);
        }
    }

    public void a(boolean z, boolean z2) {
        com.oppo.camera.d.a("FilterEffectMenu", "hideAnimator");
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        a(this.e, 4, true);
        this.k = false;
        a aVar = this.f;
        if (aVar != null) {
            aVar.b();
        }
        super.a(z);
    }

    public boolean a(int i2, int i3) {
        if (h() && i3 < k()) {
            if (d() || j()) {
                com.oppo.camera.d.a("FilterEffectMenu", "onSingleTapUp, onClick, anim isRunning.");
            } else {
                a(true, true);
                return true;
            }
        }
        return false;
    }

    public void b() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.c();
        }
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        this.p = false;
        this.q = false;
        b(true, false);
    }

    public void b(int i2) {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.a(i2);
        }
    }

    public void b(int i2, int i3) {
        com.oppo.camera.d.a("FilterEffectMenu", "notifyPreviewSizeChanged, Size: " + i2 + "x" + i3);
        this.l = i2;
        this.m = i3;
        if (h()) {
            ThreeDScrollBar threeDScrollBar = this.e;
            if (threeDScrollBar != null) {
                threeDScrollBar.a(i2, i3);
            }
        }
    }

    public void b(boolean z) {
        com.oppo.camera.d.a("FilterEffectMenu", "show, isAnim: " + z);
        if (this.i == null) {
            com.oppo.camera.d.e("FilterEffectMenu", "show failed, mCurrMenuNames: " + this.i);
            return;
        }
        this.k = true;
        l();
        if (z) {
            a(this.d, 0, true);
            a(this.e, 0, true);
            return;
        }
        a(this.d, 0, false);
        a(this.e, 0, false);
    }

    public void b(boolean z, boolean z2) {
        com.oppo.camera.d.a("FilterEffectMenu", "hideWithoutAnim");
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
        }
        if (h()) {
            a(this.e, 4, false);
            this.e.clearAnimation();
            this.k = false;
            this.q = false;
            this.p = false;
            super.a(z);
        }
    }

    public boolean c() {
        if (!h()) {
            return false;
        }
        if (d() || j()) {
            com.oppo.camera.d.a("FilterEffectMenu", "onBackPressed, onClick, anim isRunning.");
            return true;
        }
        a(true, true);
        return true;
    }

    public boolean d() {
        return this.p || this.q;
    }

    public void e() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.g();
        }
    }

    public void f() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.e();
        }
    }

    public void g() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.f();
        }
    }

    public int getTextureHeight() {
        return this.m;
    }

    public int getTextureWidth() {
        return this.l;
    }

    public boolean h() {
        return this.k || this.p;
    }

    public void i() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            threeDScrollBar.a();
        }
    }

    public boolean j() {
        ThreeDScrollBar threeDScrollBar = this.e;
        if (threeDScrollBar != null) {
            return threeDScrollBar.d();
        }
        return false;
    }

    public void setCameraEntryType(int i2) {
        this.s = i2;
    }

    public void setFilterEffectMenuListener(a aVar) {
        this.f = aVar;
    }
}
