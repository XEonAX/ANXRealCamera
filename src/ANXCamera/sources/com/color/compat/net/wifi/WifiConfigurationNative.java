package com.color.compat.net.wifi;

import android.net.wifi.WifiConfiguration;
import android.util.Log;
import com.color.inner.net.wifi.WifiConfigurationWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class WifiConfigurationNative {
    private static final String TAG = "WifiConfigurationNative";

    public static class KeyMgmtNative {
        private KeyMgmtNative() {
        }

        public static int getWapiCERT() {
            try {
                return WifiConfigurationWrapper.KeyMgmtWrapper.getWapiCERT();
            } catch (Throwable th) {
                Log.e(WifiConfigurationNative.TAG, th.toString());
                return -1;
            }
        }

        public static int getWapiPSK() {
            try {
                return WifiConfigurationWrapper.KeyMgmtWrapper.getWapiPSK();
            } catch (Throwable th) {
                Log.e(WifiConfigurationNative.TAG, th.toString());
                return -1;
            }
        }
    }

    private WifiConfigurationNative() {
    }

    public static int getApBand(WifiConfiguration wifiConfiguration) {
        try {
            if (VersionUtils.isQ()) {
                return WifiConfigurationWrapper.getApBand(wifiConfiguration);
            }
            if (VersionUtils.isM()) {
                return wifiConfiguration.apBand;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getApChannel(WifiConfiguration wifiConfiguration) {
        try {
            if (VersionUtils.isQ()) {
                return WifiConfigurationWrapper.getApChannel(wifiConfiguration);
            }
            if (VersionUtils.isM()) {
                return wifiConfiguration.apChannel;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static String getWapiCertSel(WifiConfiguration wifiConfiguration) {
        try {
            return WifiConfigurationWrapper.getWapiCertSel(wifiConfiguration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public static int getWapiCertSelMode(WifiConfiguration wifiConfiguration) {
        try {
            return WifiConfigurationWrapper.getWapiCertSelMode(wifiConfiguration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static String getWapiPsk(WifiConfiguration wifiConfiguration) {
        try {
            return WifiConfigurationWrapper.getWapiPsk(wifiConfiguration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public static int getWapiPskType(WifiConfiguration wifiConfiguration) {
        try {
            return WifiConfigurationWrapper.getWapiPskType(wifiConfiguration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void setApBand(WifiConfiguration wifiConfiguration, int i) {
        try {
            if (VersionUtils.isQ()) {
                WifiConfigurationWrapper.setApBand(wifiConfiguration, i);
            } else if (VersionUtils.isM()) {
                wifiConfiguration.apBand = i;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setApChannel(WifiConfiguration wifiConfiguration, int i) {
        try {
            if (VersionUtils.isQ()) {
                WifiConfigurationWrapper.setApChannel(wifiConfiguration, i);
            } else if (VersionUtils.isM()) {
                wifiConfiguration.apChannel = i;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setWapiCertSel(WifiConfiguration wifiConfiguration, String str) {
        try {
            WifiConfigurationWrapper.setWapiCertSel(wifiConfiguration, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setWapiCertSelMode(WifiConfiguration wifiConfiguration, int i) {
        try {
            WifiConfigurationWrapper.setWapiCertSelMode(wifiConfiguration, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setWapiPsk(WifiConfiguration wifiConfiguration, String str) {
        try {
            WifiConfigurationWrapper.setWapiPsk(wifiConfiguration, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setWapiPskType(WifiConfiguration wifiConfiguration, int i) {
        try {
            WifiConfigurationWrapper.setWapiPskType(wifiConfiguration, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
