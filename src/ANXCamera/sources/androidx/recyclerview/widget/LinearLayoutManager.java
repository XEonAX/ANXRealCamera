package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.nano.MessageNano;
import java.util.List;

public class LinearLayoutManager extends RecyclerView.i implements RecyclerView.s.b {

    /* renamed from: a  reason: collision with root package name */
    private c f873a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f874b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private final b g;
    private int h;
    int i;
    m j;
    boolean k;
    int l;
    int m;
    SavedState n;
    final a o;
    private int[] z;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        public int describeContents() {
            return 0;
        }

        /* access modifiers changed from: package-private */
        public boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        /* access modifiers changed from: package-private */
        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    static class a {

        /* renamed from: a  reason: collision with root package name */
        m f875a;

        /* renamed from: b  reason: collision with root package name */
        int f876b;
        int c;
        boolean d;
        boolean e;

        a() {
            a();
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f876b = -1;
            this.c = MessageNano.UNSET_ENUM_VALUE;
            this.d = false;
            this.e = false;
        }

        public void a(View view, int i) {
            int b2 = this.f875a.b();
            if (b2 >= 0) {
                b(view, i);
                return;
            }
            this.f876b = i;
            if (this.d) {
                int d2 = (this.f875a.d() - b2) - this.f875a.b(view);
                this.c = this.f875a.d() - d2;
                if (d2 > 0) {
                    int e2 = this.c - this.f875a.e(view);
                    int c2 = this.f875a.c();
                    int min = e2 - (c2 + Math.min(this.f875a.a(view) - c2, 0));
                    if (min < 0) {
                        this.c += Math.min(d2, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int a2 = this.f875a.a(view);
            int c3 = a2 - this.f875a.c();
            this.c = a2;
            if (c3 > 0) {
                int d3 = (this.f875a.d() - Math.min(0, (this.f875a.d() - b2) - this.f875a.b(view))) - (a2 + this.f875a.e(view));
                if (d3 < 0) {
                    this.c -= Math.min(c3, -d3);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public boolean a(View view, RecyclerView.t tVar) {
            RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
            return !jVar.d() && jVar.f() >= 0 && jVar.f() < tVar.e();
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.c = this.d ? this.f875a.d() : this.f875a.c();
        }

        public void b(View view, int i) {
            if (this.d) {
                this.c = this.f875a.b(view) + this.f875a.b();
            } else {
                this.c = this.f875a.a(view);
            }
            this.f876b = i;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f876b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
        }
    }

    protected static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f877a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f878b;
        public boolean c;
        public boolean d;

        protected b() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f877a = 0;
            this.f878b = false;
            this.c = false;
            this.d = false;
        }
    }

    static class c {

        /* renamed from: a  reason: collision with root package name */
        boolean f879a = true;

        /* renamed from: b  reason: collision with root package name */
        int f880b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h = 0;
        int i = 0;
        boolean j = false;
        int k;
        List<RecyclerView.w> l = null;
        boolean m;

        c() {
        }

        private View b() {
            int size = this.l.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.l.get(i2).f916a;
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                if (!jVar.d() && this.d == jVar.f()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public View a(RecyclerView.p pVar) {
            if (this.l != null) {
                return b();
            }
            View c2 = pVar.c(this.d);
            this.d += this.e;
            return c2;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View b2 = b(view);
            if (b2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.j) b2.getLayoutParams()).f();
            }
        }

        /* access modifiers changed from: package-private */
        public boolean a(RecyclerView.t tVar) {
            int i2 = this.d;
            return i2 >= 0 && i2 < tVar.e();
        }

        public View b(View view) {
            int size = this.l.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.l.get(i3).f916a;
                RecyclerView.j jVar = (RecyclerView.j) view3.getLayoutParams();
                if (view3 != view && !jVar.d()) {
                    int f2 = (jVar.f() - this.d) * this.e;
                    if (f2 >= 0 && f2 < i2) {
                        if (f2 == 0) {
                            return view3;
                        }
                        view2 = view3;
                        i2 = f2;
                    }
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i2, boolean z2) {
        this.i = 1;
        this.c = false;
        this.k = false;
        this.d = false;
        this.e = true;
        this.l = -1;
        this.m = MessageNano.UNSET_ENUM_VALUE;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        this.z = new int[2];
        b(i2);
        b(z2);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.i = 1;
        this.c = false;
        this.k = false;
        this.d = false;
        this.e = true;
        this.l = -1;
        this.m = MessageNano.UNSET_ENUM_VALUE;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        this.z = new int[2];
        RecyclerView.i.b a2 = a(context, attributeSet, i2, i3);
        b(a2.f899a);
        b(a2.c);
        a(a2.d);
    }

    private View P() {
        return i(this.k ? z() - 1 : 0);
    }

    private View Q() {
        return i(this.k ? 0 : z() - 1);
    }

    private View R() {
        return this.k ? T() : U();
    }

    private View S() {
        return this.k ? U() : T();
    }

    private View T() {
        return b(0, z());
    }

    private View U() {
        return b(z() - 1, -1);
    }

    private int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int d2 = this.j.d() - i2;
        if (d2 <= 0) {
            return 0;
        }
        int i3 = -c(-d2, pVar, tVar);
        int i4 = i2 + i3;
        if (z2) {
            int d3 = this.j.d() - i4;
            if (d3 > 0) {
                this.j.a(d3);
                return d3 + i3;
            }
        }
        return i3;
    }

    private void a(int i2, int i3) {
        this.f873a.c = this.j.d() - i3;
        this.f873a.e = this.k ? -1 : 1;
        c cVar = this.f873a;
        cVar.d = i2;
        cVar.f = 1;
        cVar.f880b = i3;
        cVar.g = MessageNano.UNSET_ENUM_VALUE;
    }

    private void a(int i2, int i3, boolean z2, RecyclerView.t tVar) {
        int i4;
        this.f873a.m = m();
        this.f873a.f = i2;
        int[] iArr = this.z;
        boolean z3 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        a(tVar, iArr);
        int max = Math.max(0, this.z[0]);
        int max2 = Math.max(0, this.z[1]);
        if (i2 == 1) {
            z3 = true;
        }
        this.f873a.h = z3 ? max2 : max;
        c cVar = this.f873a;
        if (!z3) {
            max = max2;
        }
        cVar.i = max;
        int i5 = -1;
        if (z3) {
            this.f873a.h += this.j.g();
            View Q = Q();
            c cVar2 = this.f873a;
            if (!this.k) {
                i5 = 1;
            }
            cVar2.e = i5;
            this.f873a.d = d(Q) + this.f873a.e;
            this.f873a.f880b = this.j.b(Q);
            i4 = this.j.b(Q) - this.j.d();
        } else {
            View P = P();
            this.f873a.h += this.j.c();
            c cVar3 = this.f873a;
            if (this.k) {
                i5 = 1;
            }
            cVar3.e = i5;
            this.f873a.d = d(P) + this.f873a.e;
            this.f873a.f880b = this.j.a(P);
            i4 = (-this.j.a(P)) + this.j.c();
        }
        c cVar4 = this.f873a;
        cVar4.c = i3;
        if (z2) {
            cVar4.c -= i4;
        }
        this.f873a.g = i4;
    }

    private void a(a aVar) {
        a(aVar.f876b, aVar.c);
    }

    private void a(RecyclerView.p pVar, int i2, int i3) {
        if (i2 != i3) {
            if (i3 > i2) {
                for (int i4 = i3 - 1; i4 >= i2; i4--) {
                    a(i4, pVar);
                }
                return;
            }
            while (i2 > i3) {
                a(i2, pVar);
                i2--;
            }
        }
    }

    private void a(RecyclerView.p pVar, c cVar) {
        if (cVar.f879a && !cVar.m) {
            int i2 = cVar.g;
            int i3 = cVar.i;
            if (cVar.f == -1) {
                c(pVar, i2, i3);
            } else {
                b(pVar, i2, i3);
            }
        }
    }

    private void a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        if (!a(tVar, aVar) && !b(pVar, tVar, aVar)) {
            aVar.b();
            aVar.f876b = this.d ? tVar.e() - 1 : 0;
        }
    }

    private boolean a(RecyclerView.t tVar, a aVar) {
        boolean z2 = false;
        if (!tVar.a()) {
            int i2 = this.l;
            if (i2 != -1) {
                if (i2 < 0 || i2 >= tVar.e()) {
                    this.l = -1;
                    this.m = MessageNano.UNSET_ENUM_VALUE;
                } else {
                    aVar.f876b = this.l;
                    SavedState savedState = this.n;
                    if (savedState != null && savedState.hasValidAnchor()) {
                        aVar.d = this.n.mAnchorLayoutFromEnd;
                        if (aVar.d) {
                            aVar.c = this.j.d() - this.n.mAnchorOffset;
                        } else {
                            aVar.c = this.j.c() + this.n.mAnchorOffset;
                        }
                        return true;
                    } else if (this.m == Integer.MIN_VALUE) {
                        View c2 = c(this.l);
                        if (c2 == null) {
                            if (z() > 0) {
                                if ((this.l < d(i(0))) == this.k) {
                                    z2 = true;
                                }
                                aVar.d = z2;
                            }
                            aVar.b();
                        } else if (this.j.e(c2) > this.j.f()) {
                            aVar.b();
                            return true;
                        } else if (this.j.a(c2) - this.j.c() < 0) {
                            aVar.c = this.j.c();
                            aVar.d = false;
                            return true;
                        } else if (this.j.d() - this.j.b(c2) < 0) {
                            aVar.c = this.j.d();
                            aVar.d = true;
                            return true;
                        } else {
                            aVar.c = aVar.d ? this.j.b(c2) + this.j.b() : this.j.a(c2);
                        }
                        return true;
                    } else {
                        boolean z3 = this.k;
                        aVar.d = z3;
                        if (z3) {
                            aVar.c = this.j.d() - this.m;
                        } else {
                            aVar.c = this.j.c() + this.m;
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int c2 = i2 - this.j.c();
        if (c2 <= 0) {
            return 0;
        }
        int i3 = -c(c2, pVar, tVar);
        int i4 = i2 + i3;
        if (!z2) {
            return i3;
        }
        int c3 = i4 - this.j.c();
        if (c3 <= 0) {
            return i3;
        }
        this.j.a(-c3);
        return i3 - c3;
    }

    private void b() {
        if (this.i == 1 || !i()) {
            this.k = this.c;
        } else {
            this.k = !this.c;
        }
    }

    private void b(a aVar) {
        g(aVar.f876b, aVar.c);
    }

    private void b(RecyclerView.p pVar, int i2, int i3) {
        if (i2 >= 0) {
            int i4 = i2 - i3;
            int z2 = z();
            if (this.k) {
                int i5 = z2 - 1;
                for (int i6 = i5; i6 >= 0; i6--) {
                    View i7 = i(i6);
                    if (this.j.b(i7) > i4 || this.j.c(i7) > i4) {
                        a(pVar, i5, i6);
                        return;
                    }
                }
                return;
            }
            for (int i8 = 0; i8 < z2; i8++) {
                View i9 = i(i8);
                if (this.j.b(i9) > i4 || this.j.c(i9) > i4) {
                    a(pVar, 0, i8);
                    return;
                }
            }
        }
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3) {
        RecyclerView.p pVar2 = pVar;
        RecyclerView.t tVar2 = tVar;
        if (tVar.b() && z() != 0 && !tVar.a() && c()) {
            List<RecyclerView.w> c2 = pVar.c();
            int size = c2.size();
            int d2 = d(i(0));
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                RecyclerView.w wVar = c2.get(i6);
                if (!wVar.t()) {
                    boolean z2 = true;
                    if ((wVar.g() < d2) != this.k) {
                        z2 = true;
                    }
                    if (z2) {
                        i4 += this.j.e(wVar.f916a);
                    } else {
                        i5 += this.j.e(wVar.f916a);
                    }
                }
            }
            this.f873a.l = c2;
            if (i4 > 0) {
                g(d(P()), i2);
                c cVar = this.f873a;
                cVar.h = i4;
                cVar.c = 0;
                cVar.a();
                a(pVar2, this.f873a, tVar2, false);
            }
            if (i5 > 0) {
                a(d(Q()), i3);
                c cVar2 = this.f873a;
                cVar2.h = i5;
                cVar2.c = 0;
                cVar2.a();
                a(pVar2, this.f873a, tVar2, false);
            }
            this.f873a.l = null;
        }
    }

    private boolean b(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        boolean z2 = false;
        if (z() == 0) {
            return false;
        }
        View I = I();
        if (I != null && aVar.a(I, tVar)) {
            aVar.a(I, d(I));
            return true;
        } else if (this.f874b != this.d) {
            return false;
        } else {
            View f2 = aVar.d ? f(pVar, tVar) : g(pVar, tVar);
            if (f2 == null) {
                return false;
            }
            aVar.b(f2, d(f2));
            if (!tVar.a() && c()) {
                if (this.j.a(f2) >= this.j.d() || this.j.b(f2) < this.j.c()) {
                    z2 = true;
                }
                if (z2) {
                    aVar.c = aVar.d ? this.j.d() : this.j.c();
                }
            }
            return true;
        }
    }

    private void c(RecyclerView.p pVar, int i2, int i3) {
        int z2 = z();
        if (i2 >= 0) {
            int e2 = (this.j.e() - i2) + i3;
            if (this.k) {
                for (int i4 = 0; i4 < z2; i4++) {
                    View i5 = i(i4);
                    if (this.j.a(i5) < e2 || this.j.d(i5) < e2) {
                        a(pVar, 0, i4);
                        return;
                    }
                }
                return;
            }
            int i6 = z2 - 1;
            for (int i7 = i6; i7 >= 0; i7--) {
                View i8 = i(i7);
                if (this.j.a(i8) < e2 || this.j.d(i8) < e2) {
                    a(pVar, i6, i7);
                    return;
                }
            }
        }
    }

    private View f(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? h(pVar, tVar) : i(pVar, tVar);
    }

    private View g(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? i(pVar, tVar) : h(pVar, tVar);
    }

    private void g(int i2, int i3) {
        this.f873a.c = i3 - this.j.c();
        c cVar = this.f873a;
        cVar.d = i2;
        cVar.e = this.k ? 1 : -1;
        c cVar2 = this.f873a;
        cVar2.f = -1;
        cVar2.f880b = i3;
        cVar2.g = MessageNano.UNSET_ENUM_VALUE;
    }

    private View h(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, 0, z(), tVar.e());
    }

    private int i(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        j();
        m mVar = this.j;
        View a2 = a(!this.e, true);
        return p.a(tVar, mVar, a2, b(!this.e, true), this, this.e, this.k);
    }

    private View i(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, z() - 1, -1, tVar.e());
    }

    private int j(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        j();
        m mVar = this.j;
        View a2 = a(!this.e, true);
        return p.a(tVar, mVar, a2, b(!this.e, true), this, this.e);
    }

    private int k(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        j();
        m mVar = this.j;
        View a2 = a(!this.e, true);
        return p.b(tVar, mVar, a2, b(!this.e, true), this, this.e);
    }

    public int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 1) {
            return 0;
        }
        return c(i2, pVar, tVar);
    }

    /* access modifiers changed from: package-private */
    public int a(RecyclerView.p pVar, c cVar, RecyclerView.t tVar, boolean z2) {
        int i2 = cVar.c;
        if (cVar.g != Integer.MIN_VALUE) {
            if (cVar.c < 0) {
                cVar.g += cVar.c;
            }
            a(pVar, cVar);
        }
        int i3 = cVar.c + cVar.h;
        b bVar = this.g;
        while (true) {
            if ((!cVar.m && i3 <= 0) || !cVar.a(tVar)) {
                break;
            }
            bVar.a();
            a(pVar, tVar, cVar, bVar);
            if (!bVar.f878b) {
                cVar.f880b += bVar.f877a * cVar.f;
                if (!bVar.c || cVar.l != null || !tVar.a()) {
                    cVar.c -= bVar.f877a;
                    i3 -= bVar.f877a;
                }
                if (cVar.g != Integer.MIN_VALUE) {
                    cVar.g += bVar.f877a;
                    if (cVar.c < 0) {
                        cVar.g += cVar.c;
                    }
                    a(pVar, cVar);
                }
                if (z2 && bVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cVar.c;
    }

    /* access modifiers changed from: package-private */
    public View a(int i2, int i3, boolean z2, boolean z3) {
        j();
        int i4 = 320;
        int i5 = z2 ? 24579 : 320;
        if (!z3) {
            i4 = 0;
        }
        return this.i == 0 ? this.r.a(i2, i3, i5, i4) : this.s.a(i2, i3, i5, i4);
    }

    public View a(View view, int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        b();
        if (z() == 0) {
            return null;
        }
        int f2 = f(i2);
        if (f2 == Integer.MIN_VALUE) {
            return null;
        }
        j();
        a(f2, (int) (((float) this.j.f()) * 0.33333334f), false, tVar);
        c cVar = this.f873a;
        cVar.g = MessageNano.UNSET_ENUM_VALUE;
        cVar.f879a = false;
        a(pVar, cVar, tVar, true);
        View S = f2 == -1 ? S() : R();
        View P = f2 == -1 ? P() : Q();
        if (!P.hasFocusable()) {
            return S;
        }
        if (S == null) {
            return null;
        }
        return P;
    }

    /* access modifiers changed from: package-private */
    public View a(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3, int i4) {
        j();
        int c2 = this.j.c();
        int d2 = this.j.d();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View i6 = i(i2);
            int d3 = d(i6);
            if (d3 >= 0 && d3 < i4) {
                if (((RecyclerView.j) i6.getLayoutParams()).d()) {
                    if (view2 == null) {
                        view2 = i6;
                    }
                } else if (this.j.a(i6) < d2 && this.j.b(i6) >= c2) {
                    return i6;
                } else {
                    if (view == null) {
                        view = i6;
                    }
                }
            }
            i2 += i5;
        }
        return view != null ? view : view2;
    }

    /* access modifiers changed from: package-private */
    public View a(boolean z2, boolean z3) {
        return this.k ? a(z() - 1, -1, z2, z3) : a(0, z(), z2, z3);
    }

    public RecyclerView.j a() {
        return new RecyclerView.j(-2, -2);
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        if (this.i != 0) {
            i2 = i3;
        }
        if (z() != 0 && i2 != 0) {
            j();
            a(i2 > 0 ? 1 : -1, Math.abs(i2), true, tVar);
            a(tVar, this.f873a, aVar);
        }
    }

    public void a(int i2, RecyclerView.i.a aVar) {
        int i3;
        boolean z2;
        SavedState savedState = this.n;
        int i4 = -1;
        if (savedState == null || !savedState.hasValidAnchor()) {
            b();
            z2 = this.k;
            i3 = this.l;
            if (i3 == -1) {
                i3 = z2 ? i2 - 1 : 0;
            }
        } else {
            z2 = this.n.mAnchorLayoutFromEnd;
            i3 = this.n.mAnchorPosition;
        }
        if (!z2) {
            i4 = 1;
        }
        for (int i5 = 0; i5 < this.h && i3 >= 0 && i3 < i2; i5++) {
            aVar.b(i3, 0);
            i3 += i4;
        }
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.n = (SavedState) parcelable;
            s();
        }
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (z() > 0) {
            accessibilityEvent.setFromIndex(o());
            accessibilityEvent.setToIndex(q());
        }
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar, int i2) {
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, c cVar, b bVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View a2 = cVar.a(pVar);
        if (a2 == null) {
            bVar.f878b = true;
            return;
        }
        RecyclerView.j jVar = (RecyclerView.j) a2.getLayoutParams();
        if (cVar.l == null) {
            if (this.k == (cVar.f == -1)) {
                b(a2);
            } else {
                b(a2, 0);
            }
        } else {
            if (this.k == (cVar.f == -1)) {
                a(a2);
            } else {
                a(a2, 0);
            }
        }
        a(a2, 0, 0);
        bVar.f877a = this.j.e(a2);
        if (this.i == 1) {
            if (i()) {
                i6 = C() - G();
                i5 = i6 - this.j.f(a2);
            } else {
                i5 = E();
                i6 = this.j.f(a2) + i5;
            }
            if (cVar.f == -1) {
                int i7 = cVar.f880b;
                i4 = cVar.f880b - bVar.f877a;
                i3 = i6;
                i2 = i7;
            } else {
                int i8 = cVar.f880b;
                i2 = cVar.f880b + bVar.f877a;
                i3 = i6;
                i4 = i8;
            }
        } else {
            int F = F();
            int f2 = this.j.f(a2) + F;
            if (cVar.f == -1) {
                i4 = F;
                i3 = cVar.f880b;
                i2 = f2;
                i5 = cVar.f880b - bVar.f877a;
            } else {
                int i9 = cVar.f880b;
                i3 = cVar.f880b + bVar.f877a;
                i4 = F;
                i2 = f2;
                i5 = i9;
            }
        }
        a(a2, i5, i4, i3, i2);
        if (jVar.d() || jVar.e()) {
            bVar.c = true;
        }
        bVar.d = a2.hasFocusable();
    }

    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.n = null;
        this.l = -1;
        this.m = MessageNano.UNSET_ENUM_VALUE;
        this.o.a();
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.t tVar, c cVar, RecyclerView.i.a aVar) {
        int i2 = cVar.d;
        if (i2 >= 0 && i2 < tVar.e()) {
            aVar.b(i2, Math.max(0, cVar.g));
        }
    }

    /* access modifiers changed from: protected */
    public void a(RecyclerView.t tVar, int[] iArr) {
        int i2;
        int f2 = f(tVar);
        if (this.f873a.f == -1) {
            i2 = 0;
        } else {
            i2 = f2;
            f2 = 0;
        }
        iArr[0] = f2;
        iArr[1] = i2;
    }

    public void a(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.a(recyclerView, pVar);
        if (this.f) {
            c(pVar);
            pVar.a();
        }
    }

    public void a(RecyclerView recyclerView, RecyclerView.t tVar, int i2) {
        j jVar = new j(recyclerView.getContext());
        jVar.c(i2);
        a((RecyclerView.s) jVar);
    }

    public void a(String str) {
        if (this.n == null) {
            super.a(str);
        }
    }

    public void a(boolean z2) {
        a((String) null);
        if (this.d != z2) {
            this.d = z2;
            s();
        }
    }

    public int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 0) {
            return 0;
        }
        return c(i2, pVar, tVar);
    }

    public int b(RecyclerView.t tVar) {
        return k(tVar);
    }

    /* access modifiers changed from: package-private */
    public View b(int i2, int i3) {
        int i4;
        int i5;
        j();
        if ((i3 > i2 ? 1 : i3 < i2 ? (char) 65535 : 0) == 0) {
            return i(i2);
        }
        if (this.j.a(i(i2)) < this.j.c()) {
            i5 = 16644;
            i4 = 16388;
        } else {
            i5 = 4161;
            i4 = 4097;
        }
        return this.i == 0 ? this.r.a(i2, i3, i5, i4) : this.s.a(i2, i3, i5, i4);
    }

    /* access modifiers changed from: package-private */
    public View b(boolean z2, boolean z3) {
        return this.k ? a(0, z(), z2, z3) : a(z() - 1, -1, z2, z3);
    }

    public void b(int i2) {
        if (i2 == 0 || i2 == 1) {
            a((String) null);
            if (i2 != this.i || this.j == null) {
                this.j = m.a(this, i2);
                this.o.f875a = this.j;
                this.i = i2;
                s();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i2);
    }

    public void b(boolean z2) {
        a((String) null);
        if (z2 != this.c) {
            this.c = z2;
            s();
        }
    }

    /* access modifiers changed from: package-private */
    public int c(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (z() == 0 || i2 == 0) {
            return 0;
        }
        j();
        this.f873a.f879a = true;
        int i3 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        a(i3, abs, true, tVar);
        int a2 = this.f873a.g + a(pVar, this.f873a, tVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i2 = i3 * a2;
        }
        this.j.a(-i2);
        this.f873a.k = i2;
        return i2;
    }

    public int c(RecyclerView.t tVar) {
        return k(tVar);
    }

    public View c(int i2) {
        int z2 = z();
        if (z2 == 0) {
            return null;
        }
        int d2 = i2 - d(i(0));
        if (d2 >= 0 && d2 < z2) {
            View i3 = i(d2);
            if (d(i3) == i2) {
                return i3;
            }
        }
        return super.c(i2);
    }

    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = -1;
        if (!(this.n == null && this.l == -1) && tVar.e() == 0) {
            c(pVar);
            return;
        }
        SavedState savedState = this.n;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.l = this.n.mAnchorPosition;
        }
        j();
        this.f873a.f879a = false;
        b();
        View I = I();
        if (!this.o.e || this.l != -1 || this.n != null) {
            this.o.a();
            a aVar = this.o;
            aVar.d = this.k ^ this.d;
            a(pVar, tVar, aVar);
            this.o.e = true;
        } else if (I != null && (this.j.a(I) >= this.j.d() || this.j.b(I) <= this.j.c())) {
            this.o.a(I, d(I));
        }
        c cVar = this.f873a;
        cVar.f = cVar.k >= 0 ? 1 : -1;
        int[] iArr = this.z;
        iArr[0] = 0;
        iArr[1] = 0;
        a(tVar, iArr);
        int max = Math.max(0, this.z[0]) + this.j.c();
        int max2 = Math.max(0, this.z[1]) + this.j.g();
        if (tVar.a()) {
            int i10 = this.l;
            if (!(i10 == -1 || this.m == Integer.MIN_VALUE)) {
                View c2 = c(i10);
                if (c2 != null) {
                    if (this.k) {
                        i7 = this.j.d() - this.j.b(c2);
                        i8 = this.m;
                    } else {
                        i8 = this.j.a(c2) - this.j.c();
                        i7 = this.m;
                    }
                    int i11 = i7 - i8;
                    if (i11 > 0) {
                        max += i11;
                    } else {
                        max2 -= i11;
                    }
                }
            }
        }
        if (!this.o.d ? !this.k : this.k) {
            i9 = 1;
        }
        a(pVar, tVar, this.o, i9);
        a(pVar);
        this.f873a.m = m();
        this.f873a.j = tVar.a();
        this.f873a.i = 0;
        if (this.o.d) {
            b(this.o);
            c cVar2 = this.f873a;
            cVar2.h = max;
            a(pVar, cVar2, tVar, false);
            i3 = this.f873a.f880b;
            int i12 = this.f873a.d;
            if (this.f873a.c > 0) {
                max2 += this.f873a.c;
            }
            a(this.o);
            c cVar3 = this.f873a;
            cVar3.h = max2;
            cVar3.d += this.f873a.e;
            a(pVar, this.f873a, tVar, false);
            i2 = this.f873a.f880b;
            if (this.f873a.c > 0) {
                int i13 = this.f873a.c;
                g(i12, i3);
                c cVar4 = this.f873a;
                cVar4.h = i13;
                a(pVar, cVar4, tVar, false);
                i3 = this.f873a.f880b;
            }
        } else {
            a(this.o);
            c cVar5 = this.f873a;
            cVar5.h = max2;
            a(pVar, cVar5, tVar, false);
            i2 = this.f873a.f880b;
            int i14 = this.f873a.d;
            if (this.f873a.c > 0) {
                max += this.f873a.c;
            }
            b(this.o);
            c cVar6 = this.f873a;
            cVar6.h = max;
            cVar6.d += this.f873a.e;
            a(pVar, this.f873a, tVar, false);
            i3 = this.f873a.f880b;
            if (this.f873a.c > 0) {
                int i15 = this.f873a.c;
                a(i14, i2);
                c cVar7 = this.f873a;
                cVar7.h = i15;
                a(pVar, cVar7, tVar, false);
                i2 = this.f873a.f880b;
            }
        }
        if (z() > 0) {
            if (this.k ^ this.d) {
                int a2 = a(i2, pVar, tVar, true);
                i6 = i3 + a2;
                i4 = i2 + a2;
                i5 = b(i6, pVar, tVar, false);
            } else {
                int b2 = b(i3, pVar, tVar, true);
                i6 = i3 + b2;
                i4 = i2 + b2;
                i5 = a(i4, pVar, tVar, false);
            }
            i3 = i6 + i5;
            i2 = i4 + i5;
        }
        b(pVar, tVar, i3, i2);
        if (!tVar.a()) {
            this.j.a();
        } else {
            this.o.a();
        }
        this.f874b = this.d;
    }

    public boolean c() {
        return this.n == null && this.f874b == this.d;
    }

    public int d(RecyclerView.t tVar) {
        return i(tVar);
    }

    public PointF d(int i2) {
        if (z() == 0) {
            return null;
        }
        boolean z2 = false;
        int i3 = 1;
        if (i2 < d(i(0))) {
            z2 = true;
        }
        if (z2 != this.k) {
            i3 = -1;
        }
        return this.i == 0 ? new PointF((float) i3, 0.0f) : new PointF(0.0f, (float) i3);
    }

    public boolean d() {
        return true;
    }

    public int e(RecyclerView.t tVar) {
        return i(tVar);
    }

    public Parcelable e() {
        SavedState savedState = this.n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (z() > 0) {
            j();
            boolean z2 = this.f874b ^ this.k;
            savedState2.mAnchorLayoutFromEnd = z2;
            if (z2) {
                View Q = Q();
                savedState2.mAnchorOffset = this.j.d() - this.j.b(Q);
                savedState2.mAnchorPosition = d(Q);
            } else {
                View P = P();
                savedState2.mAnchorPosition = d(P);
                savedState2.mAnchorOffset = this.j.a(P) - this.j.c();
            }
        } else {
            savedState2.invalidateAnchor();
        }
        return savedState2;
    }

    public void e(int i2) {
        this.l = i2;
        this.m = MessageNano.UNSET_ENUM_VALUE;
        SavedState savedState = this.n;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        s();
    }

    /* access modifiers changed from: package-private */
    public int f(int i2) {
        if (i2 == 1) {
            return (this.i != 1 && i()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.i != 1 && i()) ? -1 : 1;
        }
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        return MessageNano.UNSET_ENUM_VALUE;
                    }
                    if (this.i == 1) {
                        return 1;
                    }
                    return MessageNano.UNSET_ENUM_VALUE;
                } else if (this.i == 0) {
                    return 1;
                } else {
                    return MessageNano.UNSET_ENUM_VALUE;
                }
            } else if (this.i == 1) {
                return -1;
            } else {
                return MessageNano.UNSET_ENUM_VALUE;
            }
        } else if (this.i == 0) {
            return -1;
        } else {
            return MessageNano.UNSET_ENUM_VALUE;
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public int f(RecyclerView.t tVar) {
        if (tVar.d()) {
            return this.j.f();
        }
        return 0;
    }

    public boolean f() {
        return this.i == 0;
    }

    public int g(RecyclerView.t tVar) {
        return j(tVar);
    }

    public boolean g() {
        return this.i == 1;
    }

    public int h() {
        return this.i;
    }

    public int h(RecyclerView.t tVar) {
        return j(tVar);
    }

    /* access modifiers changed from: protected */
    public boolean i() {
        return x() == 1;
    }

    /* access modifiers changed from: package-private */
    public void j() {
        if (this.f873a == null) {
            this.f873a = k();
        }
    }

    /* access modifiers changed from: package-private */
    public c k() {
        return new c();
    }

    public boolean l() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public boolean m() {
        return this.j.h() == 0 && this.j.e() == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean n() {
        return (B() == 1073741824 || A() == 1073741824 || !O()) ? false : true;
    }

    public int o() {
        View a2 = a(0, z(), false, true);
        if (a2 == null) {
            return -1;
        }
        return d(a2);
    }

    public int p() {
        View a2 = a(0, z(), true, false);
        if (a2 == null) {
            return -1;
        }
        return d(a2);
    }

    public int q() {
        View a2 = a(z() - 1, -1, false, true);
        if (a2 == null) {
            return -1;
        }
        return d(a2);
    }

    public int r() {
        View a2 = a(z() - 1, -1, true, false);
        if (a2 == null) {
            return -1;
        }
        return d(a2);
    }
}
