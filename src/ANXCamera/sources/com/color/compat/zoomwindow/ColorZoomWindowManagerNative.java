package com.color.compat.zoomwindow;

import android.util.Log;
import com.color.zoomwindow.ColorZoomWindowInfo;
import com.color.zoomwindow.ColorZoomWindowManager;

public class ColorZoomWindowManagerNative {
    private static final String TAG = "ColorZoomWindowManagerNative";
    private ColorZoomWindowManager mColorZoomWindowManager = null;

    private ColorZoomWindowManagerNative(ColorZoomWindowManager colorZoomWindowManager) {
        this.mColorZoomWindowManager = colorZoomWindowManager;
    }

    public static ColorZoomWindowManagerNative getInstance() {
        ColorZoomWindowManager colorZoomWindowManager;
        try {
            colorZoomWindowManager = ColorZoomWindowManager.getInstance();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            colorZoomWindowManager = null;
        }
        return new ColorZoomWindowManagerNative(colorZoomWindowManager);
    }

    public ColorZoomWindowInfo getCurrentZoomWindowState() {
        try {
            return this.mColorZoomWindowManager.getCurrentZoomWindowState();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
