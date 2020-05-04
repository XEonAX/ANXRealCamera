package androidx.activity;

import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;

class ComponentActivity$3 implements f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f16a;

    ComponentActivity$3(b bVar) {
        this.f16a = bVar;
    }

    public void a(h hVar, e.a aVar) {
        if (aVar == e.a.ON_DESTROY && !this.f16a.isChangingConfigurations()) {
            this.f16a.O_().a();
        }
    }
}
