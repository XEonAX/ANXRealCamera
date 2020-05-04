package com.color.compat.content.res;

import android.content.res.Configuration;
import android.util.Log;
import com.color.inner.content.res.ConfigurationWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ConfigurationNative {
    private static final String TAG = "ConfigurationNative";

    private ConfigurationNative() {
    }

    public static int getAccessibleChanged(Configuration configuration) {
        if (configuration == null) {
            return 0;
        }
        try {
            return ConfigurationWrapper.getAccessibleChanged(configuration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public static int getFlipFont(Configuration configuration) {
        try {
            if (VersionUtils.isQ()) {
                return ConfigurationWrapper.getFlipFont(configuration);
            }
            if (VersionUtils.isN_MR1()) {
                Object obj = configuration.getClass().getDeclaredField("mOppoExtraConfiguration").get(configuration);
                return ((Integer) obj.getClass().getField("mFlipFont").get(obj)).intValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getThemeChanged(Configuration configuration) {
        try {
            return ConfigurationWrapper.getThemeChanged(configuration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static long getThemeChangedFlags(Configuration configuration) {
        try {
            return ConfigurationWrapper.getThemeChangedFlags(configuration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static long getUxIconConfig(Configuration configuration) {
        if (configuration == null) {
            return -1;
        }
        try {
            return ConfigurationWrapper.getUxIconConfig(configuration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void setAccessibleChanged(Configuration configuration, int i) {
        try {
            ConfigurationWrapper.setAccessibleChanged(configuration, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setThemeChanged(Configuration configuration, int i) {
        try {
            ConfigurationWrapper.setThemeChanged(configuration, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setThemeChangedFlags(Configuration configuration, long j) {
        try {
            ConfigurationWrapper.setThemeChangedFlags(configuration, j);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setUxIconConfig(Configuration configuration, long j) {
        if (configuration != null) {
            try {
                ConfigurationWrapper.setUxIconConfig(configuration, j);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }
}
