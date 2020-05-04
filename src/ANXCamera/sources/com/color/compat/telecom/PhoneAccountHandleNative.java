package com.color.compat.telecom;

import android.telecom.PhoneAccountHandle;
import android.util.Log;
import com.color.inner.telecom.PhoneAccountHandleWrapper;

public class PhoneAccountHandleNative {
    private static final String TAG = "PhoneAccountHandleNative";

    private PhoneAccountHandleNative() {
    }

    public static int getSlotId(PhoneAccountHandle phoneAccountHandle) {
        try {
            return PhoneAccountHandleWrapper.getSlotId(phoneAccountHandle);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getSubId(PhoneAccountHandle phoneAccountHandle) {
        try {
            return PhoneAccountHandleWrapper.getSubId(phoneAccountHandle);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }
}
