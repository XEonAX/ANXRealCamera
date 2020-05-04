package androidx.appcompat.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;

/* compiled from: DrawableContainer */
class b extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private C0005b f131a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f132b;
    private Drawable c;
    private Drawable d;
    private int e = 255;
    private boolean f;
    private int g = -1;
    private int h = -1;
    private boolean i;
    private Runnable j;
    private long k;
    private long l;
    private a m;

    /* compiled from: DrawableContainer */
    static class a implements Drawable.Callback {

        /* renamed from: a  reason: collision with root package name */
        private Drawable.Callback f134a;

        a() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f134a;
            this.f134a = null;
            return callback;
        }

        public a a(Drawable.Callback callback) {
            this.f134a = callback;
            return this;
        }

        public void invalidateDrawable(Drawable drawable) {
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f134a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f134a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: androidx.appcompat.b.a.b$b  reason: collision with other inner class name */
    /* compiled from: DrawableContainer */
    static abstract class C0005b extends Drawable.ConstantState {
        boolean A;
        int B;
        int C;
        int D;
        boolean E;
        ColorFilter F;
        boolean G;
        ColorStateList H;
        PorterDuff.Mode I;
        boolean J;
        boolean K;
        final b c;
        Resources d;
        int e = 160;
        int f;
        int g;
        SparseArray<Drawable.ConstantState> h;
        Drawable[] i;
        int j;
        boolean k;
        boolean l;
        Rect m;
        boolean n;
        boolean o;
        int p;
        int q;
        int r;
        int s;
        boolean t;
        int u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        boolean z;

        C0005b(C0005b bVar, b bVar2, Resources resources) {
            this.k = false;
            this.n = false;
            this.z = true;
            this.C = 0;
            this.D = 0;
            this.c = bVar2;
            this.d = resources != null ? resources : bVar != null ? bVar.d : null;
            this.e = b.a(resources, bVar != null ? bVar.e : 0);
            if (bVar != null) {
                this.f = bVar.f;
                this.g = bVar.g;
                this.x = true;
                this.y = true;
                this.k = bVar.k;
                this.n = bVar.n;
                this.z = bVar.z;
                this.A = bVar.A;
                this.B = bVar.B;
                this.C = bVar.C;
                this.D = bVar.D;
                this.E = bVar.E;
                this.F = bVar.F;
                this.G = bVar.G;
                this.H = bVar.H;
                this.I = bVar.I;
                this.J = bVar.J;
                this.K = bVar.K;
                if (bVar.e == this.e) {
                    if (bVar.l) {
                        this.m = new Rect(bVar.m);
                        this.l = true;
                    }
                    if (bVar.o) {
                        this.p = bVar.p;
                        this.q = bVar.q;
                        this.r = bVar.r;
                        this.s = bVar.s;
                        this.o = true;
                    }
                }
                if (bVar.t) {
                    this.u = bVar.u;
                    this.t = true;
                }
                if (bVar.v) {
                    this.w = bVar.w;
                    this.v = true;
                }
                Drawable[] drawableArr = bVar.i;
                this.i = new Drawable[drawableArr.length];
                this.j = bVar.j;
                SparseArray<Drawable.ConstantState> sparseArray = bVar.h;
                if (sparseArray != null) {
                    this.h = sparseArray.clone();
                } else {
                    this.h = new SparseArray<>(this.j);
                }
                int i2 = this.j;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null) {
                        Drawable.ConstantState constantState = drawableArr[i3].getConstantState();
                        if (constantState != null) {
                            this.h.put(i3, constantState);
                        } else {
                            this.i[i3] = drawableArr[i3];
                        }
                    }
                }
                return;
            }
            this.i = new Drawable[10];
            this.j = 0;
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.c);
            return mutate;
        }

        private void o() {
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.i[this.h.keyAt(i2)] = b(this.h.valueAt(i2).newDrawable(this.d));
                }
                this.h = null;
            }
        }

        public final int a(Drawable drawable) {
            int i2 = this.j;
            if (i2 >= this.i.length) {
                e(i2, i2 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.c);
            this.i[i2] = drawable;
            this.j++;
            this.g = drawable.getChangingConfigurations() | this.g;
            b();
            this.m = null;
            this.l = false;
            this.o = false;
            this.x = false;
            return i2;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3] != null) {
                    drawableArr[i3].mutate();
                }
            }
            this.A = true;
        }

        /* access modifiers changed from: package-private */
        public final void a(Resources.Theme theme) {
            if (theme != null) {
                o();
                int i2 = this.j;
                Drawable[] drawableArr = this.i;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        this.g |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Resources resources) {
            if (resources != null) {
                this.d = resources;
                int a2 = b.a(resources, this.e);
                int i2 = this.e;
                this.e = a2;
                if (i2 != a2) {
                    this.o = false;
                    this.l = false;
                }
            }
        }

        public final void a(boolean z2) {
            this.k = z2;
        }

        public final Drawable b(int i2) {
            Drawable drawable = this.i[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray != null) {
                int indexOfKey = sparseArray.indexOfKey(i2);
                if (indexOfKey >= 0) {
                    Drawable b2 = b(this.h.valueAt(indexOfKey).newDrawable(this.d));
                    this.i[i2] = b2;
                    this.h.removeAt(indexOfKey);
                    if (this.h.size() == 0) {
                        this.h = null;
                    }
                    return b2;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.t = false;
            this.v = false;
        }

        public final void b(boolean z2) {
            this.n = z2;
        }

        /* access modifiers changed from: package-private */
        public final int c() {
            return this.i.length;
        }

        public final void c(int i2) {
            this.C = i2;
        }

        public boolean canApplyTheme() {
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.h.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final int d() {
            return this.j;
        }

        public final void d(int i2) {
            this.D = i2;
        }

        /* access modifiers changed from: package-private */
        public final boolean d(int i2, int i3) {
            int i4 = this.j;
            Drawable[] drawableArr = this.i;
            boolean z2 = false;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                    if (i5 == i3) {
                        z2 = layoutDirection;
                    }
                }
            }
            this.B = i2;
            return z2;
        }

        public final Rect e() {
            if (this.k) {
                return null;
            }
            if (this.m != null || this.l) {
                return this.m;
            }
            o();
            Rect rect = new Rect();
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            Rect rect2 = null;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getPadding(rect)) {
                    if (rect2 == null) {
                        rect2 = new Rect(0, 0, 0, 0);
                    }
                    if (rect.left > rect2.left) {
                        rect2.left = rect.left;
                    }
                    if (rect.top > rect2.top) {
                        rect2.top = rect.top;
                    }
                    if (rect.right > rect2.right) {
                        rect2.right = rect.right;
                    }
                    if (rect.bottom > rect2.bottom) {
                        rect2.bottom = rect.bottom;
                    }
                }
            }
            this.l = true;
            this.m = rect2;
            return rect2;
        }

        public void e(int i2, int i3) {
            Drawable[] drawableArr = new Drawable[i3];
            System.arraycopy(this.i, 0, drawableArr, 0, i2);
            this.i = drawableArr;
        }

        public final boolean f() {
            return this.n;
        }

        public final int g() {
            if (!this.o) {
                k();
            }
            return this.p;
        }

        public int getChangingConfigurations() {
            return this.f | this.g;
        }

        public final int h() {
            if (!this.o) {
                k();
            }
            return this.q;
        }

        public final int i() {
            if (!this.o) {
                k();
            }
            return this.r;
        }

        public final int j() {
            if (!this.o) {
                k();
            }
            return this.s;
        }

        /* access modifiers changed from: protected */
        public void k() {
            this.o = true;
            o();
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            this.q = -1;
            this.p = -1;
            this.s = 0;
            this.r = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.p) {
                    this.p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.q) {
                    this.q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.r) {
                    this.r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.s) {
                    this.s = minimumHeight;
                }
            }
        }

        public final int l() {
            if (this.t) {
                return this.u;
            }
            o();
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.u = opacity;
            this.t = true;
            return opacity;
        }

        public final boolean m() {
            if (this.v) {
                return this.w;
            }
            o();
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            boolean z2 = false;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                } else if (drawableArr[i3].isStateful()) {
                    z2 = true;
                    break;
                } else {
                    i3++;
                }
            }
            this.w = z2;
            this.v = true;
            return z2;
        }

        public synchronized boolean n() {
            if (this.x) {
                return this.y;
            }
            o();
            this.x = true;
            int i2 = this.j;
            Drawable[] drawableArr = this.i;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.y = false;
                    return false;
                }
            }
            this.y = true;
            return true;
        }
    }

    b() {
    }

    static int a(Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }

    private void a(Drawable drawable) {
        if (this.m == null) {
            this.m = new a();
        }
        drawable.setCallback(this.m.a(drawable.getCallback()));
        try {
            if (this.f131a.C <= 0 && this.f) {
                drawable.setAlpha(this.e);
            }
            if (this.f131a.G) {
                drawable.setColorFilter(this.f131a.F);
            } else {
                if (this.f131a.J) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f131a.H);
                }
                if (this.f131a.K) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f131a.I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f131a.z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f131a.E);
            }
            Rect rect = this.f132b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    private boolean a() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.h(this) == 1;
    }

    /* access modifiers changed from: package-private */
    public final void a(Resources resources) {
        this.f131a.a(resources);
    }

    /* access modifiers changed from: package-private */
    public void a(C0005b bVar) {
        this.f131a = bVar;
        int i2 = this.g;
        if (i2 >= 0) {
            this.c = bVar.b(i2);
            Drawable drawable = this.c;
            if (drawable != null) {
                a(drawable);
            }
        }
        this.h = -1;
        this.d = null;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006d A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public void a(boolean z) {
        boolean z2;
        Drawable drawable;
        boolean z3 = true;
        this.f = true;
        long uptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            long j2 = this.k;
            if (j2 != 0) {
                if (j2 <= uptimeMillis) {
                    drawable2.setAlpha(this.e);
                    this.k = 0;
                } else {
                    this.c.setAlpha(((255 - (((int) ((j2 - uptimeMillis) * 255)) / this.f131a.C)) * this.e) / 255);
                    z2 = true;
                    drawable = this.d;
                    if (drawable == null) {
                        long j3 = this.l;
                        if (j3 != 0) {
                            if (j3 <= uptimeMillis) {
                                drawable.setVisible(false, false);
                                this.d = null;
                                this.h = -1;
                                this.l = 0;
                            } else {
                                this.d.setAlpha(((((int) ((j3 - uptimeMillis) * 255)) / this.f131a.D) * this.e) / 255);
                                if (!z && z3) {
                                    scheduleSelf(this.j, uptimeMillis + 16);
                                    return;
                                }
                                return;
                            }
                        }
                    } else {
                        this.l = 0;
                    }
                    z3 = z2;
                    if (!z) {
                        return;
                    }
                    return;
                }
            }
        } else {
            this.k = 0;
        }
        z2 = false;
        drawable = this.d;
        if (drawable == null) {
        }
        z3 = z2;
        if (!z) {
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2) {
        if (i2 == this.g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f131a.D > 0) {
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.c;
            if (drawable2 != null) {
                this.d = drawable2;
                this.h = this.g;
                this.l = ((long) this.f131a.D) + uptimeMillis;
            } else {
                this.d = null;
                this.h = -1;
                this.l = 0;
            }
        } else {
            Drawable drawable3 = this.c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i2 < 0 || i2 >= this.f131a.j) {
            this.c = null;
            this.g = -1;
        } else {
            Drawable b2 = this.f131a.b(i2);
            this.c = b2;
            this.g = i2;
            if (b2 != null) {
                if (this.f131a.C > 0) {
                    this.k = uptimeMillis + ((long) this.f131a.C);
                }
                a(b2);
            }
        }
        if (!(this.k == 0 && this.l == 0)) {
            Runnable runnable = this.j;
            if (runnable == null) {
                this.j = new Runnable() {
                    public void run() {
                        b.this.a(true);
                        b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    public void applyTheme(Resources.Theme theme) {
        this.f131a.a(theme);
    }

    /* access modifiers changed from: package-private */
    public C0005b c() {
        return this.f131a;
    }

    public boolean canApplyTheme() {
        return this.f131a.canApplyTheme();
    }

    /* access modifiers changed from: package-private */
    public int d() {
        return this.g;
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public int getAlpha() {
        return this.e;
    }

    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f131a.getChangingConfigurations();
    }

    public final Drawable.ConstantState getConstantState() {
        if (!this.f131a.n()) {
            return null;
        }
        this.f131a.f = getChangingConfigurations();
        return this.f131a;
    }

    public Drawable getCurrent() {
        return this.c;
    }

    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f132b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    public int getIntrinsicHeight() {
        if (this.f131a.f()) {
            return this.f131a.h();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    public int getIntrinsicWidth() {
        if (this.f131a.f()) {
            return this.f131a.g();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    public int getMinimumHeight() {
        if (this.f131a.f()) {
            return this.f131a.j();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    public int getMinimumWidth() {
        if (this.f131a.f()) {
            return this.f131a.i();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    public int getOpacity() {
        Drawable drawable = this.c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f131a.l();
    }

    public void getOutline(Outline outline) {
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    public boolean getPadding(Rect rect) {
        boolean z;
        Rect e2 = this.f131a.e();
        if (e2 != null) {
            rect.set(e2);
            z = (e2.right | ((e2.left | e2.top) | e2.bottom)) != 0;
        } else {
            Drawable drawable = this.c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (a()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        C0005b bVar = this.f131a;
        if (bVar != null) {
            bVar.b();
        }
        if (drawable == this.c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public boolean isAutoMirrored() {
        return this.f131a.E;
    }

    public boolean isStateful() {
        return this.f131a.m();
    }

    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.d = null;
            this.h = -1;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f) {
                this.c.setAlpha(this.e);
            }
        }
        if (this.l != 0) {
            this.l = 0;
            z = true;
        }
        if (this.k != 0) {
            this.k = 0;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    public Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            C0005b c2 = c();
            c2.a();
            a(c2);
            this.i = true;
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    public boolean onLayoutDirectionChanged(int i2) {
        return this.f131a.d(i2, d());
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i2) {
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable == this.c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        if (!this.f || this.e != i2) {
            this.f = true;
            this.e = i2;
            Drawable drawable = this.c;
            if (drawable == null) {
                return;
            }
            if (this.k == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    public void setAutoMirrored(boolean z) {
        if (this.f131a.E != z) {
            C0005b bVar = this.f131a;
            bVar.E = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, bVar.E);
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        C0005b bVar = this.f131a;
        bVar.G = true;
        if (bVar.F != colorFilter) {
            this.f131a.F = colorFilter;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public void setDither(boolean z) {
        if (this.f131a.z != z) {
            C0005b bVar = this.f131a;
            bVar.z = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setDither(bVar.z);
            }
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f2, f3);
        }
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.f132b;
        if (rect == null) {
            this.f132b = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, i2, i3, i4, i5);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        C0005b bVar = this.f131a;
        bVar.J = true;
        if (bVar.H != colorStateList) {
            this.f131a.H = colorStateList;
            androidx.core.graphics.drawable.a.a(this.c, colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        C0005b bVar = this.f131a;
        bVar.K = true;
        if (bVar.I != mode) {
            this.f131a.I = mode;
            androidx.core.graphics.drawable.a.a(this.c, mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
