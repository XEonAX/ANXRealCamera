package com.oppo.camera.professional;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import java.util.List;
import java.util.Map;

public class ListModeBarAdapter extends BaseAdapter implements Filterable {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f2321a;

    /* renamed from: b  reason: collision with root package name */
    private List<? extends Map<String, ?>> f2322b;
    private int[] c;
    private String[] d = {"img", "title", "mainTitle"};
    private d e;

    public ListModeBarAdapter(Context context, List<? extends Map<String, ?>> list) {
        this.f2321a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f2322b = list;
    }

    private View a(int i, View view, ViewGroup viewGroup, int i2) {
        if (view == null) {
            view = this.f2321a.inflate(i2, viewGroup, false);
        }
        b(i, view);
        return view;
    }

    private void b(int i, View view) {
        if (i <= this.f2322b.size() - 1) {
            Map map = (Map) this.f2322b.get(i);
            if (map != null) {
                String[] strArr = this.d;
                int length = this.c.length;
                View findViewById = view.findViewById(102);
                Object obj = map.get("mainTitle");
                int intValue = obj == null ? 0 : ((Integer) obj).intValue();
                Object obj2 = map.get("main_item_key");
                String obj3 = obj2 == null ? "" : obj2.toString();
                b bVar = (b) findViewById;
                bVar.setItemTitleImage(intValue);
                bVar.setItemValueText(obj3);
                d dVar = this.e;
                if (dVar == null) {
                    return;
                }
                if (!dVar.i(i) || i >= getCount() - 1) {
                    bVar.a(8, false);
                } else {
                    bVar.a(0, false);
                }
            }
        }
    }

    public void a(int i, View view) {
        View findViewById = view.findViewById(102);
        Map map = (Map) this.f2322b.get(i);
        if (map != null) {
            Object obj = map.get("mainTitle");
            ((b) findViewById).setItemTitleImage(obj == null ? 0 : ((Integer) obj).intValue());
        }
    }

    public void a(View view, int i, boolean z) {
        ((b) view.findViewById(102)).a(i, z);
    }

    public void a(View view, String str) {
        ((b) view.findViewById(102)).setItemValueText(str);
    }

    public void a(d dVar) {
        this.e = dVar;
    }

    public void a(List<? extends Map<String, ?>> list) {
        this.f2322b = list;
    }

    public void a(int[] iArr) {
        this.c = iArr;
    }

    public int getCount() {
        List<? extends Map<String, ?>> list = this.f2322b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public Filter getFilter() {
        return null;
    }

    public Object getItem(int i) {
        return null;
    }

    public long getItemId(int i) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup, 0);
    }
}
