package com.color.compat.view;

import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.IOppoWindowManagerImpl;
import android.view.IOppoWindowStateObserver;
import android.view.OppoWindowManager;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class OppoWindowManagerNative {
    private static String TAG = "OppoWindowManagerNative";
    private IOppoWindowManagerImpl mIOppoWindowManager;
    private OppoWindowManager mOppoWindowManager;

    public OppoWindowManagerNative() {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager = new OppoWindowManager();
            } else if (VersionUtils.isN_MR1()) {
                this.mIOppoWindowManager = new IOppoWindowManagerImpl();
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public String getCurrentFocus() {
        try {
            if (VersionUtils.isQ()) {
                return this.mOppoWindowManager.getCurrentFocus();
            }
            if (VersionUtils.isN_MR1()) {
                return this.mIOppoWindowManager.getCurrentFocus();
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return "";
        }
    }

    public Rect getFloatWindowRect(int i) {
        try {
            if (VersionUtils.isQ()) {
                return this.mOppoWindowManager.getFloatWindowRect(i);
            }
            if (VersionUtils.isN_MR1()) {
                return this.mIOppoWindowManager.getFloatWindowRect(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public int getFocusedWindowIgnoreHomeMenuKey() {
        try {
            if (VersionUtils.isQ()) {
                return this.mOppoWindowManager.getFocusedWindowIgnoreHomeMenuKey();
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public boolean isInputShow() {
        try {
            if (VersionUtils.isQ()) {
                return this.mOppoWindowManager.isInputShow();
            }
            if (VersionUtils.isN_MR1()) {
                return this.mIOppoWindowManager.isInputShow();
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public void registerOppoWindowStateObserver(IOppoWindowStateObserver iOppoWindowStateObserver) {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager.registerOppoWindowStateObserver(iOppoWindowStateObserver);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public void requestKeyguard(String str) {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager.requestKeyguard(str);
            } else if (VersionUtils.isN_MR1()) {
                this.mIOppoWindowManager.requestKeyguard(str);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public void setMagnification(Bundle bundle) {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager.setMagnification(bundle);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public void startColorDragWindow(String str, int i, int i2, Bundle bundle) {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager.startColorDragWindow(str, i, i2, bundle);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public void unregisterOppoWindowStateObserver(IOppoWindowStateObserver iOppoWindowStateObserver) {
        try {
            if (VersionUtils.isQ()) {
                this.mOppoWindowManager.unregisterOppoWindowStateObserver(iOppoWindowStateObserver);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}
