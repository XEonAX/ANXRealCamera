package com.oppo.statistics.util;

import android.content.Context;
import com.oppo.statistics.storage.PreferenceHandler;

public class AccountUtil {
    public static final String SSOID_DEFAULT = "0";

    public static String getSsoId(Context context) {
        String ssoID = PreferenceHandler.getSsoID(context);
        if (ssoID.equals("0")) {
            LogUtil.e("NearMeStatistics", "ssoid not set.");
        }
        return ssoID;
    }
}
