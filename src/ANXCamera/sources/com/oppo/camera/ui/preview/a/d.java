package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.Size;
import co.polarr.renderer.FilterPackageUtil;
import co.polarr.renderer.entities.DrawingItem;
import com.oppo.camera.R;
import com.oppo.camera.e.a;
import com.oppo.camera.ui.menu.levelcontrol.e;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FilterHelper */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2892a = {FilterPackageUtil.F_DEFAULT, FilterPackageUtil.F_COMMON_1, FilterPackageUtil.F_COMMON_2, FilterPackageUtil.F_COMMON_3, FilterPackageUtil.F_COMMON_4, FilterPackageUtil.F_COMMON_6, FilterPackageUtil.F_COMMON_5, FilterPackageUtil.F_FRONT_5, FilterPackageUtil.F_FRONT_1, FilterPackageUtil.F_FRONT_2, FilterPackageUtil.F_FRONT_3};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f2893b = {FilterPackageUtil.F_DEFAULT, FilterPackageUtil.F_COMMON_1, FilterPackageUtil.F_COMMON_2, FilterPackageUtil.F_COMMON_3, FilterPackageUtil.F_COMMON_4, FilterPackageUtil.F_COMMON_6, FilterPackageUtil.F_COMMON_5, FilterPackageUtil.F_BACK_2, FilterPackageUtil.F_BACK_3, FilterPackageUtil.F_BACK_5, FilterPackageUtil.F_BACK_4};
    public static final int[] c = {R.string.camera_filter_none, R.string.camera_filter_common_1, R.string.camera_filter_common_2, R.string.camera_filter_common_3, R.string.camera_filter_common_4, R.string.camera_filter_common_6, R.string.camera_filter_common_5, R.string.camera_filter_front_5, R.string.camera_filter_front_1, R.string.camera_filter_front_2, R.string.camera_filter_front_3};
    public static final int[] d = {R.string.camera_filter_none, R.string.camera_filter_common_1, R.string.camera_filter_common_2, R.string.camera_filter_common_3, R.string.camera_filter_common_4, R.string.camera_filter_common_6, R.string.camera_filter_common_5, R.string.camera_filter_back_2, R.string.camera_filter_back_3, R.string.camera_filter_back_5, R.string.camera_filter_back_4};
    public static final String[] e = {FilterPackageUtil.F_DEFAULT, FilterPackageUtil.F_CUBE_2018_6, FilterPackageUtil.F_CUBE_2018_11, FilterPackageUtil.F_CUBE_2018_0, FilterPackageUtil.F_CUBE_2018_7, FilterPackageUtil.F_CUBE_2018_8};
    public static final String[] f = {FilterPackageUtil.F_DEFAULT, FilterPackageUtil.F_CUBE_2018_6, FilterPackageUtil.F_CUBE_2018_11, FilterPackageUtil.F_CUBE_2018_0, FilterPackageUtil.F_CUBE_2018_7, FilterPackageUtil.F_CUBE_2018_8};
    public static final int[] g = {R.string.camera_filter_none, R.string.camera_protrait_filter_film, R.string.camera_protrait_filter_black_and_white, R.string.camera_protrait_filter_solar, R.string.camera_protrait_filter_sugar, R.string.camera_protrait_filter_hideaki};
    public static final int[] h = {R.string.camera_filter_none, R.string.camera_protrait_filter_film, R.string.camera_protrait_filter_black_and_white, R.string.camera_protrait_filter_solar, R.string.camera_protrait_filter_sugar, R.string.camera_protrait_filter_hideaki};
    public static final String[] i = {FilterPackageUtil.F_DEFAULT, "oppo_video_filter_natal", "oppo_video_filter_solar", "oppo_video_filter_highlight", "oppo_video_filter_strong", "oppo_video_filter_olympus", "oppo_video_filter_plain", "oppo_video_filter_ins", "oppo_video_filter_west", "oppo_video_filter_show", "oppo_video_filter_black_and_white"};
    public static final int[] j = {R.string.camera_filter_none, R.string.video_filter_f1, R.string.video_filter_f2, R.string.video_filter_f3, R.string.video_filter_f4, R.string.video_filter_f5, R.string.video_filter_f6, R.string.video_filter_f7, R.string.video_filter_f8, R.string.video_filter_f9, R.string.video_filter_f10};
    private static float k = 0.0f;
    private static float l = 0.0f;
    private static float m = 0.0f;
    private static Bitmap n = null;

    public static String a(int i2, int i3) {
        String[] strArr = a.c(i3) ? f2892a : f2893b;
        return (i2 < 0 || i2 > strArr.length) ? "" : strArr[i2];
    }

    private static List<DrawingItem> a(String[] strArr, int i2, int i3, int i4) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (int i5 = 0; i5 < strArr.length; i5++) {
            DrawingItem drawingItem = new DrawingItem();
            drawingItem.filterId = strArr[i5];
            int i6 = (i5 % 1) * (i3 + i2);
            int i7 = (i5 / 1) * (i4 + i2);
            drawingItem.rect = new Rect(i6, i7, i6 + i3, i7 + i4);
            copyOnWriteArrayList.add(drawingItem);
        }
        return copyOnWriteArrayList;
    }

    public static void a() {
        Bitmap bitmap = n;
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                n.recycle();
            }
            n = null;
        }
    }

    public static void a(Context context, String str, int i2, boolean z, String[] strArr, g gVar, Size size) {
        if (Float.compare(k, 0.0f) == 0) {
            k = (float) context.getResources().getDimensionPixelOffset(R.dimen.menu_effect_filter_elements_height);
        }
        if (Float.compare(l, 0.0f) == 0) {
            l = (float) context.getResources().getDimensionPixelOffset(R.dimen.menu_effect_filter_elements_gap);
        }
        if (Float.compare(m, 0.0f) == 0) {
            m = (float) context.getResources().getDimensionPixelOffset(R.dimen.menu_effect_filter_elements_highlight_height);
        }
        if (n == null) {
            n = BitmapFactory.decodeResource(context.getResources(), R.drawable.filter_highlight);
        }
        float width = (k * ((float) size.getWidth())) / ((float) size.getHeight());
        float floor = (float) (Math.floor((double) ((width - k) / 2.0f)) / ((double) width));
        List<DrawingItem> a2 = a(strArr, (int) l, (int) width, (int) k);
        e eVar = new e(str);
        eVar.a(a2);
        eVar.b((List<Bitmap>) null);
        eVar.a(a2.size());
        eVar.a(n);
        eVar.d(i2);
        eVar.a(45.0f);
        eVar.b(k);
        eVar.c(l);
        eVar.d(m);
        eVar.e(floor);
        eVar.a(z);
        eVar.b(true);
        gVar.a(eVar);
    }

    public static void a(e eVar, int i2, int i3) {
        if (eVar != null) {
            float f2 = k;
            float f3 = (((float) i2) * f2) / ((float) i3);
            eVar.e((float) (Math.floor((double) ((f3 - f2) / 2.0f)) / ((double) f3)));
            a(eVar.a(), (int) l, (int) f3, (int) k);
        }
    }

    private static void a(List<DrawingItem> list, int i2, int i3, int i4) {
        if (list != null) {
            for (int i5 = 0; i5 < list.size(); i5++) {
                int i6 = (i5 % 1) * (i3 + i2);
                int i7 = (i5 / 1) * (i4 + i2);
                list.get(i5).rect = new Rect(i6, i7, i6 + i3, i7 + i4);
            }
        }
    }

    public static String b(int i2, int i3) {
        String[] strArr = a.c(i3) ? e : f;
        return (i2 < 0 || i2 > strArr.length) ? "" : strArr[i2];
    }
}
