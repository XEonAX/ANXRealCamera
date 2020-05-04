package com.oppo.camera.o;

import android.content.Context;
import android.widget.Toast;
import com.oppo.camera.d;

/* compiled from: ToastUtil */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Toast f2270a;

    private static void a(Context context) {
        if (f2270a == null) {
            f2270a = Toast.makeText(context, "", 0);
        }
    }

    public static void a(Context context, int i) {
        a(context.getApplicationContext(), i, 0);
    }

    private static void a(Context context, int i, int i2) {
        if (i > 0) {
            try {
                a(context);
                f2270a.setText(i);
                f2270a.setDuration(i2);
                f2270a.show();
            } catch (Exception e) {
                d.b("ToastUtil", "showToast, e: " + e);
            }
        }
    }
}
