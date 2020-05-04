package com.color.compat.view.inputmethod;

import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.color.inner.view.inputmethod.InputMethodManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class InputMethodManagerNative {
    private static final String TAG = "InputMethodManagerNative";

    private InputMethodManagerNative() {
    }

    public static int getInputMethodWindowVisibleHeight(InputMethodManager inputMethodManager) {
        try {
            if (VersionUtils.isQ()) {
                return InputMethodManagerWrapper.getInputMethodWindowVisibleHeight(inputMethodManager);
            }
            if (VersionUtils.isN()) {
                return inputMethodManager.getInputMethodWindowVisibleHeight();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }
}
