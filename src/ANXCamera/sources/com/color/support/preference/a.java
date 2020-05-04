package com.color.support.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import androidx.appcompat.app.f;
import androidx.core.g.u;
import androidx.preference.c;
import color.support.design.widget.ColorAppBarLayout;
import color.support.v7.appcompat.R;
import color.support.v7.widget.Toolbar;
import com.color.support.d.d;
import com.google.protobuf.nano.MessageNano;

/* compiled from: ColorActivityDialogFragment */
public class a extends c {
    /* access modifiers changed from: private */
    public f af;
    /* access modifiers changed from: private */
    public int ag;

    /* renamed from: com.color.support.preference.a$a  reason: collision with other inner class name */
    /* compiled from: ColorActivityDialogFragment */
    private static class C0047a extends ArrayAdapter<CharSequence> {
        C0047a(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public boolean hasStableIds() {
            return true;
        }
    }

    private ColorActivityDialogPreference ao() {
        return (ColorActivityDialogPreference) an();
    }

    public static int c(Context context) {
        int identifier = context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            try {
                return context.getApplicationContext().getResources().getDimensionPixelSize(identifier);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1;
    }

    public static a c(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        aVar.g(bundle);
        return aVar;
    }

    private View d(Context context) {
        int c = c(context);
        ImageView imageView = new ImageView(context);
        imageView.setBackground(r().getDrawable(R.drawable.color_list_statusbar_bg));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, c));
        return imageView;
    }

    public Dialog c(Bundle bundle) {
        this.ag = ao().b(ao().o());
        final AnonymousClass1 r13 = new f(o(), R.style.Theme_ColorSupport_ActivityDialog) {
            public boolean onMenuItemSelected(int i, MenuItem menuItem) {
                if (menuItem.getItemId() != 16908332) {
                    return super.onMenuItemSelected(i, menuItem);
                }
                dismiss();
                return true;
            }
        };
        this.af = r13;
        if (r13.getWindow() != null) {
            Window window = r13.getWindow();
            View decorView = window.getDecorView();
            if (Build.VERSION.SDK_INT >= 21) {
                decorView.setSystemUiVisibility(1024);
                window.setStatusBarColor(0);
                window.setNavigationBarColor(r().getColor(R.color.color_dialog_fragment_navigation_bar_color));
            }
            int systemUiVisibility = decorView.getSystemUiVisibility();
            int a2 = com.color.support.d.f.a();
            boolean z = r().getBoolean(R.bool.list_status_white_enabled);
            if (a2 >= 6 || a2 == 0) {
                window.addFlags(MessageNano.UNSET_ENUM_VALUE);
                decorView.setSystemUiVisibility(d.a(r13.getContext()) ? systemUiVisibility & -8193 & -17 : Build.VERSION.SDK_INT >= 23 ? !z ? systemUiVisibility | 8192 : systemUiVisibility | 256 : systemUiVisibility | 16);
            }
        }
        View inflate = LayoutInflater.from(o()).inflate(R.layout.color_preference_listview, (ViewGroup) null);
        Toolbar toolbar = (Toolbar) inflate.findViewById(R.id.toolbar);
        toolbar.setTitle(ao().a());
        toolbar.setNavigationIcon(androidx.core.a.a.a(toolbar.getContext(), R.drawable.color_back_arrow));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                a.this.af.dismiss();
            }
        });
        final ColorAppBarLayout colorAppBarLayout = (ColorAppBarLayout) inflate.findViewById(R.id.abl);
        final ListView listView = (ListView) inflate.findViewById(R.id.color_preference_listview);
        View findViewById = inflate.findViewById(R.id.divider_line);
        if (r().getBoolean(R.bool.is_dialog_preference_immersive)) {
            findViewById.setVisibility(8);
        }
        u.a((View) listView, true);
        View d = d(colorAppBarLayout.getContext());
        colorAppBarLayout.addView(d, 0, d.getLayoutParams());
        colorAppBarLayout.post(new Runnable() {
            public void run() {
                int measuredHeight = colorAppBarLayout.getMeasuredHeight() + a.this.r().getDimensionPixelSize(R.dimen.support_preference_listview_margin_top);
                View view = new View(colorAppBarLayout.getContext());
                view.setVisibility(4);
                view.setLayoutParams(new AbsListView.LayoutParams(-1, measuredHeight));
                listView.addHeaderView(view);
            }
        });
        final ListView listView2 = listView;
        AnonymousClass4 r4 = new C0047a(o(), R.layout.color_preference_listview_item, R.id.checkedtextview, ao().l()) {
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                if (i == a.this.ag) {
                    ListView listView = listView2;
                    listView.setItemChecked(listView.getHeaderViewsCount() + i, true);
                }
                View findViewById = view2.findViewById(R.id.coloritemdiver);
                int count = getCount();
                if (findViewById != null) {
                    if (count == 1 || i == count - 1) {
                        findViewById.setVisibility(8);
                    } else {
                        findViewById.setBackgroundResource(R.drawable.color_divider_preference_default);
                    }
                }
                return view2;
            }
        };
        listView.setAdapter(r4);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int unused = a.this.ag = i - listView.getHeaderViewsCount();
                a.this.onClick((DialogInterface) null, -1);
                r13.dismiss();
            }
        });
        listView.setChoiceMode(1);
        r13.setContentView(inflate);
        return r13;
    }

    public void i(boolean z) {
        ColorActivityDialogPreference ao = ao();
        if (z && this.ag >= 0) {
            String charSequence = ao().m()[this.ag].toString();
            if (ao.b((Object) charSequence)) {
                ao.a(charSequence);
            }
        }
    }
}
