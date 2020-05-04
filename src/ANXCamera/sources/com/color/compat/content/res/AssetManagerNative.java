package com.color.compat.content.res;

import android.content.res.AssetManager;
import android.util.Log;
import com.color.inner.content.res.AssetManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class AssetManagerNative {
    private static final String TAG = "AssetManagerNative";

    private AssetManagerNative() {
    }

    public static int addAssetPath(AssetManager assetManager, String str) {
        try {
            if (VersionUtils.isQ()) {
                return AssetManagerWrapper.addAssetPath(assetManager, str);
            }
            if (VersionUtils.isL()) {
                return assetManager.addAssetPath(str);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static AssetManager createAssetManager() {
        try {
            if (VersionUtils.isQ()) {
                return AssetManagerWrapper.createAssetManager();
            }
            if (VersionUtils.isL()) {
                return (AssetManager) Class.forName("android.content.res.AssetManager").newInstance();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}
