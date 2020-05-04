package androidx.lifecycle;

import androidx.lifecycle.a;
import androidx.lifecycle.e;

class ReflectiveGenericLifecycleObserver implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Object f751a;

    /* renamed from: b  reason: collision with root package name */
    private final a.C0025a f752b = a.f754a.b(this.f751a.getClass());

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f751a = obj;
    }

    public void a(h hVar, e.a aVar) {
        this.f752b.a(hVar, aVar, this.f751a);
    }
}
