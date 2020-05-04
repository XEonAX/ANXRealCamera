package androidx.preference;

import android.os.Bundle;
import android.view.View;
import androidx.core.g.a;
import androidx.core.g.a.d;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.o;

@Deprecated
/* compiled from: PreferenceRecyclerViewAccessibilityDelegate */
public class k extends o {

    /* renamed from: a  reason: collision with root package name */
    final RecyclerView f860a;

    /* renamed from: b  reason: collision with root package name */
    final a f861b = super.a();
    final a c = new a() {
        public void a(View view, d dVar) {
            k.this.f861b.a(view, dVar);
            int g = k.this.f860a.g(view);
            RecyclerView.a adapter = k.this.f860a.getAdapter();
            if (adapter instanceof h) {
                Preference a2 = ((h) adapter).a(g);
                if (a2 != null) {
                    a2.a(dVar);
                }
            }
        }

        public boolean a(View view, int i, Bundle bundle) {
            return k.this.f861b.a(view, i, bundle);
        }
    };

    public k(RecyclerView recyclerView) {
        super(recyclerView);
        this.f860a = recyclerView;
    }

    public a a() {
        return this.c;
    }
}
