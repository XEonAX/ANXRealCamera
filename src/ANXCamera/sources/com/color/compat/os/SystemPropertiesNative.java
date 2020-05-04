package com.color.compat.os;

import android.os.SystemProperties;
import android.util.Log;
import com.color.inner.os.SystemPropertiesWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class SystemPropertiesNative {
    private static final String TAG = "SystemPropertiesNative";

    private SystemPropertiesNative() {
    }

    public static String get(String str) {
        try {
            if (VersionUtils.isQ()) {
                return SystemPropertiesWrapper.get(str);
            }
            if (VersionUtils.isL()) {
                return SystemProperties.get(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static String get(String str, String str2) {
        String str3;
        try {
            if (VersionUtils.isQ()) {
                str3 = SystemPropertiesWrapper.get(str, str2);
            } else if (VersionUtils.isL()) {
                str3 = SystemProperties.get(str, str2);
            } else {
                throw new UnSupportedApiVersionException();
            }
            return str3;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return str2;
        }
    }

    public static boolean getBoolean(String str, boolean z) {
        try {
            if (VersionUtils.isQ()) {
                return SystemPropertiesWrapper.getBoolean(str, z);
            }
            if (VersionUtils.isL()) {
                return SystemProperties.getBoolean(str, z);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static int getInt(String str, int i) {
        int i2;
        try {
            if (VersionUtils.isQ()) {
                i2 = SystemPropertiesWrapper.getInt(str, i);
            } else if (VersionUtils.isL()) {
                i2 = SystemProperties.getInt(str, i);
            } else {
                throw new UnSupportedApiVersionException();
            }
            return i2;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return i;
        }
    }

    public static long getLong(String str, long j) {
        long j2;
        try {
            if (VersionUtils.isQ()) {
                j2 = SystemPropertiesWrapper.getLong(str, j);
            } else if (VersionUtils.isP()) {
                j2 = SystemProperties.getLong(str, j);
            } else {
                throw new UnSupportedApiVersionException();
            }
            return j2;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return j;
        }
    }

    public static void set(String str, String str2) {
        try {
            if (VersionUtils.isQ()) {
                SystemPropertiesWrapper.set(str, str2);
            } else if (VersionUtils.isL()) {
                SystemProperties.set(str, str2);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
