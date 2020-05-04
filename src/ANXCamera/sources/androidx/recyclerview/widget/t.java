package androidx.recyclerview.widget;

import androidx.b.d;
import androidx.b.g;
import androidx.core.f.d;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ViewInfoStore */
class t {

    /* renamed from: a  reason: collision with root package name */
    final g<RecyclerView.w, a> f999a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    final d<RecyclerView.w> f1000b = new d<>();

    /* compiled from: ViewInfoStore */
    static class a {
        static d.a<a> d = new d.b(20);

        /* renamed from: a  reason: collision with root package name */
        int f1001a;

        /* renamed from: b  reason: collision with root package name */
        RecyclerView.f.c f1002b;
        RecyclerView.f.c c;

        private a() {
        }

        static a a() {
            a a2 = d.a();
            return a2 == null ? new a() : a2;
        }

        static void a(a aVar) {
            aVar.f1001a = 0;
            aVar.f1002b = null;
            aVar.c = null;
            d.a(aVar);
        }

        static void b() {
            do {
            } while (d.a() != null);
        }
    }

    /* compiled from: ViewInfoStore */
    interface b {
        void a(RecyclerView.w wVar);

        void a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);
    }

    t() {
    }

    private RecyclerView.f.c a(RecyclerView.w wVar, int i) {
        RecyclerView.f.c cVar;
        int a2 = this.f999a.a((Object) wVar);
        if (a2 < 0) {
            return null;
        }
        a c = this.f999a.c(a2);
        if (c == null || (c.f1001a & i) == 0) {
            return null;
        }
        c.f1001a &= ~i;
        if (i == 4) {
            cVar = c.f1002b;
        } else if (i == 8) {
            cVar = c.c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((c.f1001a & 12) == 0) {
            this.f999a.d(a2);
            a.a(c);
        }
        return cVar;
    }

    /* access modifiers changed from: package-private */
    public RecyclerView.w a(long j) {
        return this.f1000b.a(j);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.f999a.clear();
        this.f1000b.d();
    }

    /* access modifiers changed from: package-private */
    public void a(long j, RecyclerView.w wVar) {
        this.f1000b.b(j, wVar);
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f999a.get(wVar);
        if (aVar == null) {
            aVar = a.a();
            this.f999a.put(wVar, aVar);
        }
        aVar.f1002b = cVar;
        aVar.f1001a |= 4;
    }

    /* access modifiers changed from: package-private */
    public void a(b bVar) {
        for (int size = this.f999a.size() - 1; size >= 0; size--) {
            RecyclerView.w b2 = this.f999a.b(size);
            a d = this.f999a.d(size);
            if ((d.f1001a & 3) == 3) {
                bVar.a(b2);
            } else if ((d.f1001a & 1) != 0) {
                if (d.f1002b == null) {
                    bVar.a(b2);
                } else {
                    bVar.a(b2, d.f1002b, d.c);
                }
            } else if ((d.f1001a & 14) == 14) {
                bVar.b(b2, d.f1002b, d.c);
            } else if ((d.f1001a & 12) == 12) {
                bVar.c(b2, d.f1002b, d.c);
            } else if ((d.f1001a & 4) != 0) {
                bVar.a(b2, d.f1002b, (RecyclerView.f.c) null);
            } else if ((d.f1001a & 8) != 0) {
                bVar.b(b2, d.f1002b, d.c);
            } else {
                int i = d.f1001a;
            }
            a.a(d);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(RecyclerView.w wVar) {
        a aVar = this.f999a.get(wVar);
        return (aVar == null || (aVar.f1001a & 1) == 0) ? false : true;
    }

    /* access modifiers changed from: package-private */
    public RecyclerView.f.c b(RecyclerView.w wVar) {
        return a(wVar, 4);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        a.b();
    }

    /* access modifiers changed from: package-private */
    public void b(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f999a.get(wVar);
        if (aVar == null) {
            aVar = a.a();
            this.f999a.put(wVar, aVar);
        }
        aVar.f1001a |= 2;
        aVar.f1002b = cVar;
    }

    /* access modifiers changed from: package-private */
    public RecyclerView.f.c c(RecyclerView.w wVar) {
        return a(wVar, 8);
    }

    /* access modifiers changed from: package-private */
    public void c(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f999a.get(wVar);
        if (aVar == null) {
            aVar = a.a();
            this.f999a.put(wVar, aVar);
        }
        aVar.c = cVar;
        aVar.f1001a |= 8;
    }

    /* access modifiers changed from: package-private */
    public boolean d(RecyclerView.w wVar) {
        a aVar = this.f999a.get(wVar);
        return (aVar == null || (aVar.f1001a & 4) == 0) ? false : true;
    }

    /* access modifiers changed from: package-private */
    public void e(RecyclerView.w wVar) {
        a aVar = this.f999a.get(wVar);
        if (aVar == null) {
            aVar = a.a();
            this.f999a.put(wVar, aVar);
        }
        aVar.f1001a |= 1;
    }

    /* access modifiers changed from: package-private */
    public void f(RecyclerView.w wVar) {
        a aVar = this.f999a.get(wVar);
        if (aVar != null) {
            aVar.f1001a &= -2;
        }
    }

    /* access modifiers changed from: package-private */
    public void g(RecyclerView.w wVar) {
        int b2 = this.f1000b.b() - 1;
        while (true) {
            if (b2 < 0) {
                break;
            } else if (wVar == this.f1000b.c(b2)) {
                this.f1000b.a(b2);
                break;
            } else {
                b2--;
            }
        }
        a remove = this.f999a.remove(wVar);
        if (remove != null) {
            a.a(remove);
        }
    }

    public void h(RecyclerView.w wVar) {
        f(wVar);
    }
}
