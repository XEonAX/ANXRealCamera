package com.color.compat.net;

import android.util.Log;
import com.color.inner.net.INetworkStatsServiceWrapper;

public class INetworkStatsServiceNative {
    private static final String TAG = "INetworkStatsServiceNative";

    public static INetworkStatsSessionNative openSession() {
        try {
            return new INetworkStatsSessionNative(INetworkStatsServiceWrapper.openSession());
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
