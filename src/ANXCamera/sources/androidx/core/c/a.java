package androidx.core.c;

import android.os.Build;
import android.os.Trace;

/* compiled from: TraceCompat */
public final class a {
    public static void a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
