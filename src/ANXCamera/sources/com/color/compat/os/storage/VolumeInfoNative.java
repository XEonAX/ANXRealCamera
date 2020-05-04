package com.color.compat.os.storage;

import android.util.Log;
import com.color.inner.os.storage.VolumeInfoWrapper;
import java.io.File;

public class VolumeInfoNative {
    public static int STATE_MOUNTED = 2;
    private static final String TAG = "VolumeInfoNative";
    private VolumeInfoWrapper mVolumeInfoWrapper;

    private VolumeInfoNative() {
    }

    public VolumeInfoNative(VolumeInfoWrapper volumeInfoWrapper) {
        this.mVolumeInfoWrapper = volumeInfoWrapper;
    }

    public String getFsType() {
        try {
            return this.mVolumeInfoWrapper.getFsType();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public String getFsUuid() {
        try {
            return this.mVolumeInfoWrapper.getFsUuid();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public String getId() {
        try {
            return this.mVolumeInfoWrapper.getId();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public File getPath() {
        try {
            return this.mVolumeInfoWrapper.getPath();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public String getStringPath() {
        try {
            return this.mVolumeInfoWrapper.getStringPath();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return null;
        }
    }

    public boolean isSd() {
        try {
            return this.mVolumeInfoWrapper.isSd();
        } catch (Throwable th) {
            Log.w(TAG, th.toString());
            return false;
        }
    }
}
