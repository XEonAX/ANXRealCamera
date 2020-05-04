package com.color.util;

import android.os.Build;

public final class VersionUtils {
    private VersionUtils() {
    }

    public static boolean isL() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isL_MR1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isM() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isN_MR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    public static boolean isO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isO_MR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean isQ() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
