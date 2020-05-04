package com.color.compat.telephony;

import android.os.PersistableBundle;
import android.util.Log;
import com.color.inner.telephony.CarrierConfigManagerWrapper;

public class CarrierConfigManagerNative {
    private static final String TAG = "CarrierConfigManagerNative";

    private CarrierConfigManagerNative() {
    }

    public static PersistableBundle getDefaultConfig() {
        try {
            return CarrierConfigManagerWrapper.getDefaultConfig();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
