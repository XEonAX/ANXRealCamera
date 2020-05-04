package com.color.compat.internal.policy;

import android.content.Context;
import android.util.Log;
import android.view.Window;
import com.android.internal.policy.PhoneWindow;
import com.color.inner.internal.policy.PhoneWindowWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class PhoneWindowNative {
    private static final String TAG = "PhoneWindowNative";
    private PhoneWindow mWindow;
    private PhoneWindowWrapper mWindowWrapper;

    public PhoneWindowNative(Context context) {
        try {
            if (VersionUtils.isQ()) {
                this.mWindowWrapper = new PhoneWindowWrapper(context);
            } else if (VersionUtils.isN()) {
                this.mWindow = new PhoneWindow(context);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public Window getWindow() {
        try {
            if (VersionUtils.isQ()) {
                return this.mWindowWrapper.getWindow();
            }
            if (VersionUtils.isN()) {
                return this.mWindow;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
