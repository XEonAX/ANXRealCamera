package com.color.compat.internal.os;

import android.content.Context;
import android.util.Log;
import com.color.inner.internal.os.PowerProfileWrapper;

public class PowerProfileNative {
    private static final String TAG = "PowerProfileNative";

    private PowerProfileNative() {
    }

    public static double getBatteryCapacity(Context context) {
        try {
            return PowerProfileWrapper.getBatteryCapacity(context);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0.0d;
        }
    }
}
