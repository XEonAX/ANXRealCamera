package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.g.a.d;
import androidx.core.g.a.e;
import androidx.core.g.u;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: RecyclerViewAccessibilityDelegate */
public class o extends androidx.core.g.a {
    final RecyclerView d;
    final a e;

    /* compiled from: RecyclerViewAccessibilityDelegate */
    public static class a extends androidx.core.g.a {

        /* renamed from: a  reason: collision with root package name */
        final o f992a;

        /* renamed from: b  reason: collision with root package name */
        private Map<View, androidx.core.g.a> f993b = new WeakHashMap();

        public a(o oVar) {
            this.f992a = oVar;
        }

        public e a(View view) {
            androidx.core.g.a aVar = this.f993b.get(view);
            return aVar != null ? aVar.a(view) : super.a(view);
        }

        public void a(View view, int i) {
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                aVar.a(view, i);
            } else {
                super.a(view, i);
            }
        }

        public void a(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                aVar.a(view, accessibilityEvent);
            } else {
                super.a(view, accessibilityEvent);
            }
        }

        public void a(View view, d dVar) {
            if (this.f992a.b() || this.f992a.d.getLayoutManager() == null) {
                super.a(view, dVar);
                return;
            }
            this.f992a.d.getLayoutManager().a(view, dVar);
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                aVar.a(view, dVar);
            } else {
                super.a(view, dVar);
            }
        }

        public boolean a(View view, int i, Bundle bundle) {
            if (this.f992a.b() || this.f992a.d.getLayoutManager() == null) {
                return super.a(view, i, bundle);
            }
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                if (aVar.a(view, i, bundle)) {
                    return true;
                }
            } else if (super.a(view, i, bundle)) {
                return true;
            }
            return this.f992a.d.getLayoutManager().a(view, i, bundle);
        }

        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.g.a aVar = this.f993b.get(viewGroup);
            return aVar != null ? aVar.a(viewGroup, view, accessibilityEvent) : super.a(viewGroup, view, accessibilityEvent);
        }

        public boolean b(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.g.a aVar = this.f993b.get(view);
            return aVar != null ? aVar.b(view, accessibilityEvent) : super.b(view, accessibilityEvent);
        }

        /* access modifiers changed from: package-private */
        public void c(View view) {
            androidx.core.g.a b2 = u.b(view);
            if (b2 != null && b2 != this) {
                this.f993b.put(view, b2);
            }
        }

        public void c(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                aVar.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        /* access modifiers changed from: package-private */
        public androidx.core.g.a d(View view) {
            return this.f993b.remove(view);
        }

        public void d(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.g.a aVar = this.f993b.get(view);
            if (aVar != null) {
                aVar.d(view, accessibilityEvent);
            } else {
                super.d(view, accessibilityEvent);
            }
        }
    }

    public o(RecyclerView recyclerView) {
        this.d = recyclerView;
        androidx.core.g.a a2 = a();
        if (a2 == null || !(a2 instanceof a)) {
            this.e = new a(this);
        } else {
            this.e = (a) a2;
        }
    }

    public androidx.core.g.a a() {
        return this.e;
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        if (!b() && this.d.getLayoutManager() != null) {
            this.d.getLayoutManager().a(dVar);
        }
    }

    public boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        if (b() || this.d.getLayoutManager() == null) {
            return false;
        }
        return this.d.getLayoutManager().a(i, bundle);
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.d.w();
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !b()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().a(accessibilityEvent);
            }
        }
    }
}
