package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SnapHelper */
public abstract class r extends RecyclerView.l {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f994a;

    private boolean b(RecyclerView.i iVar, int i, int i2) {
        if (!(iVar instanceof RecyclerView.s.b)) {
            return false;
        }
        RecyclerView.s c = c(iVar);
        if (c == null) {
            return false;
        }
        int a2 = a(iVar, i, i2);
        if (a2 == -1) {
            return false;
        }
        c.c(a2);
        iVar.a(c);
        return true;
    }

    public abstract int a(RecyclerView.i iVar, int i, int i2);

    public boolean a(int i, int i2) {
        RecyclerView.i layoutManager = this.f994a.getLayoutManager();
        if (layoutManager == null || this.f994a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f994a.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && b(layoutManager, i, i2);
    }

    public abstract int[] a(RecyclerView.i iVar, View view);

    /* access modifiers changed from: protected */
    @Deprecated
    public j b(RecyclerView.i iVar) {
        if (!(iVar instanceof RecyclerView.s.b)) {
            return null;
        }
        return new j(this.f994a.getContext()) {
            /* access modifiers changed from: protected */
            public float a(DisplayMetrics displayMetrics) {
                return 100.0f / ((float) displayMetrics.densityDpi);
            }

            /* access modifiers changed from: protected */
            public void a(View view, RecyclerView.t tVar, RecyclerView.s.a aVar) {
                if (r.this.f994a != null) {
                    r rVar = r.this;
                    int[] a2 = rVar.a(rVar.f994a.getLayoutManager(), view);
                    int i = a2[0];
                    int i2 = a2[1];
                    int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                    if (a3 > 0) {
                        aVar.a(i, i2, a3, this.f987b);
                    }
                }
            }
        };
    }

    /* access modifiers changed from: protected */
    public RecyclerView.s c(RecyclerView.i iVar) {
        return b(iVar);
    }
}
