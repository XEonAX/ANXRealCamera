package androidx.b;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: ArrayMap */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    f<K, V> f421a;

    public a() {
    }

    public a(int i) {
        super(i);
    }

    private f<K, V> b() {
        if (this.f421a == null) {
            this.f421a = new f<K, V>() {
                /* access modifiers changed from: protected */
                public int a() {
                    return a.this.h;
                }

                /* access modifiers changed from: protected */
                public int a(Object obj) {
                    return a.this.a(obj);
                }

                /* access modifiers changed from: protected */
                public Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                /* access modifiers changed from: protected */
                public V a(int i, V v) {
                    return a.this.a(i, v);
                }

                /* access modifiers changed from: protected */
                public void a(int i) {
                    a.this.d(i);
                }

                /* access modifiers changed from: protected */
                public void a(K k, V v) {
                    a.this.put(k, v);
                }

                /* access modifiers changed from: protected */
                public int b(Object obj) {
                    return a.this.b(obj);
                }

                /* access modifiers changed from: protected */
                public Map<K, V> b() {
                    return a.this;
                }

                /* access modifiers changed from: protected */
                public void c() {
                    a.this.clear();
                }
            };
        }
        return this.f421a;
    }

    public boolean a(Collection<?> collection) {
        return f.c(this, collection);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    public Set<K> keySet() {
        return b().e();
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.h + map.size());
        for (Map.Entry next : map.entrySet()) {
            put(next.getKey(), next.getValue());
        }
    }

    public Collection<V> values() {
        return b().f();
    }
}
