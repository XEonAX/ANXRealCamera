package androidx.a.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    c<K, V> f7a;

    /* renamed from: b  reason: collision with root package name */
    private c<K, V> f8b;
    private WeakHashMap<f<K, V>, Boolean> c = new WeakHashMap<>();
    private int d = 0;

    /* compiled from: SafeIterableMap */
    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        /* access modifiers changed from: package-private */
        public c<K, V> a(c<K, V> cVar) {
            return cVar.c;
        }

        /* access modifiers changed from: package-private */
        public c<K, V> b(c<K, V> cVar) {
            return cVar.d;
        }
    }

    /* renamed from: androidx.a.a.b.b$b  reason: collision with other inner class name */
    /* compiled from: SafeIterableMap */
    private static class C0000b<K, V> extends e<K, V> {
        C0000b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        /* access modifiers changed from: package-private */
        public c<K, V> a(c<K, V> cVar) {
            return cVar.d;
        }

        /* access modifiers changed from: package-private */
        public c<K, V> b(c<K, V> cVar) {
            return cVar.c;
        }
    }

    /* compiled from: SafeIterableMap */
    static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f9a;

        /* renamed from: b  reason: collision with root package name */
        final V f10b;
        c<K, V> c;
        c<K, V> d;

        c(K k, V v) {
            this.f9a = k;
            this.f10b = v;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f9a.equals(cVar.f9a) && this.f10b.equals(cVar.f10b);
        }

        public K getKey() {
            return this.f9a;
        }

        public V getValue() {
            return this.f10b;
        }

        public int hashCode() {
            return this.f9a.hashCode() ^ this.f10b.hashCode();
        }

        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f9a + "=" + this.f10b;
        }
    }

    /* compiled from: SafeIterableMap */
    private class d implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private c<K, V> f12b;
        private boolean c = true;

        d() {
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (this.c) {
                this.c = false;
                this.f12b = b.this.f7a;
            } else {
                c<K, V> cVar = this.f12b;
                this.f12b = cVar != null ? cVar.c : null;
            }
            return this.f12b;
        }

        public void a_(c<K, V> cVar) {
            c<K, V> cVar2 = this.f12b;
            if (cVar == cVar2) {
                this.f12b = cVar2.d;
                this.c = this.f12b == null;
            }
        }

        public boolean hasNext() {
            if (this.c) {
                return b.this.f7a != null;
            }
            c<K, V> cVar = this.f12b;
            return (cVar == null || cVar.c == null) ? false : true;
        }
    }

    /* compiled from: SafeIterableMap */
    private static abstract class e<K, V> implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        c<K, V> f13a;

        /* renamed from: b  reason: collision with root package name */
        c<K, V> f14b;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f13a = cVar2;
            this.f14b = cVar;
        }

        private c<K, V> b() {
            c<K, V> cVar = this.f14b;
            c<K, V> cVar2 = this.f13a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return a(cVar);
        }

        /* access modifiers changed from: package-private */
        public abstract c<K, V> a(c<K, V> cVar);

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f14b;
            this.f14b = b();
            return cVar;
        }

        public void a_(c<K, V> cVar) {
            if (this.f13a == cVar && cVar == this.f14b) {
                this.f14b = null;
                this.f13a = null;
            }
            c<K, V> cVar2 = this.f13a;
            if (cVar2 == cVar) {
                this.f13a = b(cVar2);
            }
            if (this.f14b == cVar) {
                this.f14b = b();
            }
        }

        /* access modifiers changed from: package-private */
        public abstract c<K, V> b(c<K, V> cVar);

        public boolean hasNext() {
            return this.f14b != null;
        }
    }

    /* compiled from: SafeIterableMap */
    interface f<K, V> {
        void a_(c<K, V> cVar);
    }

    public int a() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public c<K, V> a(K k) {
        c<K, V> cVar = this.f7a;
        while (cVar != null && !cVar.f9a.equals(k)) {
            cVar = cVar.c;
        }
        return cVar;
    }

    public V a(K k, V v) {
        c a2 = a(k);
        if (a2 != null) {
            return a2.f10b;
        }
        b(k, v);
        return null;
    }

    /* access modifiers changed from: protected */
    public c<K, V> b(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.d++;
        c<K, V> cVar2 = this.f8b;
        if (cVar2 == null) {
            this.f7a = cVar;
            this.f8b = this.f7a;
            return cVar;
        }
        cVar2.c = cVar;
        cVar.d = cVar2;
        this.f8b = cVar;
        return cVar;
    }

    public V b(K k) {
        c a2 = a(k);
        if (a2 == null) {
            return null;
        }
        this.d--;
        if (!this.c.isEmpty()) {
            for (f<K, V> a_ : this.c.keySet()) {
                a_.a_(a2);
            }
        }
        if (a2.d != null) {
            a2.d.c = a2.c;
        } else {
            this.f7a = a2.c;
        }
        if (a2.c != null) {
            a2.c.d = a2.d;
        } else {
            this.f8b = a2.d;
        }
        a2.c = null;
        a2.d = null;
        return a2.f10b;
    }

    public Iterator<Map.Entry<K, V>> b() {
        C0000b bVar = new C0000b(this.f8b, this.f7a);
        this.c.put(bVar, false);
        return bVar;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.f7a;
    }

    public Map.Entry<K, V> e() {
        return this.f8b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (a() != bVar.a()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return !it.hasNext() && !it2.hasNext();
    }

    public int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((Map.Entry) it.next()).hashCode();
        }
        return i;
    }

    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f7a, this.f8b);
        this.c.put(aVar, false);
        return aVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
