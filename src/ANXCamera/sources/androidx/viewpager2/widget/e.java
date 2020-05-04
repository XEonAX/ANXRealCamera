package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* compiled from: ScrollEventAdapter */
final class e extends RecyclerView.n {

    /* renamed from: a  reason: collision with root package name */
    private ViewPager2.b f1075a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewPager2 f1076b;
    private final RecyclerView c;
    private final LinearLayoutManager d;
    private int e;
    private int f;
    private a g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    /* compiled from: ScrollEventAdapter */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1077a;

        /* renamed from: b  reason: collision with root package name */
        float f1078b;
        int c;

        /* access modifiers changed from: package-private */
        public void a() {
            this.f1077a = -1;
            this.f1078b = 0.0f;
            this.c = 0;
        }
    }

    private void a(int i2) {
        if ((this.e != 3 || this.f != 0) && this.f != i2) {
            this.f = i2;
            ViewPager2.b bVar = this.f1075a;
            if (bVar != null) {
                bVar.b(i2);
            }
        }
    }

    private void a(int i2, float f2, int i3) {
        ViewPager2.b bVar = this.f1075a;
        if (bVar != null) {
            bVar.a(i2, f2, i3);
        }
    }

    private void a(boolean z) {
        this.m = z;
        this.e = z ? 4 : 1;
        int i2 = this.i;
        if (i2 != -1) {
            this.h = i2;
            this.i = -1;
        } else if (this.h == -1) {
            this.h = h();
        }
        a(1);
    }

    private void b(int i2) {
        ViewPager2.b bVar = this.f1075a;
        if (bVar != null) {
            bVar.a(i2);
        }
    }

    private void e() {
        this.e = 0;
        this.f = 0;
        this.g.a();
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.k = false;
        this.m = false;
        this.l = false;
    }

    private void f() {
        int i2;
        a aVar = this.g;
        aVar.f1077a = this.d.o();
        if (aVar.f1077a == -1) {
            aVar.a();
            return;
        }
        View c2 = this.d.c(aVar.f1077a);
        if (c2 == null) {
            aVar.a();
            return;
        }
        int n = this.d.n(c2);
        int o = this.d.o(c2);
        int l2 = this.d.l(c2);
        int m2 = this.d.m(c2);
        ViewGroup.LayoutParams layoutParams = c2.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            n += marginLayoutParams.leftMargin;
            o += marginLayoutParams.rightMargin;
            l2 += marginLayoutParams.topMargin;
            m2 += marginLayoutParams.bottomMargin;
        }
        int height = c2.getHeight() + l2 + m2;
        int width = o + c2.getWidth() + n;
        if (this.d.h() == 0) {
            i2 = (c2.getLeft() - n) - this.c.getPaddingLeft();
            if (this.f1076b.b()) {
                i2 = -i2;
            }
        } else {
            i2 = (c2.getTop() - l2) - this.c.getPaddingTop();
            width = height;
        }
        aVar.c = -i2;
        if (aVar.c >= 0) {
            aVar.f1078b = width == 0 ? 0.0f : ((float) aVar.c) / ((float) width);
        } else if (new a(this.d).a()) {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        } else {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", new Object[]{Integer.valueOf(aVar.c)}));
        }
    }

    private boolean g() {
        int i2 = this.e;
        return i2 == 1 || i2 == 4;
    }

    private int h() {
        return this.d.o();
    }

    /* access modifiers changed from: package-private */
    public int a() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, boolean z) {
        this.e = z ? 2 : 3;
        boolean z2 = false;
        this.m = false;
        if (this.i != i2) {
            z2 = true;
        }
        this.i = i2;
        a(2);
        if (z2) {
            b(i2);
        }
    }

    public void a(RecyclerView recyclerView, int i2) {
        boolean z = true;
        if (!(this.e == 1 && this.f == 1) && i2 == 1) {
            a(false);
        } else if (!g() || i2 != 2) {
            if (g() && i2 == 0) {
                f();
                if (!this.k) {
                    if (this.g.f1077a != -1) {
                        a(this.g.f1077a, 0.0f, 0);
                    }
                } else if (this.g.c != 0) {
                    z = false;
                } else if (this.h != this.g.f1077a) {
                    b(this.g.f1077a);
                }
                if (z) {
                    a(0);
                    e();
                }
            }
            if (this.e == 2 && i2 == 0 && this.l) {
                f();
                if (this.g.c == 0) {
                    if (this.i != this.g.f1077a) {
                        b(this.g.f1077a == -1 ? 0 : this.g.f1077a);
                    }
                    a(0);
                    e();
                }
            }
        } else if (this.k) {
            a(2);
            this.j = true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001d, code lost:
        if ((r5 < 0) == r3.f1076b.b()) goto L_0x0022;
     */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003d  */
    public void a(RecyclerView recyclerView, int i2, int i3) {
        boolean z;
        int i4;
        int i5;
        this.k = true;
        f();
        if (this.j) {
            this.j = false;
            if (i3 <= 0) {
                if (i3 == 0) {
                }
                z = false;
                this.i = (z || this.g.c == 0) ? this.g.f1077a : this.g.f1077a + 1;
                i4 = this.h;
                i5 = this.i;
                if (i4 != i5) {
                    b(i5);
                }
            }
            z = true;
            this.i = (z || this.g.c == 0) ? this.g.f1077a : this.g.f1077a + 1;
            i4 = this.h;
            i5 = this.i;
            if (i4 != i5) {
            }
        } else if (this.e == 0) {
            int i6 = this.g.f1077a;
            if (i6 == -1) {
                i6 = 0;
            }
            b(i6);
        }
        a(this.g.f1077a == -1 ? 0 : this.g.f1077a, this.g.f1078b, this.g.c);
        int i7 = this.g.f1077a;
        int i8 = this.i;
        if ((i7 == i8 || i8 == -1) && this.g.c == 0 && this.f != 1) {
            a(0);
            e();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.f == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return this.m;
    }

    /* access modifiers changed from: package-private */
    public double d() {
        f();
        return ((double) this.g.f1077a) + ((double) this.g.f1078b);
    }
}
