package com.color.compat.net;

import android.util.Log;
import com.color.inner.net.INetworkStatsSessionWrapper;

public class INetworkStatsSessionNative {
    private static final String TAG = "INetworkStatsSessionNative";
    private INetworkStatsSessionWrapper mINetworkStatsSessionWrapper = null;

    INetworkStatsSessionNative(INetworkStatsSessionWrapper iNetworkStatsSessionWrapper) {
        this.mINetworkStatsSessionWrapper = iNetworkStatsSessionWrapper;
    }

    public void close() {
        try {
            this.mINetworkStatsSessionWrapper.close();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public NetworkStatsNative getDeviceSummaryForNetwork(NetworkTemplateNative networkTemplateNative, long j, long j2) {
        try {
            return new NetworkStatsNative(this.mINetworkStatsSessionWrapper.getDeviceSummaryForNetwork(networkTemplateNative.mNetworkTemplateWrapper, j, j2));
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public NetworkStatsNative getIncrementForNetwork(NetworkTemplateNative networkTemplateNative) {
        try {
            return new NetworkStatsNative(this.mINetworkStatsSessionWrapper.getIncrementForNetwork(networkTemplateNative.mNetworkTemplateWrapper));
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
