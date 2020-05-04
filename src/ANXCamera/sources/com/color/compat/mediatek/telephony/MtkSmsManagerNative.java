package com.color.compat.mediatek.telephony;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.color.inner.mediatek.telephony.MtkIccSmsStorageStatusWrapper;
import com.color.inner.mediatek.telephony.MtkSmsManagerWrapper;
import com.color.inner.mediatek.telephony.MtkSmsMessageWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MtkSmsManagerNative {
    private static final int INVALID_RESULT = -1;
    private static final String TAG = "MtkSmsManagerNative";
    private Object mMtkSmsManagerObj;
    private MtkSmsManagerWrapper mMtkSmsManagerWrapper;

    private MtkSmsManagerNative(MtkSmsManagerWrapper mtkSmsManagerWrapper) {
        this.mMtkSmsManagerWrapper = mtkSmsManagerWrapper;
    }

    private MtkSmsManagerNative(Object obj) {
        this.mMtkSmsManagerObj = obj;
    }

    public static MtkSmsManagerNative getDefault(Context context) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                return new MtkSmsManagerNative(MtkSmsManagerWrapper.getDefault());
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkSmsManagerNative(Class.forName("mediatek.telephony.MtkSmsManager").getDeclaredMethod("getDefault", new Class[0]).invoke((Object) null, new Object[0]));
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static MtkSmsManagerNative getSmsManagerForSubscriptionId(Context context, int i) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                return new MtkSmsManagerNative(MtkSmsManagerWrapper.getSmsManagerForSubscriptionId(i));
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkSmsManagerNative(Class.forName("mediatek.telephony.MtkSmsManager").getDeclaredMethod("getSmsManagerForSubscriptionId", new Class[]{Integer.TYPE}).invoke((Object) null, new Object[]{Integer.valueOf(i)}));
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public int copyTextMessageToIccCard(Context context, String str, String str2, List<String> list, int i, long j) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return -1;
            }
            if (VersionUtils.isQ()) {
                return this.mMtkSmsManagerWrapper.copyTextMessageToIccCard(str, str2, list, i, j);
            }
            if (VersionUtils.isO_MR1()) {
                return ((Integer) Class.forName("mediatek.telephony.MtkSmsManager").getDeclaredMethod("copyTextMessageToIccCard", new Class[]{String.class, String.class, List.class, Integer.TYPE, Long.TYPE}).invoke(this.mMtkSmsManagerObj, new Object[]{str, str2, list, Integer.valueOf(i), Long.valueOf(j)})).intValue();
            }
            return -1;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public ArrayList<String> divideMessage(Context context, String str, int i) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                return this.mMtkSmsManagerWrapper.divideMessage(str, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public ArrayList<MtkSmsMessageNative> getAllMessagesFromIcc(Context context) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                ArrayList<MtkSmsMessageNative> arrayList = new ArrayList<>();
                ArrayList allMessagesFromIcc = this.mMtkSmsManagerWrapper.getAllMessagesFromIcc();
                if (allMessagesFromIcc != null && allMessagesFromIcc.size() > 0) {
                    Iterator it = allMessagesFromIcc.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new MtkSmsMessageNative((MtkSmsMessageWrapper) it.next()));
                    }
                }
                return arrayList;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public MtkIccSmsStorageStatusNative getSmsSimMemoryStatus(Context context) {
        try {
            if (!context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                return null;
            }
            if (VersionUtils.isQ()) {
                return new MtkIccSmsStorageStatusNative(new MtkIccSmsStorageStatusWrapper(this.mMtkSmsManagerWrapper.getSmsSimMemoryStatus()));
            }
            if (VersionUtils.isO_MR1()) {
                return new MtkIccSmsStorageStatusNative(Class.forName("mediatek.telephony.MtkSmsManager").getDeclaredMethod("getSmsSimMemoryStatus", new Class[0]).invoke(this.mMtkSmsManagerObj, new Object[0]));
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public void sendDataMessage(Context context, String str, String str2, short s, short s2, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        try {
            if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                if (VersionUtils.isQ()) {
                    try {
                        this.mMtkSmsManagerWrapper.sendDataMessage(str, str2, s, s2, bArr, pendingIntent, pendingIntent2);
                    } catch (Throwable th) {
                        th = th;
                        Log.e(TAG, th.toString());
                    }
                } else {
                    throw new UnSupportedApiVersionException();
                }
            }
        } catch (Throwable th2) {
            th = th2;
            Log.e(TAG, th.toString());
        }
    }

    public void sendMultipartTextMessageWithEncodingType(Context context, String str, String str2, ArrayList<String> arrayList, int i, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) {
        try {
            if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                if (VersionUtils.isQ()) {
                    this.mMtkSmsManagerWrapper.sendMultipartTextMessageWithEncodingType(str, str2, arrayList, i, arrayList2, arrayList3);
                    return;
                }
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public void sendMultipartTextMessageWithExtraParams(Context context, String str, String str2, ArrayList<String> arrayList, Bundle bundle, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) {
        try {
            if (context.getPackageManager().hasSystemFeature("mtk.gemini.support")) {
                if (VersionUtils.isQ()) {
                    this.mMtkSmsManagerWrapper.sendMultipartTextMessageWithExtraParams(str, str2, arrayList, bundle, arrayList2, arrayList3);
                    return;
                }
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
