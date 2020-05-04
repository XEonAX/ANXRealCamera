package com.color.support.d;

import android.util.Log;

/* compiled from: ColorOSVersionUtil */
public class f {
    public static int a() {
        try {
            Class<?> cls = Class.forName("com.color.os.ColorBuild");
            if (cls == null) {
                return 0;
            }
            return ((Integer) cls.getDeclaredMethod("getColorOSVERSION", new Class[0]).invoke(cls, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e("ColorOSVersionUtil", "getColorOSVersionCode failed. error = " + e.getMessage());
            return 0;
        }
    }
}
