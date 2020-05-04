package com.oppo.camera.ui.menu.levelcontrol;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.oppo.camera.R;

/* compiled from: CameraCustomListPreferenceSummaryAdapter */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2779a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2780b;
    private Context c;
    private int d;
    private CharSequence[] e;
    private CharSequence[] f;

    /* renamed from: com.oppo.camera.ui.menu.levelcontrol.a$a  reason: collision with other inner class name */
    /* compiled from: CameraCustomListPreferenceSummaryAdapter */
    private final class C0070a {

        /* renamed from: a  reason: collision with root package name */
        TextView f2781a;

        /* renamed from: b  reason: collision with root package name */
        TextView f2782b;
        CheckBox c;

        private C0070a() {
        }
    }

    public a(Context context, boolean z, boolean z2, int i, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2) {
        this.f2779a = z;
        this.f2780b = z2;
        this.c = context;
        this.d = i;
        this.e = charSequenceArr;
        this.f = charSequenceArr2;
    }

    private void a(int i, View view) {
        int dimensionPixelSize = this.c.getResources().getDimensionPixelSize(R.dimen.alert_dialog_item_padding_offset);
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        if (getCount() > 1) {
            if (i == getCount() - 1) {
                view.setMinimumHeight(view.getMinimumHeight() + dimensionPixelSize);
                view.setPadding(paddingLeft, 0, paddingRight, dimensionPixelSize + 0);
            }
            if (!this.f2779a && !this.f2780b && i == 0) {
                view.setMinimumHeight(view.getMinimumHeight() + dimensionPixelSize);
                view.setPadding(paddingLeft, dimensionPixelSize + 0, paddingRight, 0);
            }
        }
    }

    private CharSequence b(int i) {
        CharSequence[] charSequenceArr = this.f;
        if (charSequenceArr != null && i < charSequenceArr.length) {
            return charSequenceArr[i];
        }
        return null;
    }

    /* renamed from: a */
    public CharSequence getItem(int i) {
        CharSequence[] charSequenceArr = this.e;
        if (charSequenceArr == null) {
            return null;
        }
        return charSequenceArr[i];
    }

    public int getCount() {
        CharSequence[] charSequenceArr = this.e;
        if (charSequenceArr == null) {
            return 0;
        }
        return charSequenceArr.length;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        C0070a aVar;
        boolean z = false;
        if (view == null) {
            aVar = new C0070a();
            view2 = LayoutInflater.from(this.c).inflate(R.layout.oppo_preference_select_layout, viewGroup, false);
            aVar.f2781a = (TextView) view2.findViewById(R.id.pref_title);
            aVar.f2782b = (TextView) view2.findViewById(R.id.pref_summary);
            aVar.c = (CheckBox) view2.findViewById(R.id.pref_checkbox);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (C0070a) view.getTag();
        }
        CharSequence a2 = getItem(i);
        CharSequence b2 = b(i);
        aVar.f2781a.setText(a2);
        if (TextUtils.isEmpty(b2)) {
            aVar.f2782b.setVisibility(8);
        } else {
            aVar.f2782b.setVisibility(0);
            aVar.f2782b.setText(b2);
        }
        CheckBox checkBox = aVar.c;
        if (this.d == i) {
            z = true;
        }
        checkBox.setChecked(z);
        a(i, view2);
        return view2;
    }

    public boolean hasStableIds() {
        return true;
    }
}
