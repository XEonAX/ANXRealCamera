package com.color.compat.sun.nio.ch;

import android.util.Log;
import com.color.inner.sun.nio.ch.FileChannelImplWrapper;
import java.nio.MappedByteBuffer;

public class FileChannelImplNative {
    private static final String TAG = "FileChannelImplNative";

    private FileChannelImplNative() {
    }

    public static void unmap(MappedByteBuffer mappedByteBuffer) {
        try {
            FileChannelImplWrapper.unmap(mappedByteBuffer);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
