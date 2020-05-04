package com.color.compat.bluetooth;

import android.util.Log;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class BluetoothProfileNative {
    public static int PAN = 0;
    private static final String TAG = "BluetoothProfileNative";

    static {
        try {
            if (VersionUtils.isQ()) {
                PAN = 5;
            } else if (VersionUtils.isL()) {
                PAN = 5;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private BluetoothProfileNative() {
    }
}
