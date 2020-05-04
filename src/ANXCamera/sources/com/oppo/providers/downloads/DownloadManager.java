package com.oppo.providers.downloads;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import com.android.providers.downloads.DownloadInfoData;
import com.android.providers.downloads.Downloads;
import com.oppo.providers.downloads.utils.LogUtils;
import com.sensetime.stmobile.STCommon;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DownloadManager {
    public static final String ACTION_DOWNLOAD_COMPLETE = "android.intent.action.DOWNLOAD_COMPLETE";
    public static final String ACTION_NOTIFICATION_CLICKED = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED";
    private static final String ACTION_UI_PACKAGEBANE = "coloros.intent.action.VIEW_DOWNLOADS";
    public static final String ACTION_VIEW_DOWNLOADS = "android.intent.action.VIEW_DOWNLOADS";
    private static final String AS = " AS ";
    public static final String CHANGE_TYPE_DELETE = "delete";
    public static final String CHANGE_TYPE_INSERT = "insert";
    public static final String CHANGE_TYPE_UPDATE = "update";
    public static final String COLUMN_ALLOW_WRITE = "allow_write";
    public static final String COLUMN_BYTES_DOWNLOADED_SO_FAR = "bytes_so_far";
    public static final String COLUMN_DESCRIPTION = "description";
    public static final String COLUMN_DESTINATION = "destination";
    public static final String COLUMN_FILE_NAME_HINT = "hint";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_LAST_MODIFIED_TIMESTAMP = "last_modified_timestamp";
    @Deprecated
    public static final String COLUMN_LOCAL_FILENAME = "local_filename";
    public static final String COLUMN_LOCAL_URI = "local_uri";
    public static final String COLUMN_MEDIAPROVIDER_URI = "mediaprovider_uri";
    public static final String COLUMN_MEDIA_TYPE = "media_type";
    public static final String COLUMN_REASON = "reason";
    public static final String COLUMN_STATUS = "status";
    public static final String COLUMN_TITLE = "title";
    public static final String COLUMN_TOTAL_SIZE_BYTES = "total_size";
    public static final String COLUMN_URI = "uri";
    private static final String DEFAULT_PROVIDER_PACKAGENAME = "com.android.providers.downloads";
    private static final String DEFAULT_UI_PACKAGENAME = "com.coloros.providers.downloads.ui";
    public static final int ERROR_BLOCKED = 1010;
    public static final int ERROR_CANNOT_RESUME = 1008;
    public static final int ERROR_DEVICE_NOT_FOUND = 1007;
    public static final int ERROR_FILE_ALREADY_EXISTS = 1009;
    public static final int ERROR_FILE_ERROR = 1001;
    public static final int ERROR_HTTP_CLIENT_ERROR = 1012;
    public static final int ERROR_HTTP_DATA_ERROR = 1004;
    public static final int ERROR_HTTP_SERVER_ERROR = 1011;
    public static final int ERROR_INSUFFICIENT_SPACE = 1006;
    public static final int ERROR_TOO_MANY_REDIRECTS = 1005;
    public static final int ERROR_UNHANDLED_HTTP_CODE = 1002;
    public static final int ERROR_UNKNOWN = 1000;
    public static final String EXTRA_DOWNLOAD_ID = "extra_download_id";
    public static final String EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS = "extra_click_download_ids";
    public static final String INTENT_EXTRAS_SORT_BY_SIZE = "android.app.DownloadManager.extra_sortBySize";
    private static final String NON_DOWNLOADMANAGER_DOWNLOAD = "non-dwnldmngr-download-dont-retry2download";
    public static final int PAUSED_BY_APP = 5;
    public static final int PAUSED_DEVICE_NOT_FOUND_ERROR = 7;
    public static final int PAUSED_INSUFFICIENT_SPACE_ERROR = 6;
    public static final int PAUSED_QUEUED_FOR_WIFI = 3;
    public static final int PAUSED_UNKNOWN = 4;
    public static final int PAUSED_WAITING_FOR_NETWORK = 2;
    public static final int PAUSED_WAITING_TO_RETRY = 1;
    private static final String PROVIDER_VERSION = "provider_version";
    public static final int STATUS_FAILED = 16;
    public static final int STATUS_MASK = 31;
    public static final int STATUS_PAUSED = 4;
    public static final int STATUS_PENDING = 1;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUCCESSFUL = 8;
    private static final String TAG = "DownloadManager";
    public static final String[] UNDERLYING_COLUMNS = {COLUMN_ID, COLUMN_LOCAL_FILENAME, "mediaprovider_uri", "destination", "title", "description", "uri", "status", "hint", COLUMN_MEDIA_TYPE, COLUMN_TOTAL_SIZE_BYTES, COLUMN_LAST_MODIFIED_TIMESTAMP, COLUMN_BYTES_DOWNLOADED_SO_FAR, "allow_write", COLUMN_LOCAL_URI, COLUMN_REASON, Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE, Downloads.Impl.COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI, OppoDownloads.COLUMN_DOWNLOAD_SPEED};
    public static final String[] UNDERLYING_COLUMNS_OLD = {COLUMN_ID, "_data AS local_filename", "mediaprovider_uri", "destination", "title", "description", "uri", "status", "hint", Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE, "mimetype AS media_type", "total_bytes AS total_size", "lastmod AS last_modified_timestamp", "current_bytes AS bytes_so_far", "allow_write", Downloads.Impl.COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI, OppoDownloads.COLUMN_DOWNLOAD_SPEED, "'placeholder' AS local_uri", "'placeholder' AS reason"};
    /* access modifiers changed from: private */
    public static int mDownloadProviderVersionForManager = 0;
    private static DownloadManager sDownloadManager;
    private static HandlerThread sHandlerThread = new HandlerThread(TAG);
    private boolean mAccessFilename;
    private Uri mBaseUri = Downloads.Impl.CONTENT_URI;
    private DownloadManagerContentObserver mDownloadChangeObserver;
    /* access modifiers changed from: private */
    public DownloadDBCallback mDownloadDBCallback;
    /* access modifiers changed from: private */
    public DownloadStatesCallback mDownloadStatesCallback;
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler(sHandlerThread.getLooper());
    /* access modifiers changed from: private */
    public final String mPackageName;
    private final ContentResolver mResolver;

    public static class CursorTranslator extends CursorWrapper {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean mAccessFilename;
        private final Uri mBaseUri;

        static {
            Class<DownloadManager> cls = DownloadManager.class;
        }

        public CursorTranslator(Cursor cursor, Uri uri, boolean z) {
            super(cursor);
            this.mBaseUri = uri;
            this.mAccessFilename = z;
        }

        private static long getErrorCode(int i) {
            if ((400 <= i && i < 488) || (500 <= i && i < 600)) {
                return (400 > i || i >= 488) ? 1011 : 1012;
            }
            if (i == 198) {
                return 1006;
            }
            if (i == 199) {
                return 1007;
            }
            if (i == 488) {
                return 1009;
            }
            if (i == 489) {
                return 1008;
            }
            if (i == 497) {
                return 1005;
            }
            switch (i) {
                case Downloads.Impl.STATUS_FILE_ERROR:
                    return 1001;
                case Downloads.Impl.STATUS_UNHANDLED_REDIRECT:
                case Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE:
                    return 1002;
                case Downloads.Impl.STATUS_HTTP_DATA_ERROR:
                    return 1004;
                default:
                    return 1000;
            }
        }

        private String getLocalUri() {
            long j = getLong(getColumnIndex("destination"));
            if (j == 4 || j == 0 || j == 6) {
                String string = super.getString(getColumnIndex(DownloadManager.COLUMN_LOCAL_FILENAME));
                if (string == null) {
                    return null;
                }
                return Uri.fromFile(new File(string)).toString();
            }
            return ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, getLong(getColumnIndex(DownloadManager.COLUMN_ID))).toString();
        }

        private static long getPausedReason(int i) {
            switch (i) {
                case 193:
                    return 5;
                case 194:
                    return 1;
                case 195:
                    return 2;
                case 196:
                    return 3;
                case 198:
                    return 6;
                default:
                    return 4;
            }
        }

        public static long getReason(int i) {
            int translateStatus = translateStatus(i);
            if (translateStatus == 4) {
                return getPausedReason(i);
            }
            if (translateStatus != 16) {
                return 0;
            }
            return getErrorCode(i);
        }

        public static int translateStatus(int i) {
            switch (i) {
                case 190:
                    return 1;
                case 192:
                    return 2;
                case 193:
                case 194:
                case 195:
                case 196:
                case 198:
                    return 4;
                case 200:
                    return 8;
                default:
                    return 16;
            }
        }

        public int getInt(int i) {
            return getColumnName(i).equals(DownloadManager.COLUMN_REASON) ? (int) getReason(super.getInt(getColumnIndex("status"))) : getColumnName(i).equals("status") ? translateStatus(super.getInt(getColumnIndex("status"))) : getColumnName(i).equals(OppoDownloads.COLUMN_STATUS_DETAILED) ? super.getInt(getColumnIndex("status")) : super.getInt(i);
        }

        /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x003f  */
        public String getString(int i) {
            char c;
            String columnName = getColumnName(i);
            int hashCode = columnName.hashCode();
            if (hashCode != -1204869480) {
                if (hashCode == 22072411 && columnName.equals(DownloadManager.COLUMN_LOCAL_FILENAME)) {
                    c = 1;
                    if (c == 0) {
                        return getLocalUri();
                    }
                    if (c != 1 || this.mAccessFilename) {
                        return super.getString(i);
                    }
                    throw new SecurityException("COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead");
                }
            } else if (columnName.equals(DownloadManager.COLUMN_LOCAL_URI)) {
                c = 0;
                if (c == 0) {
                }
            }
            c = 65535;
            if (c == 0) {
            }
        }
    }

    public interface DownloadDBCallback {
        void onDownloadProviderDBChanged();
    }

    class DownloadManagerContentObserver extends ContentObserver {
        public DownloadManagerContentObserver(Handler handler) {
            super(handler);
        }

        /* access modifiers changed from: private */
        public void handleDownloadInfo(List<DownloadInfoData> list, String str) {
            if (list.get(0).mPackage == null) {
                LogUtils.e(DownloadManager.TAG, "downloadInfo.mPackage = null, return");
            } else if (DownloadManager.this.mPackageName == null || list.get(0).mPackage.equals(DownloadManager.this.mPackageName)) {
                if (LogUtils.QE_ENABLE) {
                    LogUtils.v(DownloadManager.TAG, "handleDownloadInfo.list downloadInfos.size = " + list.size());
                }
                if (DownloadManager.this.mDownloadStatesCallback == null) {
                    LogUtils.e(DownloadManager.TAG, "handleDownloadInfo list mDownloadStatesCallback = null");
                } else if (str.equalsIgnoreCase(DownloadManager.CHANGE_TYPE_INSERT)) {
                    DownloadManager.this.mDownloadStatesCallback.onDownloadInserted(list);
                } else if (str.equalsIgnoreCase(DownloadManager.CHANGE_TYPE_UPDATE)) {
                    DownloadManager.this.mDownloadStatesCallback.onDownloadUpdated(list);
                }
            } else {
                LogUtils.e(DownloadManager.TAG, "handleDownloadInfo list downloadInfo.mPackage = " + list.get(0).mPackage + ". is not equal " + DownloadManager.this.mPackageName);
            }
        }

        public void onChange(boolean z) {
            onChange(z, (Uri) null);
        }

        public void onChange(boolean z, final Uri uri) {
            if (LogUtils.QE_ENABLE) {
                LogUtils.v(DownloadManager.TAG, "onChange run, uri = " + uri);
            }
            if (DownloadManager.this.mDownloadDBCallback != null) {
                DownloadManager.this.mDownloadDBCallback.onDownloadProviderDBChanged();
            } else if (uri == null) {
                LogUtils.e(DownloadManager.TAG, "onChange error uri = null, return.");
            } else if (DownloadManager.this.mDownloadStatesCallback == null) {
                LogUtils.e(DownloadManager.TAG, "onChange error mDownloadStatesCallback = null, return.");
            } else {
                DownloadManager.this.mHandler.post(new Runnable() {
                    public void run() {
                        if (LogUtils.QE_ENABLE) {
                            LogUtils.v(DownloadManager.TAG, "onChange run, start! mPackageName=" + DownloadManager.this.mPackageName + "/uri = " + uri);
                        }
                        if (uri.getPathSegments().size() > 2) {
                            String uri = uri.toString();
                            String str = DownloadManager.CHANGE_TYPE_INSERT;
                            if (!uri.contains(str)) {
                                if (uri.contains(DownloadManager.CHANGE_TYPE_UPDATE)) {
                                    str = DownloadManager.CHANGE_TYPE_UPDATE;
                                } else if (uri.contains(DownloadManager.CHANGE_TYPE_DELETE)) {
                                    str = DownloadManager.CHANGE_TYPE_DELETE;
                                } else {
                                    LogUtils.e(DownloadManager.TAG, "onChange type error uriString = " + uri);
                                    return;
                                }
                            }
                            String[] split = uri.getLastPathSegment().split("-");
                            if (LogUtils.QE_ENABLE) {
                                LogUtils.v(DownloadManager.TAG, "onChange run, changeType = " + str + Arrays.toString(split));
                            }
                            if (split == null || split.length <= 0) {
                                LogUtils.e(DownloadManager.TAG, "onChange error no valid id");
                                return;
                            }
                            try {
                                if (str.equalsIgnoreCase(DownloadManager.CHANGE_TYPE_DELETE)) {
                                    ArrayList arrayList = new ArrayList();
                                    for (String str2 : split) {
                                        int indexOf = str2.indexOf(124);
                                        DownloadInfoData downloadInfoData = new DownloadInfoData();
                                        downloadInfoData.mId = Long.parseLong(str2.substring(0, indexOf));
                                        downloadInfoData.mUuid = str2.substring(indexOf + 1);
                                        arrayList.add(downloadInfoData);
                                    }
                                    if (DownloadManager.this.mDownloadStatesCallback != null) {
                                        DownloadManager.this.mDownloadStatesCallback.onDownloadDeleted(arrayList);
                                    } else {
                                        LogUtils.e(DownloadManager.TAG, "onChange return mDownloadStatesCallback  is null");
                                    }
                                } else {
                                    long[] jArr = new long[split.length];
                                    for (int i = 0; i < split.length; i++) {
                                        jArr[i] = Long.valueOf(Long.parseLong(split[i])).longValue();
                                        if (LogUtils.QE_ENABLE) {
                                            LogUtils.v(DownloadManager.TAG, "onChange run, split i = " + i + "/ id =" + r5);
                                        }
                                    }
                                    List<DownloadInfoData> downloadData = DownloadManager.this.getDownloadData(jArr);
                                    if (downloadData != null && downloadData.size() > 0) {
                                        DownloadManagerContentObserver.this.handleDownloadInfo(downloadData, str);
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                            LogUtils.e(DownloadManager.TAG, "onChange run, pathSegments.size <= 2, uri has't downloadid");
                        }
                    }
                });
            }
        }
    }

    public static class Query {
        public static final int ORDER_ASCENDING = 1;
        public static final int ORDER_DESCENDING = 2;
        private long[] mIds = null;
        private boolean mOnlyIncludeVisibleInDownloadsUi = false;
        private boolean mOnlyIncludeVisibleInSelfUi = false;
        private String mOrderByColumn = Downloads.Impl.COLUMN_LAST_MODIFICATION;
        private int mOrderDirection = 2;
        private String[] mPackageNames = null;
        private String[] mProjection = null;
        private Integer mStatusFlags = null;
        private String mUri = null;
        private String[] mUuids = null;

        private boolean isNewProjectionStyle() {
            return DownloadManager.mDownloadProviderVersionForManager > 0;
        }

        private String joinStrings(String str, Iterable<String> iterable) {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (String next : iterable) {
                if (!z) {
                    sb.append(str);
                }
                sb.append(next);
                z = false;
            }
            return sb.toString();
        }

        private String statusClause(String str, int i) {
            return "status" + str + "'" + i + "'";
        }

        private void verifyProjection() {
            if (this.mProjection != null) {
                int i = 0;
                while (true) {
                    String[] strArr = this.mProjection;
                    if (i < strArr.length) {
                        if (!TextUtils.isEmpty(strArr[i])) {
                            if (this.mProjection[i].contains(DownloadManager.AS)) {
                                int indexOf = this.mProjection[i].indexOf(DownloadManager.AS);
                                String[] strArr2 = this.mProjection;
                                strArr2[i] = strArr2[i].substring(indexOf + 4);
                            } else if (this.mProjection[i].contains(DownloadManager.AS.toLowerCase())) {
                                int indexOf2 = this.mProjection[i].indexOf(DownloadManager.AS.toLowerCase());
                                String[] strArr3 = this.mProjection;
                                strArr3[i] = strArr3[i].substring(indexOf2 + DownloadManager.AS.toLowerCase().length());
                            }
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }

        public String[] concatAll(String[] strArr, String[]... strArr2) {
            if (strArr == null || strArr2 == null) {
                return null;
            }
            int length = strArr.length;
            for (String[] strArr3 : strArr2) {
                if (strArr3 != null && strArr3.length > 0) {
                    length += strArr3.length;
                }
            }
            String[] strArr4 = (String[]) Arrays.copyOf(strArr, length);
            int length2 = strArr.length;
            int i = length2;
            for (String[] strArr5 : strArr2) {
                if (strArr5 != null && strArr5.length > 0) {
                    System.arraycopy(strArr5, 0, strArr4, i, strArr5.length);
                    i += strArr5.length;
                }
            }
            return strArr4;
        }

        public String[] getProjection() {
            String[] strArr = this.mProjection;
            return strArr == null ? isNewProjectionStyle() ? DownloadManager.UNDERLYING_COLUMNS : DownloadManager.UNDERLYING_COLUMNS_OLD : strArr;
        }

        public String getSelection() {
            ArrayList arrayList = new ArrayList();
            long[] jArr = this.mIds;
            if (jArr != null) {
                arrayList.add(DownloadManager.getWhereClauseForIds(jArr));
            }
            String[] strArr = this.mUuids;
            if (strArr != null) {
                arrayList.add(DownloadManager.getWhereClauseForUuids(strArr));
            }
            if (LogUtils.QE_ENABLE) {
                LogUtils.v(DownloadManager.TAG, "getSelection , mPackageNames = " + Arrays.toString(this.mPackageNames) + ", this = " + this);
            }
            String[] strArr2 = this.mPackageNames;
            if (strArr2 != null) {
                arrayList.add(DownloadManager.getWhereClauseForPackages(strArr2));
            }
            if (this.mStatusFlags != null) {
                ArrayList arrayList2 = new ArrayList();
                if ((this.mStatusFlags.intValue() & 1) != 0) {
                    arrayList2.add(statusClause("=", 190));
                }
                if ((this.mStatusFlags.intValue() & 2) != 0) {
                    arrayList2.add(statusClause("=", 192));
                }
                if ((this.mStatusFlags.intValue() & 4) != 0) {
                    arrayList2.add(statusClause("=", 193));
                    arrayList2.add(statusClause("=", 194));
                    arrayList2.add(statusClause("=", 195));
                    arrayList2.add(statusClause("=", 196));
                    arrayList2.add(statusClause("=", 198));
                }
                if ((this.mStatusFlags.intValue() & 8) != 0) {
                    arrayList2.add(statusClause("=", 200));
                }
                if ((this.mStatusFlags.intValue() & 16) != 0) {
                    arrayList2.add("(" + statusClause(">=", 400) + " AND " + statusClause("<", 600) + ")");
                    arrayList2.add(statusClause("=", 199));
                }
                if (arrayList2.size() > 0) {
                    arrayList.add("(" + joinStrings(" OR ", arrayList2) + ")");
                }
            }
            if (this.mOnlyIncludeVisibleInSelfUi) {
                arrayList.add("is_visible_in_downloads_ui != '0'");
            } else if (this.mOnlyIncludeVisibleInDownloadsUi) {
                arrayList.add("is_visible_in_downloads_ui = '1'");
            }
            arrayList.add("deleted != '1'");
            if (!TextUtils.isEmpty(this.mUri)) {
                arrayList.add("uri = '" + this.mUri + "'");
            }
            String joinStrings = joinStrings(" AND ", arrayList);
            if (LogUtils.QE_ENABLE) {
                LogUtils.v(DownloadManager.TAG, "getSelection. selection = " + joinStrings);
            }
            return joinStrings;
        }

        public String[] getSelectionArgs() {
            String[] strArr = new String[0];
            String[] strArr2 = new String[0];
            String[] strArr3 = new String[0];
            long[] jArr = this.mIds;
            if (jArr != null) {
                strArr = DownloadManager.getWhereArgsForIds(jArr);
            }
            String[] strArr4 = this.mUuids;
            if (strArr4 != null) {
                strArr2 = strArr4;
            }
            String[] strArr5 = this.mPackageNames;
            if (strArr5 != null) {
                strArr3 = strArr5;
            }
            String[] concatAll = concatAll(strArr, strArr2, strArr3);
            DownloadManager.dumpArray(concatAll);
            return concatAll;
        }

        public String getSortOrder() {
            String str = this.mOrderDirection == 1 ? "ASC" : "DESC";
            return this.mOrderByColumn + " " + str;
        }

        public Query orderBy(String str, int i) {
            if (i == 1 || i == 2) {
                if (TextUtils.isEmpty(str)) {
                    this.mOrderByColumn = Downloads.Impl.COLUMN_LAST_MODIFICATION;
                } else if (str.equals(DownloadManager.COLUMN_LAST_MODIFIED_TIMESTAMP)) {
                    this.mOrderByColumn = Downloads.Impl.COLUMN_LAST_MODIFICATION;
                } else if (str.equals(DownloadManager.COLUMN_TOTAL_SIZE_BYTES)) {
                    this.mOrderByColumn = Downloads.Impl.COLUMN_TOTAL_BYTES;
                } else if (str.equals(DownloadManager.COLUMN_ID)) {
                    this.mOrderByColumn = DownloadManager.COLUMN_ID;
                } else {
                    throw new IllegalArgumentException("Cannot order by " + str);
                }
                this.mOrderDirection = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid direction: " + i);
        }

        /* access modifiers changed from: package-private */
        public Cursor runQuery(ContentResolver contentResolver, Uri uri) {
            try {
                return contentResolver.query(uri, getProjection(), getSelection(), getSelectionArgs(), getSortOrder());
            } catch (Exception e) {
                LogUtils.e(DownloadManager.TAG, "runQuery, occur exception. e = " + e.getMessage());
                return null;
            }
        }

        public Query setFilterById(long... jArr) {
            this.mIds = jArr;
            return this;
        }

        public Query setFilterByPackage(String... strArr) {
            this.mPackageNames = strArr;
            DownloadManager.dumpArray(this.mPackageNames);
            return this;
        }

        public Query setFilterByStatus(int i) {
            if ((i & 31) != 0) {
                this.mStatusFlags = Integer.valueOf(i);
                return this;
            }
            throw new IllegalArgumentException("invaild status.");
        }

        public Query setFilterByUri(String str) {
            this.mUri = str;
            return this;
        }

        public Query setFilterByUuid(String... strArr) {
            this.mUuids = strArr;
            return this;
        }

        public Query setOnlyIncludeVisibleInDownloadsUi(boolean z) {
            this.mOnlyIncludeVisibleInDownloadsUi = z;
            return this;
        }

        public Query setOnlyIncludeVisibleInSelfUi(boolean z) {
            this.mOnlyIncludeVisibleInSelfUi = z;
            return this;
        }

        public Query setProjection(String... strArr) {
            this.mProjection = strArr;
            if (isNewProjectionStyle()) {
                verifyProjection();
            }
            return this;
        }
    }

    public static class Request {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final int DEFAULT_PRIORITY = 0;
        public static final int MAX_PRIORITY = 10;
        @Deprecated
        public static final int NETWORK_BLUETOOTH = 4;
        public static final int NETWORK_MOBILE = 1;
        public static final int NETWORK_WIFI = 2;
        private static final int SCANNABLE_VALUE_NO = 2;
        private static final int SCANNABLE_VALUE_YES = 0;
        public static final int VISIBILITY_HIDDEN = 2;
        public static final int VISIBILITY_HIDDEN_UI = 0;
        public static final int VISIBILITY_VISIBLE = 0;
        public static final int VISIBILITY_VISIBLE_DOWNLOAD_UI = 1;
        public static final int VISIBILITY_VISIBLE_NOTIFY_COMPLETED = 1;
        public static final int VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION = 3;
        public static final int VISIBILITY_VISIBLE_SELF_UI = 2;
        private int mAllowedNetworkTypes = 6;
        private Uri mBackupUri;
        private CharSequence mDescription;
        private Uri mDestinationUri;
        private boolean mDownloadDelay = false;
        private String mExtra = null;
        private int mFailRetryCount = -1;
        private long mFailRetryInterval = -1;
        private String mFileMD5 = null;
        private int mFlags = 0;
        private String mHeaderMD5 = null;
        private boolean mIsRelpaceFile = false;
        private boolean mMeteredAllowed = true;
        private String mMimeType;
        private int mNotificationVisibility = 0;
        private int mPriority = 0;
        private List<Pair<String, String>> mRequestHeaders = new ArrayList();
        private boolean mRoamingAllowed = true;
        private boolean mScannable = false;
        private int mStatisticsId = -1;
        private CharSequence mTitle;
        private int mUIVisibility = 1;
        private Uri mUri;
        private boolean mUseSystemCache = false;

        static {
            Class<DownloadManager> cls = DownloadManager.class;
        }

        public Request(Uri uri) {
            if (uri != null) {
                String scheme = uri.getScheme();
                if (scheme == null || (!scheme.equals("http") && !scheme.equals("https"))) {
                    throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
                }
                this.mUri = uri;
                return;
            }
            throw new NullPointerException();
        }

        public Request(Uri uri, Uri uri2) {
            if (uri != null) {
                String scheme = uri.getScheme();
                if (scheme == null || (!scheme.equals("http") && !scheme.equals("https"))) {
                    throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
                }
                this.mUri = uri;
                if (uri2 != null) {
                    String scheme2 = uri2.getScheme();
                    if (scheme2 == null) {
                        return;
                    }
                    if (scheme2.equals("http") || scheme2.equals("https")) {
                        this.mBackupUri = uri2;
                        return;
                    }
                    return;
                }
                return;
            }
            throw new NullPointerException();
        }

        Request(String str) {
            this.mUri = Uri.parse(str);
        }

        private void encodeHttpHeaders(ContentValues contentValues) {
            int i = 0;
            for (Pair next : this.mRequestHeaders) {
                contentValues.put(Downloads.Impl.RequestHeaders.INSERT_KEY_PREFIX + i, ((String) next.first) + ": " + ((String) next.second));
                i++;
            }
        }

        private void putIfNonNull(ContentValues contentValues, String str, Object obj) {
            if (obj != null) {
                contentValues.put(str, obj.toString());
            }
        }

        private void setDestinationFromBase(File file, String str) {
            if (str != null) {
                this.mDestinationUri = Uri.withAppendedPath(Uri.fromFile(file), str);
                return;
            }
            throw new NullPointerException("subPath cannot be null");
        }

        public Request addRequestHeader(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("header cannot be null");
            } else if (!str.contains(":")) {
                if (str2 == null) {
                    str2 = "";
                }
                this.mRequestHeaders.add(Pair.create(str, str2));
                return this;
            } else {
                throw new IllegalArgumentException("header may not contain ':'");
            }
        }

        public void allowScanningByMediaScanner() {
            this.mScannable = true;
        }

        public Request setAllowedNetworkTypes(int i) {
            this.mAllowedNetworkTypes = i;
            return this;
        }

        public Request setAllowedOverMetered(boolean z) {
            this.mMeteredAllowed = z;
            return this;
        }

        public Request setAllowedOverRoaming(boolean z) {
            this.mRoamingAllowed = z;
            return this;
        }

        public Request setBackupUri(Uri uri) {
            if (uri != null) {
                String scheme = uri.getScheme();
                if (scheme != null && (scheme.equals("http") || scheme.equals("https"))) {
                    this.mBackupUri = uri;
                }
            }
            return this;
        }

        public Request setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public Request setDestinationInExternalFilesDir(Context context, String str, String str2) {
            File externalFilesDir = context.getExternalFilesDir(str);
            if (externalFilesDir != null) {
                if (externalFilesDir.exists()) {
                    if (!externalFilesDir.isDirectory()) {
                        throw new IllegalStateException(externalFilesDir.getAbsolutePath() + " already exists and is not a directory");
                    }
                } else if (!externalFilesDir.mkdirs()) {
                    throw new IllegalStateException("Unable to create directory: " + externalFilesDir.getAbsolutePath());
                }
                setDestinationFromBase(externalFilesDir, str2);
                return this;
            }
            throw new IllegalStateException("Failed to get external storage files directory");
        }

        public Request setDestinationInExternalPublicDir(String str, String str2) {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str);
            if (externalStoragePublicDirectory != null) {
                if (externalStoragePublicDirectory.exists()) {
                    if (!externalStoragePublicDirectory.isDirectory()) {
                        throw new IllegalStateException(externalStoragePublicDirectory.getAbsolutePath() + " already exists and is not a directory");
                    }
                } else if (!externalStoragePublicDirectory.mkdirs()) {
                    throw new IllegalStateException("Unable to create directory: " + externalStoragePublicDirectory.getAbsolutePath());
                }
                setDestinationFromBase(externalStoragePublicDirectory, str2);
                return this;
            }
            throw new IllegalStateException("Failed to get external storage public directory");
        }

        public Request setDestinationToSystemCache() {
            this.mUseSystemCache = true;
            return this;
        }

        public Request setDestinationUri(Uri uri) {
            this.mDestinationUri = uri;
            return this;
        }

        public Request setDownloadDelay(boolean z) {
            this.mDownloadDelay = z;
            return this;
        }

        public Request setExtra(String str) {
            this.mExtra = str;
            return this;
        }

        public Request setFailRetryCount(int i, long j) {
            if (i > 0) {
                this.mFailRetryCount = i;
                this.mFailRetryInterval = j;
                return this;
            }
            throw new IllegalArgumentException("invaild count.");
        }

        public Request setFileMD5(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mFileMD5 = str;
            }
            return this;
        }

        public Request setHeaderMD5(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mHeaderMD5 = str;
            }
            return this;
        }

        public Request setIsRelpaceFile(boolean z) {
            this.mIsRelpaceFile = z;
            return this;
        }

        public Request setMimeType(String str) {
            this.mMimeType = str;
            return this;
        }

        public Request setNotificationVisibility(int i) {
            this.mNotificationVisibility = i;
            return this;
        }

        public Request setOppoPriority(int i) {
            if (i > 10) {
                this.mPriority = 10;
            } else if (i < 0) {
                this.mPriority = 0;
            } else {
                this.mPriority = i;
            }
            return this;
        }

        public Request setRequiresCharging(boolean z) {
            if (z) {
                this.mFlags |= 1;
            } else {
                this.mFlags &= -2;
            }
            return this;
        }

        public Request setRequiresChargingIdle(boolean z) {
            if (z) {
                this.mFlags |= 4;
            } else {
                this.mFlags &= -5;
            }
            return this;
        }

        public Request setRequiresCpuIdle(boolean z) {
            if (z) {
                this.mFlags |= 16;
            } else {
                this.mFlags &= -17;
            }
            return this;
        }

        public Request setRequiresDeviceIdle(boolean z) {
            if (z) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }

        public Request setRequiresProtectFore(boolean z) {
            if (z) {
                this.mFlags |= 8;
            } else {
                this.mFlags &= -9;
            }
            return this;
        }

        @Deprecated
        public Request setShowRunningNotification(boolean z) {
            return setNotificationVisibility(z ? 0 : 2);
        }

        public Request setStatisticsId(int i) {
            this.mStatisticsId = i;
            return this;
        }

        public Request setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }

        public Request setVisibleInDownloadsUi(boolean z) {
            this.mUIVisibility = z ? 1 : 0;
            return this;
        }

        public Request setVisibleInUi(int i) {
            this.mUIVisibility = i;
            return this;
        }

        /* access modifiers changed from: package-private */
        public ContentValues toContentValues(String str) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("uri", this.mUri.toString());
            contentValues.put(Downloads.Impl.COLUMN_IS_PUBLIC_API, true);
            contentValues.put(Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE, str);
            int i = 2;
            if (this.mDestinationUri != null) {
                contentValues.put("destination", 4);
                contentValues.put("hint", this.mDestinationUri.toString());
            } else {
                contentValues.put("destination", Integer.valueOf(this.mUseSystemCache ? 5 : 2));
            }
            if (this.mScannable) {
                i = 0;
            }
            contentValues.put(Downloads.Impl.COLUMN_MEDIA_SCANNED, Integer.valueOf(i));
            if (!this.mRequestHeaders.isEmpty()) {
                encodeHttpHeaders(contentValues);
            }
            putIfNonNull(contentValues, "title", this.mTitle);
            putIfNonNull(contentValues, "description", this.mDescription);
            putIfNonNull(contentValues, Downloads.Impl.COLUMN_MIME_TYPE, this.mMimeType);
            contentValues.put(Downloads.Impl.COLUMN_VISIBILITY, Integer.valueOf(this.mNotificationVisibility));
            contentValues.put(Downloads.Impl.COLUMN_ALLOWED_NETWORK_TYPES, Integer.valueOf(this.mAllowedNetworkTypes));
            contentValues.put(Downloads.Impl.COLUMN_ALLOW_ROAMING, Boolean.valueOf(this.mRoamingAllowed));
            contentValues.put(Downloads.Impl.COLUMN_ALLOW_METERED, Boolean.valueOf(this.mMeteredAllowed));
            contentValues.put(Downloads.Impl.COLUMN_FLAGS, Integer.valueOf(this.mFlags));
            contentValues.put(Downloads.Impl.COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI, Integer.valueOf(this.mUIVisibility));
            if (this.mDownloadDelay) {
                contentValues.put(Downloads.Impl.COLUMN_CONTROL, 1);
                contentValues.put("status", 193);
            }
            putIfNonNull(contentValues, OppoDownloads.COLUMN_EXTRA, this.mExtra);
            contentValues.put(OppoDownloads.COLUMN_PRIORITY, Integer.valueOf(this.mPriority));
            contentValues.put(OppoDownloads.COLUMN_IS_REPLACE_FILE, Boolean.valueOf(this.mIsRelpaceFile));
            contentValues.put(OppoDownloads.COLUMN_STATISTICS_ID, Integer.valueOf(this.mStatisticsId));
            contentValues.put(OppoDownloads.VIRTUAL_COLUMN_FAIL_RETRY_COUNT, Integer.valueOf(this.mFailRetryCount));
            contentValues.put(OppoDownloads.VIRTUAL_COLUMN_TIME_INTERVAL_FOR_FAIL, Long.valueOf(this.mFailRetryInterval));
            Uri uri = this.mBackupUri;
            if (uri != null) {
                contentValues.put(OppoDownloads.COLUMN_BACKUP_URI, uri.toString());
            }
            putIfNonNull(contentValues, OppoDownloads.COL_MD5, this.mFileMD5);
            putIfNonNull(contentValues, OppoDownloads.COL_HEADER_MD5, this.mHeaderMD5);
            return contentValues;
        }
    }

    static {
        sHandlerThread.start();
    }

    private DownloadManager(Context context, String str) {
        if (context != null) {
            this.mResolver = context.getContentResolver();
            String packageName = context.getPackageName();
            if (getUIPackageName(context).equalsIgnoreCase(packageName)) {
                this.mPackageName = null;
            } else {
                this.mPackageName = TextUtils.isEmpty(str) ? packageName : str;
            }
            if (LogUtils.QE_ENABLE) {
                LogUtils.d(TAG, "DownloadManager. mPackageName = " + this.mPackageName);
            }
            this.mAccessFilename = context.getApplicationInfo().targetSdkVersion < 23;
            try {
                mDownloadProviderVersionForManager = context.getPackageManager().getApplicationInfo(DEFAULT_PROVIDER_PACKAGENAME, 128).metaData.getInt(PROVIDER_VERSION);
            } catch (Exception e) {
                LogUtils.e(TAG, "DownloadManager,exception: " + e);
            }
        } else {
            throw new IllegalArgumentException("The context and resolver can't be null !");
        }
    }

    public static void dumpArray(String[] strArr) {
        if (LogUtils.QE_ENABLE) {
            LogUtils.v(TAG, "dumpArray array= " + Arrays.toString(strArr));
        }
    }

    public static long getActiveNetworkWarningBytes(Context context) {
        return -1;
    }

    public static DownloadManager getDownloadManagerInstance(Context context) {
        return getDownloadManagerInstance(context, (String) null);
    }

    public static synchronized DownloadManager getDownloadManagerInstance(Context context, String str) {
        DownloadManager downloadManager;
        synchronized (DownloadManager.class) {
            if (sDownloadManager == null) {
                sDownloadManager = new DownloadManager(context.getApplicationContext(), str);
            }
            downloadManager = sDownloadManager;
        }
        return downloadManager;
    }

    public static Long getMaxBytesOverMobile(Context context) {
        return null;
    }

    public static Long getRecommendedMaxBytesOverMobile(Context context) {
        return null;
    }

    private static String getUIPackageName(Context context) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent(ACTION_UI_PACKAGEBANE), STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD);
        return (queryIntentActivities == null || queryIntentActivities.size() <= 0) ? DEFAULT_UI_PACKAGENAME : queryIntentActivities.get(0).activityInfo.packageName;
    }

    static String[] getWhereArgsForIds(long[] jArr) {
        String[] strArr = new String[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            strArr[i] = Long.toString(jArr[i]);
        }
        return strArr;
    }

    static String getWhereClauseForIds(long[] jArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i = 0; i < jArr.length; i++) {
            if (i > 0) {
                sb.append("OR ");
            }
            sb.append(COLUMN_ID);
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    static String getWhereClauseForPackages(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append("OR ");
            }
            sb.append(Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE);
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    static String getWhereClauseForUuids(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append("OR ");
            }
            sb.append(OppoDownloads.COLUMN_UUID);
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    public static boolean isActiveNetworkExpensive(Context context) {
        return false;
    }

    private synchronized void registerContentObserver() {
        if (this.mDownloadChangeObserver == null) {
            this.mDownloadChangeObserver = new DownloadManagerContentObserver((Handler) null);
            this.mResolver.registerContentObserver(OppoDownloads.DOWNLOADS_DB_LISTEN_URI, true, this.mDownloadChangeObserver);
        }
    }

    private synchronized void unregisterContentObserver() {
        if (this.mDownloadChangeObserver != null) {
            this.mResolver.unregisterContentObserver(this.mDownloadChangeObserver);
            this.mDownloadChangeObserver = null;
        }
    }

    private static void validateArgumentIsNonEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(str + " can't be null");
        }
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, false, (Uri) null, (Uri) null);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, Uri uri, Uri uri2) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, false, uri, uri2);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, boolean z3) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, z3, (Uri) null, (Uri) null);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, boolean z3, Uri uri, Uri uri2) {
        validateArgumentIsNonEmpty("title", str);
        validateArgumentIsNonEmpty("description", str2);
        validateArgumentIsNonEmpty("path", str4);
        validateArgumentIsNonEmpty("mimeType", str3);
        if (j >= 0) {
            Request request = uri != null ? new Request(uri) : new Request(NON_DOWNLOADMANAGER_DOWNLOAD);
            request.setTitle(str).setDescription(str2).setMimeType(str3);
            if (uri2 != null) {
                request.addRequestHeader("Referer", uri2.toString());
            }
            ContentValues contentValues = request.toContentValues((String) null);
            contentValues.put("destination", 6);
            contentValues.put(Downloads.Impl._DATA, str4);
            contentValues.put("status", 200);
            contentValues.put(Downloads.Impl.COLUMN_TOTAL_BYTES, Long.valueOf(j));
            int i = 2;
            contentValues.put(Downloads.Impl.COLUMN_MEDIA_SCANNED, Integer.valueOf(z ? 0 : 2));
            if (z2) {
                i = 3;
            }
            contentValues.put(Downloads.Impl.COLUMN_VISIBILITY, Integer.valueOf(i));
            contentValues.put("allow_write", Integer.valueOf(z3 ? 1 : 0));
            Uri insert = this.mResolver.insert(Downloads.Impl.CONTENT_URI, contentValues);
            if (insert == null) {
                return -1;
            }
            return Long.parseLong(insert.getLastPathSegment());
        }
        throw new IllegalArgumentException(" invalid value for param: totalBytes");
    }

    public long enqueue(Request request) {
        try {
            Uri insert = this.mResolver.insert(Downloads.Impl.CONTENT_URI, request.toContentValues(this.mPackageName));
            if (insert != null) {
                return Long.parseLong(insert.getLastPathSegment());
            }
            LogUtils.e(TAG, "enqueue, downloadUri = null, return -1.");
            return -1;
        } catch (Exception e) {
            LogUtils.e(TAG, "enqueue, occur exception. e = " + e.getMessage());
            return -1;
        }
    }

    public String enqueueWithUuid(Request request) {
        try {
            Uri insert = this.mResolver.insert(Downloads.Impl.CONTENT_URI, request.toContentValues(this.mPackageName));
            if (insert != null) {
                return getUuidFromDownloadId(Long.parseLong(insert.getLastPathSegment()));
            }
            LogUtils.e(TAG, "enqueue, downloadUri = null, return -1.");
            return null;
        } catch (Exception e) {
            LogUtils.e(TAG, "enqueueWithUuid, occur exception. e = " + e.getMessage());
            return null;
        }
    }

    public void forceDownload(long... jArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", 190);
        contentValues.put(Downloads.Impl.COLUMN_CONTROL, 0);
        contentValues.put(Downloads.Impl.COLUMN_BYPASS_RECOMMENDED_SIZE_LIMIT, 1);
        this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004b, code lost:
        if (r7 != null) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004d, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005b, code lost:
        if (r7 != null) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005e, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0062  */
    public DownloadInfoData getDownloadData(long j) {
        Cursor cursor;
        setAccessFilename(true);
        Query query = new Query();
        query.setFilterById(j);
        try {
            cursor = query(query);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        DownloadInfoData newDownloadInfoSimple = new DownloadInfoData.BaseReader(this.mResolver, cursor).newDownloadInfoSimple();
                        if (LogUtils.QE_ENABLE) {
                            LogUtils.v(TAG, "getDownloadData. info = " + newDownloadInfoSimple);
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return newDownloadInfoSimple;
                    }
                } catch (Exception e) {
                    e = e;
                    try {
                        e.printStackTrace();
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            e.printStackTrace();
        } catch (Throwable th2) {
            Throwable th3 = th2;
            cursor = null;
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public List<DownloadInfoData> getDownloadData(int i, String str, boolean z, String str2, int i2) {
        return getDownloadData(i, (String[]) null, str, z, str2, i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0056  */
    public List<DownloadInfoData> getDownloadData(int i, String[] strArr, String str, boolean z, String str2, int i2) {
        Cursor cursor;
        setAccessFilename(true);
        ArrayList arrayList = new ArrayList();
        try {
            cursor = queryDownloadData(i, strArr, str, z, str2, i2);
            if (cursor != null) {
                try {
                    int count = cursor.getCount();
                    if (LogUtils.QE_ENABLE) {
                        LogUtils.v(TAG, "getDownloadData  c.getCount() = " + count);
                    }
                    if (count > 0 && cursor.moveToFirst()) {
                        do {
                            arrayList.add(new DownloadInfoData.BaseReader(this.mResolver, cursor).newDownloadInfoSimple());
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x007c, code lost:
        if (r6 == null) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0085, code lost:
        if (r6 == null) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0087, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x008a, code lost:
        return r1;
     */
    public List<DownloadInfoData> getDownloadData(long... jArr) {
        setAccessFilename(true);
        ArrayList arrayList = new ArrayList();
        Query query = new Query();
        query.setFilterById(jArr);
        if (LogUtils.QE_ENABLE) {
            LogUtils.v(TAG, "getDownloadData -array-  mPackageName = " + this.mPackageName);
        }
        if (!TextUtils.isEmpty(this.mPackageName)) {
            query.setFilterByPackage(this.mPackageName);
        }
        Cursor cursor = null;
        try {
            cursor = query(query);
            int count = cursor.getCount();
            if (LogUtils.QE_ENABLE) {
                LogUtils.v(TAG, "getDownloadData  c.getCount() = " + count);
            }
            if (count > 0 && cursor.moveToFirst()) {
                do {
                    arrayList.add(new DownloadInfoData.BaseReader(this.mResolver, cursor).newDownloadInfoSimple());
                } while (cursor.moveToNext());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (r0 != null) goto L_0x0080;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x007e, code lost:
        if (r0 != null) goto L_0x0080;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0080, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0083, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0086  */
    public DownloadInfoData getDownloadDataWithUuid(String str) {
        Cursor cursor;
        setAccessFilename(true);
        Query query = new Query();
        query.setFilterByUuid(str);
        try {
            cursor = query(query);
            try {
                if (LogUtils.QE_ENABLE) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getDownloadDataWithUuid  c.getCount() = ");
                    sb.append(cursor != null ? Integer.valueOf(cursor.getCount()) : null);
                    LogUtils.v(TAG, sb.toString());
                }
                if (cursor != null && cursor.moveToFirst()) {
                    DownloadInfoData newDownloadInfoSimple = new DownloadInfoData.BaseReader(this.mResolver, cursor).newDownloadInfoSimple();
                    if (LogUtils.QE_ENABLE) {
                        LogUtils.v(TAG, "getDownloadDataWithUuid. info = " + newDownloadInfoSimple);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return newDownloadInfoSimple;
                }
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            e.printStackTrace();
        } catch (Throwable th2) {
            Throwable th3 = th2;
            cursor = null;
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x007c, code lost:
        if (r6 == null) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0085, code lost:
        if (r6 == null) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0087, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x008a, code lost:
        return r1;
     */
    public List<DownloadInfoData> getDownloadDataWithUuid(String... strArr) {
        setAccessFilename(true);
        ArrayList arrayList = new ArrayList();
        Query query = new Query();
        query.setFilterByUuid(strArr);
        if (LogUtils.QE_ENABLE) {
            LogUtils.v(TAG, "getDownloadDataWithUuid -array-  mPackageName = " + this.mPackageName);
        }
        if (!TextUtils.isEmpty(this.mPackageName)) {
            query.setFilterByPackage(this.mPackageName);
        }
        Cursor cursor = null;
        try {
            cursor = query(query);
            int count = cursor.getCount();
            if (LogUtils.QE_ENABLE) {
                LogUtils.v(TAG, "getDownloadDataWithUuid  c.getCount() = " + count);
            }
            if (count > 0 && cursor.moveToFirst()) {
                do {
                    arrayList.add(new DownloadInfoData.BaseReader(this.mResolver, cursor).newDownloadInfoSimple());
                } while (cursor.moveToNext());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public Uri getDownloadUri(long j) {
        return ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0032, code lost:
        if (r6 != null) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0034, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0057, code lost:
        if (r6 != null) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005a, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x005e  */
    public String getMimeTypeForDownloadedFile(long j) {
        Cursor cursor;
        try {
            cursor = query(new Query().setFilterById(j));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MEDIA_TYPE));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return string;
                }
            } catch (RuntimeException e) {
                e = e;
                try {
                    LogUtils.w(TAG, "Exception happened in getMimeTypeForDownloadedFile: " + e);
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                    }
                    throw th;
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            LogUtils.w(TAG, "Exception happened in getMimeTypeForDownloadedFile: " + e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003c, code lost:
        if (r0 != null) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003e, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x005f, code lost:
        if (r0 != null) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0062, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0066  */
    public Uri getUriForDownloadedFile(long j) {
        Cursor cursor;
        try {
            cursor = query(new Query().setFilterById(j));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                if (cursor.moveToFirst() && 8 == cursor.getInt(cursor.getColumnIndexOrThrow("status"))) {
                    Uri withAppendedId = ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, j);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return withAppendedId;
                }
            } catch (RuntimeException e) {
                e = e;
                try {
                    LogUtils.w(TAG, "Exception happened in getUriForDownloadedFile: " + e);
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            LogUtils.w(TAG, "Exception happened in getUriForDownloadedFile: " + e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0050, code lost:
        if (r11 != null) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r11 != null) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005d, code lost:
        r11.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0060, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0064  */
    public String getUuidFromDownloadId(long j) {
        Cursor cursor;
        try {
            long[] jArr = {j};
            cursor = this.mResolver.query(this.mBaseUri, new String[]{OppoDownloads.COLUMN_UUID}, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr), (String) null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex(OppoDownloads.COLUMN_UUID));
                        if (LogUtils.QE_ENABLE) {
                            LogUtils.v(TAG, "enqueueWithUuid, uuid =" + string);
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return string;
                    }
                } catch (Exception e) {
                    e = e;
                    try {
                        e.printStackTrace();
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            e.printStackTrace();
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public boolean isDownloadManagerForStrictQuery() {
        return mDownloadProviderVersionForManager > 0;
    }

    public int markRowDeleted(long... jArr) {
        if (jArr != null && jArr.length != 0) {
            return this.mResolver.delete(this.mBaseUri, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
        }
        throw new IllegalArgumentException("input param 'ids' can't be null");
    }

    public ParcelFileDescriptor openDownloadedFile(long j) throws FileNotFoundException {
        return this.mResolver.openFileDescriptor(getDownloadUri(j), "r");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00cd, code lost:
        if (r15 != null) goto L_0x00ee;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ec, code lost:
        if (r15 != null) goto L_0x00ee;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00ee, code lost:
        r15.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00f1, code lost:
        r15 = r11.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00f5, code lost:
        if (r15 > 0) goto L_0x00fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00f7, code lost:
        com.oppo.providers.downloads.utils.LogUtils.w(TAG, "pauseDownload pauseIds size <= 0, return.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00fc, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00ff, code lost:
        if (com.oppo.providers.downloads.utils.LogUtils.QE_ENABLE == false) goto L_0x0115;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0101, code lost:
        com.oppo.providers.downloads.utils.LogUtils.d(TAG, "pauseDownload pauseIdList = " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0115, code lost:
        r1 = new android.content.ContentValues();
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 1);
        r1.put("status", 193);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x012a, code lost:
        if (r15 != 1) goto L_0x0143;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0142, code lost:
        return r14.mResolver.update(android.content.ContentUris.withAppendedId(r14.mBaseUri, ((java.lang.Long) r11.get(0)).longValue()), r1, (java.lang.String) null, (java.lang.String[]) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0143, code lost:
        r2 = new long[r15];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0145, code lost:
        if (r0 >= r15) goto L_0x0156;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0147, code lost:
        r2[r0] = ((java.lang.Long) r11.get(r0)).longValue();
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0166, code lost:
        return r14.mResolver.update(r14.mBaseUri, r1, getWhereClauseForIds(r2), getWhereArgsForIds(r2));
     */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a3 A[Catch:{ RuntimeException -> 0x00d0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b5 A[Catch:{ RuntimeException -> 0x00d0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b8 A[Catch:{ RuntimeException -> 0x00d0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x016a  */
    public int pauseDownload(long... jArr) {
        Cursor cursor;
        boolean z;
        int i = 0;
        if (jArr == null || jArr.length == 0) {
            LogUtils.w(TAG, "pauseDownload input param 'ids' can't be null");
            return 0;
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "pauseDownload dumpArray array= " + Arrays.toString(jArr));
        }
        String[] strArr = {COLUMN_ID, Downloads.Impl.COLUMN_CONTROL, "status"};
        ArrayList arrayList = new ArrayList(jArr.length);
        try {
            cursor = this.mResolver.query(this.mBaseUri, strArr, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr), (String) null);
            if (cursor == null) {
                try {
                    LogUtils.w(TAG, "pauseDownload return 0!");
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                } catch (RuntimeException e) {
                    e = e;
                    try {
                        LogUtils.w(TAG, "Exception happened in pauseDownload: " + e);
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            } else {
                if (LogUtils.QE_ENABLE) {
                    LogUtils.d(TAG, "pauseDownload cursor.getCount() = " + cursor.getCount());
                }
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    long j = cursor.getLong(cursor.getColumnIndex(COLUMN_ID));
                    int i2 = cursor.getInt(cursor.getColumnIndex("status"));
                    int i3 = cursor.getInt(cursor.getColumnIndex(Downloads.Impl.COLUMN_CONTROL));
                    if (!Downloads.Impl.isStatusCompleted(i2)) {
                        if (i2 != 199) {
                            z = false;
                            if (!z) {
                                if (i3 != 1) {
                                    arrayList.add(Long.valueOf(j));
                                    cursor.moveToNext();
                                }
                            }
                            Object[] objArr = new Object[2];
                            objArr[0] = !z ? "completed" : "paused";
                            objArr[1] = Long.valueOf(j);
                            LogUtils.w(TAG, String.format("pauseDownload meet %s task id=%d", objArr));
                            cursor.moveToNext();
                        }
                    }
                    z = true;
                    if (!z) {
                    }
                    Object[] objArr2 = new Object[2];
                    objArr2[0] = !z ? "completed" : "paused";
                    objArr2[1] = Long.valueOf(j);
                    LogUtils.w(TAG, String.format("pauseDownload meet %s task id=%d", objArr2));
                    cursor.moveToNext();
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            LogUtils.w(TAG, "Exception happened in pauseDownload: " + e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00c2, code lost:
        if (r12 != null) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00dc, code lost:
        if (r12 == null) goto L_0x00e1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00de, code lost:
        r12.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e1, code lost:
        r15 = r11.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00e5, code lost:
        if (r15 > 0) goto L_0x00ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00e7, code lost:
        com.oppo.providers.downloads.utils.LogUtils.w(TAG, "pauseDownloadWithUuid pauseIds size <= 0, return.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ec, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00ef, code lost:
        if (com.oppo.providers.downloads.utils.LogUtils.QE_ENABLE == false) goto L_0x0105;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00f1, code lost:
        com.oppo.providers.downloads.utils.LogUtils.d(TAG, "pauseDownloadWithUuid pauseIdList = " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0105, code lost:
        r0 = new android.content.ContentValues();
        r0.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 1);
        r0.put("status", 193);
        r15 = (java.lang.String[]) r11.toArray(new java.lang.String[r15]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        return r14.mResolver.update(r14.mBaseUri, r0, getWhereClauseForUuids(r15), r15);
     */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A[Catch:{ RuntimeException -> 0x00c7, all -> 0x00c5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ae A[Catch:{ RuntimeException -> 0x00c7, all -> 0x00c5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b1 A[Catch:{ RuntimeException -> 0x00c7, all -> 0x00c5 }] */
    public int pauseDownloadWithUuid(String... strArr) {
        boolean z;
        if (strArr == null || strArr.length == 0) {
            LogUtils.w(TAG, "pauseDownloadWithUuid input param 'uuids' can't be null");
            return 0;
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "pauseDownloadWithUuid dumpArray= " + Arrays.toString(strArr));
        }
        String[] strArr2 = {OppoDownloads.COLUMN_UUID, Downloads.Impl.COLUMN_CONTROL, "status"};
        ArrayList arrayList = new ArrayList(strArr.length);
        Cursor cursor = null;
        try {
            cursor = this.mResolver.query(this.mBaseUri, strArr2, getWhereClauseForUuids(strArr), strArr, (String) null);
            if (cursor == null) {
                LogUtils.w(TAG, "pauseDownloadWithUuid return 0!");
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            if (LogUtils.QE_ENABLE) {
                LogUtils.d(TAG, "pauseDownloadWithUuid cursor.getCount() = " + cursor.getCount());
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                String string = cursor.getString(cursor.getColumnIndex(OppoDownloads.COLUMN_UUID));
                int i = cursor.getInt(cursor.getColumnIndex("status"));
                int i2 = cursor.getInt(cursor.getColumnIndex(Downloads.Impl.COLUMN_CONTROL));
                if (!Downloads.Impl.isStatusCompleted(i)) {
                    if (i != 199) {
                        z = false;
                        if (!z) {
                            if (i2 != 1) {
                                arrayList.add(string);
                                cursor.moveToNext();
                            }
                        }
                        Object[] objArr = new Object[2];
                        objArr[0] = !z ? "completed" : "paused";
                        objArr[1] = string;
                        LogUtils.w(TAG, String.format("pauseDownloadWithUuid meet %s task uuid=%s", objArr));
                        cursor.moveToNext();
                    }
                }
                z = true;
                if (!z) {
                }
                Object[] objArr2 = new Object[2];
                objArr2[0] = !z ? "completed" : "paused";
                objArr2[1] = string;
                LogUtils.w(TAG, String.format("pauseDownloadWithUuid meet %s task uuid=%s", objArr2));
                cursor.moveToNext();
            }
        } catch (RuntimeException e) {
            LogUtils.w(TAG, "Exception happened in pauseDownloadWithUuid: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public Cursor query(Query query) {
        Cursor runQuery = query.runQuery(this.mResolver, this.mBaseUri);
        if (runQuery == null) {
            return null;
        }
        return new CursorTranslator(runQuery, this.mBaseUri, this.mAccessFilename);
    }

    public Cursor queryDownloadData(int i, String[] strArr, String str, boolean z, String str2, int i2) {
        setAccessFilename(true);
        if (LogUtils.QE_ENABLE) {
            LogUtils.v(TAG, "queryDownloadData  mPackageName = " + this.mPackageName);
        }
        Query query = new Query();
        if (!TextUtils.isEmpty(this.mPackageName)) {
            query.setFilterByPackage(this.mPackageName);
        }
        if (strArr != null) {
            query.setProjection(strArr);
        }
        query.setFilterByUri(str);
        query.setFilterByStatus(i);
        query.setOnlyIncludeVisibleInDownloadsUi(z);
        if (str2 != null) {
            query.orderBy(str2, i2);
        }
        Cursor cursor = null;
        try {
            cursor = query(query);
            if (cursor != null) {
                cursor.moveToFirst();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cursor;
    }

    public void registerDownloadDBCallback(DownloadDBCallback downloadDBCallback) {
        this.mDownloadDBCallback = downloadDBCallback;
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "registerDownloadDBCallback  mDownloadDBCallback = " + this.mDownloadDBCallback);
        }
        registerContentObserver();
    }

    public void registerDownloadStatesCallback(DownloadStatesCallback downloadStatesCallback) {
        this.mDownloadStatesCallback = downloadStatesCallback;
        registerContentObserver();
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "registerDownloadStatesCallback  mDownloadStatesCallback = " + this.mDownloadStatesCallback);
        }
    }

    public int remove(boolean z, long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("remove input param 'ids' can't be null");
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.i(TAG, "remove start synchroDeleteFile force true , ids = " + Arrays.toString(jArr));
        }
        return jArr.length == 1 ? this.mResolver.delete(ContentUris.withAppendedId(this.mBaseUri, jArr[0]), (String) null, (String[]) null) : this.mResolver.delete(this.mBaseUri, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    public int removeWithUuid(boolean z, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("remove input param 'uuids' can't be null");
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.i(TAG, "removeWithUuid start synchroDeleteFile force true , uuids = " + Arrays.toString(strArr));
        }
        return this.mResolver.delete(this.mBaseUri, getWhereClauseForUuids(strArr), strArr);
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x0122  */
    public boolean rename(Context context, long j, String str) {
        Cursor cursor;
        String str2;
        if (FileUtils.isValidFatFilename(str)) {
            String str3 = null;
            try {
                cursor = query(new Query().setFilterById(j));
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                }
                try {
                    if (!cursor.moveToFirst()) {
                        str2 = null;
                    } else if (8 != cursor.getInt(cursor.getColumnIndexOrThrow("status"))) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    } else {
                        str3 = cursor.getString(cursor.getColumnIndexOrThrow("title"));
                        str2 = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MEDIA_TYPE));
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (str3 == null || str2 == null) {
                        throw new IllegalStateException("Document with id " + j + " does not exist");
                    }
                    File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                    File file = new File(externalStoragePublicDirectory, str3);
                    File file2 = new File(externalStoragePublicDirectory, str);
                    if (file2.exists()) {
                        throw new IllegalStateException("Already exists " + file2);
                    } else if (file.renameTo(file2)) {
                        if (str2.startsWith("image/")) {
                            context.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_data=?", new String[]{file.getAbsolutePath()});
                            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                            intent.setData(Uri.fromFile(file2));
                            context.sendBroadcast(intent);
                        }
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("title", str);
                        contentValues.put(Downloads.Impl._DATA, file2.toString());
                        contentValues.putNull("mediaprovider_uri");
                        long[] jArr = {j};
                        return this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr)) == 1;
                    } else {
                        throw new IllegalStateException("Failed to rename to " + file2);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                if (cursor != null) {
                }
                throw th;
            }
        } else {
            throw new SecurityException(str + " is not a valid filename");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0081, code lost:
        if (r10 != null) goto L_0x0083;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0083, code lost:
        r10.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00a4, code lost:
        if (r10 == null) goto L_0x00a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a7, code lost:
        r10 = new android.content.ContentValues();
        r10.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CURRENT_BYTES, 0);
        r10.put(com.android.providers.downloads.Downloads.Impl.COLUMN_TOTAL_BYTES, -1);
        r10.putNull(com.android.providers.downloads.Downloads.Impl._DATA);
        r10.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r10.put("status", 190);
        r10.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
        r10.put("uri", r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00f2, code lost:
        return r8.mResolver.update(android.content.ContentUris.withAppendedId(r8.mBaseUri, r1[0]), r10, (java.lang.String) null, (java.lang.String[]) null);
     */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00f6  */
    public int restartDownload(long j, String str) {
        Cursor cursor;
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "restartDownload downloadid=" + j + ", updateUri = " + str);
        }
        long[] jArr = {j};
        try {
            cursor = query(new Query().setFilterById(jArr));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            try {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    int i = cursor.getInt(cursor.getColumnIndex("status"));
                    if (i == 8 || i == 16) {
                        cursor.moveToNext();
                    } else {
                        LogUtils.w(TAG, "restartDownload 2 Cannot restart incomplete download: " + cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 0;
                    }
                }
            } catch (RuntimeException e) {
                e = e;
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            try {
                LogUtils.w(TAG, "Exception happened in restartDownload: " + e);
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            cursor = null;
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005c, code lost:
        if (r4 != null) goto L_0x005e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005e, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x007d, code lost:
        if (r4 == null) goto L_0x0080;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0080, code lost:
        r1 = new android.content.ContentValues();
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CURRENT_BYTES, 0);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_TOTAL_BYTES, -1);
        r1.putNull(com.android.providers.downloads.Downloads.Impl._DATA);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r1.put("status", 190);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ba, code lost:
        if (r9.length != 1) goto L_0x00cb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ca, code lost:
        return r8.mResolver.update(android.content.ContentUris.withAppendedId(r8.mBaseUri, r9[0]), r1, (java.lang.String) null, (java.lang.String[]) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00db, code lost:
        return r8.mResolver.update(r8.mBaseUri, r1, getWhereClauseForIds(r9), getWhereArgsForIds(r9));
     */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00df  */
    public int restartDownload(long... jArr) {
        Cursor cursor;
        try {
            cursor = query(new Query().setFilterById(jArr));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            try {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    int i = cursor.getInt(cursor.getColumnIndex("status"));
                    if (i == 8 || i == 16) {
                        cursor.moveToNext();
                    } else {
                        LogUtils.w(TAG, "restartDownload Cannot restart incomplete downloadid = " + cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 0;
                    }
                }
            } catch (RuntimeException e) {
                e = e;
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            try {
                LogUtils.w(TAG, "Exception happened in restartDownload: " + e);
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0081, code lost:
        if (r8 != null) goto L_0x0083;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0083, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x009e, code lost:
        if (r8 == null) goto L_0x00a1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00a1, code lost:
        r8 = new android.content.ContentValues();
        r8.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CURRENT_BYTES, 0);
        r8.put(com.android.providers.downloads.Downloads.Impl.COLUMN_TOTAL_BYTES, -1);
        r8.putNull(com.android.providers.downloads.Downloads.Impl._DATA);
        r8.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r8.put("status", 190);
        r8.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
        r8.put("uri", r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ea, code lost:
        return r7.mResolver.update(r7.mBaseUri, r8, getWhereClauseForUuids(r1), r1);
     */
    public int restartDownloadWithUuid(String str, String str2) {
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "restartDownloadWithUuid downloadUuid=" + str + ", updateUri = " + str2);
        }
        String[] strArr = {str};
        Cursor cursor = null;
        try {
            cursor = query(new Query().setFilterByUuid(strArr));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                int i = cursor.getInt(cursor.getColumnIndex("status"));
                if (i == 8 || i == 16) {
                    cursor.moveToNext();
                } else {
                    LogUtils.w(TAG, "restartDownloadWithUuid 2 Cannot restart incomplete download: " + cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                }
            }
        } catch (RuntimeException e) {
            LogUtils.w(TAG, "Exception happened in restartDownload: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005c, code lost:
        if (r3 != null) goto L_0x005e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005e, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0079, code lost:
        if (r3 == null) goto L_0x007c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x007c, code lost:
        r1 = new android.content.ContentValues();
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CURRENT_BYTES, 0);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_TOTAL_BYTES, -1);
        r1.putNull(com.android.providers.downloads.Downloads.Impl._DATA);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r1.put("status", 190);
        r1.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00c0, code lost:
        return r7.mResolver.update(r7.mBaseUri, r1, getWhereClauseForUuids(r8), r8);
     */
    public int restartDownloadWithUuid(String... strArr) {
        Cursor cursor = null;
        try {
            cursor = query(new Query().setFilterByUuid(strArr));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                int i = cursor.getInt(cursor.getColumnIndex("status"));
                if (i == 8 || i == 16) {
                    cursor.moveToNext();
                } else {
                    LogUtils.w(TAG, "restartDownloadWithUuid Cannot restart incomplete downloadid = " + cursor.getLong(cursor.getColumnIndex(COLUMN_ID)));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                }
            }
        } catch (RuntimeException e) {
            LogUtils.w(TAG, "Exception happened in restartDownload: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00ea, code lost:
        if (r13 != null) goto L_0x010b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0109, code lost:
        if (r13 != null) goto L_0x010b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x010b, code lost:
        r13.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x010e, code lost:
        r0 = r14.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0112, code lost:
        if (r0 > 0) goto L_0x011a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0114, code lost:
        com.oppo.providers.downloads.utils.LogUtils.w(TAG, "resumeDownload resumeIdList size <= 0, return.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0119, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x011c, code lost:
        if (com.oppo.providers.downloads.utils.LogUtils.QE_ENABLE == false) goto L_0x0132;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x011e, code lost:
        com.oppo.providers.downloads.utils.LogUtils.d(TAG, "resumeDownload resumeIdList = " + r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0132, code lost:
        r4 = new android.content.ContentValues();
        r4.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r4.put("status", 190);
        r4.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0148, code lost:
        if (r0 != 1) goto L_0x0162;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0161, code lost:
        return r1.mResolver.update(android.content.ContentUris.withAppendedId(r1.mBaseUri, ((java.lang.Long) r14.get(0)).longValue()), r4, (java.lang.String) null, (java.lang.String[]) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0162, code lost:
        r3 = new long[r0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0164, code lost:
        if (r2 >= r0) goto L_0x0175;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0166, code lost:
        r3[r2] = ((java.lang.Long) r14.get(r2)).longValue();
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0185, code lost:
        return r1.mResolver.update(r1.mBaseUri, r4, getWhereClauseForIds(r3), getWhereArgsForIds(r3));
     */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0189  */
    public int resumeDownload(long... jArr) {
        Cursor cursor;
        boolean z;
        long[] jArr2 = jArr;
        int i = 0;
        if (jArr2 == null || jArr2.length == 0) {
            LogUtils.w(TAG, "resumeDownload input param 'ids' can't be null");
            return 0;
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "resumeDownload dumpArray= " + Arrays.toString(jArr));
        }
        String[] strArr = {Downloads.Impl.COLUMN_CONTROL, "status", COLUMN_ID};
        ArrayList arrayList = new ArrayList(jArr2.length);
        try {
            cursor = this.mResolver.query(this.mBaseUri, strArr, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr), (String) null);
            if (cursor == null) {
                try {
                    LogUtils.w(TAG, "resumeDownload return 0!");
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                } catch (RuntimeException e) {
                    e = e;
                    try {
                        LogUtils.w(TAG, "Exception happened in getUriForDownloadedFile: " + e);
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            } else {
                if (LogUtils.QE_ENABLE) {
                    LogUtils.d(TAG, "resumeDownload cursor.getCount() = " + cursor.getCount());
                }
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    long j = cursor.getLong(cursor.getColumnIndex(COLUMN_ID));
                    int i2 = cursor.getInt(cursor.getColumnIndex("status"));
                    int i3 = cursor.getInt(cursor.getColumnIndex(Downloads.Impl.COLUMN_CONTROL));
                    if (!Downloads.Impl.isStatusCompleted(i2)) {
                        if (i2 != 199) {
                            z = false;
                            if ((z && i3 != 0) || i2 == 193 || i2 == 194 || i2 == 195 || i2 == 196 || i2 == 198) {
                                arrayList.add(Long.valueOf(j));
                            } else {
                                LogUtils.w(TAG, "resumeDownload Cannot resume a completed task. id = " + j + ", stauts = " + i2);
                            }
                            cursor.moveToNext();
                        }
                    }
                    z = true;
                    if (z) {
                    }
                    LogUtils.w(TAG, "resumeDownload Cannot resume a completed task. id = " + j + ", stauts = " + i2);
                    cursor.moveToNext();
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
            LogUtils.w(TAG, "Exception happened in getUriForDownloadedFile: " + e);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00dd, code lost:
        if (r13 != null) goto L_0x00f9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00f7, code lost:
        if (r13 == null) goto L_0x00fc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00f9, code lost:
        r13.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00fc, code lost:
        r15 = r12.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0100, code lost:
        if (r15 > 0) goto L_0x0108;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0102, code lost:
        com.oppo.providers.downloads.utils.LogUtils.w(TAG, "resumeDownloadWithUuid resumeIdList size <= 0, return.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0107, code lost:
        return 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x010a, code lost:
        if (com.oppo.providers.downloads.utils.LogUtils.QE_ENABLE == false) goto L_0x0120;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x010c, code lost:
        com.oppo.providers.downloads.utils.LogUtils.d(TAG, "resumeDownloadWithUuid resumeIdList = " + r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0120, code lost:
        r0 = new android.content.ContentValues();
        r0.put(com.android.providers.downloads.Downloads.Impl.COLUMN_CONTROL, 0);
        r0.put("status", 190);
        r0.put(com.android.providers.downloads.Downloads.Impl.COLUMN_FAILED_CONNECTIONS, 0);
        r15 = (java.lang.String[]) r12.toArray(new java.lang.String[r15]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x014a, code lost:
        return r14.mResolver.update(r14.mBaseUri, r0, getWhereClauseForUuids(r15), r15);
     */
    public int resumeDownloadWithUuid(String... strArr) {
        boolean z;
        if (strArr == null || strArr.length == 0) {
            LogUtils.w(TAG, "resumeDownloadWithUuid input param 'uuids' can't be null");
            return 0;
        }
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "resumeDownloadWithUuid dumpArray= " + Arrays.toString(strArr));
        }
        String[] strArr2 = {Downloads.Impl.COLUMN_CONTROL, "status", OppoDownloads.COLUMN_UUID};
        ArrayList arrayList = new ArrayList(strArr.length);
        Cursor cursor = null;
        try {
            cursor = this.mResolver.query(this.mBaseUri, strArr2, getWhereClauseForUuids(strArr), strArr, (String) null);
            if (cursor == null) {
                LogUtils.w(TAG, "resumeDownloadWithUuid return 0!");
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            if (LogUtils.QE_ENABLE) {
                LogUtils.d(TAG, "resumeDownloadWithUuid cursor.getCount() = " + cursor.getCount());
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                String string = cursor.getString(cursor.getColumnIndex(OppoDownloads.COLUMN_UUID));
                int i = cursor.getInt(cursor.getColumnIndex("status"));
                int i2 = cursor.getInt(cursor.getColumnIndex(Downloads.Impl.COLUMN_CONTROL));
                if (!Downloads.Impl.isStatusCompleted(i)) {
                    if (i != 199) {
                        z = false;
                        if ((z && i2 != 0) || i == 193 || i == 194 || i == 195 || i == 196 || i == 198) {
                            arrayList.add(string);
                        } else {
                            LogUtils.w(TAG, "resumeDownloadWithUuid Cannot resume a completed task. id = " + string + ", stauts = " + i);
                        }
                        cursor.moveToNext();
                    }
                }
                z = true;
                if (z) {
                }
                LogUtils.w(TAG, "resumeDownloadWithUuid Cannot resume a completed task. id = " + string + ", stauts = " + i);
                cursor.moveToNext();
            }
        } catch (RuntimeException e) {
            LogUtils.w(TAG, "Exception happened in getUriForDownloadedFile: " + e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void setAccessAllDownloads(boolean z) {
        if (z) {
            this.mBaseUri = Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI;
        } else {
            this.mBaseUri = Downloads.Impl.CONTENT_URI;
        }
    }

    public void setAccessFilename(boolean z) {
        this.mAccessFilename = z;
    }

    public int setAllowedNetworkTypes(int i, String str) {
        if (str != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(Downloads.Impl.COLUMN_ALLOWED_NETWORK_TYPES, Integer.valueOf(i));
            return this.mResolver.update(this.mBaseUri, contentValues, "notificationpackage = ?", new String[]{str});
        }
        throw new IllegalArgumentException("setAllowedNetworkTypes input param 'packageName' can't be null");
    }

    public int setAllowedNetworkTypes(int i, long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("setAllowedNetworkTypes input param 'ids' can't be null");
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(Downloads.Impl.COLUMN_ALLOWED_NETWORK_TYPES, Integer.valueOf(i));
        return jArr.length == 1 ? this.mResolver.update(ContentUris.withAppendedId(this.mBaseUri, jArr[0]), contentValues, (String) null, (String[]) null) : this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    public int setAllowedNetworkTypesWithUuid(int i, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("setAllowedNetworkTypesWithUuid input param 'uuids' can't be null");
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(Downloads.Impl.COLUMN_ALLOWED_NETWORK_TYPES, Integer.valueOf(i));
        return this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForUuids(strArr), strArr);
    }

    public void unregisterDownloadDBCallback() {
        this.mDownloadDBCallback = null;
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "unregisterDownloadDBCallback  mDownloadDBCallback = " + this.mDownloadDBCallback);
        }
        if (this.mDownloadStatesCallback == null) {
            unregisterContentObserver();
        }
    }

    public void unregisterDownloadStatesCallback() {
        this.mDownloadStatesCallback = null;
        unregisterContentObserver();
        if (LogUtils.QE_ENABLE) {
            LogUtils.d(TAG, "unregisterDownloadStatesCallback  mDownloadStatesCallback = " + this.mDownloadStatesCallback);
        }
    }
}
