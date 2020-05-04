package com.color.compat.telephony;

import android.os.Bundle;
import android.telephony.ServiceState;
import android.util.Log;
import com.color.inner.telephony.ServiceStateWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ServiceStateNative {
    private static final String TAG = "ServiceStateNative";

    private ServiceStateNative() {
    }

    public static int getDataRegState(ServiceState serviceState) {
        try {
            if (VersionUtils.isQ()) {
                return ServiceStateWrapper.getDataRegState(serviceState);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public static ServiceState newFromBundle(Bundle bundle) {
        try {
            if (VersionUtils.isQ()) {
                return ServiceStateWrapper.newFromBundle(bundle);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
