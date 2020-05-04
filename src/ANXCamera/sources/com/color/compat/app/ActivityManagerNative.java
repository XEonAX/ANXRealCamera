package com.color.compat.app;

import android.app.ActivityManager;
import android.content.pm.IPackageDataObserver;
import android.content.res.Configuration;
import android.os.RemoteException;
import android.util.Log;
import com.color.inner.app.ActivityManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.HashMap;

public class ActivityManagerNative {
    private static final String TAG = "ActivityManagerNative";
    private static HashMap<IProcessObserverNative, ActivityManagerWrapper.IProcessObserverWrapper> mIProcessObserverMap = new HashMap<>();

    public interface IPackageDataObserverNative {
        void onRemoveCompleted(String str, boolean z);
    }

    public interface IProcessObserverNative {
        void onForegroundActivitiesChanged(int i, int i2, boolean z);

        void onForegroundServicesChanged(int i, int i2, int i3);

        void onProcessDied(int i, int i2);
    }

    private static class PackageDataObserver extends IPackageDataObserver.Stub {
        private IPackageDataObserverNative mObserverNative;

        public PackageDataObserver(IPackageDataObserverNative iPackageDataObserverNative) {
            this.mObserverNative = iPackageDataObserverNative;
        }

        public void onRemoveCompleted(String str, boolean z) throws RemoteException {
            IPackageDataObserverNative iPackageDataObserverNative = this.mObserverNative;
            if (iPackageDataObserverNative != null) {
                iPackageDataObserverNative.onRemoveCompleted(str, z);
            }
        }
    }

    private ActivityManagerNative() {
    }

    private static boolean clearAfterQ(ActivityManager activityManager, String str, final IPackageDataObserverNative iPackageDataObserverNative) {
        return ActivityManagerWrapper.clearApplicationUserData(activityManager, str, iPackageDataObserverNative != null ? new ActivityManagerWrapper.IPackageDataObserverWrapper() {
            public void onRemoveCompleted(String str, boolean z) {
                iPackageDataObserverNative.onRemoveCompleted(str, z);
            }
        } : null);
    }

    private static boolean clearAfterQ(String str, boolean z, final IPackageDataObserverNative iPackageDataObserverNative, int i) {
        return ActivityManagerWrapper.clearApplicationUserData(str, z, iPackageDataObserverNative != null ? new ActivityManagerWrapper.IPackageDataObserverWrapper() {
            public void onRemoveCompleted(String str, boolean z) {
                iPackageDataObserverNative.onRemoveCompleted(str, z);
            }
        } : null, i);
    }

    public static boolean clearApplicationUserData(ActivityManager activityManager, String str, IPackageDataObserverNative iPackageDataObserverNative) {
        try {
            if (VersionUtils.isQ()) {
                return clearAfterQ(activityManager, str, iPackageDataObserverNative);
            }
            if (VersionUtils.isL_MR1()) {
                return clearBeforeQ(activityManager, str, iPackageDataObserverNative);
            }
            throw new UnsupportedOperationException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean clearApplicationUserData(String str, boolean z, IPackageDataObserverNative iPackageDataObserverNative, int i) {
        try {
            if (VersionUtils.isQ()) {
                return clearAfterQ(str, z, iPackageDataObserverNative, i);
            }
            if (VersionUtils.isL_MR1()) {
                return clearBeforeQ(str, z, iPackageDataObserverNative, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    private static boolean clearBeforeQ(ActivityManager activityManager, String str, IPackageDataObserverNative iPackageDataObserverNative) throws Exception {
        return activityManager.clearApplicationUserData(str, new PackageDataObserver(iPackageDataObserverNative));
    }

    private static boolean clearBeforeQ(String str, boolean z, IPackageDataObserverNative iPackageDataObserverNative, int i) throws RemoteException {
        return ActivityManager.getService().clearApplicationUserData(str, z, new PackageDataObserver(iPackageDataObserverNative), i);
    }

    public static void forceStopPackage(ActivityManager activityManager, String str) {
        try {
            ActivityManagerWrapper.forceStopPackage(activityManager, str);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static Configuration getConfiguration() {
        try {
            return ActivityManagerWrapper.getConfiguration();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getCurrentUser() {
        return ActivityManagerWrapper.getCurrentUser();
    }

    public static long[] getProcessPss(int[] iArr) {
        try {
            return ActivityManagerWrapper.getProcessPss(iArr);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void registerProcessObserver(final IProcessObserverNative iProcessObserverNative) {
        if (iProcessObserverNative != null) {
            try {
                if (mIProcessObserverMap.get(iProcessObserverNative) != null) {
                    unregisterProcessObserver(iProcessObserverNative);
                }
                AnonymousClass3 r0 = new ActivityManagerWrapper.IProcessObserverWrapper() {
                    public void onForegroundActivitiesChanged(int i, int i2, boolean z) {
                        iProcessObserverNative.onForegroundActivitiesChanged(i, i2, z);
                    }

                    public void onForegroundServicesChanged(int i, int i2, int i3) {
                        iProcessObserverNative.onForegroundServicesChanged(i, i2, i3);
                    }

                    public void onProcessDied(int i, int i2) {
                        iProcessObserverNative.onProcessDied(i, i2);
                    }
                };
                ActivityManagerWrapper.registerProcessObserver(r0);
                mIProcessObserverMap.put(iProcessObserverNative, r0);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    public static boolean removeTask(int i) {
        try {
            return ActivityManagerWrapper.removeTask(i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static void resumeAppSwitches() {
        try {
            ActivityManagerWrapper.resumeAppSwitches();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void setProcessLimit(int i) {
        try {
            ActivityManagerWrapper.setProcessLimit(i);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void unregisterProcessObserver(IProcessObserverNative iProcessObserverNative) {
        if (iProcessObserverNative != null) {
            try {
                if (mIProcessObserverMap.get(iProcessObserverNative) != null) {
                    ActivityManagerWrapper.unregisterProcessObserver(mIProcessObserverMap.get(iProcessObserverNative));
                    mIProcessObserverMap.remove(iProcessObserverNative);
                }
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    public static boolean updateConfiguration(Configuration configuration) {
        try {
            return ActivityManagerWrapper.updateConfiguration(configuration);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
