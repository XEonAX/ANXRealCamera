package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.g.a.d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    boolean f867a = false;

    /* renamed from: b  reason: collision with root package name */
    int f868b = -1;
    int[] c;
    View[] d;
    final SparseIntArray e = new SparseIntArray();
    final SparseIntArray f = new SparseIntArray();
    c g = new a();
    final Rect h = new Rect();
    private boolean z;

    public static final class a extends c {
        public int a(int i) {
            return 1;
        }

        public int a(int i, int i2) {
            return i % i2;
        }
    }

    public static class b extends RecyclerView.j {

        /* renamed from: a  reason: collision with root package name */
        int f869a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f870b = 0;

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public int a() {
            return this.f869a;
        }

        public int b() {
            return this.f870b;
        }
    }

    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final SparseIntArray f871a = new SparseIntArray();

        /* renamed from: b  reason: collision with root package name */
        final SparseIntArray f872b = new SparseIntArray();
        private boolean c = false;
        private boolean d = false;

        static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        public abstract int a(int i);

        /* JADX WARNING: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARNING: Removed duplicated region for block: B:18:0x0036 A[RETURN] */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0037 A[RETURN] */
        public int a(int i, int i2) {
            int i3;
            int i4;
            int a2 = a(i);
            if (a2 == i2) {
                return 0;
            }
            if (this.c) {
                i4 = a(this.f871a, i);
                if (i4 >= 0) {
                    i3 = this.f871a.get(i4) + a(i4);
                    i4++;
                    if (i4 < i) {
                        int a3 = a(i4);
                        i3 += a3;
                        if (i3 == i2) {
                            i3 = 0;
                        } else if (i3 > i2) {
                            i3 = a3;
                        }
                        i4++;
                        if (i4 < i) {
                        }
                    }
                    if (a2 + i3 > i2) {
                        return i3;
                    }
                    return 0;
                }
            }
            i4 = 0;
            i3 = 0;
            if (i4 < i) {
            }
            if (a2 + i3 > i2) {
            }
        }

        public void a() {
            this.f871a.clear();
        }

        /* access modifiers changed from: package-private */
        public int b(int i, int i2) {
            if (!this.c) {
                return a(i, i2);
            }
            int i3 = this.f871a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int a2 = a(i, i2);
            this.f871a.put(i, a2);
            return a2;
        }

        public void b() {
            this.f872b.clear();
        }

        /* access modifiers changed from: package-private */
        public int c(int i, int i2) {
            if (!this.d) {
                return d(i, i2);
            }
            int i3 = this.f872b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d2 = d(i, i2);
            this.f872b.put(i, d2);
            return d2;
        }

        /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
        /* JADX WARNING: Removed duplicated region for block: B:18:0x0045  */
        /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
        public int d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (this.d) {
                int a2 = a(this.f872b, i);
                if (a2 != -1) {
                    i4 = this.f872b.get(a2);
                    i3 = a2 + 1;
                    i5 = a(a2) + b(a2, i2);
                    if (i5 == i2) {
                        i4++;
                        i5 = 0;
                    }
                    int a3 = a(i);
                    while (i3 < i) {
                        int a4 = a(i3);
                        int i6 = i5 + a4;
                        if (i6 == i2) {
                            i4++;
                            i6 = 0;
                        } else if (i6 > i2) {
                            i4++;
                            i6 = a4;
                        }
                        i3++;
                    }
                    return i5 + a3 <= i2 ? i4 + 1 : i4;
                }
            }
            i5 = 0;
            i4 = 0;
            i3 = 0;
            int a32 = a(i);
            while (i3 < i) {
            }
            if (i5 + a32 <= i2) {
            }
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        a(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(a(context, attributeSet, i, i2).f900b);
    }

    private void P() {
        this.e.clear();
        this.f.clear();
    }

    private void Q() {
        int z2 = z();
        for (int i = 0; i < z2; i++) {
            b bVar = (b) i(i).getLayoutParams();
            int f2 = bVar.f();
            this.e.put(f2, bVar.b());
            this.f.put(f2, bVar.a());
        }
    }

    private void R() {
        int i;
        int i2;
        if (h() == 1) {
            i2 = C() - G();
            i = E();
        } else {
            i2 = D() - H();
            i = F();
        }
        m(i2 - i);
    }

    private void S() {
        View[] viewArr = this.d;
        if (viewArr == null || viewArr.length != this.f868b) {
            this.d = new View[this.f868b];
        }
    }

    private int a(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.c(i, this.f868b);
        }
        int b2 = pVar.b(i);
        if (b2 != -1) {
            return this.g.c(b2, this.f868b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private void a(float f2, int i) {
        m(Math.max(Math.round(f2 * ((float) this.f868b)), i));
    }

    private void a(View view, int i, int i2, boolean z2) {
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        if (z2 ? a(view, i, i2, jVar) : b(view, i, i2, jVar)) {
            view.measure(i, i2);
        }
    }

    private void a(View view, int i, boolean z2) {
        int i2;
        int i3;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.d;
        int i4 = rect.top + rect.bottom + bVar.topMargin + bVar.bottomMargin;
        int i5 = rect.left + rect.right + bVar.leftMargin + bVar.rightMargin;
        int a2 = a(bVar.f869a, bVar.f870b);
        if (this.i == 1) {
            i2 = a(a2, i, i5, bVar.width, false);
            i3 = a(this.j.f(), B(), i4, bVar.height, true);
        } else {
            int a3 = a(a2, i, i4, bVar.height, false);
            int a4 = a(this.j.f(), A(), i5, bVar.width, true);
            i3 = a3;
            i2 = a4;
        }
        a(view, i2, i3, z2);
    }

    private void a(RecyclerView.p pVar, RecyclerView.t tVar, int i, boolean z2) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z2) {
            i2 = 1;
            i5 = i;
            i3 = 0;
        } else {
            i3 = i - 1;
            i2 = -1;
        }
        while (i3 != i5) {
            View view = this.d[i3];
            b bVar = (b) view.getLayoutParams();
            bVar.f870b = c(pVar, tVar, d(view));
            bVar.f869a = i4;
            i4 += bVar.f870b;
            i3 += i2;
        }
    }

    static int[] a(int[] iArr, int i, int i2) {
        int i3;
        if (!(iArr != null && iArr.length == i + 1 && iArr[iArr.length - 1] == i2)) {
            iArr = new int[(i + 1)];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    private int b(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.b(i, this.f868b);
        }
        int i2 = this.f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b2 = pVar.b(i);
        if (b2 != -1) {
            return this.g.b(b2, this.f868b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i) {
        boolean z2 = i == 1;
        int b2 = b(pVar, tVar, aVar.f876b);
        if (z2) {
            while (b2 > 0 && aVar.f876b > 0) {
                aVar.f876b--;
                b2 = b(pVar, tVar, aVar.f876b);
            }
            return;
        }
        int e2 = tVar.e() - 1;
        int i2 = aVar.f876b;
        while (i2 < e2) {
            int i3 = i2 + 1;
            int b3 = b(pVar, tVar, i3);
            if (b3 <= b2) {
                break;
            }
            i2 = i3;
            b2 = b3;
        }
        aVar.f876b = i2;
    }

    private int c(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.a(i);
        }
        int i2 = this.e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b2 = pVar.b(i);
        if (b2 != -1) {
            return this.g.a(b2);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    private int i(RecyclerView.t tVar) {
        if (!(z() == 0 || tVar.e() == 0)) {
            j();
            View a2 = a(!l(), true);
            View b2 = b(!l(), true);
            if (!(a2 == null || b2 == null)) {
                if (!l()) {
                    return this.g.c(tVar.e() - 1, this.f868b) + 1;
                }
                int b3 = this.j.b(b2) - this.j.a(a2);
                int c2 = this.g.c(d(a2), this.f868b);
                return (int) ((((float) b3) / ((float) ((this.g.c(d(b2), this.f868b) - c2) + 1))) * ((float) (this.g.c(tVar.e() - 1, this.f868b) + 1)));
            }
        }
        return 0;
    }

    private int j(RecyclerView.t tVar) {
        if (!(z() == 0 || tVar.e() == 0)) {
            j();
            boolean l = l();
            View a2 = a(!l, true);
            View b2 = b(!l, true);
            if (!(a2 == null || b2 == null)) {
                int c2 = this.g.c(d(a2), this.f868b);
                int c3 = this.g.c(d(b2), this.f868b);
                int min = Math.min(c2, c3);
                int max = this.k ? Math.max(0, ((this.g.c(tVar.e() - 1, this.f868b) + 1) - Math.max(c2, c3)) - 1) : Math.max(0, min);
                if (!l) {
                    return max;
                }
                return Math.round((((float) max) * (((float) Math.abs(this.j.b(b2) - this.j.a(a2))) / ((float) ((this.g.c(d(b2), this.f868b) - this.g.c(d(a2), this.f868b)) + 1)))) + ((float) (this.j.c() - this.j.a(a2))));
            }
        }
        return 0;
    }

    private void m(int i) {
        this.c = a(this.c, this.f868b, i);
    }

    /* access modifiers changed from: package-private */
    public int a(int i, int i2) {
        if (this.i != 1 || !i()) {
            int[] iArr = this.c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.c;
        int i3 = this.f868b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public int a(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        R();
        S();
        return super.a(i, pVar, tVar);
    }

    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 0) {
            return this.f868b;
        }
        if (tVar.e() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.e() - 1) + 1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00d7, code lost:
        if (r13 == (r2 > r8)) goto L_0x00b3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00f7, code lost:
        if (r13 == r10) goto L_0x00bb;
     */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0105  */
    public View a(View view, int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        View view2;
        int i6;
        View view3;
        int i7;
        int i8;
        boolean z2;
        RecyclerView.p pVar2 = pVar;
        RecyclerView.t tVar2 = tVar;
        View e2 = e(view);
        View view4 = null;
        if (e2 == null) {
            return null;
        }
        b bVar = (b) e2.getLayoutParams();
        int i9 = bVar.f869a;
        int i10 = bVar.f869a + bVar.f870b;
        if (super.a(view, i, pVar, tVar) == null) {
            return null;
        }
        if ((f(i) == 1) != this.k) {
            i4 = z() - 1;
            i3 = -1;
            i2 = -1;
        } else {
            i3 = z();
            i2 = 1;
            i4 = 0;
        }
        boolean z3 = this.i == 1 && i();
        int a2 = a(pVar2, tVar2, i4);
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        View view5 = null;
        while (i4 != i3) {
            int a3 = a(pVar2, tVar2, i4);
            View i15 = i(i4);
            if (i15 == e2) {
                break;
            }
            if (!i15.hasFocusable() || a3 == a2) {
                b bVar2 = (b) i15.getLayoutParams();
                int i16 = bVar2.f869a;
                view2 = e2;
                i5 = i3;
                int i17 = bVar2.f869a + bVar2.f870b;
                if (i15.hasFocusable() && i16 == i9 && i17 == i10) {
                    return i15;
                }
                if ((!i15.hasFocusable() || view4 != null) && (i15.hasFocusable() || view5 != null)) {
                    int min = Math.min(i17, i10) - Math.max(i16, i9);
                    if (i15.hasFocusable()) {
                        if (min <= i13) {
                            if (min == i13) {
                            }
                        }
                    } else if (view4 == null) {
                        i6 = i11;
                        view3 = view5;
                        z2 = true;
                        if (a(i15, false, true)) {
                            i8 = i14;
                            if (min > i8) {
                                i7 = i12;
                                if (z2) {
                                    if (i15.hasFocusable()) {
                                        int i18 = bVar2.f869a;
                                        view5 = view3;
                                        i13 = Math.min(i17, i10) - Math.max(i16, i9);
                                        i14 = i8;
                                        i12 = i7;
                                        i11 = i18;
                                        view4 = i15;
                                        i4 += i2;
                                        pVar2 = pVar;
                                        tVar2 = tVar;
                                        e2 = view2;
                                        i3 = i5;
                                    } else {
                                        int i19 = bVar2.f869a;
                                        view5 = i15;
                                        i14 = Math.min(i17, i10) - Math.max(i16, i9);
                                        i12 = i19;
                                        i11 = i6;
                                        i4 += i2;
                                        pVar2 = pVar;
                                        tVar2 = tVar;
                                        e2 = view2;
                                        i3 = i5;
                                    }
                                }
                            } else {
                                if (min == i8) {
                                    i7 = i12;
                                    if (i16 <= i7) {
                                        z2 = false;
                                    }
                                }
                                i7 = i12;
                                z2 = false;
                                if (z2) {
                                }
                            }
                        }
                        i8 = i14;
                        i7 = i12;
                        z2 = false;
                        if (z2) {
                        }
                    }
                    i6 = i11;
                    view3 = view5;
                    i8 = i14;
                    i7 = i12;
                    z2 = false;
                    if (z2) {
                    }
                }
                i6 = i11;
                view3 = view5;
                i8 = i14;
                i7 = i12;
                z2 = true;
                if (z2) {
                }
            } else if (view4 != null) {
                break;
            } else {
                view2 = e2;
                i6 = i11;
                view3 = view5;
                i5 = i3;
                i8 = i14;
                i7 = i12;
            }
            view5 = view3;
            i14 = i8;
            i12 = i7;
            i11 = i6;
            i4 += i2;
            pVar2 = pVar;
            tVar2 = tVar;
            e2 = view2;
            i3 = i5;
        }
        return view4 != null ? view4 : view5;
    }

    /* access modifiers changed from: package-private */
    public View a(RecyclerView.p pVar, RecyclerView.t tVar, int i, int i2, int i3) {
        j();
        int c2 = this.j.c();
        int d2 = this.j.d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View i5 = i(i);
            int d3 = d(i5);
            if (d3 >= 0 && d3 < i3 && b(pVar, tVar, d3) == 0) {
                if (((RecyclerView.j) i5.getLayoutParams()).d()) {
                    if (view2 == null) {
                        view2 = i5;
                    }
                } else if (this.j.a(i5) < d2 && this.j.b(i5) >= c2) {
                    return i5;
                } else {
                    if (view == null) {
                        view = i5;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public RecyclerView.j a() {
        return this.i == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public void a(int i) {
        if (i != this.f868b) {
            this.f867a = true;
            if (i >= 1) {
                this.f868b = i;
                this.g.a();
                s();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    public void a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.c == null) {
            super.a(rect, i, i2);
        }
        int E = E() + G();
        int F = F() + H();
        if (this.i == 1) {
            i4 = a(i2, rect.height() + F, L());
            int[] iArr = this.c;
            i3 = a(i, iArr[iArr.length - 1] + E, K());
        } else {
            i3 = a(i, rect.width() + E, K());
            int[] iArr2 = this.c;
            i4 = a(i2, iArr2[iArr2.length - 1] + F, L());
        }
        f(i3, i4);
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        int a2 = a(pVar, tVar, bVar.f());
        if (this.i == 0) {
            dVar.b((Object) d.c.a(bVar.a(), bVar.b(), a2, 1, false, false));
            return;
        }
        dVar.b((Object) d.c.a(a2, 1, bVar.a(), bVar.b(), false, false));
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i) {
        super.a(pVar, tVar, aVar, i);
        R();
        if (tVar.e() > 0 && !tVar.a()) {
            b(pVar, tVar, aVar, i);
        }
        S();
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        RecyclerView.p pVar2 = pVar;
        RecyclerView.t tVar2 = tVar;
        LinearLayoutManager.c cVar2 = cVar;
        LinearLayoutManager.b bVar2 = bVar;
        int i11 = this.j.i();
        boolean z2 = false;
        boolean z3 = i11 != 1073741824;
        int i12 = z() > 0 ? this.c[this.f868b] : 0;
        if (z3) {
            R();
        }
        boolean z4 = cVar2.e == 1;
        int i13 = this.f868b;
        if (!z4) {
            i13 = b(pVar2, tVar2, cVar2.d) + c(pVar2, tVar2, cVar2.d);
        }
        int i14 = i13;
        int i15 = 0;
        while (i15 < this.f868b && cVar2.a(tVar2) && i14 > 0) {
            int c2 = c(pVar2, tVar2, cVar2.d);
            if (c2 <= this.f868b) {
                i14 -= c2;
                if (i14 < 0) {
                    break;
                }
                View a2 = cVar2.a(pVar2);
                if (a2 == null) {
                    break;
                }
                this.d[i15] = a2;
                i15++;
            } else {
                throw new IllegalArgumentException("Item at position " + r14 + " requires " + c2 + " spans but GridLayoutManager has only " + this.f868b + " spans.");
            }
        }
        if (i15 == 0) {
            bVar2.f878b = true;
            return;
        }
        float f2 = 0.0f;
        a(pVar2, tVar2, i15, z4);
        int i16 = 0;
        int i17 = 0;
        while (i16 < i15) {
            View view = this.d[i16];
            if (cVar2.l == null) {
                if (z4) {
                    b(view);
                } else {
                    b(view, (int) z2);
                }
            } else if (z4) {
                a(view);
            } else {
                a(view, z2 ? 1 : 0);
            }
            b(view, this.h);
            a(view, i11, z2);
            int e2 = this.j.e(view);
            if (e2 > i17) {
                i17 = e2;
            }
            float f3 = (((float) this.j.f(view)) * 1.0f) / ((float) ((b) view.getLayoutParams()).f870b);
            if (f3 > f2) {
                f2 = f3;
            }
            i16++;
            z2 = false;
        }
        if (z3) {
            a(f2, i12);
            i17 = 0;
            for (int i18 = 0; i18 < i15; i18++) {
                View view2 = this.d[i18];
                a(view2, 1073741824, true);
                int e3 = this.j.e(view2);
                if (e3 > i17) {
                    i17 = e3;
                }
            }
        }
        for (int i19 = 0; i19 < i15; i19++) {
            View view3 = this.d[i19];
            if (this.j.e(view3) != i17) {
                b bVar3 = (b) view3.getLayoutParams();
                Rect rect = bVar3.d;
                int i20 = rect.top + rect.bottom + bVar3.topMargin + bVar3.bottomMargin;
                int i21 = rect.left + rect.right + bVar3.leftMargin + bVar3.rightMargin;
                int a3 = a(bVar3.f869a, bVar3.f870b);
                if (this.i == 1) {
                    i10 = a(a3, 1073741824, i21, bVar3.width, false);
                    i9 = View.MeasureSpec.makeMeasureSpec(i17 - i20, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - i21, 1073741824);
                    i9 = a(a3, 1073741824, i20, bVar3.height, false);
                    i10 = makeMeasureSpec;
                }
                a(view3, i10, i9, true);
            }
        }
        int i22 = 0;
        bVar2.f877a = i17;
        if (this.i == 1) {
            if (cVar2.f == -1) {
                int i23 = cVar2.f880b;
                i3 = i23 - i17;
                i2 = i23;
            } else {
                int i24 = cVar2.f880b;
                i2 = i24 + i17;
                i3 = i24;
            }
            i4 = 0;
            i = 0;
        } else if (cVar2.f == -1) {
            i = cVar2.f880b;
            i4 = i - i17;
            i3 = 0;
            i2 = 0;
        } else {
            int i25 = cVar2.f880b;
            int i26 = i25 + i17;
            i3 = 0;
            i2 = 0;
            int i27 = i25;
            i = i26;
            i4 = i27;
        }
        while (i22 < i15) {
            View view4 = this.d[i22];
            b bVar4 = (b) view4.getLayoutParams();
            if (this.i != 1) {
                int F = F() + this.c[bVar4.f869a];
                i8 = i4;
                i7 = F;
                i5 = this.j.f(view4) + F;
                i6 = i;
            } else if (i()) {
                int E = E() + this.c[this.f868b - bVar4.f869a];
                i6 = E;
                i7 = i3;
                i5 = i2;
                i8 = E - this.j.f(view4);
            } else {
                int E2 = E() + this.c[bVar4.f869a];
                i8 = E2;
                i7 = i3;
                i5 = i2;
                i6 = this.j.f(view4) + E2;
            }
            a(view4, i8, i7, i6, i5);
            if (bVar4.d() || bVar4.e()) {
                bVar2.c = true;
            }
            bVar2.d |= view4.hasFocusable();
            i22++;
            i4 = i8;
            i3 = i7;
            i = i6;
            i2 = i5;
        }
        Arrays.fill(this.d, (Object) null);
    }

    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.f867a = false;
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.t tVar, LinearLayoutManager.c cVar, RecyclerView.i.a aVar) {
        int i = this.f868b;
        for (int i2 = 0; i2 < this.f868b && cVar.a(tVar) && i > 0; i2++) {
            int i3 = cVar.d;
            aVar.b(i3, Math.max(0, cVar.g));
            i -= this.g.a(i3);
            cVar.d += cVar.e;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.g.a();
        this.g.b();
    }

    public void a(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
        this.g.b();
    }

    public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.g.a();
        this.g.b();
    }

    public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.g.a();
        this.g.b();
    }

    public void a(boolean z2) {
        if (!z2) {
            super.a(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    public int b() {
        return this.f868b;
    }

    public int b(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        R();
        S();
        return super.b(i, pVar, tVar);
    }

    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 1) {
            return this.f868b;
        }
        if (tVar.e() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.e() - 1) + 1;
    }

    public int b(RecyclerView.t tVar) {
        return this.z ? i(tVar) : super.b(tVar);
    }

    public void b(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
        this.g.b();
    }

    public int c(RecyclerView.t tVar) {
        return this.z ? i(tVar) : super.c(tVar);
    }

    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (tVar.a()) {
            Q();
        }
        super.c(pVar, tVar);
        P();
    }

    public boolean c() {
        return this.n == null && !this.f867a;
    }

    public int d(RecyclerView.t tVar) {
        return this.z ? j(tVar) : super.d(tVar);
    }

    public int e(RecyclerView.t tVar) {
        return this.z ? j(tVar) : super.e(tVar);
    }
}
