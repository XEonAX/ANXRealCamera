package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.core.g.c;
import androidx.core.g.u;

/* compiled from: MenuPopupHelper */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Context f205a;

    /* renamed from: b  reason: collision with root package name */
    private final g f206b;
    private final boolean c;
    private final int d;
    private final int e;
    private View f;
    private int g;
    private boolean h;
    private m.a i;
    private k j;
    private PopupWindow.OnDismissListener k;
    private final PopupWindow.OnDismissListener l;

    public l(Context context, g gVar, View view, boolean z, int i2) {
        this(context, gVar, view, z, i2, 0);
    }

    public l(Context context, g gVar, View view, boolean z, int i2, int i3) {
        this.g = 8388611;
        this.l = new PopupWindow.OnDismissListener() {
            public void onDismiss() {
                l.this.e();
            }
        };
        this.f205a = context;
        this.f206b = gVar;
        this.f = view;
        this.c = z;
        this.d = i2;
        this.e = i3;
    }

    private void a(int i2, int i3, boolean z, boolean z2) {
        k b2 = b();
        b2.c(z2);
        if (z) {
            if ((c.a(this.g, u.f(this.f)) & 7) == 5) {
                i2 -= this.f.getWidth();
            }
            b2.b(i2);
            b2.c(i3);
            int i4 = (int) ((this.f205a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            b2.a(new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4));
        }
        b2.D_();
    }

    /* JADX WARNING: type inference failed for: r0v7, types: [androidx.appcompat.view.menu.k] */
    /* JADX WARNING: type inference failed for: r7v1, types: [androidx.appcompat.view.menu.q] */
    /* JADX WARNING: type inference failed for: r1v13, types: [androidx.appcompat.view.menu.d] */
    /* JADX WARNING: Multi-variable type inference failed */
    private k g() {
        ? r0;
        Display defaultDisplay = ((WindowManager) this.f205a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f205a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
            d dVar = new d(this.f205a, this.f, this.d, this.e, this.c);
            r0 = dVar;
        } else {
            q qVar = new q(this.f205a, this.f206b, this.f, this.d, this.e, this.c);
            r0 = qVar;
        }
        r0.a(this.f206b);
        r0.a(this.l);
        r0.a(this.f);
        r0.a(this.i);
        r0.b(this.h);
        r0.a(this.g);
        return r0;
    }

    public void a() {
        if (!c()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public void a(int i2) {
        this.g = i2;
    }

    public void a(View view) {
        this.f = view;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void a(m.a aVar) {
        this.i = aVar;
        k kVar = this.j;
        if (kVar != null) {
            kVar.a(aVar);
        }
    }

    public void a(boolean z) {
        this.h = z;
        k kVar = this.j;
        if (kVar != null) {
            kVar.b(z);
        }
    }

    public boolean a(int i2, int i3) {
        if (f()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(i2, i3, true, true);
        return true;
    }

    public k b() {
        if (this.j == null) {
            this.j = g();
        }
        return this.j;
    }

    public boolean c() {
        if (f()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public void d() {
        if (f()) {
            this.j.d();
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean f() {
        k kVar = this.j;
        return kVar != null && kVar.e();
    }
}
