package com.color.compat.os;

import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Log;
import com.color.inner.os.ServiceManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ServiceManagerNative {
    private static final String TAG = "ServiceManagerNative";

    private ServiceManagerNative() {
    }

    public static void addService(String str, IBinder iBinder) {
        try {
            if (VersionUtils.isQ()) {
                ServiceManagerWrapper.addService(str, iBinder);
            } else if (VersionUtils.isP()) {
                ServiceManager.addService(str, iBinder);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static IBinder checkService(String str) {
        try {
            if (VersionUtils.isQ()) {
                return ServiceManagerWrapper.checkService(str);
            }
            if (VersionUtils.isP()) {
                return ServiceManager.checkService(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static IBinder getService(String str) {
        try {
            if (VersionUtils.isQ()) {
                return ServiceManagerWrapper.getService(str);
            }
            if (VersionUtils.isL()) {
                return ServiceManager.getService(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
