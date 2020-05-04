package com.color.compat.mediatek.telephony;

import android.util.Log;
import com.color.inner.mediatek.telephony.MtkIccSmsStorageStatusWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.lang.reflect.InvocationTargetException;

public class MtkIccSmsStorageStatusNative {
    private static final int INVALID_RESULT = -1;
    private static final String TAG = "MtkIccSmsStorageStatusNative";
    private Object mMtkIccSmsStorageStatusObj;
    private MtkIccSmsStorageStatusWrapper mMtkIccSmsStorageStatusWrapper;

    MtkIccSmsStorageStatusNative(MtkIccSmsStorageStatusWrapper mtkIccSmsStorageStatusWrapper) {
        try {
            if (VersionUtils.isQ()) {
                this.mMtkIccSmsStorageStatusWrapper = mtkIccSmsStorageStatusWrapper;
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    MtkIccSmsStorageStatusNative(Object obj) {
        try {
            if (VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (VersionUtils.isO_MR1()) {
                this.mMtkIccSmsStorageStatusObj = obj;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public int getTotalCount() {
        try {
            if (VersionUtils.isQ()) {
                return this.mMtkIccSmsStorageStatusWrapper.getTotalCount();
            }
            if (VersionUtils.isO_MR1()) {
                try {
                    return ((Integer) Class.forName("com.mediatek.internal.telephony.MtkIccSmsStorageStatus").getDeclaredMethod("getTotalCount", new Class[0]).invoke(this.mMtkIccSmsStorageStatusObj, new Object[0])).intValue();
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    e.printStackTrace();
                    return -1;
                }
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public int getUsedCount() {
        try {
            if (VersionUtils.isQ()) {
                return this.mMtkIccSmsStorageStatusWrapper.getUsedCount();
            }
            if (VersionUtils.isO_MR1()) {
                try {
                    return ((Integer) Class.forName("com.mediatek.internal.telephony.MtkIccSmsStorageStatus").getDeclaredMethod("getUsedCount", new Class[0]).invoke(this.mMtkIccSmsStorageStatusObj, new Object[0])).intValue();
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    e.printStackTrace();
                    return -1;
                }
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }
}
