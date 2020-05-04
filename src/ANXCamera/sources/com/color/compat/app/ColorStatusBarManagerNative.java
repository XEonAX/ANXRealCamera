package com.color.compat.app;

import android.app.ColorStatusBarManager;
import android.content.Context;
import android.util.Log;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class ColorStatusBarManagerNative {
    private static final String TAG = "ColorStatusBarManagerNative";
    public static int TOGGLE_SPLIT_SCREEN_FROM_MENU = 2;
    public static int TOGGLE_SPLIT_SCREEN_FROM_NONE = -1;
    public static int TOGGLE_SPLIT_SCREEN_FROM_RECENT = 3;
    public static int TOGGLE_SPLIT_SCREEN_FROM_SERVICE = 1;
    private ColorStatusBarManager mColorStatusBarManager;
    private Object mStatusBarManager;

    static {
        try {
            if (VersionUtils.isQ()) {
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public ColorStatusBarManagerNative(Context context) {
        try {
            if (VersionUtils.isQ()) {
                this.mColorStatusBarManager = new ColorStatusBarManager();
            } else if (VersionUtils.isO_MR1()) {
                this.mStatusBarManager = context.getSystemService("statusbar");
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean getTopIsFullscreen() {
        try {
            if (!VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mColorStatusBarManager != null) {
                return this.mColorStatusBarManager.getTopIsFullscreen();
            } else {
                return false;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public void notifyClickTop() {
        try {
            if (!VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mColorStatusBarManager != null) {
                this.mColorStatusBarManager.notifyClickTop();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean setStatusBarFunction(int i) {
        try {
            if (VersionUtils.isQ()) {
                if (this.mColorStatusBarManager != null) {
                    return this.mColorStatusBarManager.setStatusBarFunction(i, (String) null);
                }
            } else if (!VersionUtils.isO_MR1()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mStatusBarManager != null) {
                return ((Boolean) this.mStatusBarManager.getClass().getMethod("setStatusBarFunction", new Class[]{Integer.TYPE}).invoke(this.mStatusBarManager, new Object[]{Integer.valueOf(i)})).booleanValue();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return false;
    }

    public void toggleSplitScreen(int i) {
        try {
            if (!VersionUtils.isQ()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mColorStatusBarManager != null) {
                this.mColorStatusBarManager.toggleSplitScreen(i);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
