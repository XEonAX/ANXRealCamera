package com.color.compat.internal.os;

import android.util.Log;
import com.color.inner.internal.os.BatterySipperWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class BatterySipperNative {
    private static final double DEFAULT_VALUE = 0.0d;
    private static final String TAG = "BatterySipperNative";
    private BatterySipperWrapper mSipper;

    BatterySipperNative(BatterySipperWrapper batterySipperWrapper) {
        this.mSipper = batterySipperWrapper;
    }

    public String getPkgName() {
        try {
            if (VersionUtils.isQ()) {
                return this.mSipper.getPkgName();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public double getScreenPowerMah() {
        try {
            if (VersionUtils.isQ()) {
                return this.mSipper.getScreenPowerMah();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return DEFAULT_VALUE;
        }
    }

    public double getTotalSmearedPowerMah() {
        try {
            if (VersionUtils.isQ()) {
                return this.mSipper.getTotalSmearedPowerMah();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return DEFAULT_VALUE;
        }
    }

    public double sumPower() {
        try {
            if (VersionUtils.isQ()) {
                return this.mSipper.sumPower();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return DEFAULT_VALUE;
        }
    }
}
