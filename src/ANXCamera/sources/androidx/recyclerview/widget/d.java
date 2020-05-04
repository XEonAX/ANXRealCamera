package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ChildHelper */
class d {

    /* renamed from: a  reason: collision with root package name */
    final b f936a;

    /* renamed from: b  reason: collision with root package name */
    final a f937b = new a();
    final List<View> c = new ArrayList();

    /* compiled from: ChildHelper */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        long f938a = 0;

        /* renamed from: b  reason: collision with root package name */
        a f939b;

        a() {
        }

        private void b() {
            if (this.f939b == null) {
                this.f939b = new a();
            }
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f938a = 0;
            a aVar = this.f939b;
            if (aVar != null) {
                aVar.a();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i) {
            if (i >= 64) {
                b();
                this.f939b.a(i - 64);
                return;
            }
            this.f938a |= 1 << i;
        }

        /* access modifiers changed from: package-private */
        public void a(int i, boolean z) {
            if (i >= 64) {
                b();
                this.f939b.a(i - 64, z);
                return;
            }
            boolean z2 = (this.f938a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f938a;
            this.f938a = ((j2 & (~j)) << 1) | (j2 & j);
            if (z) {
                a(i);
            } else {
                b(i);
            }
            if (z2 || this.f939b != null) {
                b();
                this.f939b.a(0, z2);
            }
        }

        /* access modifiers changed from: package-private */
        public void b(int i) {
            if (i >= 64) {
                a aVar = this.f939b;
                if (aVar != null) {
                    aVar.b(i - 64);
                    return;
                }
                return;
            }
            this.f938a &= ~(1 << i);
        }

        /* access modifiers changed from: package-private */
        public boolean c(int i) {
            if (i < 64) {
                return (this.f938a & (1 << i)) != 0;
            }
            b();
            return this.f939b.c(i - 64);
        }

        /* access modifiers changed from: package-private */
        public boolean d(int i) {
            if (i >= 64) {
                b();
                return this.f939b.d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f938a & j) != 0;
            this.f938a &= ~j;
            long j2 = j - 1;
            long j3 = this.f938a;
            this.f938a = Long.rotateRight(j3 & (~j2), 1) | (j3 & j2);
            a aVar = this.f939b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    a(63);
                }
                this.f939b.d(0);
            }
            return z;
        }

        /* access modifiers changed from: package-private */
        public int e(int i) {
            a aVar = this.f939b;
            return aVar == null ? i >= 64 ? Long.bitCount(this.f938a) : Long.bitCount(this.f938a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f938a & ((1 << i) - 1)) : aVar.e(i - 64) + Long.bitCount(this.f938a);
        }

        public String toString() {
            if (this.f939b == null) {
                return Long.toBinaryString(this.f938a);
            }
            return this.f939b.toString() + "xx" + Long.toBinaryString(this.f938a);
        }
    }

    /* compiled from: ChildHelper */
    interface b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        View b(int i);

        RecyclerView.w b(View view);

        void b();

        void c(int i);

        void c(View view);

        void d(View view);
    }

    d(b bVar) {
        this.f936a = bVar;
    }

    private int f(int i) {
        if (i < 0) {
            return -1;
        }
        int a2 = this.f936a.a();
        int i2 = i;
        while (i2 < a2) {
            int e = i - (i2 - this.f937b.e(i2));
            if (e == 0) {
                while (this.f937b.c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += e;
        }
        return -1;
    }

    private void g(View view) {
        this.c.add(view);
        this.f936a.c(view);
    }

    private boolean h(View view) {
        if (!this.c.remove(view)) {
            return false;
        }
        this.f936a.d(view);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.f937b.a();
        for (int size = this.c.size() - 1; size >= 0; size--) {
            this.f936a.d(this.c.get(size));
            this.c.remove(size);
        }
        this.f936a.b();
    }

    /* access modifiers changed from: package-private */
    public void a(int i) {
        int f = f(i);
        View b2 = this.f936a.b(f);
        if (b2 != null) {
            if (this.f937b.d(f)) {
                h(b2);
            }
            this.f936a.a(f);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(View view) {
        int a2 = this.f936a.a(view);
        if (a2 >= 0) {
            if (this.f937b.d(a2)) {
                h(view);
            }
            this.f936a.a(a2);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int a2 = i < 0 ? this.f936a.a() : f(i);
        this.f937b.a(a2, z);
        if (z) {
            g(view);
        }
        this.f936a.a(view, a2, layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, int i, boolean z) {
        int a2 = i < 0 ? this.f936a.a() : f(i);
        this.f937b.a(a2, z);
        if (z) {
            g(view);
        }
        this.f936a.a(view, a2);
    }

    /* access modifiers changed from: package-private */
    public void a(View view, boolean z) {
        a(view, -1, z);
    }

    /* access modifiers changed from: package-private */
    public int b() {
        return this.f936a.a() - this.c.size();
    }

    /* access modifiers changed from: package-private */
    public int b(View view) {
        int a2 = this.f936a.a(view);
        if (a2 != -1 && !this.f937b.c(a2)) {
            return a2 - this.f937b.e(a2);
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public View b(int i) {
        return this.f936a.b(f(i));
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.f936a.a();
    }

    /* access modifiers changed from: package-private */
    public View c(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.c.get(i2);
            RecyclerView.w b2 = this.f936a.b(view);
            if (b2.g() == i && !b2.q() && !b2.t()) {
                return view;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public boolean c(View view) {
        return this.c.contains(view);
    }

    /* access modifiers changed from: package-private */
    public View d(int i) {
        return this.f936a.b(i);
    }

    /* access modifiers changed from: package-private */
    public void d(View view) {
        int a2 = this.f936a.a(view);
        if (a2 >= 0) {
            this.f937b.a(a2);
            g(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* access modifiers changed from: package-private */
    public void e(int i) {
        int f = f(i);
        this.f937b.d(f);
        this.f936a.c(f);
    }

    /* access modifiers changed from: package-private */
    public void e(View view) {
        int a2 = this.f936a.a(view);
        if (a2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f937b.c(a2)) {
            this.f937b.b(a2);
            h(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean f(View view) {
        int a2 = this.f936a.a(view);
        if (a2 == -1) {
            h(view);
            return true;
        } else if (!this.f937b.c(a2)) {
            return false;
        } else {
            this.f937b.d(a2);
            h(view);
            this.f936a.a(a2);
            return true;
        }
    }

    public String toString() {
        return this.f937b.toString() + ", hidden list:" + this.c.size();
    }
}
