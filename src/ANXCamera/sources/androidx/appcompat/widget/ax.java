package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.g.u;
import androidx.core.g.v;

/* compiled from: TooltipCompatHandler */
class ax implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {
    private static ax j;
    private static ax k;

    /* renamed from: a  reason: collision with root package name */
    private final View f357a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f358b;
    private final int c;
    private final Runnable d = new Runnable() {
        public void run() {
            ax.this.a(false);
        }
    };
    private final Runnable e = new Runnable() {
        public void run() {
            ax.this.a();
        }
    };
    private int f;
    private int g;
    private ay h;
    private boolean i;

    private ax(View view, CharSequence charSequence) {
        this.f357a = view;
        this.f358b = charSequence;
        this.c = v.a(ViewConfiguration.get(this.f357a.getContext()));
        d();
        this.f357a.setOnLongClickListener(this);
        this.f357a.setOnHoverListener(this);
    }

    public static void a(View view, CharSequence charSequence) {
        ax axVar = j;
        if (axVar != null && axVar.f357a == view) {
            a((ax) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            ax axVar2 = k;
            if (axVar2 != null && axVar2.f357a == view) {
                axVar2.a();
            }
            view.setOnLongClickListener((View.OnLongClickListener) null);
            view.setLongClickable(false);
            view.setOnHoverListener((View.OnHoverListener) null);
            return;
        }
        new ax(view, charSequence);
    }

    private static void a(ax axVar) {
        ax axVar2 = j;
        if (axVar2 != null) {
            axVar2.c();
        }
        j = axVar;
        ax axVar3 = j;
        if (axVar3 != null) {
            axVar3.b();
        }
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f) <= this.c && Math.abs(y - this.g) <= this.c) {
            return false;
        }
        this.f = x;
        this.g = y;
        return true;
    }

    private void b() {
        this.f357a.postDelayed(this.d, (long) ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.f357a.removeCallbacks(this.d);
    }

    private void d() {
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (k == this) {
            k = null;
            ay ayVar = this.h;
            if (ayVar != null) {
                ayVar.a();
                this.h = null;
                d();
                this.f357a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            a((ax) null);
        }
        this.f357a.removeCallbacks(this.e);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        long j2;
        int i2;
        long j3;
        if (u.w(this.f357a)) {
            a((ax) null);
            ax axVar = k;
            if (axVar != null) {
                axVar.a();
            }
            k = this;
            this.i = z;
            this.h = new ay(this.f357a.getContext());
            this.h.a(this.f357a, this.f, this.g, this.i, this.f358b);
            this.f357a.addOnAttachStateChangeListener(this);
            if (this.i) {
                j2 = 2500;
            } else {
                if ((u.o(this.f357a) & 1) == 1) {
                    j3 = 3000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                } else {
                    j3 = 15000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j3 - ((long) i2);
            }
            this.f357a.removeCallbacks(this.e);
            this.f357a.postDelayed(this.e, j2);
        }
    }

    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.h != null && this.i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f357a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                d();
                a();
            }
        } else if (this.f357a.isEnabled() && this.h == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    public boolean onLongClick(View view) {
        this.f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        a(true);
        return true;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
