package com.oppo.statistics.record;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.oppo.statistics.DataTypeConstants;
import com.oppo.statistics.data.AppLogBean;
import com.oppo.statistics.data.AppStartBean;
import com.oppo.statistics.data.CommonBean;
import com.oppo.statistics.data.DebugBean;
import com.oppo.statistics.data.DynamicEventBean;
import com.oppo.statistics.data.ExceptionBean;
import com.oppo.statistics.data.PageVisitBean;
import com.oppo.statistics.data.SpecialAppStartBean;
import com.oppo.statistics.data.StaticEventBean;
import com.oppo.statistics.data.StatisticBean;
import com.oppo.statistics.data.UserActionBean;
import com.oppo.statistics.util.AccountUtil;
import com.oppo.statistics.util.ApkInfoUtil;
import com.oppo.statistics.util.LogUtil;

public class RecordHandler {
    private static final String ACTION_AMOUNT = "actionAmount";
    private static final String ACTION_CODE = "actionCode";
    private static final String ACTION_TIME = "actionTime";
    private static final String APP_ID = "appId";
    private static final String APP_NAME = "appName";
    private static final String APP_PACKAGE = "appPackage";
    private static final String APP_VERSION = "appVersion";
    private static final String DATA_TYPE = "dataType";
    private static final String DEBUG = "debug";
    private static final String EVENT_BODY = "eventBody";
    private static final String EVENT_ID = "eventID";
    private static final String EVENT_TYPE = "eventType";
    private static final String EXCEPTION = "exception";
    private static final String EXCEPTION_COUNT = "count";
    private static final String EXCEPTION_TIME = "time";
    private static final String LOGIN_TIME = "loginTime";
    private static final String LOG_MAP = "logMap";
    private static final String LOG_TAG = "logTag";
    private static final String PAGE_VISIT_ACTIVIES = "activities";
    private static final String PAGE_VISIT_DURATION = "duration";
    private static final String PAGE_VISIT_TIME = "time";
    private static final String SSOID = "ssoid";
    private static final String TAG = "RecordHandler";
    private static final String UPLOAD_MODE = "uploadMode";
    private static final String UPLOAD_NOW = "uploadNow";
    private static Context mContext;

    public static void addTask(Context context, StatisticBean statisticBean) {
        if (statisticBean == null || context == null) {
            LogUtil.d("RecordHandler add Task error -- bean or context is null--" + statisticBean + "," + context);
            return;
        }
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        try {
            switch (statisticBean.getDataType()) {
                case 1:
                    Intent startServiceIntent = getStartServiceIntent();
                    startServiceIntent.putExtra(LOGIN_TIME, ((AppStartBean) statisticBean).getTime());
                    startServiceIntent.putExtra(DATA_TYPE, 1000);
                    mContext.startService(startServiceIntent);
                    return;
                case 2:
                    UserActionBean userActionBean = (UserActionBean) statisticBean;
                    Intent startServiceIntent2 = getStartServiceIntent();
                    startServiceIntent2.putExtra(ACTION_AMOUNT, userActionBean.getActionAmount());
                    startServiceIntent2.putExtra(ACTION_CODE, userActionBean.getActionCode());
                    startServiceIntent2.putExtra(ACTION_TIME, userActionBean.getActionDate());
                    startServiceIntent2.putExtra(DATA_TYPE, 1001);
                    mContext.startService(startServiceIntent2);
                    return;
                case 3:
                    PageVisitBean pageVisitBean = (PageVisitBean) statisticBean;
                    Intent startServiceIntent3 = getStartServiceIntent();
                    startServiceIntent3.putExtra("time", pageVisitBean.getTime());
                    startServiceIntent3.putExtra(PAGE_VISIT_DURATION, pageVisitBean.getDuration());
                    startServiceIntent3.putExtra(PAGE_VISIT_ACTIVIES, pageVisitBean.getActivities());
                    startServiceIntent3.putExtra(DATA_TYPE, DataTypeConstants.PAGE_VISIT);
                    mContext.startService(startServiceIntent3);
                    return;
                case 4:
                    AppLogBean appLogBean = (AppLogBean) statisticBean;
                    Intent startServiceIntent4 = getStartServiceIntent();
                    startServiceIntent4.putExtra(EVENT_BODY, appLogBean.getBody());
                    startServiceIntent4.putExtra(EVENT_TYPE, appLogBean.getType());
                    startServiceIntent4.putExtra(DATA_TYPE, 1002);
                    mContext.startService(startServiceIntent4);
                    return;
                case 5:
                    ExceptionBean exceptionBean = (ExceptionBean) statisticBean;
                    Intent startServiceIntent5 = getStartServiceIntent();
                    startServiceIntent5.putExtra(EXCEPTION, exceptionBean.getException());
                    startServiceIntent5.putExtra(EXCEPTION_COUNT, exceptionBean.getCount());
                    startServiceIntent5.putExtra("time", exceptionBean.getEventTime());
                    startServiceIntent5.putExtra(DATA_TYPE, 1004);
                    mContext.startService(startServiceIntent5);
                    return;
                case 7:
                    SpecialAppStartBean specialAppStartBean = (SpecialAppStartBean) statisticBean;
                    Intent specialStartServiceIntent = getSpecialStartServiceIntent(specialAppStartBean.getAppId());
                    specialStartServiceIntent.putExtra(LOGIN_TIME, specialAppStartBean.getTime());
                    specialStartServiceIntent.putExtra(DATA_TYPE, 1000);
                    mContext.startService(specialStartServiceIntent);
                    return;
                case 9:
                    CommonBean commonBean = (CommonBean) statisticBean;
                    LogUtil.d("NearMeStatistics", "bean:" + statisticBean.toString());
                    Intent commonStartServiceIntent = getCommonStartServiceIntent();
                    commonStartServiceIntent.putExtra(UPLOAD_NOW, commonBean.getUploadNow());
                    commonStartServiceIntent.putExtra(LOG_TAG, commonBean.getLogTag());
                    commonStartServiceIntent.putExtra(EVENT_ID, commonBean.getEventID());
                    commonStartServiceIntent.putExtra(LOG_MAP, commonBean.getLogMap());
                    commonStartServiceIntent.putExtra(DATA_TYPE, 1006);
                    mContext.startService(commonStartServiceIntent);
                    return;
                case 10:
                    DynamicEventBean dynamicEventBean = (DynamicEventBean) statisticBean;
                    Intent startServiceIntent6 = getStartServiceIntent();
                    startServiceIntent6.putExtra(EVENT_BODY, dynamicEventBean.getBody());
                    startServiceIntent6.putExtra(UPLOAD_MODE, dynamicEventBean.getUploadMode());
                    startServiceIntent6.putExtra(DATA_TYPE, 1007);
                    mContext.startService(startServiceIntent6);
                    return;
                case 11:
                    StaticEventBean staticEventBean = (StaticEventBean) statisticBean;
                    Intent startServiceIntent7 = getStartServiceIntent();
                    startServiceIntent7.putExtra(EVENT_BODY, staticEventBean.getBody());
                    startServiceIntent7.putExtra(UPLOAD_MODE, staticEventBean.getUploadMode());
                    startServiceIntent7.putExtra(DATA_TYPE, 1008);
                    mContext.startService(startServiceIntent7);
                    return;
                case 12:
                    Intent startServiceIntent8 = getStartServiceIntent();
                    startServiceIntent8.putExtra(DATA_TYPE, 1009);
                    startServiceIntent8.putExtra(DEBUG, ((DebugBean) statisticBean).getFlag());
                    mContext.startService(startServiceIntent8);
                    return;
                default:
                    return;
            }
        } catch (Exception e) {
            LogUtil.e(TAG, (Throwable) e);
        }
        LogUtil.e(TAG, (Throwable) e);
    }

    private static Intent getCommonStartServiceIntent() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.nearme.statistics.rom", "com.nearme.statistics.rom.service.ReceiverService"));
        intent.putExtra(APP_ID, ApkInfoUtil.getAppCode(mContext));
        intent.putExtra(APP_VERSION, ApkInfoUtil.getVersionName(mContext));
        intent.putExtra(APP_PACKAGE, ApkInfoUtil.getPackageName(mContext));
        intent.putExtra(APP_NAME, ApkInfoUtil.getAppName(mContext));
        intent.putExtra("ssoid", AccountUtil.getSsoId(mContext));
        return intent;
    }

    private static Intent getSpecialStartServiceIntent(int i) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.nearme.statistics.rom", "com.nearme.statistics.rom.service.ReceiverService"));
        intent.putExtra(APP_ID, i);
        intent.putExtra(APP_VERSION, ApkInfoUtil.getVersionName(mContext));
        intent.putExtra(APP_PACKAGE, ApkInfoUtil.getPackageName(mContext));
        intent.putExtra("ssoid", AccountUtil.getSsoId(mContext));
        return intent;
    }

    private static Intent getStartServiceIntent() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.nearme.statistics.rom", "com.nearme.statistics.rom.service.ReceiverService"));
        intent.putExtra(APP_ID, ApkInfoUtil.getAppCode(mContext));
        intent.putExtra(APP_VERSION, ApkInfoUtil.getVersionName(mContext));
        intent.putExtra(APP_PACKAGE, ApkInfoUtil.getPackageName(mContext));
        intent.putExtra("ssoid", AccountUtil.getSsoId(mContext));
        return intent;
    }
}
