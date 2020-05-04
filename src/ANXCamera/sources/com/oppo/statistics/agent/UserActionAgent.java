package com.oppo.statistics.agent;

import android.content.Context;
import com.oppo.statistics.data.UserActionBean;
import com.oppo.statistics.record.RecordHandler;
import com.oppo.statistics.util.TimeInfoUtil;

public class UserActionAgent {
    public static void recordUserAction(Context context, int i, int i2) {
        RecordHandler.addTask(context, new UserActionBean(i, TimeInfoUtil.getFormatHour(), i2));
    }
}
