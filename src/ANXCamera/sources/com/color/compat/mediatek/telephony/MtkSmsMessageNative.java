package com.color.compat.mediatek.telephony;

import android.content.Context;
import android.telephony.SmsMessage;
import android.util.Log;
import com.color.inner.mediatek.telephony.MtkSmsMessageWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class MtkSmsMessageNative {
    private static final int INVALID_INT_RESULT = -1;
    private static final long INVALID_LONG_RESULT = -1;
    private static final String TAG = "SmsMessageNative";
    private MtkSmsMessageWrapper mMtkSmsMessageWrapper;

    MtkSmsMessageNative(MtkSmsMessageWrapper mtkSmsMessageWrapper) {
        this.mMtkSmsMessageWrapper = mtkSmsMessageWrapper;
    }

    public static int[] calculateLength(CharSequence charSequence, boolean z, Context context) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                return MtkSmsMessageWrapper.calculateLength(charSequence, z);
            }
            if (VersionUtils.isO_MR1()) {
                Object invoke = Class.forName("mediatek.telephony.MtkSmsMessage").getMethod("calculateLength", new Class[]{CharSequence.class, Boolean.TYPE}).invoke((Object) null, new Object[]{charSequence, Boolean.valueOf(z)});
                if (invoke == null || !(invoke instanceof int[])) {
                    return null;
                }
                return (int[]) invoke;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public String getDestinationAddress() {
        try {
            return this.mMtkSmsMessageWrapper.getDestinationAddress();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public String getDisplayMessageBody() {
        try {
            return this.mMtkSmsMessageWrapper.getDisplayMessageBody();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public String getDisplayOriginatingAddress() {
        try {
            return this.mMtkSmsMessageWrapper.getDisplayOriginatingAddress();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public int getIndexOnIcc() {
        try {
            return this.mMtkSmsMessageWrapper.getIndexOnIcc();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public SmsMessage.MessageClass getMessageClass() {
        try {
            return this.mMtkSmsMessageWrapper.getMessageClass();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public String getServiceCenterAddress() {
        try {
            return this.mMtkSmsMessageWrapper.getServiceCenterAddress();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public int getStatusOnIcc() {
        try {
            return this.mMtkSmsMessageWrapper.getStatusOnIcc();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public long getTimestampMillis() {
        try {
            return this.mMtkSmsMessageWrapper.getTimestampMillis();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public boolean isStatusReportMessage() {
        try {
            return this.mMtkSmsMessageWrapper.isStatusReportMessage();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
