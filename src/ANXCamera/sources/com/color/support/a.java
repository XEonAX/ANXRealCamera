package com.color.support;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import java.lang.reflect.Method;

/* compiled from: RippleDrawableUtil */
public class a {
    public static Drawable a(Context context, int i, int i2) {
        Drawable drawable = context.getDrawable(i);
        if (Build.VERSION.SDK_INT < 23 && (drawable instanceof RippleDrawable)) {
            a((RippleDrawable) drawable, i2);
        }
        return drawable;
    }

    public static void a(RippleDrawable rippleDrawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i);
            return;
        }
        try {
            Method declaredMethod = Class.forName("android.graphics.drawable.RippleDrawable").getDeclaredMethod("setMaxRadius", new Class[]{Integer.TYPE});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(rippleDrawable, new Object[]{Integer.valueOf(i)});
        } catch (Exception unused) {
        }
    }
}
