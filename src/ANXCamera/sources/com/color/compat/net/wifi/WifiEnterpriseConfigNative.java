package com.color.compat.net.wifi;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import com.color.inner.net.wifi.WifiEnterpriseConfigWrapper;

public class WifiEnterpriseConfigNative {
    private static final String TAG = "WifiEnterpriseConfigNative";

    private WifiEnterpriseConfigNative() {
    }

    public static String getSimNum(WifiEnterpriseConfig wifiEnterpriseConfig) {
        try {
            return WifiEnterpriseConfigWrapper.getSimNum(wifiEnterpriseConfig);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public static void setSimNum(WifiEnterpriseConfig wifiEnterpriseConfig, int i) {
        try {
            WifiEnterpriseConfigWrapper.setSimNum(wifiEnterpriseConfig, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
