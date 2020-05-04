package androidx.recyclerview.widget;

import androidx.core.f.d;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AdapterHelper */
class a implements l.a {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<b> f929a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<b> f930b;
    final C0030a c;
    Runnable d;
    final boolean e;
    final l f;
    private d.a<b> g;
    private int h;

    /* renamed from: androidx.recyclerview.widget.a$a  reason: collision with other inner class name */
    /* compiled from: AdapterHelper */
    interface C0030a {
        RecyclerView.w a(int i);

        void a(int i, int i2);

        void a(int i, int i2, Object obj);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    /* compiled from: AdapterHelper */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        int f931a;

        /* renamed from: b  reason: collision with root package name */
        int f932b;
        Object c;
        int d;

        b(int i, int i2, int i3, Object obj) {
            this.f931a = i;
            this.f932b = i2;
            this.d = i3;
            this.c = obj;
        }

        /* access modifiers changed from: package-private */
        public String a() {
            int i = this.f931a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f931a;
            if (i != bVar.f931a) {
                return false;
            }
            if (i == 8 && Math.abs(this.d - this.f932b) == 1 && this.d == bVar.f932b && this.f932b == bVar.d) {
                return true;
            }
            if (this.d != bVar.d || this.f932b != bVar.f932b) {
                return false;
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.c)) {
                    return false;
                }
            } else if (bVar.c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f931a * 31) + this.f932b) * 31) + this.d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f932b + "c:" + this.d + ",p:" + this.c + "]";
        }
    }

    a(C0030a aVar) {
        this(aVar, false);
    }

    a(C0030a aVar, boolean z) {
        this.g = new d.b(30);
        this.f929a = new ArrayList<>();
        this.f930b = new ArrayList<>();
        this.h = 0;
        this.c = aVar;
        this.e = z;
        this.f = new l(this);
    }

    private void b(b bVar) {
        g(bVar);
    }

    private void c(b bVar) {
        boolean z;
        boolean z2;
        boolean z3;
        int i = bVar.f932b;
        int i2 = bVar.f932b + bVar.d;
        int i3 = bVar.f932b;
        boolean z4 = true;
        int i4 = 0;
        while (i3 < i2) {
            if (this.c.a(i3) != null || d(i3)) {
                if (!z4) {
                    e(a(2, i, i4, (Object) null));
                    z3 = true;
                } else {
                    z3 = false;
                }
                z = true;
            } else {
                if (z4) {
                    g(a(2, i, i4, (Object) null));
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = false;
            }
            if (z2) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            z4 = z;
        }
        if (i4 != bVar.d) {
            a(bVar);
            bVar = a(2, i, i4, (Object) null);
        }
        if (!z4) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private int d(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.f930b.size() - 1; size >= 0; size--) {
            b bVar = this.f930b.get(size);
            if (bVar.f931a == 8) {
                if (bVar.f932b < bVar.d) {
                    i4 = bVar.f932b;
                    i3 = bVar.d;
                } else {
                    i4 = bVar.d;
                    i3 = bVar.f932b;
                }
                if (i < i4 || i > i3) {
                    if (i < bVar.f932b) {
                        if (i2 == 1) {
                            bVar.f932b++;
                            bVar.d++;
                        } else if (i2 == 2) {
                            bVar.f932b--;
                            bVar.d--;
                        }
                    }
                } else if (i4 == bVar.f932b) {
                    if (i2 == 1) {
                        bVar.d++;
                    } else if (i2 == 2) {
                        bVar.d--;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        bVar.f932b++;
                    } else if (i2 == 2) {
                        bVar.f932b--;
                    }
                    i--;
                }
            } else if (bVar.f932b <= i) {
                if (bVar.f931a == 1) {
                    i -= bVar.d;
                } else if (bVar.f931a == 2) {
                    i += bVar.d;
                }
            } else if (i2 == 1) {
                bVar.f932b++;
            } else if (i2 == 2) {
                bVar.f932b--;
            }
        }
        for (int size2 = this.f930b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f930b.get(size2);
            if (bVar2.f931a == 8) {
                if (bVar2.d == bVar2.f932b || bVar2.d < 0) {
                    this.f930b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.d <= 0) {
                this.f930b.remove(size2);
                a(bVar2);
            }
        }
        return i;
    }

    private void d(b bVar) {
        int i = bVar.f932b;
        int i2 = bVar.f932b + bVar.d;
        boolean z = true;
        int i3 = i;
        int i4 = 0;
        for (int i5 = bVar.f932b; i5 < i2; i5++) {
            if (this.c.a(i5) != null || d(i5)) {
                if (!z) {
                    e(a(4, i3, i4, bVar.c));
                    i3 = i5;
                    i4 = 0;
                }
                z = true;
            } else {
                if (z) {
                    g(a(4, i3, i4, bVar.c));
                    i3 = i5;
                    i4 = 0;
                }
                z = false;
            }
            i4++;
        }
        if (i4 != bVar.d) {
            Object obj = bVar.c;
            a(bVar);
            bVar = a(4, i3, i4, obj);
        }
        if (!z) {
            e(bVar);
        } else {
            g(bVar);
        }
    }

    private boolean d(int i) {
        int size = this.f930b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f930b.get(i2);
            if (bVar.f931a == 8) {
                if (a(bVar.d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f931a == 1) {
                int i3 = bVar.f932b + bVar.d;
                for (int i4 = bVar.f932b; i4 < i3; i4++) {
                    if (a(i4, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void e(b bVar) {
        int i;
        if (bVar.f931a == 1 || bVar.f931a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int d2 = d(bVar.f932b, bVar.f931a);
        int i2 = bVar.f932b;
        int i3 = bVar.f931a;
        if (i3 == 2) {
            i = 0;
        } else if (i3 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + bVar);
        }
        int i4 = d2;
        int i5 = i2;
        int i6 = 1;
        for (int i7 = 1; i7 < bVar.d; i7++) {
            int d3 = d(bVar.f932b + (i * i7), bVar.f931a);
            int i8 = bVar.f931a;
            if (i8 == 2 ? d3 == i4 : i8 == 4 && d3 == i4 + 1) {
                i6++;
            } else {
                b a2 = a(bVar.f931a, i4, i6, bVar.c);
                a(a2, i5);
                a(a2);
                if (bVar.f931a == 4) {
                    i5 += i6;
                }
                i6 = 1;
                i4 = d3;
            }
        }
        Object obj = bVar.c;
        a(bVar);
        if (i6 > 0) {
            b a3 = a(bVar.f931a, i4, i6, obj);
            a(a3, i5);
            a(a3);
        }
    }

    private void f(b bVar) {
        g(bVar);
    }

    private void g(b bVar) {
        this.f930b.add(bVar);
        int i = bVar.f931a;
        if (i == 1) {
            this.c.c(bVar.f932b, bVar.d);
        } else if (i == 2) {
            this.c.b(bVar.f932b, bVar.d);
        } else if (i == 4) {
            this.c.a(bVar.f932b, bVar.d, bVar.c);
        } else if (i == 8) {
            this.c.d(bVar.f932b, bVar.d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* access modifiers changed from: package-private */
    public int a(int i, int i2) {
        int size = this.f930b.size();
        while (i2 < size) {
            b bVar = this.f930b.get(i2);
            if (bVar.f931a == 8) {
                if (bVar.f932b == i) {
                    i = bVar.d;
                } else {
                    if (bVar.f932b < i) {
                        i--;
                    }
                    if (bVar.d <= i) {
                        i++;
                    }
                }
            } else if (bVar.f932b > i) {
                continue;
            } else if (bVar.f931a == 2) {
                if (i < bVar.f932b + bVar.d) {
                    return -1;
                }
                i -= bVar.d;
            } else if (bVar.f931a == 1) {
                i += bVar.d;
            }
            i2++;
        }
        return i;
    }

    public b a(int i, int i2, int i3, Object obj) {
        b a2 = this.g.a();
        if (a2 == null) {
            return new b(i, i2, i3, obj);
        }
        a2.f931a = i;
        a2.f932b = i2;
        a2.d = i3;
        a2.c = obj;
        return a2;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        a((List<b>) this.f929a);
        a((List<b>) this.f930b);
        this.h = 0;
    }

    public void a(b bVar) {
        if (!this.e) {
            bVar.c = null;
            this.g.a(bVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(b bVar, int i) {
        this.c.a(bVar);
        int i2 = bVar.f931a;
        if (i2 == 2) {
            this.c.a(i, bVar.d);
        } else if (i2 == 4) {
            this.c.a(i, bVar.d, bVar.c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* access modifiers changed from: package-private */
    public void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i) {
        return (i & this.h) != 0;
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 == 1) {
            this.f929a.add(a(8, i, i2, (Object) null));
            this.h |= 8;
            return this.f929a.size() == 1;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.f929a.add(a(4, i, i2, obj));
        this.h |= 4;
        return this.f929a.size() == 1;
    }

    /* access modifiers changed from: package-private */
    public int b(int i) {
        return a(i, 0);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.f.a(this.f929a);
        int size = this.f929a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f929a.get(i);
            int i2 = bVar.f931a;
            if (i2 == 1) {
                f(bVar);
            } else if (i2 == 2) {
                c(bVar);
            } else if (i2 == 4) {
                d(bVar);
            } else if (i2 == 8) {
                b(bVar);
            }
            Runnable runnable = this.d;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f929a.clear();
    }

    /* access modifiers changed from: package-private */
    public boolean b(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f929a.add(a(1, i, i2, (Object) null));
        this.h |= 1;
        return this.f929a.size() == 1;
    }

    public int c(int i) {
        int size = this.f929a.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f929a.get(i2);
            int i3 = bVar.f931a;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 8) {
                        if (bVar.f932b == i) {
                            i = bVar.d;
                        } else {
                            if (bVar.f932b < i) {
                                i--;
                            }
                            if (bVar.d <= i) {
                                i++;
                            }
                        }
                    }
                } else if (bVar.f932b > i) {
                    continue;
                } else if (bVar.f932b + bVar.d > i) {
                    return -1;
                } else {
                    i -= bVar.d;
                }
            } else if (bVar.f932b <= i) {
                i += bVar.d;
            }
        }
        return i;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        int size = this.f930b.size();
        for (int i = 0; i < size; i++) {
            this.c.b(this.f930b.get(i));
        }
        a((List<b>) this.f930b);
        this.h = 0;
    }

    /* access modifiers changed from: package-private */
    public boolean c(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f929a.add(a(2, i, i2, (Object) null));
        this.h |= 2;
        return this.f929a.size() == 1;
    }

    /* access modifiers changed from: package-private */
    public boolean d() {
        return this.f929a.size() > 0;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        c();
        int size = this.f929a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f929a.get(i);
            int i2 = bVar.f931a;
            if (i2 == 1) {
                this.c.b(bVar);
                this.c.c(bVar.f932b, bVar.d);
            } else if (i2 == 2) {
                this.c.b(bVar);
                this.c.a(bVar.f932b, bVar.d);
            } else if (i2 == 4) {
                this.c.b(bVar);
                this.c.a(bVar.f932b, bVar.d, bVar.c);
            } else if (i2 == 8) {
                this.c.b(bVar);
                this.c.d(bVar.f932b, bVar.d);
            }
            Runnable runnable = this.d;
            if (runnable != null) {
                runnable.run();
            }
        }
        a((List<b>) this.f929a);
        this.h = 0;
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return !this.f930b.isEmpty() && !this.f929a.isEmpty();
    }
}
