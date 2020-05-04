package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: MenuAdapter */
public class f extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    g f187a;

    /* renamed from: b  reason: collision with root package name */
    private int f188b = -1;
    private boolean c;
    private final boolean d;
    private final LayoutInflater e;
    private final int f;

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.f187a = gVar;
        this.f = i;
        b();
    }

    public g a() {
        return this.f187a;
    }

    /* renamed from: a */
    public i getItem(int i) {
        ArrayList<i> m = this.d ? this.f187a.m() : this.f187a.j();
        int i2 = this.f188b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return m.get(i);
    }

    public void a(boolean z) {
        this.c = z;
    }

    /* access modifiers changed from: package-private */
    public void b() {
        i s = this.f187a.s();
        if (s != null) {
            ArrayList<i> m = this.f187a.m();
            int size = m.size();
            for (int i = 0; i < size; i++) {
                if (m.get(i) == s) {
                    this.f188b = i;
                    return;
                }
            }
        }
        this.f188b = -1;
    }

    public int getCount() {
        ArrayList<i> m = this.d ? this.f187a.m() : this.f187a.j();
        return this.f188b < 0 ? m.size() : m.size() - 1;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f187a.b() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i), 0);
        return view;
    }

    public void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
