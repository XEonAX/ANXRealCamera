package com.color.compat.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;
import android.util.Log;
import com.color.inner.hardware.fingerprint.FingerprintManagerWrapper;

public class FingerprintManagerNative {
    private static final String TAG = "FingerprintManagerNative";

    public interface OpticalFingerprintListenerCallbackNative {
        void onOpticalFingerprintUpdate(int i);
    }

    private FingerprintManagerNative() {
    }

    public static int getFailedAttempts(FingerprintManager fingerprintManager) {
        try {
            return FingerprintManagerWrapper.getFailedAttempts(fingerprintManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static long getLockoutAttemptDeadline(FingerprintManager fingerprintManager) {
        if (fingerprintManager == null) {
            return 0;
        }
        try {
            return FingerprintManagerWrapper.getLockoutAttemptDeadline(fingerprintManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void hideFingerprintIcon(FingerprintManager fingerprintManager) {
        try {
            FingerprintManagerWrapper.hideFingerprintIcon(fingerprintManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void regsiterOpticalFingerprintListener(FingerprintManager fingerprintManager, final OpticalFingerprintListenerCallbackNative opticalFingerprintListenerCallbackNative) {
        if (opticalFingerprintListenerCallbackNative != null) {
            try {
                FingerprintManagerWrapper.regsiterOpticalFingerprintListener(fingerprintManager, new FingerprintManagerWrapper.OpticalFingerprintListenerCallbackWrapper() {
                    public void onOpticalFingerprintUpdate(int i) {
                        opticalFingerprintListenerCallbackNative.onOpticalFingerprintUpdate(i);
                    }
                });
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    public static void showFingerprintIcon(FingerprintManager fingerprintManager) {
        try {
            FingerprintManagerWrapper.showFingerprintIcon(fingerprintManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
