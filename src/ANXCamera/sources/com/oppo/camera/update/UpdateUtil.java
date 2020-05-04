package com.oppo.camera.update;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.color.compat.os.SystemPropertiesNative;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.oppo.camera.d;
import com.oppo.camera.l.a;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.File;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class UpdateUtil {
    public static final String APP_TO_UPDATE = "camera_update_app_operation";
    private static final String APP_UPDATE_TYPE_PREFERENCE_LATER = "update_sharePreference_later";
    private static final String APP_UPDATE_TYPE_PREFERENCE_NOW = "update_sharePreference_now";
    private static final String BACK_UP = "_BACK_UP";
    private static final String COLUMN_FIME_NAME = "filterName";
    private static final String COLUMN_MD5 = "md5";
    private static final String COLUMN_VERSION = "version";
    private static final String COLUMN_XML = "xml";
    private static final String EQUAL_TOKEN = "equal";
    public static final String FILE_NAME_TO_UPDATE = "camera_update_file_name";
    private static final String KEY_CONTENT = "content";
    private static final String KEY_MD5 = "md5";
    private static final String KEY_UPDATE_STATE = "updateState";
    private static final String KEY_VERSION = "version";
    public static final String LOCAL_TO_UPDATE = "sys_high_temp_protect";
    /* access modifiers changed from: private */
    public static final Object LOCK = new Object();
    private static final int MAX_FILE_NUM = 50;
    private static final int MAX_TRY_TIME = 3;
    private static final String NEED_UPDATE_TOKEN = "needUpdate";
    private static final String PREFIX_DRIVER = "hardware";
    private static final String PREFIX_EFFECT = "quality";
    private static final String PREFIX_LOCAL = "camera_";
    private static final String SPLIT_TOKEN = "\n";
    private static final String SYSTEM_KEY_UPDATE_TOKEN = "oppo.camera.3rd.update";
    private static final String TAG = "UpdateUtil";
    private static final String TARGET_FOLDER = (File.separator + "data" + File.separator + ".camera" + File.separator);
    private static final String UNDER_LINE = "_";
    private static final String UPDATED_TOKEN = "updated";
    private static final Uri UPDATE_URI = Uri.parse("content://com.nearme.romupdate.provider.db/update_list");
    private static final String VERSION = "_VERSION";
    private static UpdateUtil sUpdateUtil = null;
    private ArrayList<UpdateOperation> mAppLaterUpdateOperationList = null;
    private Context mContext = null;
    private Gson mGson = null;
    private SharedPreferences mLocalInfoPreferences = null;
    private int mNowTryTime = 0;
    private SharedPreferences mRusInfoPreferences = null;
    private ArrayList<UpdateOperation> mUpdateOperationList = null;

    private UpdateUtil(Context context) {
        this.mContext = context;
    }

    private boolean deleteFile(File file) {
        if (!file.exists()) {
            return true;
        }
        return a.c(file.getAbsolutePath());
    }

    public static synchronized UpdateUtil getInstance(Context context) {
        UpdateUtil updateUtil;
        synchronized (UpdateUtil.class) {
            if (sUpdateUtil == null) {
                sUpdateUtil = new UpdateUtil(context);
            }
            updateUtil = sUpdateUtil;
        }
        return updateUtil;
    }

    private SharedPreferences getLocalInfoPreferences() {
        if (this.mLocalInfoPreferences == null) {
            this.mLocalInfoPreferences = this.mContext.getSharedPreferences("local_update_info", 0);
        }
        return this.mLocalInfoPreferences;
    }

    private SharedPreferences getRusInfoPreferences() {
        if (this.mRusInfoPreferences == null) {
            this.mRusInfoPreferences = this.mContext.getSharedPreferences("rom_update_info", 0);
        }
        return this.mRusInfoPreferences;
    }

    private void parseXMLWithPull(String str) {
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                String name = newPullParser.getName();
                if (eventType == 2) {
                    if (CameraStatisticsUtil.RUS_FILE_VERSION.equals(name)) {
                        String nextText = newPullParser.nextText();
                        updateLocalInfoPreference(name, nextText);
                        d.a(TAG, "parseXMLWithPull key: " + name + ", value: " + nextText);
                    } else if (name.startsWith(PREFIX_LOCAL)) {
                        String substring = name.substring(7);
                        String nextText2 = newPullParser.nextText();
                        updateLocalInfoPreference(substring, nextText2);
                        d.a(TAG, "parseXMLWithPull key: " + substring + ", value: " + nextText2);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0083, code lost:
        if (r8 == null) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0085, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r8 == null) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0096, code lost:
        com.oppo.camera.d.a(TAG, "queryUpdateRomProvider, content: " + r1 + ", md5: " + r4 + ", version: " + r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00be, code lost:
        if (android.text.TextUtils.isEmpty(r1) != false) goto L_0x0152;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00c4, code lost:
        if (android.text.TextUtils.isEmpty(r4) != false) goto L_0x0152;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00c6, code lost:
        if (r14 > 0) goto L_0x00ca;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00d2, code lost:
        if (r4.equals(com.oppo.camera.update.MD5Utils.getMD5(r1)) != false) goto L_0x00da;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00d4, code lost:
        com.oppo.camera.d.a(TAG, "queryUpdateRomProvider, file damage");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00d9, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00da, code lost:
        r0 = java.lang.Integer.parseInt(getRusInfoPreferences().getString(r0 + VERSION, "0"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00fd, code lost:
        if (r0 <= r14) goto L_0x011d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00ff, code lost:
        com.oppo.camera.d.a(TAG, "queryUpdateRomProvider, do not need to update, nowVersion: " + r0 + ", version: " + r14);
        r2.put(KEY_UPDATE_STATE, UPDATED_TOKEN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x011d, code lost:
        if (r0 != r14) goto L_0x013d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x011f, code lost:
        com.oppo.camera.d.a(TAG, "queryUpdateRomProvider, do not need to update, nowVersion: " + r0 + ", version: " + r14);
        r2.put(KEY_UPDATE_STATE, EQUAL_TOKEN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x013d, code lost:
        r2.put(KEY_UPDATE_STATE, NEED_UPDATE_TOKEN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0142, code lost:
        r2.put(KEY_CONTENT, r1);
        r2.put(com.oppo.providers.downloads.OppoDownloads.COL_MD5, r4);
        r2.put(com.oppo.camera.statistics.CameraStatisticsUtil.RUS_FILE_VERSION, java.lang.String.valueOf(r14));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0151, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0152, code lost:
        com.oppo.camera.d.a(TAG, "queryUpdateRomProvider, content is not correct");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0157, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x015c  */
    private Map<String, String> queryUpdateRomProvider(String str) {
        String str2;
        Cursor cursor;
        String str3;
        String str4 = str;
        String str5 = "";
        d.a(TAG, "queryUpdateRomProvider, fileName: " + str4);
        HashMap hashMap = new HashMap();
        String[] strArr = {COLUMN_XML, COLUMN_FIME_NAME, CameraStatisticsUtil.RUS_FILE_VERSION, OppoDownloads.COL_MD5};
        Cursor cursor2 = null;
        int i = 0;
        try {
            cursor = this.mContext.getContentResolver().query(UPDATE_URI, strArr, "filtername = \"" + str4 + "\"", (String[]) null, (String) null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex(COLUMN_XML));
                        try {
                            String string2 = cursor.getString(cursor.getColumnIndex(OppoDownloads.COL_MD5));
                            i = cursor.getInt(cursor.getColumnIndex(CameraStatisticsUtil.RUS_FILE_VERSION));
                            String str6 = string;
                            str2 = string2;
                            str5 = str6;
                        } catch (Exception unused) {
                            String str7 = string;
                            str3 = str5;
                            str5 = str7;
                            try {
                                d.a(TAG, "queryUpdateRomProvider, query uri err");
                            } catch (Throwable th) {
                                th = th;
                                cursor2 = cursor;
                                if (cursor2 != null) {
                                }
                                throw th;
                            }
                        }
                    }
                } catch (Exception unused2) {
                    str3 = str5;
                    d.a(TAG, "queryUpdateRomProvider, query uri err");
                }
            }
            str2 = str5;
        } catch (Exception unused3) {
            str3 = str5;
            cursor = null;
            d.a(TAG, "queryUpdateRomProvider, query uri err");
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public static synchronized void release() {
        synchronized (UpdateUtil.class) {
            sUpdateUtil = null;
        }
    }

    private void resetList() {
        ArrayList<UpdateOperation> arrayList = this.mUpdateOperationList;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList<UpdateOperation> arrayList2 = this.mAppLaterUpdateOperationList;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
    }

    /* access modifiers changed from: private */
    public void startUpdateAppParameter() {
        resetList();
        Map<String, String> queryUpdateRomProvider = queryUpdateRomProvider(APP_TO_UPDATE);
        if (queryUpdateRomProvider != null) {
            d.a(TAG, "startUpdateAppParameter, content: " + queryUpdateRomProvider.get(KEY_CONTENT));
            if (NEED_UPDATE_TOKEN.equals(queryUpdateRomProvider.get(KEY_UPDATE_STATE)) && updateAppParameter(queryUpdateRomProvider.get(KEY_CONTENT))) {
                updateRusInfoPreference("camera_update_app_operation_VERSION", queryUpdateRomProvider.get(CameraStatisticsUtil.RUS_FILE_VERSION));
            }
        }
    }

    private boolean startUpdateDriverContent(String[] strArr) {
        boolean z = true;
        do {
            int i = this.mNowTryTime;
            if (i >= 3) {
                break;
            }
            this.mNowTryTime = i + 1;
            if (strArr != null && strArr.length > 0) {
                for (String startUpdateParameter : strArr) {
                    z = startUpdateParameter(startUpdateParameter);
                    if (!z) {
                        continue;
                        break;
                    }
                }
                continue;
            }
        } while (!z);
        return z;
    }

    /* access modifiers changed from: private */
    public void startUpdateHardwareParameter() {
        this.mNowTryTime = 0;
        File file = new File(TARGET_FOLDER);
        try {
            d.a(TAG, "startUpdateHardwareParameter, fileFolder.exists: " + file.exists());
            if (!file.exists()) {
                a.f(file.getAbsolutePath());
            }
            Map<String, String> queryUpdateRomProvider = queryUpdateRomProvider(FILE_NAME_TO_UPDATE);
            if (queryUpdateRomProvider != null && !UPDATED_TOKEN.equals(queryUpdateRomProvider.get(KEY_UPDATE_STATE)) && queryUpdateRomProvider.size() <= 50 && startUpdateDriverContent(queryUpdateRomProvider.get(KEY_CONTENT).replaceAll("\r", "").split(SPLIT_TOKEN))) {
                updateRusInfoPreference("camera_update_file_name_VERSION", queryUpdateRomProvider.get(CameraStatisticsUtil.RUS_FILE_VERSION));
            }
            try {
                Runtime.getRuntime().exec("chmod 777 -R " + TARGET_FOLDER);
            } catch (Exception e) {
                d.e(TAG, "startUpdateHardwareParameter , chmod fail, e: " + e.getMessage());
            }
        } catch (Exception unused) {
            d.e(TAG, "startUpdateHardwareParameter, mkdir err");
        }
    }

    /* access modifiers changed from: private */
    public void startUpdateLocalParameter() {
        if (getLocalInfoPreferences().getString(CameraStatisticsUtil.RUS_FILE_VERSION, (String) null) != null) {
            d.a(TAG, "startUpdateLocalParameter don't need update, localVersion: " + r0);
            return;
        }
        String str = "/oppo_version/etc/temperature_profile/sys_high_temp_protect_" + com.oppo.camera.o.d.r() + UNDER_LINE + com.oppo.camera.o.d.o() + UNDER_LINE + com.oppo.camera.o.d.i() + ".xml";
        String c = com.oppo.camera.o.d.c(str);
        if (c == null) {
            str = "/oppo_version/etc/temperature_profile/sys_high_temp_protect_" + com.oppo.camera.o.d.r() + UNDER_LINE + com.oppo.camera.o.d.o() + ".xml";
            c = com.oppo.camera.o.d.c(str);
        }
        d.a(TAG, "startUpdateLocalParameter, content: " + c + ", path: " + str);
        if (c != null) {
            parseXMLWithPull(c);
        }
    }

    private boolean startUpdateParameter(String str) {
        String str2 = str;
        d.a(TAG, "startUpdateParameter, fileName: " + str2);
        if (!TextUtils.isEmpty(str)) {
            Map<String, String> queryUpdateRomProvider = queryUpdateRomProvider(str);
            if (queryUpdateRomProvider != null) {
                d.a(TAG, "startUpdateParameter, content: " + queryUpdateRomProvider.get(KEY_CONTENT));
                if (str2.contains(PREFIX_DRIVER) || str2.contains(PREFIX_EFFECT)) {
                    String str3 = TARGET_FOLDER + str2;
                    File file = new File(str3);
                    if (!NEED_UPDATE_TOKEN.equals(queryUpdateRomProvider.get(KEY_UPDATE_STATE))) {
                        if (!file.exists()) {
                            writeContentToTargetFile(str3, queryUpdateRomProvider.get(KEY_CONTENT));
                            if (!queryUpdateRomProvider.get(OppoDownloads.COL_MD5).equals(MD5Utils.md5Sum(str3))) {
                                d.a(TAG, "startUpdateParameter, update fail");
                                deleteFile(file);
                                return false;
                            }
                            SystemPropertiesNative.set(SYSTEM_KEY_UPDATE_TOKEN, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
                            if (UPDATED_TOKEN.equals(queryUpdateRomProvider.get(KEY_UPDATE_STATE))) {
                                updateRusInfoPreference(str2 + VERSION, queryUpdateRomProvider.get(CameraStatisticsUtil.RUS_FILE_VERSION));
                            }
                        }
                        return true;
                    }
                    File file2 = new File(str3 + BACK_UP);
                    if (file.exists()) {
                        a.b(str3, str3 + BACK_UP);
                    }
                    writeContentToTargetFile(str3, queryUpdateRomProvider.get(KEY_CONTENT));
                    if (!queryUpdateRomProvider.get(OppoDownloads.COL_MD5).equals(MD5Utils.md5Sum(str3))) {
                        d.a(TAG, "startUpdateParameter, update fail");
                        deleteFile(file);
                        File file3 = new File(str3);
                        if (!file2.exists()) {
                            return false;
                        }
                        a.b(file2.getAbsolutePath(), file3.getAbsolutePath());
                        return false;
                    }
                    SystemPropertiesNative.set(SYSTEM_KEY_UPDATE_TOKEN, MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST);
                    deleteFile(file2);
                    updateRusInfoPreference(str2 + VERSION, queryUpdateRomProvider.get(CameraStatisticsUtil.RUS_FILE_VERSION));
                    return true;
                }
            }
        }
        return false;
    }

    private boolean updateAppParameter(String str) {
        if (this.mGson == null) {
            this.mGson = new Gson();
        }
        try {
            this.mUpdateOperationList = (ArrayList) this.mGson.fromJson(str, new TypeToken<List<UpdateOperation>>() {
            }.getType());
            if (this.mUpdateOperationList == null) {
                d.e(TAG, "updateAppParameter fail, mUpdateOperationList is null!");
                return false;
            }
            for (int i = 0; i < this.mUpdateOperationList.size(); i++) {
                UpdateOperation updateOperation = this.mUpdateOperationList.get(i);
                if (APP_UPDATE_TYPE_PREFERENCE_NOW.equals(updateOperation.getOperation())) {
                    updateRusInfoPreference(updateOperation.getKey(), updateOperation.getValue());
                }
                if (APP_UPDATE_TYPE_PREFERENCE_LATER.equals(updateOperation.getOperation())) {
                    if (this.mAppLaterUpdateOperationList == null) {
                        this.mAppLaterUpdateOperationList = new ArrayList<>();
                    }
                    this.mAppLaterUpdateOperationList.add(updateOperation);
                }
            }
            return true;
        } catch (Exception e) {
            d.e(TAG, "updateAppParameter fail, e: " + e.getMessage());
            return false;
        }
    }

    private void updateLocalInfoPreference(String str, String str2) {
        SharedPreferences.Editor edit = getLocalInfoPreferences().edit();
        edit.putString(str, str2);
        edit.apply();
    }

    private void updateRusInfoPreference(String str, String str2) {
        SharedPreferences.Editor edit = getRusInfoPreferences().edit();
        edit.putString(str, str2);
        edit.apply();
        if (str.contains(VERSION)) {
            CameraStatisticsUtil.onCommon(this.mContext, CameraStatisticsUtil.EVENT_RUS, CameraStatisticsUtil.format(CameraStatisticsUtil.RUS_FILE_NAME, str) + " " + CameraStatisticsUtil.format(CameraStatisticsUtil.RUS_FILE_VERSION, str2), true);
        }
    }

    private void writeContentToTargetFile(String str, String str2) {
        d.a(TAG, "writeContentToTargetFile, targetFile: " + str + ", content: " + str2);
        a.b(str, a.f2243b, str2.getBytes());
    }

    public void onPause() {
    }

    public void startUpdate(final boolean z, final boolean z2, final boolean z3) {
        new Thread(new Runnable() {
            public void run() {
                synchronized (UpdateUtil.LOCK) {
                    if (z) {
                        UpdateUtil.this.startUpdateHardwareParameter();
                    }
                    if (z2) {
                        UpdateUtil.this.startUpdateAppParameter();
                    }
                    if (z3) {
                        UpdateUtil.this.startUpdateLocalParameter();
                    }
                }
            }
        }).start();
    }

    public void startUpdateAllPara() {
        startUpdate(true, true, true);
    }
}
