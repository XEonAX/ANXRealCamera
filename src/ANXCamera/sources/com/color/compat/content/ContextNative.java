package com.color.compat.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.Display;
import com.color.inner.content.ContextWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.File;

public class ContextNative {
    public static String STATUS_BAR_SERVICE = null;
    private static final String TAG = "ContextNative";

    static {
        try {
            if (VersionUtils.isQ()) {
                STATUS_BAR_SERVICE = "statusbar";
            } else if (VersionUtils.isN_MR1()) {
                STATUS_BAR_SERVICE = "statusbar";
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private ContextNative() {
    }

    public static Context createCredentialProtectedStorageContext(Context context) {
        try {
            if (VersionUtils.isQ()) {
                return ContextWrapper.createCredentialProtectedStorageContext(context);
            }
            if (VersionUtils.isN()) {
                return context.createCredentialProtectedStorageContext();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static Display getDisplay(Context context) {
        try {
            if (VersionUtils.isQ()) {
                return ContextWrapper.getDisplay(context);
            }
            if (VersionUtils.isN()) {
                return context.getDisplay();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static File getSharedPreferencesPath(Context context, String str) {
        try {
            if (VersionUtils.isQ()) {
                return ContextWrapper.getSharedPreferencesPath(context, str);
            }
            if (VersionUtils.isN_MR1()) {
                return context.getSharedPreferencesPath(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void startActivityAsUser(Context context, Intent intent, Bundle bundle, UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                ContextWrapper.startActivityAsUser(context, intent, bundle, userHandle);
            } else if (VersionUtils.isL()) {
                context.startActivityAsUser(intent, bundle, userHandle);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void startActivityAsUser(Context context, Intent intent, UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                ContextWrapper.startActivityAsUser(context, intent, userHandle);
            } else if (VersionUtils.isL()) {
                context.startActivityAsUser(intent, userHandle);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
