package com.oppo.statistics.util;

import android.os.SystemProperties;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;

public class LogUtil {
    private static boolean D = false;
    private static boolean E = true;
    private static boolean I = false;
    public static final String TAG = "com.coloros.statistics--";
    private static boolean V = false;
    private static boolean W = true;
    private static boolean isDebug = false;
    public static boolean isDebugMode = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    private static String seprateor = "-->";
    private static String special = "NearmeStatistics-local";

    public static void d(String str) {
        if (isDebug && D) {
            Log.d(TAG, special + seprateor + str);
        }
    }

    public static void d(String str, String str2) {
        if (isDebug && D) {
            Log.d(str, special + seprateor + str2);
        }
    }

    public static void e(Exception exc) {
        if (isDebug && E) {
            exc.printStackTrace();
        }
    }

    public static void e(String str) {
        if (isDebug && E) {
            Log.e(TAG, special + seprateor + str);
        }
    }

    public static void e(String str, String str2) {
        if (isDebug && E) {
            Log.e(str, special + seprateor + str2);
        }
    }

    public static void e(String str, Throwable th) {
        if (isDebug && E) {
            Log.e(str, th.toString());
        }
    }

    public static String getSeprateor() {
        return seprateor;
    }

    public static String getSpecial() {
        return special;
    }

    public static void i(String str) {
        if (isDebug && I) {
            Log.i(TAG, special + seprateor + str);
        }
    }

    public static void i(String str, String str2) {
        if (isDebug && I) {
            Log.i(str, special + seprateor + str2);
        }
    }

    public static boolean isD() {
        return D;
    }

    public static boolean isDebug() {
        return isDebug;
    }

    public static boolean isE() {
        return E;
    }

    public static boolean isI() {
        return I;
    }

    public static boolean isV() {
        return V;
    }

    public static boolean isW() {
        return W;
    }

    public static void reocrdExceptionInfo(Throwable th) {
        File file = new File("/data/data/com.nearme.statistics.rom/exception_info.txt");
        try {
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    file.createNewFile();
                } else {
                    return;
                }
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(randomAccessFile.length());
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            randomAccessFile.write(stringWriter.toString().getBytes());
            randomAccessFile.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void setD(boolean z) {
        D = z;
    }

    public static void setDebugs(boolean z) {
        isDebug = z;
        if (!isDebug || !isDebugMode) {
            V = false;
            D = false;
            I = false;
            W = false;
            E = false;
            return;
        }
        V = true;
        D = true;
        I = true;
        W = true;
        E = true;
    }

    public static void setE(boolean z) {
        E = z;
    }

    public static void setI(boolean z) {
        I = z;
    }

    public static void setSeprateor(String str) {
        seprateor = str;
    }

    public static void setSpecial(String str) {
        special = str;
    }

    public static void setV(boolean z) {
        V = z;
    }

    public static void setW(boolean z) {
        W = z;
    }

    public static void v(String str) {
        if (isDebug && V) {
            Log.v(TAG, special + seprateor + str);
        }
    }

    public static void v(String str, String str2) {
        if (isDebug && V) {
            Log.v(str, special + seprateor + str2);
        }
    }

    public static void w(String str) {
        if (isDebug && W) {
            Log.w(TAG, special + seprateor + str);
        }
    }

    public static void w(String str, String str2) {
        if (isDebug && W) {
            Log.w(str, special + seprateor + str2);
        }
    }
}
