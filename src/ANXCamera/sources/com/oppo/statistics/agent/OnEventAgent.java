package com.oppo.statistics.agent;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.statistics.data.AppLogBean;
import com.oppo.statistics.data.DynamicEventBean;
import com.oppo.statistics.data.StaticEventBean;
import com.oppo.statistics.record.RecordHandler;
import com.oppo.statistics.storage.PreferenceHandler;
import com.oppo.statistics.util.LogUtil;
import com.oppo.statistics.util.TimeInfoUtil;
import java.util.Map;
import org.json.JSONObject;

public class OnEventAgent {
    public static JSONObject getDynamicEventObject(int i, String str, Map<String, String> map, Map<String, String> map2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("statID", i);
            jSONObject.put("clientTime", str);
            getDynamicInfo(jSONObject, map);
            getKVEventInfo(jSONObject, map2);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return jSONObject;
    }

    private static void getDynamicInfo(JSONObject jSONObject, Map<String, String> map) {
        if (map != null && map.size() != 0) {
            try {
                for (String next : map.keySet()) {
                    jSONObject.put(next, map.get(next));
                }
            } catch (Exception e) {
                LogUtil.e("NearMeStatistics", (Throwable) e);
            }
        }
    }

    public static JSONObject getEventObject(String str, String str2, int i, String str3, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("eventID", str);
            jSONObject.put("eventCount", i);
            jSONObject.put("eventTime", str3);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("eventTag", str2);
            }
            if (j != 0) {
                jSONObject.put("duration", j);
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return jSONObject;
    }

    private static void getKVEventInfo(JSONObject jSONObject, Map<String, String> map) {
        if (map != null && map.size() != 0) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                for (String next : map.keySet()) {
                    jSONObject2.put(next, map.get(next));
                }
                String replaceAll = jSONObject2.toString().replaceAll("\"", "");
                jSONObject.put("eventInfo", replaceAll.substring(1, replaceAll.length() - 1));
            } catch (Exception e) {
                LogUtil.e("NearMeStatistics", (Throwable) e);
            }
        }
    }

    public static JSONObject getKVEventObject(String str, Map<String, String> map, String str2, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("eventID", str);
            jSONObject.put("eventTime", str2);
            if (j > 0) {
                jSONObject.put("duration", j);
            }
            if (map != null && map.size() > 0) {
                for (String next : map.keySet()) {
                    jSONObject.put(next, map.get(next));
                }
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return jSONObject;
    }

    public static JSONObject getStaticLogObject(int i, String str, String str2, String str3, String str4, Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("statID", i);
            jSONObject.put("clientTime", str);
            jSONObject.put("setID", str2);
            jSONObject.put("setValue", str3);
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("remark", str4);
            }
            getKVEventInfo(jSONObject, map);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
        return jSONObject;
    }

    public static void onDynamicEvent(Context context, int i, int i2, Map<String, String> map, Map<String, String> map2) {
        recordDynamicEvent(context, i, i2, TimeInfoUtil.getFormatTime(), map, map2);
    }

    public static void onEvent(Context context, String str, String str2, int i, long j) {
        recordEvent(context, str, str2, i, TimeInfoUtil.getFormatTime(), j);
    }

    public static void onEventEnd(Context context, String str, String str2) {
        recordEventEnd(context, str, str2, TimeInfoUtil.getCurrentTime());
    }

    public static void onEventStart(Context context, String str, String str2) {
        PreferenceHandler.setEventStart(context, str, str2, TimeInfoUtil.getCurrentTime());
    }

    public static void onKVEvent(Context context, String str, Map<String, String> map, long j) {
        recordKVEvent(context, str, map, TimeInfoUtil.getFormatTime(), j);
    }

    public static void onKVEventEnd(Context context, String str, String str2) {
        recordKVEventEnd(context, str, str2, TimeInfoUtil.getCurrentTime());
    }

    public static void onKVEventStart(Context context, String str, Map<String, String> map, String str2) {
        long currentTime = TimeInfoUtil.getCurrentTime();
        PreferenceHandler.setKVEventStart(context, str, getKVEventObject(str, map, TimeInfoUtil.getFormatTime(currentTime), currentTime).toString(), str2);
    }

    public static void onStaticEvent(Context context, int i, int i2, String str, String str2, String str3, Map<String, String> map) {
        recordStaticLog(context, i, i2, TimeInfoUtil.getFormatTime(), str, str2, str3, map);
    }

    private static void recordAppLog(Context context, String str, JSONObject jSONObject) {
        RecordHandler.addTask(context, new AppLogBean(str, jSONObject.toString()));
    }

    public static void recordDynamicEvent(Context context, int i, int i2, String str, Map<String, String> map, Map<String, String> map2) {
        recordDynamicEventLog(context, i, getDynamicEventObject(i2, str, map, map2));
    }

    private static void recordDynamicEventLog(Context context, int i, JSONObject jSONObject) {
        RecordHandler.addTask(context, new DynamicEventBean(i, jSONObject.toString()));
    }

    public static void recordEvent(Context context, String str, String str2, int i, String str3, long j) {
        recordAppLog(context, "event", getEventObject(str, str2, i, str3, j));
    }

    public static void recordEventEnd(Context context, String str, String str2, long j) {
        try {
            long eventStart = PreferenceHandler.getEventStart(context, str, str2);
            String formatTime = TimeInfoUtil.getFormatTime(eventStart);
            long j2 = j - eventStart;
            if (j2 <= TimeInfoUtil.MILLISECOND_OF_A_WEEK) {
                if (j2 >= 0) {
                    recordAppLog(context, "event", getEventObject(str, str2, 1, formatTime, j2));
                    PreferenceHandler.setEventStart(context, str, str2, 0);
                    return;
                }
            }
            PreferenceHandler.setEventStart(context, str, str2, 0);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void recordKVEvent(Context context, String str, Map<String, String> map, String str2, long j) {
        recordAppLog(context, "ekv", getKVEventObject(str, map, str2, j));
    }

    public static void recordKVEventEnd(Context context, String str, String str2, long j) {
        try {
            String kVEventStart = PreferenceHandler.getKVEventStart(context, str, str2);
            if (!TextUtils.isEmpty(kVEventStart)) {
                JSONObject jSONObject = new JSONObject(kVEventStart);
                long j2 = j - jSONObject.getLong("duration");
                if (j2 > TimeInfoUtil.MILLISECOND_OF_A_WEEK || j2 < 0) {
                    PreferenceHandler.setKVEventStart(context, str, "", str2);
                    return;
                }
                jSONObject.put("duration", j2);
                recordAppLog(context, "ekv", jSONObject);
                PreferenceHandler.setKVEventStart(context, str, "", str2);
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void recordStaticLog(Context context, int i, int i2, String str, String str2, String str3, String str4, Map<String, String> map) {
        recordStaticLog(context, i, getStaticLogObject(i2, str, str2, str3, str4, map));
    }

    private static void recordStaticLog(Context context, int i, JSONObject jSONObject) {
        RecordHandler.addTask(context, new StaticEventBean(i, jSONObject.toString()));
    }
}
