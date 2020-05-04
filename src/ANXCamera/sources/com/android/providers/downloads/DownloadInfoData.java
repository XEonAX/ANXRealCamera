package com.android.providers.downloads;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.text.TextUtils;
import com.android.providers.downloads.Downloads;
import com.oppo.providers.downloads.DownloadManager;
import com.oppo.providers.downloads.OppoDownloads;

public class DownloadInfoData {
    public long mCurrentBytes;
    public String mDescription;
    public int mDestination;
    public long mDownloadSpeed;
    public String mErrorMsg;
    public String mExtra;
    public String mFileName;
    public String mHint;
    public long mId;
    public long mLastMod;
    public String mMimeType;
    public String mPackage;
    public long mReason;
    public int mStatisticsId;
    public int mStatus;
    public String mTitle;
    public long mTotalBytes;
    public int mUIVisibility;
    public String mUri;
    public String mUuid;

    public static class BaseReader {
        protected final Cursor mCursor;
        protected final ContentResolver mResolver;

        public BaseReader(ContentResolver contentResolver, Cursor cursor) {
            this.mResolver = contentResolver;
            this.mCursor = cursor;
        }

        /* access modifiers changed from: protected */
        public Integer getInt(String str) {
            int columnIndex = this.mCursor.getColumnIndex(str);
            return Integer.valueOf(columnIndex >= 0 ? this.mCursor.getInt(columnIndex) : -1);
        }

        /* access modifiers changed from: protected */
        public Long getLong(String str) {
            int columnIndex = this.mCursor.getColumnIndex(str);
            return Long.valueOf(columnIndex >= 0 ? this.mCursor.getLong(columnIndex) : -1);
        }

        /* access modifiers changed from: protected */
        public String getString(String str) {
            int columnIndexOrThrow = this.mCursor.getColumnIndexOrThrow(str);
            String string = columnIndexOrThrow >= 0 ? this.mCursor.getString(columnIndexOrThrow) : null;
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return string;
        }

        public DownloadInfoData newDownloadInfoSimple() {
            DownloadInfoData downloadInfoData = new DownloadInfoData();
            updateFromDatabaseSimple(downloadInfoData);
            return downloadInfoData;
        }

        public void updateFromDatabaseSimple(DownloadInfoData downloadInfoData) {
            downloadInfoData.mId = getLong(DownloadManager.COLUMN_ID).longValue();
            downloadInfoData.mUri = getString("uri");
            downloadInfoData.mHint = getString("hint");
            downloadInfoData.mFileName = getString(DownloadManager.COLUMN_LOCAL_FILENAME);
            downloadInfoData.mMimeType = Intent.normalizeMimeType(getString(DownloadManager.COLUMN_MEDIA_TYPE));
            downloadInfoData.mTitle = getString("title");
            downloadInfoData.mDescription = getString("description");
            downloadInfoData.mErrorMsg = getString(Downloads.Impl.COLUMN_ERROR_MSG);
            downloadInfoData.mDestination = getInt("destination").intValue();
            int intValue = getInt(OppoDownloads.COLUMN_STATUS_DETAILED).intValue();
            downloadInfoData.mStatus = DownloadManager.CursorTranslator.translateStatus(intValue);
            downloadInfoData.mReason = DownloadManager.CursorTranslator.getReason(intValue);
            downloadInfoData.mLastMod = getLong(DownloadManager.COLUMN_LAST_MODIFIED_TIMESTAMP).longValue();
            downloadInfoData.mPackage = getString(Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE);
            downloadInfoData.mTotalBytes = getLong(DownloadManager.COLUMN_TOTAL_SIZE_BYTES).longValue();
            downloadInfoData.mCurrentBytes = getLong(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR).longValue();
            downloadInfoData.mUIVisibility = getInt(Downloads.Impl.COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI).intValue();
            downloadInfoData.mDownloadSpeed = getLong(OppoDownloads.COLUMN_DOWNLOAD_SPEED).longValue();
            downloadInfoData.mExtra = getString(OppoDownloads.COLUMN_EXTRA);
            downloadInfoData.mUuid = getString(OppoDownloads.COLUMN_UUID);
            downloadInfoData.mStatisticsId = getInt(OppoDownloads.COLUMN_STATISTICS_ID).intValue();
        }
    }

    public String toString() {
        return "DownloadInfoData [mId=" + this.mId + ", mUri=" + this.mUri + ", mFileName=" + this.mFileName + ", mMimeType=" + this.mMimeType + ", mStatus=" + this.mStatus + ", mTotalBytes=" + this.mTotalBytes + ", mCurrentBytes=" + this.mCurrentBytes + ", mDestination=" + this.mDestination + ", mErrorMsg=" + this.mErrorMsg + ", mReason=" + this.mReason + ", mPackage=" + this.mPackage + ", mUuid=" + this.mUuid + "]";
    }
}
