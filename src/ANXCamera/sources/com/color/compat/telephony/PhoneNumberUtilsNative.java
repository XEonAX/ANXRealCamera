package com.color.compat.telephony;

import android.util.Log;
import com.color.inner.telephony.PhoneNumberUtilsWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class PhoneNumberUtilsNative {
    private static final String TAG = "PhoneNumberUtilsNative";

    private PhoneNumberUtilsNative() {
    }

    public static String cdmaCheckAndProcessPlusCode(String str) {
        try {
            if (VersionUtils.isQ()) {
                return PhoneNumberUtilsWrapper.cdmaCheckAndProcessPlusCode(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean isVoiceMailNumber(int i, String str) {
        try {
            if (VersionUtils.isQ()) {
                return PhoneNumberUtilsWrapper.isVoiceMailNumber(i, str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
