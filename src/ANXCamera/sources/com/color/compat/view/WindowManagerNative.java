package com.color.compat.view;

import android.graphics.Region;
import android.util.Log;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.color.inner.view.WindowManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.lang.reflect.Field;

public class WindowManagerNative {
    private static final String TAG = "WindowManagerNative";

    public static class LayoutParamsNative {
        public static int DEFAULT_STATUS_BAR;
        public static int DISABLE_STATUS_BAR;
        public static int ENABLE_STATUS_BAR;
        public static int IGNORE_HOME_KEY;
        public static int IGNORE_HOME_MENU_KEY;
        public static int IGNORE_MENU_KEY;
        public static int UNSET_ANY_KEY;

        static {
            try {
                if (VersionUtils.isQ()) {
                    UNSET_ANY_KEY = 0;
                    IGNORE_HOME_MENU_KEY = 1;
                    IGNORE_HOME_KEY = 2;
                    IGNORE_MENU_KEY = 3;
                    DEFAULT_STATUS_BAR = 0;
                    DISABLE_STATUS_BAR = 1;
                    ENABLE_STATUS_BAR = 2;
                } else if (VersionUtils.isP()) {
                    UNSET_ANY_KEY = getLayoutParamsConstField("UNSET_ANY_KEY").getInt((Object) null);
                    IGNORE_HOME_MENU_KEY = getLayoutParamsConstField("IGNORE_HOME_MENU_KEY").getInt((Object) null);
                    IGNORE_HOME_KEY = getLayoutParamsConstField("IGNORE_HOME_KEY").getInt((Object) null);
                    IGNORE_MENU_KEY = getLayoutParamsConstField("IGNORE_MENU_KEY").getInt((Object) null);
                    DEFAULT_STATUS_BAR = getLayoutParamsConstField("DEFAULT_STATUS_BAR").getInt((Object) null);
                    DISABLE_STATUS_BAR = getLayoutParamsConstField("DISABLE_STATUS_BAR").getInt((Object) null);
                    ENABLE_STATUS_BAR = getLayoutParamsConstField("ENABLE_STATUS_BAR").getInt((Object) null);
                } else if (VersionUtils.isN()) {
                    IGNORE_HOME_MENU_KEY = getLayoutParamsConstField("IGNORE_HOME_MENU_KEY").getInt((Object) null);
                } else if (VersionUtils.isL()) {
                    DISABLE_STATUS_BAR = getLayoutParamsConstField("DISABLE_STATUS_BAR").getInt((Object) null);
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
            }
        }

        private LayoutParamsNative() {
        }

        public static int getHomeAndMenuKeyState(WindowManager.LayoutParams layoutParams) {
            try {
                if (VersionUtils.isQ()) {
                    return WindowManagerWrapper.LayoutParamsWrapper.getHomeAndMenuKeyState(layoutParams);
                }
                if (VersionUtils.isP()) {
                    return getIgnoreHomeMenuKeyField(layoutParams).getInt(layoutParams);
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
                return -1;
            }
        }

        private static Field getIgnoreHomeMenuKeyField(WindowManager.LayoutParams layoutParams) throws NoSuchFieldException {
            return layoutParams.getClass().getDeclaredField("ignoreHomeMenuKey");
        }

        private static Field getIsDisableStatusBarField(WindowManager.LayoutParams layoutParams) throws NoSuchFieldException {
            return layoutParams.getClass().getDeclaredField("isDisableStatusBar");
        }

        private static Field getLayoutParamsConstField(String str) throws NoSuchFieldException {
            return WindowManager.LayoutParams.class.getDeclaredField(str);
        }

        public static int getStatusBarStateByWindowManager(WindowManager.LayoutParams layoutParams) {
            try {
                if (VersionUtils.isQ()) {
                    return WindowManagerWrapper.LayoutParamsWrapper.getStatusBarStateByWindowManager(layoutParams);
                }
                if (VersionUtils.isL()) {
                    return getIsDisableStatusBarField(layoutParams).getInt(layoutParams);
                }
                throw new UnSupportedApiVersionException();
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
                return -1;
            }
        }

        public static void setHomeAndMenuKeyState(WindowManager.LayoutParams layoutParams, int i) {
            try {
                if (VersionUtils.isQ()) {
                    WindowManagerWrapper.LayoutParamsWrapper.setHomeAndMenuKeyState(layoutParams, i);
                } else if (VersionUtils.isN()) {
                    getIgnoreHomeMenuKeyField(layoutParams).setInt(layoutParams, i);
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
            }
        }

        public static void setStatusBarStateByWindowManager(WindowManager.LayoutParams layoutParams, int i) {
            try {
                if (VersionUtils.isQ()) {
                    WindowManagerWrapper.LayoutParamsWrapper.setStatusBarStateByWindowManager(layoutParams, i);
                } else if (VersionUtils.isP()) {
                    getIsDisableStatusBarField(layoutParams).setInt(layoutParams, i);
                } else {
                    throw new UnSupportedApiVersionException();
                }
            } catch (Throwable th) {
                Log.e(WindowManagerNative.TAG, th.toString());
            }
        }
    }

    private WindowManagerNative() {
    }

    public static int getBaseDisplayDensity(int i) {
        try {
            if (VersionUtils.isQ()) {
                return WindowManagerWrapper.getBaseDisplayDensity(i);
            }
            if (VersionUtils.isP()) {
                return WindowManagerGlobal.getWindowManagerService().getBaseDisplayDensity(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static Region getCurrentImeTouchRegion() {
        try {
            return WindowManagerWrapper.getCurrentImeTouchRegion();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public static int getDockedStackSide() {
        try {
            if (VersionUtils.isQ()) {
                return WindowManagerWrapper.getDockedStackSide();
            }
            if (VersionUtils.isN_MR1()) {
                return WindowManagerGlobal.getWindowManagerService().getDockedStackSide();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getInitialDisplayDensity(int i) {
        try {
            if (VersionUtils.isQ()) {
                return WindowManagerWrapper.getInitialDisplayDensity(i);
            }
            if (VersionUtils.isL()) {
                return WindowManagerGlobal.getWindowManagerService().getInitialDisplayDensity(i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static boolean hasNavigationBar(int i) {
        try {
            if (VersionUtils.isQ()) {
                return WindowManagerWrapper.hasNavigationBar(i);
            }
            if (VersionUtils.isN()) {
                return ((Boolean) IWindowManager.class.getDeclaredMethod("hasNavigationBar", new Class[0]).invoke(WindowManagerGlobal.getWindowManagerService(), new Object[0])).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean injectInputAfterTransactionsApplied(InputEvent inputEvent, int i) {
        try {
            return WindowManagerWrapper.injectInputAfterTransactionsApplied(inputEvent, i);
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return false;
        }
    }
}
