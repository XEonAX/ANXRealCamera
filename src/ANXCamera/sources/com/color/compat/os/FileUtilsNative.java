package com.color.compat.os;

import android.os.FileUtils;
import android.util.Log;
import com.color.inner.os.FileUtilsWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.File;
import java.io.FileDescriptor;

public class FileUtilsNative {
    private static final String TAG = "FileUtilsNative";

    private FileUtilsNative() {
    }

    public static boolean copyFile(File file, File file2) {
        try {
            return FileUtilsWrapper.copyFile(file, file2);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void copyFileOrThrow(File file, File file2) {
        try {
            if (VersionUtils.isQ()) {
                FileUtilsWrapper.copyFileOrThrow(file, file2);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static String readTextFile(File file, int i, String str) {
        try {
            if (VersionUtils.isQ()) {
                return FileUtilsWrapper.readTextFile(file, i, str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return "";
        }
    }

    public static int setPermissions(File file, int i, int i2, int i3) {
        try {
            if (VersionUtils.isQ()) {
                return FileUtilsWrapper.setPermissions(file, i, i2, i3);
            }
            if (VersionUtils.isL()) {
                return FileUtils.setPermissions(file, i, i2, i3);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int setPermissions(FileDescriptor fileDescriptor, int i, int i2, int i3) {
        try {
            if (VersionUtils.isQ()) {
                return FileUtilsWrapper.setPermissions(fileDescriptor, i, i2, i3);
            }
            if (VersionUtils.isL()) {
                return FileUtils.setPermissions(fileDescriptor, i, i2, i3);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int setPermissions(String str, int i, int i2, int i3) {
        try {
            if (VersionUtils.isQ()) {
                return FileUtilsWrapper.setPermissions(str, i, i2, i3);
            }
            if (VersionUtils.isL()) {
                return FileUtils.setPermissions(str, i, i2, i3);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }
}
