package com.color.compat.os.storage;

import android.content.Context;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import com.color.inner.os.storage.StorageEventListenerWrapper;
import com.color.inner.os.storage.StorageManagerWrapper;
import com.color.inner.os.storage.VolumeInfoWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.io.File;
import java.util.HashMap;

public class StorageManagerNative {
    private static final String TAG = "StorageManagerNative";
    private static HashMap<StorageEventListenerNative, StorageEventListenerWrapper> mListenerMap = new HashMap<>();

    private StorageManagerNative() {
    }

    public static VolumeInfoNative getSDCardVolumeInfo() {
        try {
            VolumeInfoWrapper sDCardVolumeInfo = StorageManagerWrapper.getSDCardVolumeInfo();
            if (sDCardVolumeInfo != null) {
                return new VolumeInfoNative(sDCardVolumeInfo);
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static StorageVolume getStorageVolume(File file, int i) {
        try {
            if (VersionUtils.isQ()) {
                return StorageManagerWrapper.getStorageVolume(file, i);
            }
            if (VersionUtils.isN()) {
                return StorageManager.getStorageVolume(file, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static StorageVolume[] getVolumeList(int i, int i2) {
        try {
            if (VersionUtils.isQ()) {
                return StorageManagerWrapper.getVolumeList(i, i2);
            }
            if (VersionUtils.isM()) {
                return StorageManager.getVolumeList(i, i2);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void registerListener(Context context, final StorageEventListenerNative storageEventListenerNative) {
        AnonymousClass1 r0 = new StorageEventListenerWrapper() {
            public void onStorageStateChanged(String str, String str2, String str3) {
                storageEventListenerNative.onStorageStateChanged(str, str2, str3);
            }

            public void onVolumeStateChanged(VolumeInfoWrapper volumeInfoWrapper, int i, int i2) {
                storageEventListenerNative.onVolumeStateChanged(new VolumeInfoNative(volumeInfoWrapper), i, i2);
            }
        };
        if (mListenerMap.get(storageEventListenerNative) != null) {
            mListenerMap.remove(storageEventListenerNative);
        }
        StorageManagerWrapper.registerListener(context, r0);
        mListenerMap.put(storageEventListenerNative, r0);
    }

    public static void unregisterListener(Context context, StorageEventListenerNative storageEventListenerNative) {
        if (mListenerMap.get(storageEventListenerNative) != null) {
            StorageManagerWrapper.unregisterListener(context, mListenerMap.get(storageEventListenerNative));
            mListenerMap.remove(storageEventListenerNative);
        }
    }
}
