package com.oppo.camera.e;

import android.media.CamcorderProfile;
import com.oppo.camera.d;
import java.lang.reflect.Constructor;
import java.util.HashMap;

/* compiled from: MtkCamcorderProfile */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<Integer, Integer> f2040a = new HashMap<>();

    static {
        f2040a.put(6, 18);
        f2040a.put(5, 10);
        f2040a.put(4, 10);
        f2040a.put(10, 10);
        f2040a.put(12, -1);
    }

    public static int a(int i) {
        Integer num = f2040a.get(Integer.valueOf(i));
        return num == null ? i : num.intValue();
    }

    public static CamcorderProfile a(int i, int i2) {
        Class<CamcorderProfile> cls = CamcorderProfile.class;
        try {
            return (CamcorderProfile) cls.getMethod("getMtk", new Class[]{Integer.TYPE, Integer.TYPE}).invoke((Object) null, new Object[]{Integer.valueOf(i), Integer.valueOf(a(i2))});
        } catch (Exception unused) {
            d.a("MtkCamcorderProfile", "get(), getMtk method fail, use getMtkCamcorderProfile.");
            return b(i, i2);
        }
    }

    public static CamcorderProfile b(int i, int i2) {
        try {
            Constructor<?> declaredConstructor = Class.forName("android.media.CamcorderProfile").getDeclaredConstructor(new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE});
            declaredConstructor.setAccessible(true);
            return (CamcorderProfile) declaredConstructor.newInstance(new Object[]{30, 10, 2, 2, 9000000, 30, 1280, 720, 3, 128000, 48000, 2});
        } catch (Exception e) {
            d.d("MtkCamcorderProfile", " " + e);
            e.printStackTrace();
            return null;
        }
    }

    public static boolean c(int i, int i2) {
        return CamcorderProfile.hasProfile(i, a(i2));
    }
}
