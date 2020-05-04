package com.color.compat.os;

import android.os.PowerManager;
import android.util.Log;
import com.color.inner.os.PowerManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class PowerManagerNative {
    private static final String TAG = "PowerManagerNative";

    private PowerManagerNative() {
    }

    public static boolean getDisplayAodStatus(PowerManager powerManager) {
        boolean booleanValue;
        try {
            if (VersionUtils.isQ()) {
                booleanValue = PowerManagerWrapper.getDisplayAodStatus(powerManager);
            } else if (VersionUtils.isN()) {
                booleanValue = ((Boolean) powerManager.getClass().getDeclaredMethod("getDisplayAodStatus", new Class[0]).invoke(powerManager, new Object[0])).booleanValue();
            } else {
                throw new UnSupportedApiVersionException();
            }
            return booleanValue;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static int getMaximumScreenBrightnessSetting(PowerManager powerManager) {
        try {
            if (VersionUtils.isQ()) {
                return PowerManagerWrapper.getMaximumScreenBrightnessSetting(powerManager);
            }
            if (VersionUtils.isN()) {
                return ((Integer) powerManager.getClass().getDeclaredMethod("getMaximumScreenBrightnessSetting", new Class[0]).invoke(powerManager, new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getMinimumScreenBrightnessSetting(PowerManager powerManager) {
        try {
            if (VersionUtils.isQ()) {
                return PowerManagerWrapper.getMinimumScreenBrightnessSetting(powerManager);
            }
            if (VersionUtils.isN()) {
                return ((Integer) powerManager.getClass().getDeclaredMethod("getMinimumScreenBrightnessSetting", new Class[0]).invoke(powerManager, new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getRealMaximumScreenBrightnessSetting() {
        try {
            return PowerManagerWrapper.getRealMaximumScreenBrightnessSetting();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 255;
        }
    }

    public static int getRealMinimumScreenBrightnessSetting() {
        try {
            return PowerManagerWrapper.getRealMinimumScreenBrightnessSetting();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 255;
        }
    }

    public static int[] getWakeLockedUids(PowerManager powerManager) {
        try {
            if (VersionUtils.isQ()) {
                return PowerManagerWrapper.getWakeLockedUids(powerManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void goToSleep(PowerManager powerManager, long j) {
        try {
            PowerManagerWrapper.goToSleep(powerManager, j);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void shutdown(PowerManager powerManager, boolean z, String str, boolean z2) {
        try {
            PowerManagerWrapper.shutdown(powerManager, z, str, z2);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void wakeUp(PowerManager powerManager, long j, String str) {
        try {
            PowerManagerWrapper.wakeUp(powerManager, j, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
