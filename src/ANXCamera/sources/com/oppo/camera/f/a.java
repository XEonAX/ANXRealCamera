package com.oppo.camera.f;

import android.util.ArrayMap;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.exif.OppoExifTag;

/* compiled from: OppoExif */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static ArrayMap<String, Integer> f2131a = new ArrayMap<>();

    public static int a(String str, int i) {
        if (f2131a.isEmpty()) {
            a();
        }
        return (str == null || f2131a.get(str) == null) ? i : f2131a.get(str).intValue() | i;
    }

    private static void a() {
        f2131a.put("beauty", 2);
        f2131a.put("panorama", 4);
        f2131a.put("fastVideo", 8);
        f2131a.put(CameraStatisticsUtil.EVENT_CAPTURE, 16);
        f2131a.put("professional", 256);
        f2131a.put("sticker", 512);
        f2131a.put("night", 2048);
    }

    public static String b(String str, int i) {
        return OppoExifTag.EXIF_TAG_PREFIX.concat(String.valueOf(a(str, i)));
    }
}
