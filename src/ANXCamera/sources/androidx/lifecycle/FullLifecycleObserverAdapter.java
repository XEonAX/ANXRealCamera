package androidx.lifecycle;

import androidx.lifecycle.e;

class FullLifecycleObserverAdapter implements f {

    /* renamed from: a  reason: collision with root package name */
    private final b f742a;

    /* renamed from: b  reason: collision with root package name */
    private final f f743b;

    FullLifecycleObserverAdapter(b bVar, f fVar) {
        this.f742a = bVar;
        this.f743b = fVar;
    }

    public void a(h hVar, e.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.f742a.a(hVar);
                break;
            case ON_START:
                this.f742a.b(hVar);
                break;
            case ON_RESUME:
                this.f742a.c(hVar);
                break;
            case ON_PAUSE:
                this.f742a.d(hVar);
                break;
            case ON_STOP:
                this.f742a.e(hVar);
                break;
            case ON_DESTROY:
                this.f742a.f(hVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        f fVar = this.f743b;
        if (fVar != null) {
            fVar.a(hVar, aVar);
        }
    }
}
