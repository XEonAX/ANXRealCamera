package com.oppo.camera.ui.menu.setting;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import com.oppo.camera.R;
import com.oppo.camera.o.d;

/* compiled from: ExpandableMenuPanel */
public class l extends View {
    public static String o = "DefaultExpandPanel";

    /* renamed from: a  reason: collision with root package name */
    private boolean f2839a = false;
    public boolean p = false;
    public boolean q = false;
    public b r = null;

    /* compiled from: ExpandableMenuPanel */
    public class a implements Animation.AnimationListener {

        /* renamed from: b  reason: collision with root package name */
        private View f2841b = null;
        private int c = 4;

        public a(View view, int i) {
            this.f2841b = view;
            this.c = i;
        }

        public void onAnimationEnd(Animation animation) {
            int i = this.c;
            if (i != 0) {
                this.f2841b.setVisibility(i);
            }
            if (this.c == 0) {
                l.this.p = false;
            } else {
                l.this.q = false;
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            int i = this.c;
            if (i == 0) {
                this.f2841b.setVisibility(i);
                l.this.p = true;
                return;
            }
            l.this.q = true;
        }
    }

    /* compiled from: ExpandableMenuPanel */
    public interface b {
        void a(String str);

        void a(String str, boolean z);
    }

    public l(Activity activity) {
        super(activity.getApplicationContext());
    }

    public l(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(View view, int i, boolean z) {
        if (z) {
            if (i == 0) {
                d.a(view, i, (int) R.anim.expand_menu_enter, true, true, (Animation.AnimationListener) new a(view, i));
                return;
            }
            d.a(view, i, (int) R.anim.expand_menu_exit, true, true, (Animation.AnimationListener) new a(view, i));
        } else if (view != null) {
            view.clearAnimation();
            view.setVisibility(i);
            this.p = false;
            this.q = false;
        }
    }

    public void a(String str) {
        com.oppo.camera.d.a("ExpandableMenuPanel", "showMenuPanel");
        this.f2839a = true;
        setCurrentMenuKey(str);
        b bVar = this.r;
        if (bVar != null) {
            bVar.a(o);
        }
    }

    public void a(boolean z) {
        com.oppo.camera.d.a("ExpandableMenuPanel", "hideMenuPanel");
        this.f2839a = false;
        b bVar = this.r;
        if (bVar != null) {
            bVar.a(o, z);
        }
        setCurrentMenuKey("DefaultExpandPanel");
    }

    public boolean a(int i, int i2) {
        if (!this.f2839a || i2 >= k() || d()) {
            return false;
        }
        a(true);
        return true;
    }

    public void b(boolean z, boolean z2) {
    }

    public boolean c() {
        if (!this.f2839a || d()) {
            return false;
        }
        a(true);
        return true;
    }

    public boolean d() {
        return this.p || this.q;
    }

    public void f() {
    }

    public void g() {
    }

    public String getCurrentMenuKey() {
        return o;
    }

    public boolean h() {
        return this.f2839a || this.p;
    }

    public int k() {
        return d.L() - d.F();
    }

    public void setCurrentMenuKey(String str) {
        o = str;
    }

    public void setExpandMenuListener(b bVar) {
        this.r = bVar;
    }
}
