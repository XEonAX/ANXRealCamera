package com.color.compat.util;

import android.graphics.Path;
import android.util.Log;
import com.color.inner.util.PathParserWrapper;

public class PathParserNative {
    private static final String TAG = "PathParserNative";

    private PathParserNative() {
    }

    public static Path createPathFromPathData(String str) {
        try {
            return PathParserWrapper.createPathFromPathData(str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
