package androidx.preference;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PreferenceViewHolder */
public class l extends RecyclerView.w {
    private final SparseArray<View> q = new SparseArray<>(4);
    private boolean r;
    private boolean s;

    l(View view) {
        super(view);
        this.q.put(16908310, view.findViewById(16908310));
        this.q.put(16908304, view.findViewById(16908304));
        this.q.put(16908294, view.findViewById(16908294));
        this.q.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        this.q.put(16908350, view.findViewById(16908350));
    }

    public View a(int i) {
        View view = this.q.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.f916a.findViewById(i);
        if (findViewById != null) {
            this.q.put(i, findViewById);
        }
        return findViewById;
    }

    public void a(boolean z) {
        this.r = z;
    }

    public boolean a() {
        return this.r;
    }

    public void b(boolean z) {
        this.s = z;
    }

    public boolean b() {
        return this.s;
    }
}
