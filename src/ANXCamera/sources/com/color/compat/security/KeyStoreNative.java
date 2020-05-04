package com.color.compat.security;

import android.util.Log;
import com.color.inner.security.KeyStoreWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.lang.reflect.InvocationTargetException;

public class KeyStoreNative {
    private static final String TAG = "KeyStoreNative";

    private KeyStoreNative() {
    }

    public static byte[] getGateKeeperAuthToken() {
        try {
            if (VersionUtils.isQ()) {
                return KeyStoreWrapper.getGateKeeperAuthToken();
            }
            if (VersionUtils.isN()) {
                Class<?> cls = Class.forName("android.security.KeyStore");
                return (byte[]) cls.getDeclaredMethod("getGateKeeperAuthToken", new Class[0]).invoke(cls.getDeclaredMethod("getInstance", new Class[0]).invoke((Object) null, new Object[0]), new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (InvocationTargetException e) {
            Log.wtf(TAG, e);
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
