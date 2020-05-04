package com.oppo.statistics.agent;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.statistics.data.PageVisitBean;
import com.oppo.statistics.record.RecordHandler;
import com.oppo.statistics.storage.PreferenceHandler;
import com.oppo.statistics.util.LogUtil;
import com.oppo.statistics.util.TimeInfoUtil;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;

public class PageVisitAgent {
    private static final int PAUSE = 1;
    private static final int RESUME = 0;
    private ExecutorService mExecutorService = Executors.newSingleThreadExecutor();

    private final class HandlePageVisitRunnable implements Runnable {
        private String mClassName;
        private Context mContext;
        private long mCurrentTimeMills;
        private int mType;

        public HandlePageVisitRunnable(Context context, String str, long j, int i) {
            this.mContext = context;
            this.mClassName = str;
            this.mCurrentTimeMills = j;
            this.mType = i;
        }

        public void run() {
            int i = this.mType;
            if (i == 0) {
                PageVisitAgent.recordResume(this.mContext, this.mClassName, this.mCurrentTimeMills);
            } else if (i == 1) {
                PageVisitAgent.recordPause(this.mContext, this.mClassName, this.mCurrentTimeMills);
            }
        }
    }

    private static String getClassName(Context context) {
        return context != null ? context.getClass().getSimpleName() : "";
    }

    private static void recordPageVisit(Context context, String str, long j, String str2) {
        PageVisitBean pageVisitBean = new PageVisitBean();
        pageVisitBean.setActivities(str);
        pageVisitBean.setDuration(j);
        pageVisitBean.setTime(TimeInfoUtil.getFormatTime());
        RecordHandler.addTask(context, pageVisitBean);
    }

    /* access modifiers changed from: private */
    public static void recordPause(Context context, String str, long j) {
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        int i = (int) ((j - activityStartTime) / 1000);
        if (str.equals(PreferenceHandler.getCurrentActivity(context)) && i >= 0 && -1 != activityStartTime) {
            try {
                String pageVisitRoutes = PreferenceHandler.getPageVisitRoutes(context);
                int pageVisitDuration = PreferenceHandler.getPageVisitDuration(context);
                JSONArray jSONArray = !TextUtils.isEmpty(pageVisitRoutes) ? new JSONArray(pageVisitRoutes) : new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(str);
                jSONArray2.put(i);
                jSONArray.put(jSONArray2);
                PreferenceHandler.setPageVisitDuration(context, pageVisitDuration + i);
                PreferenceHandler.setPageVisitRoutes(context, jSONArray.toString());
            } catch (JSONException e) {
                LogUtil.e("NearMeStatistics", (Throwable) e);
            } catch (Exception e2) {
                LogUtil.e("NearMeStatistics", (Throwable) e2);
                PreferenceHandler.setPageVisitRoutes(context, "");
                PreferenceHandler.setPageVisitDuration(context, 0);
            }
        }
        PreferenceHandler.setActivityEndTime(context, j);
    }

    /* access modifiers changed from: private */
    public static void recordResume(Context context, String str, long j) {
        long activityEndTime = PreferenceHandler.getActivityEndTime(context);
        long activityStartTime = PreferenceHandler.getActivityStartTime(context);
        long sessionTimeout = ((long) PreferenceHandler.getSessionTimeout(context)) * 1000;
        if (j - activityStartTime >= sessionTimeout && (-1 == activityEndTime || activityEndTime >= j || j - activityEndTime >= sessionTimeout)) {
            AppStartAgent.recordAppStart(context);
            PreferenceHandler.setPageVisitStartTime(context, System.currentTimeMillis());
            String pageVisitRoutes = PreferenceHandler.getPageVisitRoutes(context);
            int pageVisitDuration = PreferenceHandler.getPageVisitDuration(context);
            if (!TextUtils.isEmpty(pageVisitRoutes)) {
                recordPageVisit(context, pageVisitRoutes, (long) pageVisitDuration, "page");
            }
            PreferenceHandler.setPageVisitDuration(context, 0);
            PreferenceHandler.setPageVisitRoutes(context, "");
        }
        PreferenceHandler.setActivityStartTime(context, j);
        PreferenceHandler.setCurrentActivity(context, str);
    }

    public void onPause(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String className = getClassName(context);
            LogUtil.i("NearMeStatistics", "onPause: " + className);
            HandlePageVisitRunnable handlePageVisitRunnable = new HandlePageVisitRunnable(context, className, currentTimeMillis, 1);
            this.mExecutorService.execute(handlePageVisitRunnable);
            return;
        }
        LogUtil.e("NearMeStatistics", "onPause() called without context.");
    }

    public void onResume(Context context) {
        if (context != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String className = getClassName(context);
            LogUtil.i("NearMeStatistics", "onResume: " + className);
            HandlePageVisitRunnable handlePageVisitRunnable = new HandlePageVisitRunnable(context, className, currentTimeMillis, 0);
            this.mExecutorService.execute(handlePageVisitRunnable);
            return;
        }
        LogUtil.e("NearMeStatistics", "onPause() called without context.");
    }
}
