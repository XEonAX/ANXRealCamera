package com.color.compat.os.storage;

import android.os.storage.StorageVolume;
import android.util.Log;
import com.color.inner.os.storage.StorageVolumeWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class StorageVolumeNative {
    private static final String TAG = "StorageVolumeNative";

    private StorageVolumeNative() {
    }

    public static int getColorReadOnlyType(StorageVolume storageVolume) {
        try {
            if (VersionUtils.isQ()) {
                return StorageVolumeWrapper.getReadOnlyType(storageVolume);
            }
            if (VersionUtils.isP()) {
                return ((Integer) storageVolume.getClass().getDeclaredMethod("getReadOnlyType", new Class[0]).invoke(storageVolume, new Object[0])).intValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static int getFatVolumeId(StorageVolume storageVolume) {
        try {
            if (VersionUtils.isQ()) {
                return StorageVolumeWrapper.getFatVolumeId(storageVolume);
            }
            if (VersionUtils.isP()) {
                return storageVolume.getFatVolumeId();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static String getPath(StorageVolume storageVolume) {
        try {
            if (VersionUtils.isQ()) {
                return StorageVolumeWrapper.getPath(storageVolume);
            }
            if (VersionUtils.isL()) {
                return storageVolume.getPath();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
