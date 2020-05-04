package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: AdapterListUpdateCallback */
public final class b implements k {

    /* renamed from: a  reason: collision with root package name */
    private final RecyclerView.a f933a;

    public b(RecyclerView.a aVar) {
        this.f933a = aVar;
    }

    public void a(int i, int i2) {
        this.f933a.c(i, i2);
    }

    public void a(int i, int i2, Object obj) {
        this.f933a.a(i, i2, obj);
    }

    public void b(int i, int i2) {
        this.f933a.d(i, i2);
    }

    public void c(int i, int i2) {
        this.f933a.b(i, i2);
    }
}
