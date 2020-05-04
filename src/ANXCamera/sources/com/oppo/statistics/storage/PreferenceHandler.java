package com.oppo.statistics.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.oppo.statistics.util.ApkInfoUtil;

public class PreferenceHandler {
    public static final String ACTIVITY_END_TIME = "activity.end.time";
    public static final String ACTIVITY_START_TIME = "activity.start.time";
    public static final String CURRENT_ACTIVITY = "current.activity";
    public static final String EVENT_START = "event.start";
    public static final String KVEVENT_START = "kv.start";
    public static final String PAGEVISIT_DURATION = "pagevisit.duration";
    public static final String PAGEVISIT_ROUTES = "pagevisit.routes";
    public static final String PAGEVISIT_START_TIME = "pagevisit.start.time";
    public static final String SESSION_TIMEOUT = "session.timeout";
    public static final int SESSION_TIMEOUT_DEFAULT = 30;
    public static final String SSOID = "ssoid";

    public static long getActivityEndTime(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            return functionPref.getLong(ACTIVITY_END_TIME, -1);
        }
        return -1;
    }

    public static long getActivityStartTime(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            return functionPref.getLong(ACTIVITY_START_TIME, -1);
        }
        return -1;
    }

    public static String getCurrentActivity(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        return functionPref != null ? functionPref.getString(CURRENT_ACTIVITY, "") : "";
    }

    public static long getEventStart(Context context, String str, String str2) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref == null) {
            return 0;
        }
        return functionPref.getLong(EVENT_START + str + "_" + str2, 0);
    }

    public static SharedPreferences getFunctionPref(Context context) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences("nearme_func_" + ApkInfoUtil.getPackageName(context), 0);
    }

    public static String getKVEventStart(Context context, String str, String str2) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref == null) {
            return "";
        }
        return functionPref.getString(KVEVENT_START + str + "_" + str2, "");
    }

    public static int getPageVisitDuration(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            return functionPref.getInt(PAGEVISIT_DURATION, 0);
        }
        return -1;
    }

    public static String getPageVisitRoutes(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        return functionPref != null ? functionPref.getString(PAGEVISIT_ROUTES, "") : "";
    }

    public static long getPageVisitStartTime(Context context) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            return functionPref.getLong(PAGEVISIT_START_TIME, 0);
        }
        return 0;
    }

    public static int getSessionTimeout(Context context) {
        SharedPreferences settingPref = getSettingPref(context);
        if (settingPref != null) {
            return settingPref.getInt(SESSION_TIMEOUT, 30);
        }
        return 30;
    }

    public static SharedPreferences getSettingPref(Context context) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences("nearme_setting_" + ApkInfoUtil.getPackageName(context), 0);
    }

    public static String getSsoID(Context context) {
        SharedPreferences settingPref = getSettingPref(context);
        return settingPref != null ? settingPref.getString(SSOID, "0") : "0";
    }

    public static void setActivityEndTime(Context context, long j) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putLong(ACTIVITY_END_TIME, j);
            edit.commit();
        }
    }

    public static void setActivityStartTime(Context context, long j) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putLong(ACTIVITY_START_TIME, j);
            edit.commit();
        }
    }

    public static void setCurrentActivity(Context context, String str) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putString(CURRENT_ACTIVITY, str);
            edit.commit();
        }
    }

    public static void setEventStart(Context context, String str, String str2, long j) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putLong(EVENT_START + str + "_" + str2, j);
            edit.commit();
        }
    }

    public static void setKVEventStart(Context context, String str, String str2, String str3) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putString(KVEVENT_START + str + "_" + str3, str2);
            edit.commit();
        }
    }

    public static void setPageVisitDuration(Context context, int i) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putInt(PAGEVISIT_DURATION, i);
            edit.commit();
        }
    }

    public static void setPageVisitRoutes(Context context, String str) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putString(PAGEVISIT_ROUTES, str);
            edit.commit();
        }
    }

    public static void setPageVisitStartTime(Context context, long j) {
        SharedPreferences functionPref = getFunctionPref(context);
        if (functionPref != null) {
            SharedPreferences.Editor edit = functionPref.edit();
            edit.putLong(PAGEVISIT_START_TIME, j);
            edit.commit();
        }
    }

    public static void setSessionTimeout(Context context, int i) {
        SharedPreferences settingPref = getSettingPref(context);
        if (settingPref != null) {
            SharedPreferences.Editor edit = settingPref.edit();
            edit.putInt(SESSION_TIMEOUT, i);
            edit.commit();
        }
    }

    public static void setSsoID(Context context) {
        SharedPreferences settingPref = getSettingPref(context);
        if (settingPref != null) {
            SharedPreferences.Editor edit = settingPref.edit();
            edit.putString(SSOID, "0");
            edit.commit();
        }
    }

    public static void setSsoID(Context context, String str) {
        SharedPreferences settingPref = getSettingPref(context);
        if (settingPref != null) {
            SharedPreferences.Editor edit = settingPref.edit();
            edit.putString(SSOID, str);
            edit.commit();
        }
    }
}
