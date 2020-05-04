package com.color.compat.net;

import android.net.ConnectivityManager;
import android.os.Handler;
import android.util.Log;
import com.color.inner.net.ConnectivityManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.List;

public class ConnectivityManagerNative {
    private static final String TAG = "ConnManagerNative";

    public interface OnStartTetheringCallbackNative {
        void onTetheringFailed();

        void onTetheringStarted();
    }

    private ConnectivityManagerNative() {
    }

    public static List<String> readArpFile(ConnectivityManager connectivityManager) {
        try {
            return ConnectivityManagerWrapper.readArpFile(connectivityManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void setVpnPackageAuthorization(String str, int i, boolean z) {
        try {
            ConnectivityManagerWrapper.setVpnPackageAuthorization(str, i, z);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void startTethering(ConnectivityManager connectivityManager, int i, boolean z, final OnStartTetheringCallbackNative onStartTetheringCallbackNative, Handler handler) {
        try {
            ConnectivityManagerWrapper.OnStartTetheringCallbackWrapper onStartTetheringCallbackWrapper = null;
            if (VersionUtils.isQ()) {
                if (onStartTetheringCallbackNative != null) {
                    onStartTetheringCallbackWrapper = new ConnectivityManagerWrapper.OnStartTetheringCallbackWrapper() {
                        public void onTetheringFailed() {
                            onStartTetheringCallbackNative.onTetheringFailed();
                        }

                        public void onTetheringStarted() {
                            onStartTetheringCallbackNative.onTetheringStarted();
                        }
                    };
                }
                ConnectivityManagerWrapper.startTethering(connectivityManager, i, z, onStartTetheringCallbackWrapper, handler);
            } else if (VersionUtils.isN()) {
                if (onStartTetheringCallbackNative != null) {
                    onStartTetheringCallbackWrapper = new ConnectivityManager.OnStartTetheringCallback() {
                        public void onTetheringFailed() {
                            onStartTetheringCallbackNative.onTetheringFailed();
                        }

                        public void onTetheringStarted() {
                            onStartTetheringCallbackNative.onTetheringStarted();
                        }
                    };
                }
                connectivityManager.startTethering(i, z, onStartTetheringCallbackWrapper, handler);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void stopTethering(ConnectivityManager connectivityManager, int i) {
        try {
            if (VersionUtils.isQ()) {
                ConnectivityManagerWrapper.stopTethering(connectivityManager, i);
            } else if (VersionUtils.isN()) {
                connectivityManager.stopTethering(i);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
