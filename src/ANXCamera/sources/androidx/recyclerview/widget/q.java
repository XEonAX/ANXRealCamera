package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SimpleItemAnimator */
public abstract class q extends RecyclerView.f {
    boolean h = true;

    public final void a(RecyclerView.w wVar, boolean z) {
        d(wVar, z);
        f(wVar);
    }

    public abstract boolean a(RecyclerView.w wVar);

    public abstract boolean a(RecyclerView.w wVar, int i, int i2, int i3, int i4);

    public boolean a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        int i = cVar.f892a;
        int i2 = cVar.f893b;
        View view = wVar.f916a;
        int left = cVar2 == null ? view.getLeft() : cVar2.f892a;
        int top = cVar2 == null ? view.getTop() : cVar2.f893b;
        if (wVar.t() || (i == left && i2 == top)) {
            return a(wVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return a(wVar, i, i2, left, top);
    }

    public abstract boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, int i, int i2, int i3, int i4);

    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f892a;
        int i4 = cVar.f893b;
        if (wVar2.e()) {
            int i5 = cVar.f892a;
            i = cVar.f893b;
            i2 = i5;
        } else {
            i2 = cVar2.f892a;
            i = cVar2.f893b;
        }
        return a(wVar, wVar2, i3, i4, i2, i);
    }

    public final void b(RecyclerView.w wVar, boolean z) {
        c(wVar, z);
    }

    public abstract boolean b(RecyclerView.w wVar);

    public boolean b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        if (cVar == null || (cVar.f892a == cVar2.f892a && cVar.f893b == cVar2.f893b)) {
            return b(wVar);
        }
        return a(wVar, cVar.f892a, cVar.f893b, cVar2.f892a, cVar2.f893b);
    }

    public void c(RecyclerView.w wVar, boolean z) {
    }

    public boolean c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        if (cVar.f892a == cVar2.f892a && cVar.f893b == cVar2.f893b) {
            j(wVar);
            return false;
        }
        return a(wVar, cVar.f892a, cVar.f893b, cVar2.f892a, cVar2.f893b);
    }

    public void d(RecyclerView.w wVar, boolean z) {
    }

    public boolean h(RecyclerView.w wVar) {
        return !this.h || wVar.q();
    }

    public final void i(RecyclerView.w wVar) {
        p(wVar);
        f(wVar);
    }

    public final void j(RecyclerView.w wVar) {
        t(wVar);
        f(wVar);
    }

    public final void k(RecyclerView.w wVar) {
        r(wVar);
        f(wVar);
    }

    public final void l(RecyclerView.w wVar) {
        o(wVar);
    }

    public final void m(RecyclerView.w wVar) {
        s(wVar);
    }

    public final void n(RecyclerView.w wVar) {
        q(wVar);
    }

    public void o(RecyclerView.w wVar) {
    }

    public void p(RecyclerView.w wVar) {
    }

    public void q(RecyclerView.w wVar) {
    }

    public void r(RecyclerView.w wVar) {
    }

    public void s(RecyclerView.w wVar) {
    }

    public void t(RecyclerView.w wVar) {
    }
}
