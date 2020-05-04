package com.color.support.widget.popupwindow;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import color.support.v7.appcompat.R;
import java.util.List;

/* compiled from: DefaultAdapter */
public class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f1737a;

    /* renamed from: b  reason: collision with root package name */
    private List<c> f1738b;
    private int c;
    private int d;
    private int e;

    /* compiled from: DefaultAdapter */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        ImageView f1739a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1740b;

        a() {
        }
    }

    public b(Context context, List<c> list) {
        this.f1737a = context;
        this.f1738b = list;
        Resources resources = context.getResources();
        this.c = resources.getDimensionPixelSize(R.dimen.color_popup_list_padding_vertical);
        this.d = resources.getDimensionPixelSize(R.dimen.color_popup_list_window_item_padding_top_and_bottom);
        this.e = resources.getDimensionPixelSize(R.dimen.color_popup_list_window_item_min_height);
    }

    private void a(ImageView imageView, TextView textView, c cVar, boolean z) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        if (cVar.a() == 0 && cVar.b() == null) {
            imageView.setVisibility(8);
            layoutParams.leftMargin = this.f1737a.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_item_title_margin_with_no_icon);
            layoutParams.rightMargin = this.f1737a.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_item_title_margin_with_no_icon);
            return;
        }
        imageView.setVisibility(0);
        layoutParams.leftMargin = this.f1737a.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_item_title_margin_left);
        layoutParams.rightMargin = this.f1737a.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_item_title_margin_right);
        imageView.setEnabled(z);
        imageView.setImageDrawable(cVar.b() == null ? this.f1737a.getResources().getDrawable(cVar.a()) : cVar.b());
    }

    private void a(TextView textView, c cVar, boolean z) {
        textView.setEnabled(z);
        textView.setText(cVar.c());
        textView.setTextColor(this.f1737a.getResources().getColorStateList(R.color.color_popup_list_window_text_color_selector));
        textView.setTextSize(0, com.color.support.d.b.a((float) this.f1737a.getResources().getDimensionPixelSize(R.dimen.color_popup_list_window_item_title_text_size), this.f1737a.getResources().getConfiguration().fontScale, 5));
    }

    public int getCount() {
        return this.f1738b.size();
    }

    public Object getItem(int i) {
        return this.f1738b.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            a aVar2 = new a();
            View inflate = LayoutInflater.from(this.f1737a).inflate(R.layout.color_popup_list_window_item, viewGroup, false);
            aVar2.f1739a = (ImageView) inflate.findViewById(R.id.popup_list_window_item_icon);
            aVar2.f1740b = (TextView) inflate.findViewById(R.id.popup_list_window_item_title);
            inflate.setTag(aVar2);
            View view2 = inflate;
            aVar = aVar2;
            view = view2;
        } else {
            aVar = (a) view.getTag();
        }
        if (getCount() == 1) {
            view.setMinimumHeight(this.e + (this.c * 2));
            int i2 = this.d;
            int i3 = this.c;
            view.setPadding(0, i2 + i3, 0, i2 + i3);
        } else if (i == 0) {
            view.setMinimumHeight(this.e + this.c);
            int i4 = this.d;
            view.setPadding(0, this.c + i4, 0, i4);
        } else if (i == getCount() - 1) {
            view.setMinimumHeight(this.e + this.c);
            int i5 = this.d;
            view.setPadding(0, i5, 0, this.c + i5);
        } else {
            view.setMinimumHeight(this.e);
            int i6 = this.d;
            view.setPadding(0, i6, 0, i6);
        }
        boolean d2 = this.f1738b.get(i).d();
        view.setEnabled(d2);
        a(aVar.f1739a, aVar.f1740b, this.f1738b.get(i), d2);
        a(aVar.f1740b, this.f1738b.get(i), d2);
        return view;
    }
}
