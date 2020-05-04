package com.color.compat.net.wifi.p2p;

import android.net.wifi.p2p.WifiP2pGroup;
import android.util.Log;
import com.color.inner.net.wifi.p2p.WifiP2pGroupListWrapper;
import java.util.Collection;

public class WifiP2pGroupListNative {
    private static final String TAG = "WifiP2pGroupListNative";
    private WifiP2pGroupListWrapper mWifiP2pGroupListWrapper;

    public WifiP2pGroupListNative(WifiP2pGroupListWrapper wifiP2pGroupListWrapper) {
        this.mWifiP2pGroupListWrapper = wifiP2pGroupListWrapper;
    }

    public Collection<WifiP2pGroup> getGroupList() {
        try {
            if (this.mWifiP2pGroupListWrapper == null) {
                return null;
            }
            return this.mWifiP2pGroupListWrapper.getGroupList();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
