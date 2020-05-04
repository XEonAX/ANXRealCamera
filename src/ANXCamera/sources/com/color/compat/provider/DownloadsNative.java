package com.color.compat.provider;

import android.net.Uri;
import com.android.providers.downloads.Downloads;
import com.color.inner.provider.DownloadsWrapper;

public class DownloadsNative {
    public static String ACTION_DOWNLOAD_COMPLETED = Downloads.Impl.ACTION_DOWNLOAD_COMPLETED;
    public static String COLUMN_APP_DATA = Downloads.Impl.COLUMN_APP_DATA;
    public static String COLUMN_DESCRIPTION = "description";
    public static String COLUMN_DESTINATION = "destination";
    public static String COLUMN_FILE_NAME_HINT = "hint";
    public static String COLUMN_MIME_TYPE = Downloads.Impl.COLUMN_MIME_TYPE;
    public static String COLUMN_NOTIFICATION_CLASS = Downloads.Impl.COLUMN_NOTIFICATION_CLASS;
    public static String COLUMN_NOTIFICATION_PACKAGE = Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE;
    public static String COLUMN_REFERER = Downloads.Impl.COLUMN_REFERER;
    public static String COLUMN_STATUS = "status";
    public static String COLUMN_TITLE = "title";
    public static String COLUMN_URI = "uri";
    public static String COLUMN_VISIBILITY = Downloads.Impl.COLUMN_VISIBILITY;
    public static Uri CONTENT_URI = DownloadsWrapper.Impl.CONTENT_URI;
    public static int DESTINATION_FILE_URI = 4;
    public static int VISIBILITY_VISIBLE_NOTIFY_COMPLETED = 1;
    public static String _DATA = Downloads.Impl._DATA;

    private DownloadsNative() {
    }

    public static boolean isStatusCompleted(int i) {
        return DownloadsWrapper.isStatusCompleted(i);
    }

    public static boolean isStatusSuccess(int i) {
        return DownloadsWrapper.isStatusSuccess(i);
    }
}
