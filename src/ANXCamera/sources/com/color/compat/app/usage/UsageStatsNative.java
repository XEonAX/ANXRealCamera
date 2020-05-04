package com.color.compat.app.usage;

import android.app.usage.UsageStats;
import com.color.inner.app.usage.UsageStatsWrapper;

public class UsageStatsNative {
    private UsageStatsNative() {
    }

    public static int getAppLaunchCount(UsageStats usageStats) {
        return UsageStatsWrapper.getAppLaunchCount(usageStats);
    }
}
