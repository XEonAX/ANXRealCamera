package androidx.lifecycle;

import androidx.a.a.b.b;
import androidx.lifecycle.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LifecycleRegistry */
public class i extends e {

    /* renamed from: b  reason: collision with root package name */
    private androidx.a.a.b.a<g, a> f761b = new androidx.a.a.b.a<>();
    private e.b c;
    private final WeakReference<h> d;
    private int e = 0;
    private boolean f = false;
    private boolean g = false;
    private ArrayList<e.b> h = new ArrayList<>();

    /* renamed from: androidx.lifecycle.i$1  reason: invalid class name */
    /* compiled from: LifecycleRegistry */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f763b = new int[e.b.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(26:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
        /* JADX WARNING: Can't wrap try/catch for region: R(27:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
        /* JADX WARNING: Can't wrap try/catch for region: R(28:0|1|2|3|(2:5|6)|7|(2:9|10)|11|13|14|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
        /* JADX WARNING: Can't wrap try/catch for region: R(30:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|36) */
        /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0053 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x005d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0067 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0071 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x007b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0086 */
        static {
            try {
                f763b[e.b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f763b[e.b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f763b[e.b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f763b[e.b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f763b[e.b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f762a = new int[e.a.values().length];
            f762a[e.a.ON_CREATE.ordinal()] = 1;
            f762a[e.a.ON_STOP.ordinal()] = 2;
            f762a[e.a.ON_START.ordinal()] = 3;
            f762a[e.a.ON_PAUSE.ordinal()] = 4;
            f762a[e.a.ON_RESUME.ordinal()] = 5;
            f762a[e.a.ON_DESTROY.ordinal()] = 6;
            f762a[e.a.ON_ANY.ordinal()] = 7;
        }
    }

    /* compiled from: LifecycleRegistry */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        e.b f764a;

        /* renamed from: b  reason: collision with root package name */
        f f765b;

        a(g gVar, e.b bVar) {
            this.f765b = k.a((Object) gVar);
            this.f764a = bVar;
        }

        /* access modifiers changed from: package-private */
        public void a(h hVar, e.a aVar) {
            e.b b2 = i.b(aVar);
            this.f764a = i.a(this.f764a, b2);
            this.f765b.a(hVar, aVar);
            this.f764a = b2;
        }
    }

    public i(h hVar) {
        this.d = new WeakReference<>(hVar);
        this.c = e.b.INITIALIZED;
    }

    static e.b a(e.b bVar, e.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    private void a(h hVar) {
        b<K, V>.d c2 = this.f761b.c();
        while (c2.hasNext() && !this.g) {
            Map.Entry entry = (Map.Entry) c2.next();
            a aVar = (a) entry.getValue();
            while (aVar.f764a.compareTo(this.c) < 0 && !this.g && this.f761b.c(entry.getKey())) {
                d(aVar.f764a);
                aVar.a(hVar, f(aVar.f764a));
                c();
            }
        }
    }

    static e.b b(e.a aVar) {
        switch (aVar) {
            case ON_CREATE:
            case ON_STOP:
                return e.b.CREATED;
            case ON_START:
            case ON_PAUSE:
                return e.b.STARTED;
            case ON_RESUME:
                return e.b.RESUMED;
            case ON_DESTROY:
                return e.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    private void b(h hVar) {
        Iterator<Map.Entry<g, a>> b2 = this.f761b.b();
        while (b2.hasNext() && !this.g) {
            Map.Entry next = b2.next();
            a aVar = (a) next.getValue();
            while (aVar.f764a.compareTo(this.c) > 0 && !this.g && this.f761b.c(next.getKey())) {
                e.a e2 = e(aVar.f764a);
                d(b(e2));
                aVar.a(hVar, e2);
                c();
            }
        }
    }

    private boolean b() {
        if (this.f761b.a() == 0) {
            return true;
        }
        e.b bVar = this.f761b.d().getValue().f764a;
        e.b bVar2 = this.f761b.e().getValue().f764a;
        return bVar == bVar2 && this.c == bVar2;
    }

    private e.b c(g gVar) {
        Map.Entry<g, a> d2 = this.f761b.d(gVar);
        e.b bVar = null;
        e.b bVar2 = d2 != null ? d2.getValue().f764a : null;
        if (!this.h.isEmpty()) {
            ArrayList<e.b> arrayList = this.h;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return a(a(this.c, bVar2), bVar);
    }

    private void c() {
        ArrayList<e.b> arrayList = this.h;
        arrayList.remove(arrayList.size() - 1);
    }

    private void c(e.b bVar) {
        if (this.c != bVar) {
            this.c = bVar;
            if (this.f || this.e != 0) {
                this.g = true;
                return;
            }
            this.f = true;
            d();
            this.f = false;
        }
    }

    private void d() {
        h hVar = (h) this.d.get();
        if (hVar != null) {
            while (!b()) {
                this.g = false;
                if (this.c.compareTo(this.f761b.d().getValue().f764a) < 0) {
                    b(hVar);
                }
                Map.Entry<g, a> e2 = this.f761b.e();
                if (!this.g && e2 != null && this.c.compareTo(e2.getValue().f764a) > 0) {
                    a(hVar);
                }
            }
            this.g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    private void d(e.b bVar) {
        this.h.add(bVar);
    }

    private static e.a e(e.b bVar) {
        int i = AnonymousClass1.f763b[bVar.ordinal()];
        if (i == 1) {
            throw new IllegalArgumentException();
        } else if (i == 2) {
            return e.a.ON_DESTROY;
        } else {
            if (i == 3) {
                return e.a.ON_STOP;
            }
            if (i == 4) {
                return e.a.ON_PAUSE;
            }
            if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + bVar);
            }
            throw new IllegalArgumentException();
        }
    }

    private static e.a f(e.b bVar) {
        int i = AnonymousClass1.f763b[bVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return e.a.ON_START;
            }
            if (i == 3) {
                return e.a.ON_RESUME;
            }
            if (i == 4) {
                throw new IllegalArgumentException();
            } else if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value " + bVar);
            }
        }
        return e.a.ON_CREATE;
    }

    public e.b a() {
        return this.c;
    }

    public void a(e.a aVar) {
        c(b(aVar));
    }

    @Deprecated
    public void a(e.b bVar) {
        b(bVar);
    }

    public void a(g gVar) {
        a aVar = new a(gVar, this.c == e.b.DESTROYED ? e.b.DESTROYED : e.b.INITIALIZED);
        if (this.f761b.a(gVar, aVar) == null) {
            h hVar = (h) this.d.get();
            if (hVar != null) {
                boolean z = this.e != 0 || this.f;
                e.b c2 = c(gVar);
                this.e++;
                while (aVar.f764a.compareTo(c2) < 0 && this.f761b.c(gVar)) {
                    d(aVar.f764a);
                    aVar.a(hVar, f(aVar.f764a));
                    c();
                    c2 = c(gVar);
                }
                if (!z) {
                    d();
                }
                this.e--;
            }
        }
    }

    public void b(e.b bVar) {
        c(bVar);
    }

    public void b(g gVar) {
        this.f761b.b(gVar);
    }
}
