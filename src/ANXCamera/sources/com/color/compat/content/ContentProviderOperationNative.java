package com.color.compat.content;

import android.content.ContentProviderOperation;
import android.util.Log;
import com.color.inner.content.ContentProviderOperationWrapper;

public class ContentProviderOperationNative {
    private static final String TAG = "ContentProviderOperationNative";

    private ContentProviderOperationNative() {
    }

    public static int getType(ContentProviderOperation contentProviderOperation) {
        try {
            return ContentProviderOperationWrapper.getType(contentProviderOperation);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }
}
