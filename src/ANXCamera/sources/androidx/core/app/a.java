package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;

/* compiled from: ActivityCompat */
public class a extends androidx.core.a.a {

    /* renamed from: a  reason: collision with root package name */
    private static C0011a f477a;

    /* renamed from: androidx.core.app.a$a  reason: collision with other inner class name */
    /* compiled from: ActivityCompat */
    public interface C0011a {
        boolean a(Activity activity, int i, int i2, Intent intent);
    }

    public static C0011a a() {
        return f477a;
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!b.a(activity)) {
            activity.recreate();
        }
    }
}
