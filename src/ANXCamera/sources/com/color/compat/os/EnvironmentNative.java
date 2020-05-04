package com.color.compat.os;

import android.os.Environment;
import android.util.Log;
import com.color.inner.os.EnvironmentWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.File;

public class EnvironmentNative {
    private static final String TAG = "EnvironmentNative";

    public static class UserEnvironmentNative {
        private Environment.UserEnvironment mUserEnvironment;
        private EnvironmentWrapper.UserEnvironmentWrapper mUserEnvironmentWrapper;

        public UserEnvironmentNative(int i) {
            try {
                if (VersionUtils.isQ()) {
                    this.mUserEnvironmentWrapper = new EnvironmentWrapper.UserEnvironmentWrapper(i);
                } else if (VersionUtils.isL()) {
                    this.mUserEnvironment = new Environment.UserEnvironment(i);
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(EnvironmentNative.TAG, th.toString());
            }
        }

        public File getExternalStorageDirectory() {
            try {
                if (VersionUtils.isQ()) {
                    return this.mUserEnvironmentWrapper.getExternalStorageDirectory();
                }
                if (VersionUtils.isL()) {
                    return this.mUserEnvironment.getExternalStorageDirectory();
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.w(EnvironmentNative.TAG, th.toString());
                return null;
            }
        }
    }

    private EnvironmentNative() {
    }

    public static File getOppoCustomDirectory() {
        try {
            if (VersionUtils.isQ()) {
                return (File) Environment.class.getDeclaredMethod("getOppoCustomDirectory", new Class[0]).invoke((Object) null, new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static File getOppoEngineerDirectory() {
        try {
            if (VersionUtils.isQ()) {
                return (File) Environment.class.getDeclaredMethod("getOppoEngineerDirectory", new Class[0]).invoke((Object) null, new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static File getOppoProductDirectory() {
        try {
            if (VersionUtils.isQ()) {
                return (File) Environment.class.getDeclaredMethod("getOppoProductDirectory", new Class[0]).invoke((Object) null, new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static File getOppoVersionDirectory() {
        try {
            if (VersionUtils.isQ()) {
                return (File) Environment.class.getDeclaredMethod("getOppoVersionDirectory", new Class[0]).invoke((Object) null, new Object[0]);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
