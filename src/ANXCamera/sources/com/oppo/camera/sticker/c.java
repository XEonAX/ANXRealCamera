package com.oppo.camera.sticker;

import android.graphics.RectF;
import android.util.Size;
import com.oppo.camera.o.d;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.ui.preview.a.h;
import com.sensetime.stmobile.STMobileColorConvertNative;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: STStickerContainer */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static int f2392a = 131568;

    /* renamed from: b  reason: collision with root package name */
    public static int f2393b = 852416;

    /* compiled from: STStickerContainer */
    public interface a {
        void a(b bVar, String str);
    }

    public static long a(Map<b, List<MultiStickerExtendedInfo>> map) {
        long j = 0;
        for (b d : map.keySet()) {
            j |= d.d();
        }
        return j;
    }

    public static RectF a(int i, int i2, RectF rectF) {
        int i3;
        double d = (double) i2;
        double d2 = (double) i;
        double abs = Math.abs(d / d2);
        double height = ((double) rectF.height()) / ((double) rectF.width());
        double d3 = abs - height;
        int i4 = 0;
        if (d3 > 0.0d) {
            i3 = (i2 - ((int) Math.round(d2 * height))) / 2;
        } else if (d3 < 0.0d) {
            i4 = (i - ((int) Math.round(d / height))) / 2;
            i3 = 0;
        } else {
            i3 = 0;
        }
        return new RectF((float) i4, (float) i3, (float) (i - i4), (float) (i2 - i3));
    }

    public static RectF a(MultiStickerExtendedInfo multiStickerExtendedInfo, int i, int i2) {
        String[] strArr;
        Size size;
        int b2 = d.b(i2, i);
        if (b2 == 0) {
            String[] split = multiStickerExtendedInfo.getBaseSize4x3().split("x");
            strArr = multiStickerExtendedInfo.getDisplayRect4x3().split(",");
            size = new Size(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else if (2 == b2) {
            String[] split2 = multiStickerExtendedInfo.getBaseSize1x1().split("x");
            strArr = multiStickerExtendedInfo.getDisplayRect1x1().split(",");
            size = new Size(Integer.parseInt(split2[0]), Integer.parseInt(split2[1]));
        } else {
            String[] split3 = multiStickerExtendedInfo.getBaseSize16x9().split("x");
            strArr = multiStickerExtendedInfo.getDisplayRect16x9().split(",");
            size = new Size(Integer.parseInt(split3[0]), Integer.parseInt(split3[1]));
        }
        if (strArr == null) {
            return new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        }
        float width = ((float) i2) / ((float) (size.getWidth() == 0 ? i2 : size.getWidth()));
        float height = ((float) i) / ((float) (size.getHeight() == 0 ? i : size.getHeight()));
        int round = Math.round(((float) Integer.parseInt(strArr[0])) * width);
        int round2 = Math.round(((float) Integer.parseInt(strArr[1])) * height);
        return new RectF((float) round, (float) round2, (float) (round + Math.round(((float) Integer.parseInt(strArr[2])) * width)), (float) (round2 + Math.round(((float) Integer.parseInt(strArr[3])) * height)));
    }

    public static STMobileHumanActionNative a() {
        return null;
    }

    public static String a(MultiStickerExtendedInfo multiStickerExtendedInfo, int i) {
        return 1 == i ? multiStickerExtendedInfo.getFileContentUri16x9() : i == 0 ? multiStickerExtendedInfo.getFileContentUri4x3() : 2 == i ? multiStickerExtendedInfo.getFileContentUri1x1() : multiStickerExtendedInfo.getFileContentUri4x3();
    }

    public static HashMap<String, List<MultiStickerExtendedInfo>> a(StickerItem stickerItem) {
        if (stickerItem == null) {
            com.oppo.camera.d.e("STStickerContainer", "getExtendedInfoMap, item is null");
            return null;
        }
        String stickerName = stickerItem.getStickerName();
        List<MultiStickerExtendedInfo> a2 = g.a(d.e(), stickerItem);
        HashMap<String, List<MultiStickerExtendedInfo>> hashMap = new HashMap<>();
        if (a2 == null || a2.size() <= 0) {
            hashMap.put(stickerName, new ArrayList());
        } else {
            for (MultiStickerExtendedInfo next : a2) {
                if (next != null) {
                    if (hashMap.containsKey(next.getStickerName())) {
                        hashMap.get(next.getStickerName()).add(next);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(next);
                        hashMap.put(next.getStickerName(), arrayList);
                    }
                }
            }
        }
        return hashMap;
    }

    public static LinkedHashMap<b, List<MultiStickerExtendedInfo>> a(HashMap<String, List<MultiStickerExtendedInfo>> hashMap, StickerItem stickerItem, ArrayList<b> arrayList) {
        if (stickerItem == null || hashMap == null) {
            com.oppo.camera.d.e("STStickerContainer", "getMaterialInfoMap, item: " + stickerItem + ", extendedInfoMap: " + hashMap);
            return null;
        }
        String fileContentUri = stickerItem.getFileContentUri();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        for (String next : hashMap.keySet()) {
            if (i >= arrayList.size()) {
                com.oppo.camera.d.e("STStickerContainer", "getMaterialInfoMap, Just support " + arrayList.size() + " materials.");
            } else {
                int i2 = i + 1;
                b bVar = arrayList.get(i);
                a(bVar, fileContentUri, (a) null);
                linkedHashMap.put(next, bVar);
                i = i2;
            }
        }
        LinkedHashMap<b, List<MultiStickerExtendedInfo>> linkedHashMap2 = new LinkedHashMap<>();
        for (String str : linkedHashMap.keySet()) {
            linkedHashMap2.put(linkedHashMap.get(str), hashMap.get(str));
        }
        return linkedHashMap2;
    }

    private static void a(b bVar, String str, a aVar) {
        com.oppo.camera.d.a("STStickerContainer", "changeStickerNative, sticker: " + str);
        byte[] a2 = h.a(d.e(), str);
        if (a2 != null) {
            bVar.a(a2);
        } else {
            com.oppo.camera.d.e("STStickerContainer", "changeStickerNative failed, bytes: " + a2);
        }
        if (aVar != null) {
            aVar.a(bVar, str);
        }
    }

    public static void a(List<b> list, STMobileColorConvertNative sTMobileColorConvertNative) {
        for (b next : list) {
            if (next != null) {
                next.a().createInstance(d.e());
            }
        }
        sTMobileColorConvertNative.createInstance();
    }

    public static Size b(int i, int i2, RectF rectF) {
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        double abs = Math.abs(((double) i2) / ((double) i));
        double height = abs - (((double) rectF.height()) / ((double) rectF.width()));
        if (height > 0.0d) {
            round2 = (int) Math.round(((double) rectF.width()) * abs);
        } else if (height < 0.0d) {
            round = (int) Math.round(((double) rectF.height()) / abs);
        }
        return new Size(round, round2);
    }
}
