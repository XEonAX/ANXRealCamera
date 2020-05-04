package com.color.compat.app.usage;

import android.app.usage.StorageStats;
import android.app.usage.StorageStatsManager;
import android.os.UserHandle;
import android.util.Log;
import com.color.inner.app.usage.StorageStatsManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.UUID;

public class StorageStatsManagerNative {
    private static final String TAG = "StorageStatsManagerNative";

    private StorageStatsManagerNative() {
    }

    public static StorageStats queryStatsForPackage(StorageStatsManager storageStatsManager, UUID uuid, String str, UserHandle userHandle) {
        try {
            if (VersionUtils.isQ()) {
                return StorageStatsManagerWrapper.queryStatsForPackage(storageStatsManager, uuid, str, userHandle);
            }
            if (VersionUtils.isO_MR1()) {
                return storageStatsManager.queryStatsForPackage(uuid, str, userHandle);
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}
