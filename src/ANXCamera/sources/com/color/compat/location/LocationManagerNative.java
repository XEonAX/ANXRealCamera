package com.color.compat.location;

import android.location.LocationManager;
import android.util.Log;
import com.color.inner.location.LocationManagerWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.List;

public class LocationManagerNative {
    private static final String TAG = "LocationManagerNative";

    private LocationManagerNative() {
    }

    public static List<String> getInUsePackagesList(LocationManager locationManager) {
        if (locationManager == null) {
            Log.e(TAG, "locationManager must be not null");
            return null;
        }
        try {
            if (VersionUtils.isQ()) {
                return LocationManagerWrapper.getInUsePackagesList(locationManager);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void getLocAppsOp(LocationManager locationManager, int i, LocAppsOpNative locAppsOpNative) {
        if (locationManager != null) {
            LocationManagerWrapper.getLocAppsOp(locationManager, i, locAppsOpNative.getLocAppsOpWrapper());
        }
    }

    public static void setLocAppsOp(LocationManager locationManager, int i, LocAppsOpNative locAppsOpNative) {
        if (locationManager != null) {
            LocationManagerWrapper.setLocAppsOp(locationManager, i, locAppsOpNative.getLocAppsOpWrapper());
        }
    }
}
