package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ScrollbarHelper */
class p {
    static int a(RecyclerView.t tVar, m mVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.z() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(iVar.d(view) - iVar.d(view2)) + 1;
        }
        return Math.min(mVar.f(), mVar.b(view2) - mVar.a(view));
    }

    static int a(RecyclerView.t tVar, m mVar, View view, View view2, RecyclerView.i iVar, boolean z, boolean z2) {
        if (iVar.z() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (tVar.e() - Math.max(iVar.d(view), iVar.d(view2))) - 1) : Math.max(0, Math.min(iVar.d(view), iVar.d(view2)));
        if (!z) {
            return max;
        }
        return Math.round((((float) max) * (((float) Math.abs(mVar.b(view2) - mVar.a(view))) / ((float) (Math.abs(iVar.d(view) - iVar.d(view2)) + 1)))) + ((float) (mVar.c() - mVar.a(view))));
    }

    static int b(RecyclerView.t tVar, m mVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.z() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return tVar.e();
        }
        return (int) ((((float) (mVar.b(view2) - mVar.a(view))) / ((float) (Math.abs(iVar.d(view) - iVar.d(view2)) + 1))) * ((float) tVar.e()));
    }
}
