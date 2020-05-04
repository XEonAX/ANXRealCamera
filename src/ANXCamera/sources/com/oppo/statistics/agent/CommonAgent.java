package com.oppo.statistics.agent;

import android.content.Context;
import com.oppo.statistics.data.CommonBean;
import com.oppo.statistics.record.RecordHandler;
import com.oppo.statistics.util.LogUtil;
import java.util.Map;
import org.json.JSONObject;

public class CommonAgent {
    public static JSONObject getCommonObject(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (String next : map.keySet()) {
                jSONObject.put(next, map.get(next));
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return jSONObject;
    }

    public static void recordCommon(Context context, String str, String str2, Map<String, String> map) {
        RecordHandler.addTask(context, new CommonBean(str, str2, getCommonObject(map).toString()));
    }

    public static void recordCommon(Context context, String str, String str2, Map<String, String> map, boolean z) {
        RecordHandler.addTask(context, new CommonBean(str, str2, getCommonObject(map).toString(), z));
    }
}
