package com.color.compat.widget;

import android.view.WindowManager;
import android.widget.Toast;
import com.color.inner.widget.ToastWrapper;

public class ToastNative {
    private ToastNative() {
    }

    public static WindowManager.LayoutParams getWindowParams(Toast toast) {
        return ToastWrapper.getWindowParams(toast);
    }
}
