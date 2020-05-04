package com.color.compat.net;

import android.util.Log;
import com.color.inner.net.TrafficStatsWrapper;

public class TrafficStatsNative {
    private static final String TAG = "TrafficStatsNative";

    public static Object getStatsService() {
        try {
            return TrafficStatsWrapper.getStatsService();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
