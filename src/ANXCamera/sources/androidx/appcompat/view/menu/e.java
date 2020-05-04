package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: ListMenuPresenter */
public class e implements AdapterView.OnItemClickListener, m {

    /* renamed from: a  reason: collision with root package name */
    Context f183a;

    /* renamed from: b  reason: collision with root package name */
    LayoutInflater f184b;
    g c;
    ExpandedMenuView d;
    int e;
    int f;
    int g;
    a h;
    private m.a i;
    private int j;

    /* compiled from: ListMenuPresenter */
    private class a extends BaseAdapter {

        /* renamed from: b  reason: collision with root package name */
        private int f186b = -1;

        public a() {
            a();
        }

        /* renamed from: a */
        public i getItem(int i) {
            ArrayList<i> m = e.this.c.m();
            int i2 = i + e.this.e;
            int i3 = this.f186b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return m.get(i2);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            i s = e.this.c.s();
            if (s != null) {
                ArrayList<i> m = e.this.c.m();
                int size = m.size();
                for (int i = 0; i < size; i++) {
                    if (m.get(i) == s) {
                        this.f186b = i;
                        return;
                    }
                }
            }
            this.f186b = -1;
        }

        public int getCount() {
            int size = e.this.c.m().size() - e.this.e;
            return this.f186b < 0 ? size : size - 1;
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = e.this.f184b.inflate(e.this.g, viewGroup, false);
            }
            ((n.a) view).a(getItem(i), 0);
            return view;
        }

        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(int i2, int i3) {
        this.g = i2;
        this.f = i3;
    }

    public e(Context context, int i2) {
        this(i2, 0);
        this.f183a = context;
        this.f184b = LayoutInflater.from(this.f183a);
    }

    public ListAdapter a() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    public n a(ViewGroup viewGroup) {
        if (this.d == null) {
            this.d = (ExpandedMenuView) this.f184b.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.d.setAdapter(this.h);
            this.d.setOnItemClickListener(this);
        }
        return this.d;
    }

    public void a(Context context, g gVar) {
        int i2 = this.f;
        if (i2 != 0) {
            this.f183a = new ContextThemeWrapper(context, i2);
            this.f184b = LayoutInflater.from(this.f183a);
        } else if (this.f183a != null) {
            this.f183a = context;
            if (this.f184b == null) {
                this.f184b = LayoutInflater.from(this.f183a);
            }
        }
        this.c = gVar;
        a aVar = this.h;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void a(Bundle bundle) {
        SparseArray sparseArray = new SparseArray();
        ExpandedMenuView expandedMenuView = this.d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    public void a(Parcelable parcelable) {
        b((Bundle) parcelable);
    }

    public void a(g gVar, boolean z) {
        m.a aVar = this.i;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public void a(m.a aVar) {
        this.i = aVar;
    }

    public void a(boolean z) {
        a aVar = this.h;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean a(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).a((IBinder) null);
        m.a aVar = this.i;
        if (aVar == null) {
            return true;
        }
        aVar.a(rVar);
        return true;
    }

    public void b(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public boolean b() {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public int c() {
        return this.j;
    }

    public Parcelable f() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        a(bundle);
        return bundle;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.c.a((MenuItem) this.h.getItem(i2), (m) this, 0);
    }
}
