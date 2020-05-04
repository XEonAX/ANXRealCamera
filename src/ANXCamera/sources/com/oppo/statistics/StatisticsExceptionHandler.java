package com.oppo.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.statistics.agent.ExceptionAgent;
import com.oppo.statistics.data.ExceptionBean;
import com.oppo.statistics.util.LogUtil;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

public class StatisticsExceptionHandler implements Thread.UncaughtExceptionHandler {
    private Context mContext;
    private Thread.UncaughtExceptionHandler mHandler = Thread.getDefaultUncaughtExceptionHandler();

    public StatisticsExceptionHandler(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX INFO: finally extract failed */
    private String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
            String stringWriter2 = stringWriter.toString();
            printWriter.close();
            return stringWriter2;
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
            printWriter.close();
            return null;
        } catch (Throwable th2) {
            printWriter.close();
            throw th2;
        }
    }

    public void setStatisticsExceptionHandler() {
        if (this != this.mHandler) {
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        LogUtil.d("NearMeStatistics", "StatisticsExceptionHandler: get the uncaughtException.");
        String stackTrace = getStackTrace(th);
        long currentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(stackTrace)) {
            ExceptionBean exceptionBean = new ExceptionBean();
            exceptionBean.setCount(1);
            exceptionBean.setEventTime(currentTimeMillis);
            exceptionBean.setException(stackTrace);
            ExceptionAgent.recordException(this.mContext, exceptionBean);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
