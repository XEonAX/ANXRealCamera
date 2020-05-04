package com.oppo.camera.debug;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class PrefUtils {
    private static final String AUDITING_MODE = "auditing_mode";
    private static final String CHECK_INTERVAL_IN_MINUTE = "check_interval_in_minute";
    private static final String DEBUG_PROPERTY = "debug_property";
    private static final String LAST_REQUEST_TIME = "last_request_time";
    private static final String LOCAL_DATA_VERSION = "local_data_version";
    private static final String SHOW_RUNTIME_PERMISSION_DIALOG = "show_runtime_permission_dialog";
    private static final String TEST_ENVIRONMENT = "test_environment";
    private static final String TRACE_DEBUG = "trace_debug";

    public static int getAuditingMode(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(AUDITING_MODE, 3);
    }

    public static long getCheckInterval(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(CHECK_INTERVAL_IN_MINUTE, 0);
    }

    public static boolean getIsTestEnv(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(TEST_ENVIRONMENT, false);
    }

    public static boolean getIsTraceDebug(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(TRACE_DEBUG, false);
    }

    public static long getLastRequestTime(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(LAST_REQUEST_TIME, 0);
    }

    public static long getLocalDataVersion(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(LOCAL_DATA_VERSION, 0);
    }

    public static boolean getNeedShowRuntimeDialog(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(SHOW_RUNTIME_PERMISSION_DIALOG, true);
    }

    public static boolean isDebugPropertyOn(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(DEBUG_PROPERTY, false);
    }

    public static void setAsDebugEnv(Context context, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(TEST_ENVIRONMENT, z);
        edit.apply();
        updateLocalDataVersion(context, 0);
        updateRequestTime(context, 0);
    }

    public static void setAuditingMode(Context context, int i) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putInt(AUDITING_MODE, i);
        edit.apply();
        updateLocalDataVersion(context, 0);
        updateRequestTime(context, 0);
    }

    public static void setDebugProperty(Context context, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(DEBUG_PROPERTY, z);
        edit.apply();
    }

    public static void setNeedShowRuntimeDialog(Context context, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(SHOW_RUNTIME_PERMISSION_DIALOG, z);
        edit.apply();
    }

    public static void setTraceDebug(Context context, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(TRACE_DEBUG, z);
        edit.apply();
    }

    public static void updateCheckInterval(Context context, long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putLong(CHECK_INTERVAL_IN_MINUTE, j);
        edit.apply();
    }

    public static void updateLocalDataVersion(Context context, long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putLong(LOCAL_DATA_VERSION, j);
        edit.apply();
    }

    public static void updateRequestTime(Context context, long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putLong(LAST_REQUEST_TIME, j);
        edit.apply();
    }
}
