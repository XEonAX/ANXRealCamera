package androidx.customview.a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.b.h;
import androidx.core.g.a.d;
import androidx.core.g.a.e;
import androidx.core.g.a.f;
import androidx.core.g.u;
import androidx.core.g.x;
import androidx.customview.a.b;
import com.google.protobuf.nano.MessageNano;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ExploreByTouchHelper */
public abstract class a extends androidx.core.g.a {
    private static final Rect c = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, MessageNano.UNSET_ENUM_VALUE, MessageNano.UNSET_ENUM_VALUE);
    private static final b.a<d> l = new b.a<d>() {
    };
    private static final b.C0021b<h<d>, d> m = new b.C0021b<h<d>, d>() {
    };

    /* renamed from: a  reason: collision with root package name */
    int f625a = MessageNano.UNSET_ENUM_VALUE;

    /* renamed from: b  reason: collision with root package name */
    int f626b = MessageNano.UNSET_ENUM_VALUE;
    private final Rect d = new Rect();
    private final Rect e = new Rect();
    private final Rect f = new Rect();
    private final int[] g = new int[2];
    private final AccessibilityManager h;
    private final View i;
    private C0020a j;
    private int k = MessageNano.UNSET_ENUM_VALUE;

    /* renamed from: androidx.customview.a.a$a  reason: collision with other inner class name */
    /* compiled from: ExploreByTouchHelper */
    private class C0020a extends e {
        C0020a() {
        }

        public d a(int i) {
            return d.a(a.this.b(i));
        }

        public boolean a(int i, int i2, Bundle bundle) {
            return a.this.a(i, i2, bundle);
        }

        public d b(int i) {
            int i2 = i == 2 ? a.this.f625a : a.this.f626b;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i2);
        }
    }

    public a(View view) {
        if (view != null) {
            this.i = view;
            this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (u.e(view) == 0) {
                u.b(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private boolean a(int i2, Bundle bundle) {
        return u.a(this.i, i2, bundle);
    }

    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.i.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private d b() {
        d a2 = d.a(this.i);
        u.a(this.i, a2);
        ArrayList arrayList = new ArrayList();
        a((List<Integer>) arrayList);
        if (a2.c() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                a2.b(this.i, ((Integer) arrayList.get(i2)).intValue());
            }
            return a2;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    private AccessibilityEvent c(int i2, int i3) {
        return i2 != -1 ? d(i2, i3) : f(i3);
    }

    private boolean c(int i2, int i3, Bundle bundle) {
        return i3 != 1 ? i3 != 2 ? i3 != 64 ? i3 != 128 ? b(i2, i3, bundle) : i(i2) : h(i2) : d(i2) : c(i2);
    }

    private AccessibilityEvent d(int i2, int i3) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i3);
        d b2 = b(i2);
        obtain.getText().add(b2.q());
        obtain.setContentDescription(b2.r());
        obtain.setScrollable(b2.n());
        obtain.setPassword(b2.m());
        obtain.setEnabled(b2.l());
        obtain.setChecked(b2.f());
        a(i2, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(b2.p());
            f.a(obtain, this.i, i2);
            obtain.setPackageName(this.i.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    private void e(int i2) {
        int i3 = this.k;
        if (i3 != i2) {
            this.k = i2;
            a(i2, 128);
            a(i3, 256);
        }
    }

    private AccessibilityEvent f(int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        this.i.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    private d g(int i2) {
        d b2 = d.b();
        b2.g(true);
        b2.a(true);
        b2.b((CharSequence) "android.view.View");
        b2.b(c);
        b2.d(c);
        b2.b(this.i);
        a(i2, b2);
        if (b2.q() == null && b2.r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        b2.a(this.e);
        if (!this.e.equals(c)) {
            int d2 = b2.d();
            if ((d2 & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((d2 & 128) == 0) {
                b2.a((CharSequence) this.i.getContext().getPackageName());
                b2.a(this.i, i2);
                if (this.f625a == i2) {
                    b2.d(true);
                    b2.a(128);
                } else {
                    b2.d(false);
                    b2.a(64);
                }
                boolean z = this.f626b == i2;
                if (z) {
                    b2.a(2);
                } else if (b2.g()) {
                    b2.a(1);
                }
                b2.b(z);
                this.i.getLocationOnScreen(this.g);
                b2.c(this.d);
                if (this.d.equals(c)) {
                    b2.a(this.d);
                    if (b2.f544a != -1) {
                        d b3 = d.b();
                        for (int i3 = b2.f544a; i3 != -1; i3 = b3.f544a) {
                            b3.c(this.i, -1);
                            b3.b(c);
                            a(i3, b3);
                            b3.a(this.e);
                            this.d.offset(this.e.left, this.e.top);
                        }
                        b3.s();
                    }
                    this.d.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
                }
                if (this.i.getLocalVisibleRect(this.f)) {
                    this.f.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
                    if (this.d.intersect(this.f)) {
                        b2.d(this.d);
                        if (a(this.d)) {
                            b2.c(true);
                        }
                    }
                }
                return b2;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    private h<d> getAllNodes() {
        ArrayList arrayList = new ArrayList();
        a((List<Integer>) arrayList);
        h<d> hVar = new h<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            hVar.b(i2, g(i2));
        }
        return hVar;
    }

    private boolean h(int i2) {
        if (this.h.isEnabled() && this.h.isTouchExplorationEnabled()) {
            int i3 = this.f625a;
            if (i3 != i2) {
                if (i3 != Integer.MIN_VALUE) {
                    i(i3);
                }
                this.f625a = i2;
                this.i.invalidate();
                a(i2, (int) STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT);
                return true;
            }
        }
        return false;
    }

    private boolean i(int i2) {
        if (this.f625a != i2) {
            return false;
        }
        this.f625a = MessageNano.UNSET_ENUM_VALUE;
        this.i.invalidate();
        a(i2, (int) STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD);
        return true;
    }

    /* access modifiers changed from: protected */
    public abstract int a(float f2, float f3);

    public e a(View view) {
        if (this.j == null) {
            this.j = new C0020a();
        }
        return this.j;
    }

    public final void a() {
        b(-1, 1);
    }

    public final void a(int i2) {
        b(i2, 0);
    }

    /* access modifiers changed from: protected */
    public void a(int i2, AccessibilityEvent accessibilityEvent) {
    }

    /* access modifiers changed from: protected */
    public abstract void a(int i2, d dVar);

    /* access modifiers changed from: protected */
    public void a(int i2, boolean z) {
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        a(dVar);
    }

    /* access modifiers changed from: protected */
    public void a(AccessibilityEvent accessibilityEvent) {
    }

    /* access modifiers changed from: protected */
    public void a(d dVar) {
    }

    /* access modifiers changed from: protected */
    public abstract void a(List<Integer> list);

    public final boolean a(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE || !this.h.isEnabled()) {
            return false;
        }
        ViewParent parent = this.i.getParent();
        if (parent == null) {
            return false;
        }
        return x.a(parent, this.i, c(i2, i3));
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2, int i3, Bundle bundle) {
        return i2 != -1 ? c(i2, i3, bundle) : a(i3, bundle);
    }

    public final boolean a(MotionEvent motionEvent) {
        if (!this.h.isEnabled() || !this.h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int a2 = a(motionEvent.getX(), motionEvent.getY());
            e(a2);
            return a2 != Integer.MIN_VALUE;
        } else if (action != 10 || this.k == Integer.MIN_VALUE) {
            return false;
        } else {
            e(MessageNano.UNSET_ENUM_VALUE);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public d b(int i2) {
        return i2 == -1 ? b() : g(i2);
    }

    public final void b(int i2, int i3) {
        if (i2 != Integer.MIN_VALUE && this.h.isEnabled()) {
            ViewParent parent = this.i.getParent();
            if (parent != null) {
                AccessibilityEvent c2 = c(i2, 2048);
                androidx.core.g.a.b.a(c2, i3);
                x.a(parent, this.i, c2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract boolean b(int i2, int i3, Bundle bundle);

    public final boolean c(int i2) {
        if (!this.i.isFocused() && !this.i.requestFocus()) {
            return false;
        }
        int i3 = this.f626b;
        if (i3 == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            d(i3);
        }
        this.f626b = i2;
        a(i2, true);
        a(i2, 8);
        return true;
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        a(accessibilityEvent);
    }

    public final boolean d(int i2) {
        if (this.f626b != i2) {
            return false;
        }
        this.f626b = MessageNano.UNSET_ENUM_VALUE;
        a(i2, false);
        a(i2, 8);
        return true;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f625a;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.f626b;
    }
}
