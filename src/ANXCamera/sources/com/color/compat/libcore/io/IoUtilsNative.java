package com.color.compat.libcore.io;

import android.util.Log;
import com.color.inner.libcore.io.IoUtilsWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.FileDescriptor;
import java.net.Socket;
import libcore.io.IoUtils;

public class IoUtilsNative {
    private static final String TAG = "IoUtilsNative";

    private IoUtilsNative() {
    }

    public static void closeQuietly(FileDescriptor fileDescriptor) {
        try {
            IoUtilsWrapper.closeQuietly(fileDescriptor);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void closeQuietly(AutoCloseable autoCloseable) {
        try {
            if (VersionUtils.isQ()) {
                IoUtilsWrapper.closeQuietly(autoCloseable);
            } else if (VersionUtils.isN()) {
                IoUtils.closeQuietly(autoCloseable);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void closeQuietly(Socket socket) {
        try {
            IoUtilsWrapper.closeQuietly(socket);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
