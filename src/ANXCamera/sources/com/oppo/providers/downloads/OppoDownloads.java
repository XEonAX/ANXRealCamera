package com.oppo.providers.downloads;

import android.net.Uri;
import com.android.providers.downloads.Downloads;

public class OppoDownloads {
    public static final String COLUMN_BACKUP_URI = "backup_uri";
    public static final String COLUMN_DOWNLOADED_TIME = "downloaded_time";
    public static final String COLUMN_DOWNLOAD_SPEED = "download_speed";
    public static final String COLUMN_EXTRA = "extra";
    public static final String COLUMN_INSERT_TIME = "insert_time";
    public static final String COLUMN_IS_REPLACE_FILE = "relpace_file";
    public static final String COLUMN_POST_FORM_DATA = "post_form_data";
    public static final String COLUMN_PRIORITY = "priority";
    public static final String COLUMN_REQUEST_METHOD = "request_method";
    public static final String COLUMN_SERVER_LAST_MODIFY = "server_last_modify";
    public static final String COLUMN_SHOW_COMPLETE_NOTIFICATION = "show_complete_notification";
    public static final String COLUMN_STATISTICS_ID = "statistics_id";
    public static final String COLUMN_STATUS_DETAILED = "status_detailed";
    public static final String COLUMN_UPDATE_FREQUENCY = "update_frequency";
    public static final String COLUMN_USING_BACKUP_URI = "using_backup_uri";
    public static final String COLUMN_UUID = "uuid";
    public static final String COL_CHECK_HEADER_FLAG = "header_flag";
    public static final String COL_HEADER_MD5 = "header_md5";
    public static final String COL_MD5 = "md5";
    public static final int CONTROL_PEND = 10;
    public static final Uri DOWNLOADS_DB_LISTEN_URI = Uri.parse("content://downloads/oppodownloads_listen");
    public static final String ERROR_FAIL_RETRY_COUNT = "Too many retry downloads";
    public static final String[] EXTRA_COLUMNS = {Downloads.Impl.COLUMN_ERROR_MSG, COLUMN_EXTRA, "'placeholder' AS status_detailed", COLUMN_UUID, COLUMN_STATISTICS_ID};
    public static final int FLAG_REQUIRES_CHARGING_IDLE = 4;
    public static final int FLAG_REQUIRES_CPU_IDLE = 16;
    public static final int FLAG_REQUIRES_PROTECT_FORE = 8;
    public static final String SUFFIX = ".oppodownload";
    public static final String VIRTUAL_COLUMN_FAIL_RETRY_COUNT = "fail_retry_count";
    public static final String VIRTUAL_COLUMN_TIME_INTERVAL_FOR_FAIL = "time_interval_for_fail";
}
