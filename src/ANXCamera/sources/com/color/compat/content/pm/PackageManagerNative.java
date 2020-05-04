package com.color.compat.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.util.Log;
import com.color.inner.content.pm.PackageManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.List;

public class PackageManagerNative {
    public static int COLOR_STATE_FREEZE_FREEZED = 2;
    public static int COLOR_UNFREEZE_FLAG_NORMAL = 1;
    public static int FLAG_PERMISSION_REVIEW_REQUIRED = 64;
    public static int INSTALL_FAILED_INVALID_URI = -3;
    public static int INSTALL_REPLACE_EXISTING = 0;
    private static final String TAG = "PackageManagerNative";

    public interface IPackageDataObserverNative {
        void onRemoveCompleted(String str, boolean z);
    }

    public interface IPackageDeleteObserverNative {
        void packageDeleted(String str, int i);
    }

    public interface IPackageStatsObserverNative {
        void onGetStatsCompleted(PackageStats packageStats, boolean z);
    }

    static {
        try {
            if (VersionUtils.isQ()) {
                INSTALL_REPLACE_EXISTING = 2;
            } else if (VersionUtils.isL()) {
                INSTALL_REPLACE_EXISTING = 2;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private PackageManagerNative() {
    }

    public static void clearCachedIconForActivity(PackageManager packageManager, ComponentName componentName) {
        try {
            PackageManagerWrapper.clearCachedIconForActivity(packageManager, componentName);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void deleteApplicationCacheFiles(Context context, String str, final IPackageDataObserverNative iPackageDataObserverNative) {
        try {
            PackageManagerWrapper.deleteApplicationCacheFiles(context, str, iPackageDataObserverNative != null ? new PackageManagerWrapper.IPackageDataObserverWrapper() {
                public void onRemoveCompleted(String str, boolean z) {
                    iPackageDataObserverNative.onRemoveCompleted(str, z);
                }
            } : null);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void deleteApplicationCacheFilesAsUser(Context context, String str, int i, final IPackageDataObserverNative iPackageDataObserverNative) {
        try {
            PackageManagerWrapper.deleteApplicationCacheFilesAsUser(context, str, i, iPackageDataObserverNative != null ? new PackageManagerWrapper.IPackageDataObserverWrapper() {
                public void onRemoveCompleted(String str, boolean z) {
                    iPackageDataObserverNative.onRemoveCompleted(str, z);
                }
            } : null);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static void deletePackage(Context context, String str, final IPackageDeleteObserverNative iPackageDeleteObserverNative, int i) {
        AnonymousClass2 r0 = null;
        if (iPackageDeleteObserverNative != null) {
            try {
                r0 = new PackageManagerWrapper.IPackageDeleteObserverWrapper() {
                    public void packageDeleted(String str, int i) {
                        iPackageDeleteObserverNative.packageDeleted(str, i);
                    }
                };
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return;
            }
        }
        PackageManagerWrapper.deletePackage(context, str, r0, i);
    }

    public static void deletePackageAsUser(Context context, String str, final IPackageDeleteObserverNative iPackageDeleteObserverNative, int i, int i2) {
        AnonymousClass1 r0 = null;
        if (iPackageDeleteObserverNative != null) {
            try {
                r0 = new PackageManagerWrapper.IPackageDeleteObserverWrapper() {
                    public void packageDeleted(String str, int i) {
                        iPackageDeleteObserverNative.packageDeleted(str, i);
                    }
                };
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
                return;
            }
        }
        PackageManagerWrapper.deletePackageAsUser(context, str, r0, i, i2);
    }

    public static ComponentName getHomeActivities(PackageManager packageManager, List<ResolveInfo> list) {
        try {
            return PackageManagerWrapper.getHomeActivities(packageManager, list);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static List<ApplicationInfo> getInstalledApplicationsAsUser(PackageManager packageManager, int i, int i2) {
        return PackageManagerWrapper.getInstalledApplicationsAsUser(packageManager, i, i2);
    }

    public static Drawable getUxIconDrawable(PackageManager packageManager, Drawable drawable, boolean z) {
        try {
            return PackageManagerWrapper.getUxIconDrawable(packageManager, drawable, z);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static Drawable getUxIconDrawable(PackageManager packageManager, String str, Drawable drawable, boolean z) {
        try {
            return PackageManagerWrapper.getUxIconDrawable(packageManager, str, drawable, z);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return drawable;
        }
    }

    public static void grantRuntimePermission(PackageManager packageManager, String str, String str2, UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                PackageManagerWrapper.grantRuntimePermission(packageManager, str, str2, userHandle);
            } else if (VersionUtils.isM()) {
                packageManager.grantRuntimePermission(str, str2, userHandle);
            } else {
                throw new UnsupportedOperationException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static int installExistingPackageAsUser(String str, int i, int i2) {
        try {
            return PackageManagerWrapper.installExistingPackageAsUser(str, i, i2);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return INSTALL_FAILED_INVALID_URI;
        }
    }
}
