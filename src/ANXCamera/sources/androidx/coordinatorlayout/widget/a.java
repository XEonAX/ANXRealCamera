package androidx.coordinatorlayout.widget;

import androidx.b.g;
import androidx.core.f.d;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: DirectedAcyclicGraph */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final d.a<ArrayList<T>> f455a = new d.b(10);

    /* renamed from: b  reason: collision with root package name */
    private final g<T, ArrayList<T>> f456b = new g<>();
    private final ArrayList<T> c = new ArrayList<>();
    private final HashSet<T> d = new HashSet<>();

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList arrayList2 = this.f456b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        a(arrayList2.get(i), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f455a.a(arrayList);
    }

    private ArrayList<T> c() {
        ArrayList<T> a2 = this.f455a.a();
        return a2 == null ? new ArrayList<>() : a2;
    }

    public void a() {
        int size = this.f456b.size();
        for (int i = 0; i < size; i++) {
            ArrayList c2 = this.f456b.c(i);
            if (c2 != null) {
                a(c2);
            }
        }
        this.f456b.clear();
    }

    public void a(T t) {
        if (!this.f456b.containsKey(t)) {
            this.f456b.put(t, null);
        }
    }

    public void a(T t, T t2) {
        if (!this.f456b.containsKey(t) || !this.f456b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayList = this.f456b.get(t);
        if (arrayList == null) {
            arrayList = c();
            this.f456b.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    public ArrayList<T> b() {
        this.c.clear();
        this.d.clear();
        int size = this.f456b.size();
        for (int i = 0; i < size; i++) {
            a(this.f456b.b(i), this.c, this.d);
        }
        return this.c;
    }

    public boolean b(T t) {
        return this.f456b.containsKey(t);
    }

    public boolean c(T t) {
        int size = this.f456b.size();
        for (int i = 0; i < size; i++) {
            ArrayList c2 = this.f456b.c(i);
            if (c2 != null && c2.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
