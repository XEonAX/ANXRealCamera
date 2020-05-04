package com.color.compat.telephony;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import com.color.inner.telephony.SubscriptionManagerWrapper;

public class SubscriptionManagerNative {
    private static final String TAG = "SubscriptionManagerNative";

    private SubscriptionManagerNative() {
    }

    public static int getDefaultVoicePhoneId() {
        try {
            return SubscriptionManagerWrapper.getDefaultVoicePhoneId();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static SubscriptionInfo getDefaultVoiceSubscriptionInfo(SubscriptionManager subscriptionManager) {
        try {
            return SubscriptionManagerWrapper.getDefaultVoiceSubscriptionInfo(subscriptionManager);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int setDisplayName(SubscriptionManager subscriptionManager, String str, int i, int i2) {
        try {
            return SubscriptionManagerWrapper.setDisplayName(subscriptionManager, str, i, i2);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }
}
