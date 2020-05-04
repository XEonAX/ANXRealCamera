package androidx.fragment.app;

import androidx.lifecycle.e;
import androidx.lifecycle.h;
import androidx.lifecycle.i;

/* compiled from: FragmentViewLifecycleOwner */
class o implements h {

    /* renamed from: a  reason: collision with root package name */
    private i f740a = null;

    o() {
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (this.f740a == null) {
            this.f740a = new i(this);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(e.a aVar) {
        this.f740a.a(aVar);
    }

    public e b() {
        a();
        return this.f740a;
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return this.f740a != null;
    }
}
