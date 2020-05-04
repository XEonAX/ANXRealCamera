package com.color.compat.net.wifi.p2p;

import android.net.wifi.p2p.WifiP2pManager;
import android.util.Log;
import com.color.inner.net.wifi.p2p.WifiP2pGroupListWrapper;
import com.color.inner.net.wifi.p2p.WifiP2pManagerWrapper;

public class WifiP2pManagerNative {
    private static final String TAG = "WifiP2pManagerNative";

    public interface ActionListenerNative {
        void onFailure(int i);

        void onSuccess();
    }

    public interface PersistentGroupInfoListenerNative {
        void onPersistentGroupInfoAvailable(WifiP2pGroupListNative wifiP2pGroupListNative);
    }

    private WifiP2pManagerNative() {
    }

    public static void deletePersistentGroup(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, int i, final ActionListenerNative actionListenerNative) {
        AnonymousClass2 r0 = null;
        if (actionListenerNative != null) {
            try {
                r0 = new WifiP2pManagerWrapper.ActionListenerWrapper() {
                    public void onFailure(int i) {
                        actionListenerNative.onFailure(i);
                    }

                    public void onSuccess() {
                        actionListenerNative.onSuccess();
                    }
                };
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return;
            }
        }
        WifiP2pManagerWrapper.deletePersistentGroup(wifiP2pManager, channel, i, r0);
    }

    public static void requestPersistentGroupInfo(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, final PersistentGroupInfoListenerNative persistentGroupInfoListenerNative) {
        AnonymousClass1 r0 = null;
        if (persistentGroupInfoListenerNative != null) {
            try {
                r0 = new WifiP2pManagerWrapper.PersistentGroupInfoListenerWrapper() {
                    public void onPersistentGroupInfoAvailable(WifiP2pGroupListWrapper wifiP2pGroupListWrapper) {
                        persistentGroupInfoListenerNative.onPersistentGroupInfoAvailable(new WifiP2pGroupListNative(wifiP2pGroupListWrapper));
                    }
                };
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return;
            }
        }
        WifiP2pManagerWrapper.requestPersistentGroupInfo(wifiP2pManager, channel, r0);
    }
}
