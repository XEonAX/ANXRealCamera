package com.color.compat.telephony;

import android.util.Log;
import com.color.inner.telephony.MccTableWrapper;

public class MccTableNative {
    private static final String TAG = "MccTableNative";

    private MccTableNative() {
    }

    public static String countryCodeForMcc(int i) {
        try {
            return MccTableWrapper.countryCodeForMcc(i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public static String defaultLanguageForMcc(int i) {
        try {
            return MccTableWrapper.defaultLanguageForMcc(i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }
}
