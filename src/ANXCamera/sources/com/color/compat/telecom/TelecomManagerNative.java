package com.color.compat.telecom;

import android.content.Intent;
import android.os.Bundle;
import android.telecom.TelecomManager;
import android.util.Log;
import com.color.inner.telecom.TelecomManagerWrapper;
import com.color.util.VersionUtils;

public class TelecomManagerNative {
    private static final String TAG = "TelecomManagerNative";

    private TelecomManagerNative() {
    }

    public static void addNewOutgoingCall(TelecomManager telecomManager, Intent intent) {
        try {
            if (VersionUtils.isQ()) {
                TelecomManagerWrapper.addNewOutgoingCall(telecomManager, intent);
            } else if (VersionUtils.isN_MR1()) {
                telecomManager.getClass().getMethod("addNewOutgoingCall", new Class[]{Intent.class}).invoke(telecomManager, new Object[]{intent});
            } else {
                throw new UnsupportedOperationException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static String colorInteractWithTelecomService(TelecomManager telecomManager, int i, String str) {
        try {
            return TelecomManagerWrapper.colorInteractWithTelecomService(telecomManager, i, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void oppoCancelMissedCallsNotification(TelecomManager telecomManager, Bundle bundle) {
        try {
            TelecomManagerWrapper.oppoCancelMissedCallsNotification(telecomManager, bundle);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
