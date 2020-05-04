package com.color.compat.os;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.color.inner.os.HandlerThreadWrapper;

public class HandlerThreadNative {
    private static final String TAG = "HandlerThreadNative";

    private HandlerThreadNative() {
    }

    public static Handler getThreadHandler(HandlerThread handlerThread) {
        try {
            return HandlerThreadWrapper.getThreadHandler(handlerThread);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
