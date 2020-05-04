package com.color.compat.os;

import android.util.Log;
import com.color.inner.os.TraceWrapper;

public class TraceNative {
    private static final String TAG = "TraceNative";
    public static long TRACE_TAG_GRAPHICS = 2;

    private TraceNative() {
    }

    public static void asyncTraceBegin(long j, String str, int i) {
        try {
            TraceWrapper.asyncTraceBegin(j, str, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void asyncTraceEnd(long j, String str, int i) {
        try {
            TraceWrapper.asyncTraceEnd(j, str, i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void traceBegin(long j, String str) {
        try {
            TraceWrapper.traceBegin(j, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void traceEnd(long j) {
        try {
            TraceWrapper.traceEnd(j);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
