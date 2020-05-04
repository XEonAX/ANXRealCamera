package com.color.compat.ims;

import android.content.Context;
import android.util.Log;
import com.android.ims.ImsManager;
import com.color.inner.ims.ImsManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ImsManagerNative {
    private static final String TAG = "ImsManagerNative";
    private ImsManager mImsManager = null;
    private ImsManagerWrapper mImsManagerWrapper = null;

    public ImsManagerNative(Context context, int i) {
        try {
            if (VersionUtils.isQ()) {
                this.mImsManagerWrapper = new ImsManagerWrapper(context, i);
            } else if (VersionUtils.isN()) {
                this.mImsManager = new ImsManager(context, i);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, "ImsManagerNative, " + th.toString());
        }
    }

    private ImsManagerNative(ImsManager imsManager) {
        this.mImsManager = imsManager;
    }

    private ImsManagerNative(ImsManagerWrapper imsManagerWrapper) {
        this.mImsManagerWrapper = imsManagerWrapper;
    }

    private Method getImsMethod(String str, Class<?>... clsArr) {
        return getMethod(ImsManager.class, str, clsArr);
    }

    public static ImsManagerNative getInstance(Context context, int i) {
        try {
            if (VersionUtils.isQ()) {
                return new ImsManagerNative(ImsManagerWrapper.getInstance(context, i));
            }
            if (VersionUtils.isN()) {
                return new ImsManagerNative(ImsManager.getInstance(context, i));
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "getInstance, " + th.toString());
            return null;
        }
    }

    private static Method getMethod(Class cls, String str, Class<?>... clsArr) {
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getMethod" + str, e);
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "getMethod" + str, e2);
            return null;
        }
    }

    private static Object invoke(Object obj, Method method, Object... objArr) {
        try {
            Object invoke = method.invoke(obj, objArr);
            if (invoke != null) {
                return invoke;
            }
            return null;
        } catch (IllegalAccessException e) {
            Log.e(TAG, "", e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.e(TAG, "", e2);
            return null;
        } catch (Exception e3) {
            Log.e(TAG, "", e3);
            return null;
        }
    }

    public boolean isEnhanced4gLteModeSettingEnabledByUser() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isEnhanced4gLteModeSettingEnabledByUser();
            }
            if (VersionUtils.isN()) {
                Object invoke = invoke(this.mImsManager, VersionUtils.isP() ? getImsMethod("isEnhanced4gLteModeSettingEnabledByUser", new Class[0]) : getImsMethod("isEnhanced4gLteModeSettingEnabledByUserForSlot", new Class[0]), new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isEnhanced4gLteModeSettingEnabledByUser, " + th.toString());
            return false;
        }
    }

    public boolean isVolteEnabledByPlatform() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isVolteEnabledByPlatform();
            }
            if (VersionUtils.isN()) {
                Object invoke = invoke(this.mImsManager, VersionUtils.isP() ? getImsMethod("isVolteEnabledByPlatform", new Class[0]) : getImsMethod("isVolteEnabledByPlatformForSlot", new Class[0]), new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isVolteEnabledByPlatform, " + th.toString());
            return false;
        }
    }

    public boolean isVtEnabledByPlatform() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isVtEnabledByPlatform();
            }
            if (VersionUtils.isN()) {
                Object invoke = invoke(this.mImsManager, VersionUtils.isP() ? getImsMethod("isVtEnabledByPlatform", new Class[0]) : getImsMethod("isVtEnabledByPlatformForSlot", new Class[0]), new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isVtEnabledByPlatform, " + th.toString());
            return false;
        }
    }

    public boolean isVtEnabledByUser() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isVtEnabledByUser();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isVtEnabledByUser, " + th.toString());
            return false;
        }
    }

    public boolean isWfcEnabledByPlatform() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isWfcEnabledByPlatform();
            }
            if (VersionUtils.isN()) {
                Object invoke = invoke(this.mImsManager, VersionUtils.isP() ? getImsMethod("isWfcEnabledByPlatform", new Class[0]) : getImsMethod("isWfcEnabledByPlatformForSlot", new Class[0]), new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isWfcEnabledByPlatform, " + th.toString());
            return false;
        }
    }

    public boolean isWfcEnabledByUser() {
        try {
            if (VersionUtils.isQ()) {
                return this.mImsManagerWrapper.isWfcEnabledByUser();
            }
            if (VersionUtils.isN()) {
                Object invoke = invoke(this.mImsManager, VersionUtils.isP() ? getImsMethod("isWfcEnabledByUser", new Class[0]) : getImsMethod("isWfcEnabledByUserForSlot", new Class[0]), new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, "isWfcEnabledByUser, " + th.toString());
            return false;
        }
    }

    public void setEnhanced4gLteModeSetting(boolean z) {
        Method method;
        try {
            if (VersionUtils.isQ()) {
                this.mImsManagerWrapper.setEnhanced4gLteModeSetting(z);
            } else if (VersionUtils.isN()) {
                if (VersionUtils.isP()) {
                    method = getImsMethod("setEnhanced4gLteModeSetting", Boolean.TYPE);
                } else {
                    method = getImsMethod("setEnhanced4gLteModeSettingForSlot", Boolean.TYPE);
                }
                invoke(this.mImsManager, method, new Object[0]);
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, "setEnhanced4gLteModeSetting, " + th.toString());
        }
    }
}
