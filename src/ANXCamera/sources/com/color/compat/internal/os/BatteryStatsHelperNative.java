package com.color.compat.internal.os;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.color.inner.internal.os.BatterySipperWrapper;
import com.color.inner.internal.os.BatteryStatsHelperWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.List;

public class BatteryStatsHelperNative {
    private static String TAG = "BatteryStatsHelperNative";
    private BatteryStatsHelperWrapper mHelper;

    public BatteryStatsHelperNative(Context context) {
        try {
            if (VersionUtils.isQ()) {
                this.mHelper = new BatteryStatsHelperWrapper(context);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static String makemAh(double d) {
        try {
            if (VersionUtils.isQ()) {
                return BatteryStatsHelperWrapper.makemAh(d);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return "";
        }
    }

    public void create(Bundle bundle) {
        try {
            if (VersionUtils.isQ()) {
                this.mHelper.create(bundle);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public List<BatterySipperNative> getUsageList() {
        ArrayList arrayList = new ArrayList();
        try {
            if (VersionUtils.isQ()) {
                List<BatterySipperWrapper> usageList = this.mHelper.getUsageList();
                if (usageList != null) {
                    for (BatterySipperWrapper batterySipperNative : usageList) {
                        arrayList.add(new BatterySipperNative(batterySipperNative));
                    }
                }
                return arrayList;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public void refreshStats(int i, int i2) {
        try {
            if (VersionUtils.isQ()) {
                this.mHelper.refreshStats(i, i2);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
