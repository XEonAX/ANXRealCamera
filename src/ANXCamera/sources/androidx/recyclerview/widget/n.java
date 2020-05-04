package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PagerSnapHelper */
public class n extends r {

    /* renamed from: b  reason: collision with root package name */
    private m f991b;
    private m c;

    private int a(RecyclerView.i iVar, View view, m mVar) {
        return (mVar.a(view) + (mVar.e(view) / 2)) - (mVar.c() + (mVar.f() / 2));
    }

    private View a(RecyclerView.i iVar, m mVar) {
        int z = iVar.z();
        View view = null;
        if (z == 0) {
            return null;
        }
        int c2 = mVar.c() + (mVar.f() / 2);
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < z; i2++) {
            View i3 = iVar.i(i2);
            int abs = Math.abs((mVar.a(i3) + (mVar.e(i3) / 2)) - c2);
            if (abs < i) {
                view = i3;
                i = abs;
            }
        }
        return view;
    }

    private boolean b(RecyclerView.i iVar, int i, int i2) {
        return iVar.f() ? i > 0 : i2 > 0;
    }

    private boolean d(RecyclerView.i iVar) {
        int J = iVar.J();
        if (iVar instanceof RecyclerView.s.b) {
            PointF d = ((RecyclerView.s.b) iVar).d(J - 1);
            if (d != null) {
                return d.x < 0.0f || d.y < 0.0f;
            }
        }
        return false;
    }

    private m e(RecyclerView.i iVar) {
        if (iVar.g()) {
            return f(iVar);
        }
        if (iVar.f()) {
            return g(iVar);
        }
        return null;
    }

    private m f(RecyclerView.i iVar) {
        m mVar = this.f991b;
        if (mVar == null || mVar.f989a != iVar) {
            this.f991b = m.b(iVar);
        }
        return this.f991b;
    }

    private m g(RecyclerView.i iVar) {
        m mVar = this.c;
        if (mVar == null || mVar.f989a != iVar) {
            this.c = m.a(iVar);
        }
        return this.c;
    }

    public int a(RecyclerView.i iVar, int i, int i2) {
        int J = iVar.J();
        if (J == 0) {
            return -1;
        }
        m e = e(iVar);
        if (e == null) {
            return -1;
        }
        int z = iVar.z();
        View view = null;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i5 = 0; i5 < z; i5++) {
            View i6 = iVar.i(i5);
            if (i6 != null) {
                int a2 = a(iVar, i6, e);
                if (a2 <= 0 && a2 > i4) {
                    view2 = i6;
                    i4 = a2;
                }
                if (a2 >= 0 && a2 < i3) {
                    view = i6;
                    i3 = a2;
                }
            }
        }
        boolean b2 = b(iVar, i, i2);
        if (b2 && view != null) {
            return iVar.d(view);
        }
        if (!b2 && view2 != null) {
            return iVar.d(view2);
        }
        if (!b2) {
            view2 = view;
        }
        if (view2 == null) {
            return -1;
        }
        int d = iVar.d(view2) + (d(iVar) == b2 ? -1 : 1);
        if (d < 0 || d >= J) {
            return -1;
        }
        return d;
    }

    public View a(RecyclerView.i iVar) {
        if (iVar.g()) {
            return a(iVar, f(iVar));
        }
        if (iVar.f()) {
            return a(iVar, g(iVar));
        }
        return null;
    }

    public int[] a(RecyclerView.i iVar, View view) {
        int[] iArr = new int[2];
        if (iVar.f()) {
            iArr[0] = a(iVar, view, g(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.g()) {
            iArr[1] = a(iVar, view, f(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* access modifiers changed from: protected */
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
                n nVar = n.this;
                int[] a2 = nVar.a(nVar.f994a.getLayoutManager(), view);
                int i = a2[0];
                int i2 = a2[1];
                int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a3 > 0) {
                    aVar.a(i, i2, a3, this.f987b);
                }
            }

            /* access modifiers changed from: protected */
            public int b(int i) {
                return Math.min(100, super.b(i));
            }
        };
    }
}
