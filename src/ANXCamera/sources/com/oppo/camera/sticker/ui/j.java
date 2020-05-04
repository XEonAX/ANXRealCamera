package com.oppo.camera.sticker.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.a;
import com.oppo.camera.R;
import com.oppo.camera.d;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.ui.preview.a.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: StickerPageAdapter */
public class j extends a {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<StickerGridViewLayout> f2496a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f2497b = 0;
    private int c = 0;
    private Activity d = null;
    private i e = null;
    private c f = null;

    public j(Activity activity, int i, StickerItem stickerItem, i iVar, c cVar) {
        this.f2497b = i;
        this.d = activity;
        this.e = iVar;
        this.f = cVar;
        a(stickerItem, true);
    }

    private StickerGridViewLayout b(String str) {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (!(arrayList == null || arrayList.isEmpty() || str == null)) {
            int e2 = h.b((Context) this.d).a().e(str);
            if (e2 < this.f2496a.size() && -1 != e2) {
                return this.f2496a.get(e2);
            }
        }
        return null;
    }

    public int a() {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public Object a(ViewGroup viewGroup, int i) {
        StickerGridViewLayout stickerGridViewLayout = this.f2496a.get(i);
        if (stickerGridViewLayout != null) {
            if (viewGroup.indexOfChild(stickerGridViewLayout) == -1) {
                viewGroup.addView(this.f2496a.get(i));
            }
            stickerGridViewLayout.setStickerMenuListener(this.e);
            stickerGridViewLayout.setImageDownloader(this.f);
        }
        return stickerGridViewLayout;
    }

    public void a(ViewGroup viewGroup, int i, Object obj) {
        StickerGridViewLayout stickerGridViewLayout = this.f2496a.get(i);
        if (stickerGridViewLayout != null && viewGroup.indexOfChild(stickerGridViewLayout) != -1) {
            viewGroup.removeView(stickerGridViewLayout);
        }
    }

    public void a(StickerItem stickerItem, boolean z) {
        d.a("makeGridView");
        h.c a2 = h.b((Context) this.d).a();
        CopyOnWriteArrayList<h.a> b2 = a2.b();
        if (b2 != null && b2.size() > 0) {
            if (this.f2496a == null) {
                this.f2496a = new ArrayList<>();
            }
            Iterator<h.a> it = b2.iterator();
            while (it.hasNext()) {
                h.a next = it.next();
                ArrayList arrayList = new ArrayList();
                Iterator<StickerItem> it2 = next.a().iterator();
                while (it2.hasNext()) {
                    StickerItem next2 = it2.next();
                    HashMap hashMap = new HashMap();
                    hashMap.put("state_icon", Integer.valueOf(next2.getDownloadState()));
                    hashMap.put("sticker_item", next2);
                    arrayList.add(hashMap);
                }
                StickerGridViewLayout b3 = b(next.b());
                String str = null;
                if (b3 == null) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    StickerGridViewLayout stickerGridViewLayout = (StickerGridViewLayout) LayoutInflater.from(this.d).inflate(R.layout.sticker_menu_grid_item, (ViewGroup) null);
                    stickerGridViewLayout.setLayoutParams(layoutParams);
                    int e2 = a2.e(next.b());
                    if (e2 >= this.f2496a.size() || -1 == e2) {
                        this.f2496a.add(stickerGridViewLayout);
                    } else {
                        this.f2496a.add(e2, stickerGridViewLayout);
                    }
                    b3 = stickerGridViewLayout;
                }
                if (stickerItem != null) {
                    str = stickerItem.getCategoryId();
                }
                b3.a(arrayList, this.f2497b, next.b().equals(str));
            }
            if (z) {
                c();
            }
        }
        d.b("makeGridView");
    }

    public void a(String str) {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null && !arrayList.isEmpty()) {
            StickerGridViewLayout b2 = b(str);
            if (b2 != null) {
                b2.a();
            }
        }
    }

    public void a(String str, int i, int i2, Drawable drawable, boolean z, StickerItem stickerItem) {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null && !arrayList.isEmpty()) {
            final StickerGridViewLayout b2 = b(str);
            Activity activity = this.d;
            if (activity != null && b2 != null) {
                final int i3 = i;
                final int i4 = i2;
                final Drawable drawable2 = drawable;
                final boolean z2 = z;
                final StickerItem stickerItem2 = stickerItem;
                AnonymousClass1 r1 = new Runnable() {
                    public void run() {
                        b2.a(i3, i4, drawable2, z2, stickerItem2);
                    }
                };
                activity.runOnUiThread(r1);
            }
        }
    }

    public void a(String str, boolean z) {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null && !arrayList.isEmpty()) {
            StickerGridViewLayout b2 = b(str);
            if (b2 != null) {
                b2.a();
            }
        }
        if (z) {
            c();
        }
    }

    public void a(boolean z) {
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null) {
            Iterator<StickerGridViewLayout> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().setGridViewEnable(z);
            }
        }
    }

    public boolean a(View view, Object obj) {
        return view == obj;
    }

    public void b(int i) {
        this.c = i;
    }

    public void c(int i) {
        this.f2497b = i;
        ArrayList<StickerGridViewLayout> arrayList = this.f2496a;
        if (arrayList != null) {
            Iterator<StickerGridViewLayout> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().setOrientation(this.f2497b);
            }
        }
    }

    public int d() {
        return this.c;
    }
}
