package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: OnBackPressedCallback */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f30a;

    /* renamed from: b  reason: collision with root package name */
    private CopyOnWriteArrayList<a> f31b = new CopyOnWriteArrayList<>();

    public c(boolean z) {
        this.f30a = z;
    }

    /* access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f31b.add(aVar);
    }

    public final void a(boolean z) {
        this.f30a = z;
    }

    public final boolean a() {
        return this.f30a;
    }

    public final void b() {
        Iterator<a> it = this.f31b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* access modifiers changed from: package-private */
    public void b(a aVar) {
        this.f31b.remove(aVar);
    }

    public abstract void c();
}
