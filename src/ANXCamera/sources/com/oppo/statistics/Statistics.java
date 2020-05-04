package com.oppo.statistics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

public class Statistics {
    private static final String APP_ID = "appId";
    private static final String APP_NAME = "appName";
    private static final String APP_PACKAGE = "appPackage";
    private static final String APP_VERSION = "appVersion";
    private static final int COMMON = 1006;
    private static final String DATA_TYPE = "dataType";
    private static final String EVENT_ID = "eventID";
    private static final String LOG_MAP = "logMap";
    private static final String LOG_TAG = "logTag";
    private static final String SSOID = "ssoid";
    private static final String UPLOAD_NOW = "uploadNow";
    /* access modifiers changed from: private */
    public static int appId = 20120;
    private static ExecutorService sSingleThreadExecutor = Executors.newSingleThreadExecutor();

    public static void onCommon(Context context, String str, String str2, Map<String, String> map, boolean z) {
        try {
            Log.d("Statistics", "onCommonWithoutJar logTag is " + str + ",logmap:" + map);
            if (str != null && !TextUtils.isEmpty(str)) {
                final Map<String, String> map2 = map;
                final String str3 = str2;
                final boolean z2 = z;
                final String str4 = str;
                final Context context2 = context;
                AnonymousClass1 r1 = new Runnable() {
                    public void run() {
                        JSONObject jSONObject = new JSONObject();
                        Map map = map2;
                        if (map != null && !map.isEmpty()) {
                            try {
                                for (String str : map2.keySet()) {
                                    jSONObject.put(str, map2.get(str));
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName("com.nearme.statistics.rom", "com.nearme.statistics.rom.service.ReceiverService"));
                        intent.putExtra(Statistics.APP_PACKAGE, "system");
                        intent.putExtra(Statistics.APP_NAME, "system");
                        intent.putExtra(Statistics.APP_VERSION, "system");
                        intent.putExtra("ssoid", "system");
                        intent.putExtra(Statistics.APP_ID, Statistics.appId);
                        intent.putExtra(Statistics.EVENT_ID, str3);
                        intent.putExtra(Statistics.UPLOAD_NOW, z2);
                        intent.putExtra(Statistics.LOG_TAG, str4);
                        intent.putExtra(Statistics.LOG_MAP, jSONObject.toString());
                        intent.putExtra(Statistics.DATA_TYPE, 1006);
                        context2.startService(intent);
                    }
                };
                sSingleThreadExecutor.execute(r1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
