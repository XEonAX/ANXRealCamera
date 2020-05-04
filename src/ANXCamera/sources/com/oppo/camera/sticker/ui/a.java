package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.color.support.widget.ColorLoadingView;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.sticker.data.StickerCategoryItem;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: GridAdapter */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private i f2450a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2451b = 0;
    private c c = null;
    private List<Map<String, Object>> d = null;
    private LayoutInflater e = null;
    private Context f = null;
    private String g = null;
    private Drawable h = null;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private boolean l = false;

    public a(Context context, c cVar, int i2) {
        this.c = cVar;
        this.d = new ArrayList();
        this.f = context;
        this.e = LayoutInflater.from(context);
        this.f2451b = i2;
        this.k = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_image_width);
        this.j = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_highlight_width);
        this.i = this.f.getResources().getDimensionPixelSize(R.dimen.sticker_gridview_item_size);
    }

    private void a(b bVar, String str) {
        if (bVar.c != null) {
            i iVar = this.f2450a;
            if (iVar == null) {
                return;
            }
            if (iVar.e() == null || !str.equals(this.f2450a.e().getStickerUUID())) {
                bVar.c.setVisibility(8);
            } else {
                bVar.c.setVisibility(0);
            }
        }
    }

    public void a(int i2) {
        if (this.f2451b != i2) {
            this.f2451b = i2;
            notifyDataSetChanged();
        }
    }

    public void a(int i2, int i3, Drawable drawable, boolean z, StickerItem stickerItem) {
        List<Map<String, Object>> list = this.d;
        if (list != null && i2 < list.size() && i2 >= 0) {
            this.d.get(i2).put("state_icon", Integer.valueOf(i3));
            this.d.get(i2).put("sticker_item", stickerItem);
            if (z) {
                notifyDataSetChanged();
            }
        }
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    public void a(i iVar) {
        this.f2450a = iVar;
    }

    public void a(String str) {
        this.g = str;
    }

    public void a(List<Map<String, Object>> list) {
        List<Map<String, Object>> list2 = this.d;
        if (list2 != null) {
            list2.clear();
            this.d.addAll(list);
        }
    }

    public void a(boolean z) {
        this.l = z;
    }

    public StickerItem b(int i2) {
        List<Map<String, Object>> list = this.d;
        if (list == null || i2 >= list.size()) {
            return null;
        }
        return (StickerItem) this.d.get(i2).get("sticker_item");
    }

    public int getCount() {
        if (StickerCategoryItem.isMyCategory(this.g)) {
            List<Map<String, Object>> list = this.d;
            if (list == null) {
                return 0;
            }
            int size = list.size();
            if (size > 1) {
                return size;
            }
            d.b("GridAdapter", "getCount, myCategory only has the recycle bin sticker");
            return 0;
        }
        List<Map<String, Object>> list2 = this.d;
        if (list2 != null) {
            return list2.size();
        }
        return 0;
    }

    public Object getItem(int i2) {
        return this.d.get(i2);
    }

    public long getItemId(int i2) {
        return (long) i2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v10, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v1, resolved type: com.oppo.camera.sticker.ui.b} */
    /* JADX WARNING: Multi-variable type inference failed */
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        d.a("GridAdapter_getView_" + i2 + "_" + this.l);
        if (view == null) {
            view = this.e.inflate(R.layout.sticker_view, (ViewGroup) null);
            int max = Math.max(this.i, Math.max(this.k, this.j));
            view.setLayoutParams(new AbsListView.LayoutParams(max, max));
            bVar = new b((ColorLoadingView) view.findViewById(R.id.loadingView), (RotateImageView) view.findViewById(R.id.sticker_image), (ImageView) view.findViewById(R.id.highlight));
            view.setTag(bVar);
        } else {
            bVar = view.getTag();
        }
        if (this.l) {
            d.b("GridAdapter_getView_" + i2 + "_" + this.l);
            return view;
        }
        int intValue = ((Integer) this.d.get(i2).get("state_icon")).intValue();
        StickerItem stickerItem = (StickerItem) this.d.get(i2).get("sticker_item");
        if (this.h == null) {
            this.h = this.f.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
        }
        if (this.c != null) {
            d dVar = new d();
            dVar.a(bVar);
            dVar.a(stickerItem.getStickerUUID());
            dVar.a(stickerItem.isStickerNew());
            dVar.b(stickerItem.hasMusic());
            dVar.a(intValue);
            this.c.a(stickerItem.getThumbnailFileUri(), "parse_url", dVar);
        }
        a(bVar, stickerItem.getStickerUUID());
        if (bVar.f2453b != null) {
            bVar.f2453b.a(this.f2451b, true);
        }
        d.b("GridAdapter_getView_" + i2 + "_" + this.l);
        return view;
    }
}
