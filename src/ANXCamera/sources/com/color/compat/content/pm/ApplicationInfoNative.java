package com.color.compat.content.pm;

import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.color.inner.content.pm.ApplicationInfoWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.lang.reflect.Field;

public class ApplicationInfoNative {
    private static final String TAG = "ApplicationInfoNative";

    private ApplicationInfoNative() {
    }

    public static String getBaseCodePath(ApplicationInfo applicationInfo) {
        try {
            if (VersionUtils.isQ()) {
                return ApplicationInfoWrapper.getBaseCodePath(applicationInfo);
            }
            if (VersionUtils.isP()) {
                return applicationInfo.getBaseCodePath();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getColorFreezeState(ApplicationInfo applicationInfo) {
        try {
            if (VersionUtils.isQ()) {
                return ApplicationInfoWrapper.getColorFreezeState(applicationInfo);
            }
            if (VersionUtils.isP()) {
                return getOppoFreezeStateField(applicationInfo).getInt(applicationInfo);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static long getLongVersionCode(ApplicationInfo applicationInfo) {
        try {
            if (VersionUtils.isQ()) {
                return ApplicationInfoWrapper.getLongVersionCode(applicationInfo);
            }
            if (VersionUtils.isP()) {
                return applicationInfo.longVersionCode;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    private static Field getOppoFreezeStateField(ApplicationInfo applicationInfo) throws NoSuchFieldException {
        return applicationInfo.getClass().getDeclaredField("oppoFreezeState");
    }

    public static int getVersionCode(ApplicationInfo applicationInfo) {
        try {
            if (VersionUtils.isQ()) {
                return ApplicationInfoWrapper.getVersionCode(applicationInfo);
            }
            if (VersionUtils.isL()) {
                return applicationInfo.versionCode;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static boolean isSystemApp(ApplicationInfo applicationInfo) {
        try {
            if (VersionUtils.isQ()) {
                return ApplicationInfoWrapper.isSystemApp(applicationInfo);
            }
            if (VersionUtils.isP()) {
                return applicationInfo.isSystemApp();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void setColorFreezeState(ApplicationInfo applicationInfo, int i) {
        try {
            if (VersionUtils.isQ()) {
                ApplicationInfoWrapper.setColorFreezeState(applicationInfo, i);
            } else if (VersionUtils.isP()) {
                getOppoFreezeStateField(applicationInfo).setInt(applicationInfo, i);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setLongVersionCode(ApplicationInfo applicationInfo, long j) {
        try {
            if (VersionUtils.isQ()) {
                ApplicationInfoWrapper.setLongVersionCode(applicationInfo, j);
            } else if (VersionUtils.isP()) {
                applicationInfo.setVersionCode(j);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setVersionCode(ApplicationInfo applicationInfo, int i) {
        try {
            if (VersionUtils.isQ()) {
                ApplicationInfoWrapper.setVersionCode(applicationInfo, i);
            } else if (VersionUtils.isL()) {
                applicationInfo.versionCode = i;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
