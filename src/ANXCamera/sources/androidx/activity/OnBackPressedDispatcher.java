package androidx.activity;

import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class OnBackPressedDispatcher {

    /* renamed from: a  reason: collision with root package name */
    final ArrayDeque<c> f19a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f20b;

    private class LifecycleOnBackPressedCancellable implements a, f {

        /* renamed from: b  reason: collision with root package name */
        private final e f22b;
        private final c c;
        private a d;

        LifecycleOnBackPressedCancellable(e eVar, c cVar) {
            this.f22b = eVar;
            this.c = cVar;
            eVar.a(this);
        }

        public void a() {
            this.f22b.b(this);
            this.c.b(this);
            a aVar = this.d;
            if (aVar != null) {
                aVar.a();
                this.d = null;
            }
        }

        public void a(h hVar, e.a aVar) {
            if (aVar == e.a.ON_START) {
                this.d = OnBackPressedDispatcher.this.a(this.c);
            } else if (aVar == e.a.ON_STOP) {
                a aVar2 = this.d;
                if (aVar2 != null) {
                    aVar2.a();
                }
            } else if (aVar == e.a.ON_DESTROY) {
                a();
            }
        }
    }

    private class a implements a {

        /* renamed from: b  reason: collision with root package name */
        private final c f24b;

        a(c cVar) {
            this.f24b = cVar;
        }

        public void a() {
            OnBackPressedDispatcher.this.f19a.remove(this.f24b);
            this.f24b.b(this);
        }
    }

    public OnBackPressedDispatcher() {
        this((Runnable) null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f19a = new ArrayDeque<>();
        this.f20b = runnable;
    }

    /* access modifiers changed from: package-private */
    public a a(c cVar) {
        this.f19a.add(cVar);
        a aVar = new a(cVar);
        cVar.a((a) aVar);
        return aVar;
    }

    public void a() {
        Iterator<c> descendingIterator = this.f19a.descendingIterator();
        while (descendingIterator.hasNext()) {
            c next = descendingIterator.next();
            if (next.a()) {
                next.c();
                return;
            }
        }
        Runnable runnable = this.f20b;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(h hVar, c cVar) {
        e b2 = hVar.b();
        if (b2.a() != e.b.DESTROYED) {
            cVar.a((a) new LifecycleOnBackPressedCancellable(b2, cVar));
        }
    }
}
