package com.color.compat.nfc.cardemulation;

import android.util.Log;
import com.color.inner.nfc.cardemulation.ApduServiceInfoWrapper;

public class ApduServiceInfoNative {
    private static final String TAG = "ApduServiceInfoNative";

    private ApduServiceInfoNative() {
    }

    public static boolean isServiceEnabled(Object obj, String str) {
        try {
            return ApduServiceInfoWrapper.isServiceEnabled(obj, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
