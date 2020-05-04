package com.color.compat.telephony;

import android.telephony.SmsMessage;
import android.util.Log;
import com.color.inner.telephony.SmsMessageWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class SmsMessageNative {
    private static final int ENCODING_UNKNOWN = 0;
    private static final String TAG = "SmsMessageNative";

    private SmsMessageNative() {
    }

    public static String getDestinationAddress(SmsMessage smsMessage) {
        try {
            if (VersionUtils.isQ()) {
                return SmsMessageWrapper.getDestinationAddress(smsMessage);
            }
            if (VersionUtils.isN()) {
                return (String) smsMessage.getClass().getDeclaredMethod("getDestinationAddress", new Class[0]).invoke(smsMessage, new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "getDestinationAddress, " + th.toString());
            return null;
        }
    }

    public static int getEncodingType(SmsMessage smsMessage) {
        int intValue;
        try {
            if (VersionUtils.isQ()) {
                intValue = SmsMessageWrapper.getEncodingType(smsMessage);
            } else if (VersionUtils.isN()) {
                intValue = ((Integer) smsMessage.getClass().getDeclaredMethod("getEncodingType", new Class[0]).invoke(smsMessage, new Object[0])).intValue();
            } else {
                throw new UnSupportedApiVersionException();
            }
            return intValue;
        } catch (Throwable th) {
            Log.e(TAG, "getEncodingType, " + th.toString());
            return 0;
        }
    }

    public static int getSubId(SmsMessage smsMessage) {
        try {
            if (VersionUtils.isQ()) {
                return SmsMessageWrapper.getSubId(smsMessage);
            }
            if (VersionUtils.isN()) {
                return smsMessage.getSubId();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "getSubId, " + th.toString());
            return -1;
        }
    }

    public static SmsMessage.SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z, int i) {
        try {
            if (VersionUtils.isQ()) {
                return SmsMessageWrapper.getSubmitPdu(str, str2, str3, z, i);
            }
            if (VersionUtils.isN()) {
                return SmsMessage.getSubmitPdu(str, str2, str3, z, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "getSubmitPdu, " + th.toString());
            return null;
        }
    }

    public static boolean hasEmsSupport() {
        try {
            if (VersionUtils.isQ()) {
                return SmsMessageWrapper.hasEmsSupport();
            }
            if (VersionUtils.isN()) {
                return SmsMessage.hasEmsSupport();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "hasEmsSupport, " + th.toString());
            return false;
        }
    }

    public static boolean isWrappedSmsMessageNull(SmsMessage smsMessage) {
        try {
            if (VersionUtils.isQ()) {
                return SmsMessageWrapper.isWrappedSmsMessageNull(smsMessage);
            }
            if (VersionUtils.isN()) {
                return smsMessage.mWrappedSmsMessage == null;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isWrappedSmsMessageNull, " + th.toString());
            return true;
        }
    }

    public static void setSubId(SmsMessage smsMessage, int i) {
        try {
            if (VersionUtils.isQ()) {
                SmsMessageWrapper.setSubId(smsMessage, i);
            } else if (VersionUtils.isN()) {
                smsMessage.setSubId(i);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, "setSubId, " + th.toString());
        }
    }
}
