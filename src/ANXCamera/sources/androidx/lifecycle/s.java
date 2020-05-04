package androidx.lifecycle;

import java.util.HashMap;

/* compiled from: ViewModelStore */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, q> f774a = new HashMap<>();

    /* access modifiers changed from: package-private */
    public final q a(String str) {
        return this.f774a.get(str);
    }

    public final void a() {
        for (q d : this.f774a.values()) {
            d.d();
        }
        this.f774a.clear();
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, q qVar) {
        q put = this.f774a.put(str, qVar);
        if (put != null) {
            put.a();
        }
    }
}
