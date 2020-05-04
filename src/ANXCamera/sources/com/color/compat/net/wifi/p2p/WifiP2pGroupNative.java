package com.color.compat.net.wifi.p2p;

import android.net.wifi.p2p.WifiP2pGroup;
import android.util.Log;
import com.color.inner.net.wifi.p2p.WifiP2pGroupWrapper;

public class WifiP2pGroupNative {
    private static final String TAG = "WifiP2pGroupNative";

    private WifiP2pGroupNative() {
    }

    public static int getNetworkId(WifiP2pGroup wifiP2pGroup) {
        try {
            return WifiP2pGroupWrapper.getNetworkId(wifiP2pGroup);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }
}
