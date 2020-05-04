package com.color.compat.telecom;

import android.telecom.Call;
import android.util.Log;
import com.color.inner.telecom.CallWrapper;

public class CallNative {
    private static final String TAG = "CallNative";

    private CallNative() {
    }

    public static String internalGetCallId(Call call) {
        try {
            return CallWrapper.internalGetCallId(call);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
