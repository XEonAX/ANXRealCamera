package com.oppo.camera;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.util.LogPrinter;
import com.color.compat.os.SystemPropertiesNative;
import com.color.compat.os.TraceNative;
import com.oppo.camera.debug.PrefUtils;

/* compiled from: CameraLog */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1853a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f1854b = true;
    private static final Long c = 1L;

    public static void a(Context context) {
        f1853a = SystemPropertiesNative.getBoolean("persist.sys.assert.panic", false);
        f1854b = PrefUtils.getIsTraceDebug(context);
    }

    public static void a(String str) {
        if (f1854b) {
            Log.e("OppoCamera_TRACE", "traceBeginSection, msg: " + str);
            TraceNative.traceBegin(c.longValue(), str);
        }
    }

    public static void a(String str, Handler handler, String str2) {
        if (f1853a) {
            if (handler == null) {
                Log.e(c(str), "dumpHandlerMsg, handler is null!");
            }
            handler.dump(new LogPrinter(6, "handler info"), str2);
        }
    }

    public static void a(String str, String str2) {
        if (f1853a) {
            Log.v(c(str), str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f1853a) {
            Log.v(c(str), str2, th);
        }
    }

    public static void b(String str) {
        if (f1854b) {
            Log.e("OppoCamera_TRACE", "traceEndSection, msg: " + str);
            TraceNative.traceEnd(c.longValue());
        }
    }

    public static void b(String str, String str2) {
        if (f1853a) {
            Log.d(c(str), str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (f1853a) {
            Log.i(c(str), str2, th);
        }
    }

    private static String c(String str) {
        return str == null ? "OppoCamera" : str;
    }

    public static void c(String str, String str2) {
        if (f1853a) {
            Log.i(c(str), str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        Log.w(c(str), str2, th);
    }

    public static void d(String str, String str2) {
        Log.w(c(str), str2);
    }

    public static void d(String str, String str2, Throwable th) {
        Log.e(c(str), str2, th);
    }

    public static void e(String str, String str2) {
        Log.e(c(str), str2);
    }
}
