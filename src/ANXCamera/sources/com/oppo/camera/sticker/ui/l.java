package com.oppo.camera.sticker.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.GridView;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import color.support.v7.app.b;
import com.google.protobuf.nano.MessageNano;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.g;
import com.oppo.camera.sticker.h;
import com.oppo.camera.sticker.ui.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: StickerRecycleBinDialog */
public class l extends Dialog implements Toolbar.c, k.a {

    /* renamed from: a  reason: collision with root package name */
    color.support.v7.widget.Toolbar f2504a;

    /* renamed from: b  reason: collision with root package name */
    private GridView f2505b = null;
    private k c = null;
    private a d = null;
    private Context e = null;

    /* compiled from: StickerRecycleBinDialog */
    public interface a {
        void a();
    }

    public l(Context context) {
        super(context, R.style.StickerRecycleDialogStyle);
        this.e = context;
    }

    private void b() {
        this.f2504a = (color.support.v7.widget.Toolbar) findViewById(R.id.sticker_recycle_toolbar);
        color.support.v7.widget.Toolbar toolbar = this.f2504a;
        if (toolbar != null) {
            toolbar.d();
            this.f2504a.setIsTitleCenterStyle(true);
            this.f2504a.setDividerColor(getContext().getColor(R.color.sticker_recycle_bin_split_bar_color));
            this.f2504a.setBottomDividerBackground(getContext().getColor(R.color.sticker_recycle_bin_background_color));
            this.f2504a.a((int) R.menu.sticker_menu);
            this.f2504a.setTitle((int) R.string.sticker_recycle_bin_title_select);
            this.f2504a.setTitleTextColor(getContext().getColor(R.color.sticker_recycle_bin_title_text_color));
            this.f2504a.setOnMenuItemClickListener(this);
        }
        this.f2505b = (GridView) findViewById(R.id.sticker_recycle_bin_grid_view);
        this.c = new k(getContext(), g.a(getContext(), 1), true);
        this.c.a((k.a) this);
        GridView gridView = this.f2505b;
        if (gridView != null) {
            gridView.setAdapter(this.c);
        }
    }

    private boolean c() {
        k kVar = this.c;
        if (kVar != null) {
            return kVar.c();
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void d() {
        new b.a(getContext()).d(1).c((int) R.string.sticker_recycle_bin_delete_sticker, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                l.this.e();
            }
        }).b((int) R.string.sticker_recycle_bin_cancel, (DialogInterface.OnClickListener) null).b().show();
    }

    /* access modifiers changed from: private */
    public void e() {
        k kVar = this.c;
        if (kVar != null) {
            Map<String, StickerItem> e2 = kVar.e();
            if (e2.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (StickerItem add : e2.values()) {
                    arrayList.add(add);
                }
                h.a(this.e).a((List<StickerItem>) arrayList);
                return;
            }
            d.d("StickerRecycleBinDialog", "deleteSelectedStickers, size is 0!");
        }
    }

    public void a() {
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R.id.delete_sticker);
        if (checkedTextView != null) {
            checkedTextView.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    l.this.d();
                }
            });
            k kVar = this.c;
            if (kVar == null || kVar.d() != 0) {
                checkedTextView.setClickable(true);
                checkedTextView.setChecked(true);
                checkedTextView.setTextColor(getContext().getColor(R.color.sticker_recycle_bin_checked_color));
            } else {
                checkedTextView.setClickable(false);
                checkedTextView.setChecked(false);
                checkedTextView.setTextColor(getContext().getColor(R.color.sticker_recycle_bin_unchecked_color));
            }
        }
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f2504a.findViewById(R.id.sticker_select_all);
        if (actionMenuItemView == null) {
            return;
        }
        if (c()) {
            actionMenuItemView.setTitle(getContext().getString(R.string.sticker_recycle_bin_unselect_all));
        } else {
            actionMenuItemView.setTitle(getContext().getString(R.string.sticker_recycle_bin_select_all));
        }
    }

    public void a(StickerItem stickerItem) {
        if (stickerItem != null && isShowing()) {
            k kVar = this.c;
            if (kVar != null && kVar.getCount() == 0) {
                dismiss();
            }
            k kVar2 = this.c;
            if (kVar2 != null) {
                kVar2.a(stickerItem);
            }
        }
    }

    public void a(k kVar) {
        if (kVar != null) {
            int d2 = kVar.d();
            String string = getContext().getString(R.string.sticker_recycle_bin_title_select);
            if (d2 > 0) {
                string = getContext().getResources().getQuantityString(R.plurals.sticker_recycle_bin_title_has_selected, d2, new Object[]{Integer.valueOf(d2)});
            }
            this.f2504a.setTitle((CharSequence) string);
            a();
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public boolean a(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.sticker_cancel) {
            dismiss();
            return true;
        } else if (itemId != R.id.sticker_select_all) {
            return true;
        } else {
            if (c()) {
                this.c.b();
                return true;
            }
            this.c.a();
            this.d.a();
            return true;
        }
    }

    public void dismiss() {
        k kVar = this.c;
        if (kVar != null) {
            kVar.f();
        }
        super.dismiss();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(MessageNano.UNSET_ENUM_VALUE);
        getWindow().setStatusBarColor(getContext().getColor(R.color.sticker_recycle_bin_background_color));
        getWindow().setUiOptions(1);
        setContentView(R.layout.editor_sticker_recycle_bin_layout);
        b();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        new MenuInflater(getContext()).inflate(R.menu.sticker_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }
}
