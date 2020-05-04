package com.oppo.providers.downloads.utils;

import android.os.SystemProperties;
import android.util.Log;

public class LogUtils {
    private static boolean DUMP_THREAD = false;
    public static boolean QE_ENABLE = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    private static final String TAG_PREFIX = "Download.";
    private static final int sLogLevel;

    static {
        if (QE_ENABLE) {
            sLogLevel = 3;
        } else {
            sLogLevel = 6;
        }
    }

    public static void d(String str, String str2) {
        print(3, str, str2);
    }

    public static void dumpDebug() {
        DUMP_THREAD = true;
        QE_ENABLE = true;
    }

    public static void e(String str, String str2) {
        print(6, str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        print(6, str, str2 + ": " + th);
    }

    public static void i(String str, String str2) {
        print(4, str, str2);
    }

    private static void print(int i, String str, String str2) {
        if (i >= sLogLevel) {
            String str3 = TAG_PREFIX + str;
            if (DUMP_THREAD) {
                str2 = "[" + Thread.currentThread().getName() + "]" + str2;
            }
            if (i == 2) {
                Log.v(str3, str2);
            } else if (i == 3) {
                Log.d(str3, str2);
            } else if (i == 4) {
                Log.i(str3, str2);
            } else if (i == 5) {
                Log.w(str3, str2);
            } else if (i == 6) {
                Log.e(str3, str2);
            }
        }
    }

    public static void v(String str, String str2) {
        print(2, str, str2);
    }

    public static void w(String str, String str2) {
        print(5, str, str2);
    }

    public static void w(String str, String str2, Throwable th) {
        print(5, str, str2 + ": " + th);
    }

    public static void wtf(String str, String str2, Throwable th) {
        w(str, str2 + ": " + th);
    }
}
