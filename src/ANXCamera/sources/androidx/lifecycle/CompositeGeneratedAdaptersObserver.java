package androidx.lifecycle;

import androidx.lifecycle.e;

class CompositeGeneratedAdaptersObserver implements f {

    /* renamed from: a  reason: collision with root package name */
    private final c[] f741a;

    CompositeGeneratedAdaptersObserver(c[] cVarArr) {
        this.f741a = cVarArr;
    }

    public void a(h hVar, e.a aVar) {
        l lVar = new l();
        for (c a2 : this.f741a) {
            a2.a(hVar, aVar, false, lVar);
        }
        for (c a3 : this.f741a) {
            a3.a(hVar, aVar, true, lVar);
        }
    }
}
