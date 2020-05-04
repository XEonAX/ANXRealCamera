package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* compiled from: GapWorker */
final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<h> f978a = new ThreadLocal<>();
    static Comparator<b> e = new Comparator<b>() {
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            if ((bVar.d == null) != (bVar2.d == null)) {
                return bVar.d == null ? 1 : -1;
            }
            if (bVar.f982a != bVar2.f982a) {
                return bVar.f982a ? -1 : 1;
            }
            int i = bVar2.f983b - bVar.f983b;
            if (i != 0) {
                return i;
            }
            int i2 = bVar.c - bVar2.c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    ArrayList<RecyclerView> f979b = new ArrayList<>();
    long c;
    long d;
    private ArrayList<b> f = new ArrayList<>();

    @SuppressLint({"VisibleForTests"})
    /* compiled from: GapWorker */
    static class a implements RecyclerView.i.a {

        /* renamed from: a  reason: collision with root package name */
        int f980a;

        /* renamed from: b  reason: collision with root package name */
        int f981b;
        int[] c;
        int d;

        a() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.d = 0;
        }

        /* access modifiers changed from: package-private */
        public void a(int i, int i2) {
            this.f980a = i;
            this.f981b = i2;
        }

        /* access modifiers changed from: package-private */
        public void a(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.i iVar = recyclerView.t;
            if (recyclerView.s != null && iVar != null && iVar.t()) {
                if (z) {
                    if (!recyclerView.l.d()) {
                        iVar.a(recyclerView.s.b(), (RecyclerView.i.a) this);
                    }
                } else if (!recyclerView.w()) {
                    iVar.a(this.f980a, this.f981b, recyclerView.J, (RecyclerView.i.a) this);
                }
                if (this.d > iVar.x) {
                    iVar.x = this.d;
                    iVar.y = z;
                    recyclerView.k.b();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public boolean a(int i) {
            if (this.c != null) {
                int i2 = this.d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 >= 0) {
                int i3 = this.d * 2;
                int[] iArr = this.c;
                if (iArr == null) {
                    this.c = new int[4];
                    Arrays.fill(this.c, -1);
                } else if (i3 >= iArr.length) {
                    this.c = new int[(i3 * 2)];
                    System.arraycopy(iArr, 0, this.c, 0, iArr.length);
                }
                int[] iArr2 = this.c;
                iArr2[i3] = i;
                iArr2[i3 + 1] = i2;
                this.d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }
    }

    /* compiled from: GapWorker */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f982a;

        /* renamed from: b  reason: collision with root package name */
        public int f983b;
        public int c;
        public RecyclerView d;
        public int e;

        b() {
        }

        public void a() {
            this.f982a = false;
            this.f983b = 0;
            this.c = 0;
            this.d = null;
            this.e = 0;
        }
    }

    h() {
    }

    private RecyclerView.w a(RecyclerView recyclerView, int i, long j) {
        if (a(recyclerView, i)) {
            return null;
        }
        RecyclerView.p pVar = recyclerView.k;
        try {
            recyclerView.l();
            RecyclerView.w a2 = pVar.a(i, false, j);
            if (a2 != null) {
                if (!a2.s() || a2.q()) {
                    pVar.a(a2, false);
                } else {
                    pVar.a(a2.f916a);
                }
            }
            return a2;
        } finally {
            recyclerView.b(false);
        }
    }

    private void a() {
        b bVar;
        int size = this.f979b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f979b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.I.a(recyclerView, false);
                i += recyclerView.I.d;
            }
        }
        this.f.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f979b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.I;
                int abs = Math.abs(aVar.f980a) + Math.abs(aVar.f981b);
                int i5 = i3;
                for (int i6 = 0; i6 < aVar.d * 2; i6 += 2) {
                    if (i5 >= this.f.size()) {
                        bVar = new b();
                        this.f.add(bVar);
                    } else {
                        bVar = this.f.get(i5);
                    }
                    int i7 = aVar.c[i6 + 1];
                    bVar.f982a = i7 <= abs;
                    bVar.f983b = abs;
                    bVar.c = i7;
                    bVar.d = recyclerView2;
                    bVar.e = aVar.c[i6];
                    i5++;
                }
                i3 = i5;
            }
        }
        Collections.sort(this.f, e);
    }

    private void a(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.D && recyclerView.m.c() != 0) {
                recyclerView.d();
            }
            a aVar = recyclerView.I;
            aVar.a(recyclerView, true);
            if (aVar.d != 0) {
                try {
                    androidx.core.c.a.a("RV Nested Prefetch");
                    recyclerView.J.a(recyclerView.s);
                    for (int i = 0; i < aVar.d * 2; i += 2) {
                        a(recyclerView, aVar.c[i], j);
                    }
                } finally {
                    androidx.core.c.a.a();
                }
            }
        }
    }

    private void a(b bVar, long j) {
        RecyclerView.w a2 = a(bVar.d, bVar.e, bVar.f982a ? Long.MAX_VALUE : j);
        if (a2 != null && a2.f917b != null && a2.s() && !a2.q()) {
            a((RecyclerView) a2.f917b.get(), j);
        }
    }

    static boolean a(RecyclerView recyclerView, int i) {
        int c2 = recyclerView.m.c();
        for (int i2 = 0; i2 < c2; i2++) {
            RecyclerView.w e2 = RecyclerView.e(recyclerView.m.d(i2));
            if (e2.c == i && !e2.q()) {
                return true;
            }
        }
        return false;
    }

    private void b(long j) {
        int i = 0;
        while (i < this.f.size()) {
            b bVar = this.f.get(i);
            if (bVar.d != null) {
                a(bVar, j);
                bVar.a();
                i++;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(long j) {
        a();
        b(j);
    }

    public void a(RecyclerView recyclerView) {
        this.f979b.add(recyclerView);
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.c == 0) {
            this.c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.I.a(i, i2);
    }

    public void b(RecyclerView recyclerView) {
        this.f979b.remove(recyclerView);
    }

    public void run() {
        try {
            androidx.core.c.a.a("RV Prefetch");
            if (!this.f979b.isEmpty()) {
                int size = this.f979b.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f979b.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    a(TimeUnit.MILLISECONDS.toNanos(j) + this.d);
                    this.c = 0;
                    androidx.core.c.a.a();
                }
            }
        } finally {
            this.c = 0;
            androidx.core.c.a.a();
        }
    }
}
