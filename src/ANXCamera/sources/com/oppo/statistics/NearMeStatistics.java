package com.oppo.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.statistics.agent.CommonAgent;
import com.oppo.statistics.agent.DebugAgent;
import com.oppo.statistics.agent.OnEventAgent;
import com.oppo.statistics.agent.PageVisitAgent;
import com.oppo.statistics.agent.SpecialAppStartAgent;
import com.oppo.statistics.storage.PreferenceHandler;
import com.oppo.statistics.util.LogUtil;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;

public class NearMeStatistics {
    private static final Pattern EVENTID_PATTERN = Pattern.compile("^[a-zA-Z0-9\\_\\-]{1,64}$");
    private static PageVisitAgent sPageVisitAgent = new PageVisitAgent();
    private static ExecutorService sSingleThreadExecutor = Executors.newSingleThreadExecutor();

    /* access modifiers changed from: private */
    public static boolean formatCheck(String str, String str2, int i) {
        if (str == null) {
            LogUtil.e("NearMeStatistics", "EventID is null!");
            return false;
        } else if (!EVENTID_PATTERN.matcher(str).find()) {
            LogUtil.e("NearMeStatistics", "EventID format error!");
            return false;
        } else if (str2 == null) {
            LogUtil.e("NearMeStatistics", "EventTag format error!");
            return false;
        } else if (i <= 10000 && i >= 1) {
            return true;
        } else {
            LogUtil.e("NearMeStatistics", "EventCount format error!");
            return false;
        }
    }

    public static void onCommon(final Context context, final String str, final String str2, final Map<String, String> map) {
        try {
            LogUtil.d("NearMeStatistics", "onCommon logTag is " + str + ",eventID:" + str2 + ",logmap:" + map);
            if (str != null && !TextUtils.isEmpty(str)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        CommonAgent.recordCommon(context, str, str2, map);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onCommon(Context context, String str, String str2, Map<String, String> map, boolean z) {
        try {
            LogUtil.d("NearMeStatistics", "onCommon logTag is " + str + ",eventID:" + ",logmap:" + map + ",uploadNow:" + z);
            if (str != null && !TextUtils.isEmpty(str)) {
                final Context context2 = context;
                final String str3 = str;
                final String str4 = str2;
                final Map<String, String> map2 = map;
                final boolean z2 = z;
                AnonymousClass2 r2 = new Runnable() {
                    public void run() {
                        CommonAgent.recordCommon(context2, str3, str4, map2, z2);
                    }
                };
                sSingleThreadExecutor.execute(r2);
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onCommon(Context context, String str, Map<String, String> map) {
        onCommon(context, str, "", map);
    }

    public static void onCommon(Context context, String str, Map<String, String> map, boolean z) {
        onCommon(context, str, "", map, z);
    }

    public static void onDebug(final Context context, final boolean z) {
        try {
            LogUtil.setDebugs(z);
            LogUtil.d("NearMeStatistics", "packageName:" + context.getPackageName() + ",isDebug:" + z + ",isDebugMode:" + LogUtil.isDebugMode);
            if (LogUtil.isDebugMode) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        DebugAgent.setDebug(context, z);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onDebug(boolean z) {
        try {
            LogUtil.setDebugs(z);
            LogUtil.d("NearMeStatistics", "onDebug (no context) sdk and dcs isDebug:" + z);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onDynamicEvent(Context context, int i, int i2, Map<String, String> map, Map<String, String> map2) {
        try {
            LogUtil.d("NearMeStatistics", "onDynamicEvent uploadMode:" + i + ",statId:" + i2);
            final Context context2 = context;
            final int i3 = i;
            final int i4 = i2;
            final Map<String, String> map3 = map;
            final Map<String, String> map4 = map2;
            AnonymousClass16 r2 = new Runnable() {
                public void run() {
                    OnEventAgent.onDynamicEvent(context2, i3, i4, map3, map4);
                }
            };
            sSingleThreadExecutor.execute(r2);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onError(Context context) {
        try {
            LogUtil.d("NearMeStatistics", "onError...");
            new StatisticsExceptionHandler(context).setStatisticsExceptionHandler();
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEvent(final Context context, final String str) {
        try {
            LogUtil.d("NearMeStatistics", "onEvent eventID:" + str);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEvent(context, str, "", 1, 0);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEvent(final Context context, final String str, final int i) {
        try {
            LogUtil.d("NearMeStatistics", "onEvent eventID:" + str + ",eventCount:" + i);
            if (formatCheck(str, "", i)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEvent(context, str, "", i, 0);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEvent(final Context context, final String str, final String str2) {
        try {
            LogUtil.d("NearMeStatistics", "onEvent eventID:" + str + ",eventTag:" + str2);
            if (formatCheck(str, str2, 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEvent(context, str, str2, 1, 0);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEvent(final Context context, final String str, final String str2, final int i) {
        try {
            LogUtil.d("NearMeStatistics", "onEvent eventID:" + str + ",eventCount:" + i + ",eventTag:" + str2);
            if (formatCheck(str, str2, i)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEvent(context, str, str2, i, 0);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEvent(Context context, String str, String str2, int i, long j) {
        try {
            LogUtil.d("NearMeStatistics", "onEvent eventID:" + str + ",eventTag:" + str2 + ",eventCount:" + i + ",duration:" + j);
            if (formatCheck(str, str2, i)) {
                final Context context2 = context;
                final String str3 = str;
                final String str4 = str2;
                final int i2 = i;
                final long j2 = j;
                AnonymousClass5 r2 = new Runnable() {
                    public void run() {
                        OnEventAgent.onEvent(context2, str3, str4, i2, j2);
                    }
                };
                sSingleThreadExecutor.execute(r2);
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEventEnd(final Context context, final String str) {
        try {
            LogUtil.d("NearMeStatistics", "onEventEnd eventID:" + str);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEventEnd(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEventEnd(final Context context, final String str, final String str2) {
        try {
            LogUtil.d("NearMeStatistics", "onEventEnd eventID:" + str + ",eventTag:" + str2);
            if (formatCheck(str, str2, 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEventEnd(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEventStart(final Context context, final String str) {
        try {
            LogUtil.d("NearMeStatistics", "onEventStart eventID:" + str);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEventStart(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onEventStart(final Context context, final String str, final String str2) {
        try {
            LogUtil.d("NearMeStatistics", "onEventStart eventID:" + str + ",eventTag:" + str2);
            if (formatCheck(str, str2, 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onEventStart(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEvent(final Context context, final String str, final Map<String, String> map) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEvent eventID:" + str + ",eventMap:" + map);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEvent(context, str, map, 0);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEvent(Context context, String str, Map<String, String> map, long j) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEvent eventID:" + str + ",eventMap:" + map + ",duration:" + j);
            if (formatCheck(str, "", 1)) {
                final Context context2 = context;
                final String str2 = str;
                final Map<String, String> map2 = map;
                final long j2 = j;
                AnonymousClass14 r2 = new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEvent(context2, str2, map2, j2);
                    }
                };
                sSingleThreadExecutor.execute(r2);
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEventEnd(final Context context, final String str) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEventEnd eventID:" + str);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEventEnd(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEventEnd(final Context context, final String str, final String str2) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEventEnd eventID:" + str + ",eventTag:" + str2);
            if (formatCheck(str, str2, 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEventEnd(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEventStart(final Context context, final String str, final Map<String, String> map) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEventStart eventID:" + str + ",eventMap:" + map);
            if (formatCheck(str, "", 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEventStart(context, str, map, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onKVEventStart(final Context context, final String str, final Map<String, String> map, final String str2) {
        try {
            LogUtil.d("NearMeStatistics", "onKVEventStart eventID:" + str + ",eventTag:" + str2 + ",eventMap:" + map);
            if (formatCheck(str, str2, 1)) {
                sSingleThreadExecutor.execute(new Runnable() {
                    public void run() {
                        OnEventAgent.onKVEventStart(context, str, map, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onPause(Context context) {
        try {
            LogUtil.d("NearMeStatistics", "onPause...");
            sPageVisitAgent.onPause(context);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onResume(Context context) {
        try {
            LogUtil.d("NearMeStatistics", "onResume...");
            sPageVisitAgent.onResume(context);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void onSpecialAppStart(Context context, int i) {
        LogUtil.d("NearMeStatistics", "onSpecialAppStart appCode:" + i);
        SpecialAppStartAgent.onSpecialAppStart(context, i);
    }

    public static void onStaticEvent(Context context, int i, int i2, String str, String str2, String str3, Map<String, String> map) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("onStaticEvent uploadMode:");
            int i3 = i;
            sb.append(i);
            sb.append(",statId:");
            int i4 = i2;
            sb.append(i2);
            sb.append(",setId:");
            String str4 = str;
            sb.append(str);
            sb.append(",setValue:");
            String str5 = str2;
            sb.append(str2);
            sb.append(",remark:");
            sb.append(str3);
            LogUtil.d("NearMeStatistics", sb.toString());
            final Context context2 = context;
            final int i5 = i;
            final int i6 = i2;
            final String str6 = str;
            final String str7 = str2;
            final String str8 = str3;
            final Map<String, String> map2 = map;
            AnonymousClass17 r3 = new Runnable() {
                public void run() {
                    OnEventAgent.onStaticEvent(context2, i5, i6, str6, str7, str8, map2);
                }
            };
            sSingleThreadExecutor.execute(r3);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    @Deprecated
    public static void onUserAction(final Context context, final int i) {
        try {
            LogUtil.d("NearMeStatistics", "onUserAction actionCode:" + i);
            sSingleThreadExecutor.execute(new Runnable() {
                public void run() {
                    String valueOf = String.valueOf(i);
                    if (NearMeStatistics.formatCheck(valueOf, "", 1)) {
                        OnEventAgent.onEvent(context, valueOf, "", 1, 0);
                    }
                }
            });
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    @Deprecated
    public static void onUserAction(final Context context, final int i, final int i2) {
        try {
            LogUtil.d("NearMeStatistics", "onUserAction actionCode:" + i + ",actionMount:" + i2);
            sSingleThreadExecutor.execute(new Runnable() {
                public void run() {
                    String valueOf = String.valueOf(i);
                    int i = i2;
                    if (NearMeStatistics.formatCheck(valueOf, "", i)) {
                        OnEventAgent.onEvent(context, valueOf, "", i, 0);
                    }
                }
            });
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void removeSsoID(Context context) {
        try {
            LogUtil.d("NearMeStatistics", "removeSsoID");
            PreferenceHandler.setSsoID(context);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }

    public static void setSessionTimeOut(Context context, int i) {
        LogUtil.d("NearMeStatistics", "setSession timeout is " + i);
        if (i > 0) {
            try {
                PreferenceHandler.setSessionTimeout(context, i);
            } catch (Exception e) {
                LogUtil.e("NearMeStatistics", (Throwable) e);
            }
        }
    }

    public static void setSsoID(Context context, String str) {
        LogUtil.d("NearMeStatistics", "setSsoid ssoid is " + str);
        if (TextUtils.isEmpty(str) || str.equals("null")) {
            str = "0";
        }
        try {
            PreferenceHandler.setSsoID(context, str);
        } catch (Exception e) {
            LogUtil.e("NearMeStatistics", (Throwable) e);
        }
    }
}
