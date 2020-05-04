package com.color.compat.telephony;

import android.app.PendingIntent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;
import com.color.inner.telephony.SmsManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;

public class SmsManagerNative {
    private static final String TAG = "SmsManagerNative";

    private SmsManagerNative() {
    }

    public static boolean copyMessageToIcc(SmsManager smsManager, byte[] bArr, byte[] bArr2, int i) {
        try {
            if (VersionUtils.isQ()) {
                return SmsManagerWrapper.copyMessageToIcc(smsManager, bArr, bArr2, i);
            }
            if (VersionUtils.isN()) {
                return smsManager.copyMessageToIcc(bArr, bArr2, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "copyMessageToIcc, " + th.toString());
            return false;
        }
    }

    public static boolean deleteMessageFromIcc(SmsManager smsManager, int i) {
        try {
            if (VersionUtils.isQ()) {
                return SmsManagerWrapper.deleteMessageFromIcc(smsManager, i);
            }
            if (VersionUtils.isN()) {
                return smsManager.deleteMessageFromIcc(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "deleteMessageFromIcc, " + th.toString());
            return false;
        }
    }

    public static ArrayList<String> divideMessageOem(SmsManager smsManager, String str, int i) {
        try {
            if (VersionUtils.isQ()) {
                return SmsManagerWrapper.divideMessageOem(smsManager, str, i);
            }
            if (VersionUtils.isN()) {
                return (ArrayList) smsManager.getClass().getDeclaredMethod("divideMessageOem", new Class[]{String.class, Integer.TYPE}).invoke(smsManager, new Object[]{str, Integer.valueOf(i)});
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "divideMessageOem, " + th.toString());
            return null;
        }
    }

    public static ArrayList<SmsMessage> getAllMessagesFromIcc(SmsManager smsManager) {
        try {
            if (VersionUtils.isQ()) {
                return SmsManagerWrapper.getAllMessagesFromIcc(smsManager);
            }
            if (VersionUtils.isN()) {
                return smsManager.getAllMessagesFromIcc();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "getAllMessagesFromIcc, " + th.toString());
            return null;
        }
    }

    public static void sendMultipartTextMessageOem(SmsManager smsManager, String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, int i, boolean z, int i2, int i3) {
        try {
            if (VersionUtils.isQ()) {
                SmsManagerWrapper.sendMultipartTextMessageOem(smsManager, str, str2, arrayList, arrayList2, arrayList3, i, z, i2, i3);
            } else if (VersionUtils.isN()) {
                SmsManager smsManager2 = smsManager;
                smsManager.getClass().getDeclaredMethod("sendMultipartTextMessageOem", new Class[]{String.class, String.class, ArrayList.class, ArrayList.class, ArrayList.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE}).invoke(smsManager, new Object[]{str, str2, arrayList, arrayList2, arrayList3, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2), Integer.valueOf(i3)});
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, "sendMultipartTextMessageOem, " + th.toString());
        }
    }
}
