package com.color.compat.net.wifi;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.color.inner.net.wifi.WifiManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.Collections;
import java.util.List;
import oppo.net.wifi.HotspotClient;

public class WifiManagerNative {
    public static String EXTRA_WIFI_AP_STATE = null;
    private static final String TAG = "WifiManagerNative";
    public static int WIFI_AP_STATE_ENABLED;
    public static int WIFI_AP_STATE_FAILED;

    public interface ActionListenerNative {
        void onFailure(int i);

        void onSuccess();
    }

    static {
        try {
            if (VersionUtils.isQ()) {
                EXTRA_WIFI_AP_STATE = "wifi_state";
                WIFI_AP_STATE_FAILED = 14;
                WIFI_AP_STATE_ENABLED = 13;
            } else if (VersionUtils.isL()) {
                EXTRA_WIFI_AP_STATE = "wifi_state";
                WIFI_AP_STATE_FAILED = 14;
                WIFI_AP_STATE_ENABLED = 13;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private WifiManagerNative() {
    }

    public static boolean blockClient(WifiManager wifiManager, HotspotClient hotspotClient) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.blockClient(wifiManager, hotspotClient);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void connect(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) {
        try {
            if (VersionUtils.isQ()) {
                AnonymousClass2 r0 = null;
                if (actionListenerNative != null) {
                    r0 = new WifiManagerWrapper.ActionListenerWrapper() {
                        public void onFailure(int i) {
                            actionListenerNative.onFailure(i);
                        }

                        public void onSuccess() {
                            actionListenerNative.onSuccess();
                        }
                    };
                }
                WifiManagerWrapper.connect(wifiManager, i, r0);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void connect(WifiManager wifiManager, WifiConfiguration wifiConfiguration, final ActionListenerNative actionListenerNative) {
        try {
            if (VersionUtils.isQ()) {
                AnonymousClass1 r0 = null;
                if (actionListenerNative != null) {
                    r0 = new WifiManagerWrapper.ActionListenerWrapper() {
                        public void onFailure(int i) {
                            actionListenerNative.onFailure(i);
                        }

                        public void onSuccess() {
                            actionListenerNative.onSuccess();
                        }
                    };
                }
                WifiManagerWrapper.connect(wifiManager, wifiConfiguration, r0);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void disableDualSta(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                WifiManagerWrapper.disableDualSta(wifiManager);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static int enableDualSta(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.enableDualSta(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int enableDualStaByForce(WifiManager wifiManager, boolean z) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.enableDualStaByForce(wifiManager, z);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void forget(WifiManager wifiManager, int i, ActionListenerNative actionListenerNative) {
        try {
            if (VersionUtils.isQ()) {
                forgetAfterQ(wifiManager, i, actionListenerNative);
            } else if (VersionUtils.isL()) {
                forgetBeforeQ(wifiManager, i, actionListenerNative);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.getMessage());
        }
    }

    private static void forgetAfterQ(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) {
        WifiManagerWrapper.forget(wifiManager, i, actionListenerNative != null ? new WifiManagerWrapper.ActionListenerWrapper() {
            public void onFailure(int i) {
                actionListenerNative.onFailure(i);
            }

            public void onSuccess() {
                actionListenerNative.onSuccess();
            }
        } : null);
    }

    private static void forgetBeforeQ(WifiManager wifiManager, int i, final ActionListenerNative actionListenerNative) throws Exception {
        wifiManager.forget(i, new WifiManager.ActionListener() {
            public void onFailure(int i) {
                ActionListenerNative actionListenerNative = actionListenerNative;
                if (actionListenerNative != null) {
                    actionListenerNative.onFailure(i);
                }
            }

            public void onSuccess() {
                ActionListenerNative actionListenerNative = actionListenerNative;
                if (actionListenerNative != null) {
                    actionListenerNative.onSuccess();
                }
            }
        });
    }

    public static String[] getAllDualStaApps(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getAllDualStaApps(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static String[] getAllSlaAcceleratedApps(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getAllSlaAcceleratedApps(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static String[] getAllSlaAppsAndStates(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getAllSlaAppsAndStates(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static List<HotspotClient> getBlockedHotspotClients(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getBlockedHotspotClients(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static List<HotspotClient> getHotspotClients(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getHotspotClients(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static WifiInfo getOppoSta2ConnectionInfo(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getOppoSta2ConnectionInfo(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean getSlaAppState(WifiManager wifiManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getSlaAppState(wifiManager, str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static WifiConfiguration getWifiApConfiguration(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getWifiApConfiguration(wifiManager);
            }
            if (VersionUtils.isL()) {
                return wifiManager.getWifiApConfiguration();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getWifiApState(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getWifiApState(wifiManager);
            }
            if (VersionUtils.isL()) {
                return wifiManager.getWifiApState();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static WifiConfiguration getWifiSharingConfiguration(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.getWifiSharingConfiguration(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean isCertificateExist(WifiManager wifiManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isCertificateExist(wifiManager, str);
            }
            Log.e(TAG, "Api version not supported when call isCertificateExist");
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isCertificateExpired(WifiManager wifiManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isCertificateExpired(wifiManager, str);
            }
            Log.e(TAG, "Api version not supported when call isCertificateExpired");
            return true;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return true;
        }
    }

    public static boolean isCertificatePreInstalled(WifiManager wifiManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isCertificatePreInstalled(wifiManager, str);
            }
            Log.e(TAG, "Api version not supported when call isCertificatePreInstalled");
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isDualBandSupported(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isDualBandSupported(wifiManager);
            }
            if (VersionUtils.isL()) {
                return wifiManager.isDualBandSupported();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isDualStaSupported(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isDualStaSupported(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isMptcpSupported(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isMptcpSupported(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isPasspointFeatureSupport(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isPasspointFeatureSupport(wifiManager);
            }
            Log.e(TAG, "Api version not supported when call isPasspointFeatureSupport");
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isSlaSupported(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isSlaSupported(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean isWIFI6Supported(WifiManager wifiManager) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.isWIFI6Supported(wifiManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static List<ScanResult> passpointANQPScanResults(WifiManager wifiManager, List<ScanResult> list) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.passpointANQPScanResults(wifiManager, list);
            }
            Log.e(TAG, "Api version not supported when call passpointANQPScanResults");
            return Collections.emptyList();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static boolean setPasspointCertifiedState(WifiManager wifiManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.setPasspointCertifiedState(wifiManager, str);
            }
            Log.e(TAG, "Api version not supported when call setPasspointCertifiedState");
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean setSlaAppState(WifiManager wifiManager, String str, boolean z) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.setSlaAppState(wifiManager, str, z);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean setWifiApConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.setWifiApConfiguration(wifiManager, wifiConfiguration);
            }
            if (VersionUtils.isL()) {
                return wifiManager.setWifiApConfiguration(wifiConfiguration);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void setWifiSharingConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        try {
            if (VersionUtils.isQ()) {
                WifiManagerWrapper.setWifiSharingConfiguration(wifiManager, wifiConfiguration);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static boolean unblockClient(WifiManager wifiManager, HotspotClient hotspotClient) {
        try {
            if (VersionUtils.isQ()) {
                return WifiManagerWrapper.unblockClient(wifiManager, hotspotClient);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
