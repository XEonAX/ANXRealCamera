package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.e;

/* compiled from: SavedStateRegistryController */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final c f1007a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1008b = new a();

    private b(c cVar) {
        this.f1007a = cVar;
    }

    public static b a(c cVar) {
        return new b(cVar);
    }

    public a a() {
        return this.f1008b;
    }

    public void a(Bundle bundle) {
        e b2 = this.f1007a.b();
        if (b2.a() == e.b.INITIALIZED) {
            b2.a(new Recreator(this.f1007a));
            this.f1008b.a(b2, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public void b(Bundle bundle) {
        this.f1008b.a(bundle);
    }
}
