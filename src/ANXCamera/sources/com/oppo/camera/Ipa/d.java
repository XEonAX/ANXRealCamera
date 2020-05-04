package com.oppo.camera.Ipa;

import com.oppo.camera.l.a;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ModelStorage */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, byte[]> f1805a = new HashMap();

    public static byte[] a(String str) {
        if (!f1805a.containsKey(str)) {
            f1805a.put(str, a.d("/system/etc/camera/" + str));
        }
        return f1805a.get(str);
    }

    public static String b(String str) {
        return "/system/etc/camera/" + str;
    }
}
