package com.oppo.statistics.agent;

import android.content.Context;
import com.oppo.statistics.data.ExceptionBean;
import com.oppo.statistics.record.RecordHandler;

public class ExceptionAgent {
    public static void recordException(Context context, ExceptionBean exceptionBean) {
        RecordHandler.addTask(context, exceptionBean);
    }
}
