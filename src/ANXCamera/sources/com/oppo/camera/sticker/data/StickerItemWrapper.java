package com.oppo.camera.sticker.data;

import android.content.ContentValues;
import android.content.Context;
import com.oppo.camera.sticker.d.b;
import com.oppo.camera.sticker.download.thumbnail.a;
import com.oppo.camera.sticker.provider.FileProvider;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.File;

public class StickerItemWrapper extends StickerItem implements a {
    private static final String TAG = "StickerItemWrapper";
    private String mFilePath = null;
    private String mLogoPath = null;
    private String mThumbnailPath = null;

    public String getDownloadFilePath(Context context, String str) {
        return b.a(context, b.l, b.a(str));
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public String getFirstDownloadFileMd5() {
        return getThumbnailMd5();
    }

    public String getFirstDownloadUrl() {
        return getThumbnailUrl();
    }

    public String getLogoPath() {
        return this.mLogoPath;
    }

    public String getSecondDownloadFileMd5() {
        return getLogoMd5();
    }

    public String getSecondDownloadUrl() {
        return getLogoUrl();
    }

    public String getThumbnailPath() {
        return this.mThumbnailPath;
    }

    public void onFirstDownloadFinish(Context context, boolean z, String str) {
        if (z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("thumbnail_file_uri", FileProvider.a(context, new File(str)).toString());
            contentValues.put("thumbnail_path", str);
            com.oppo.camera.sticker.a.b.a(context, OppoDownloads.COLUMN_UUID, getStickerUUID(), contentValues);
        }
    }

    public void onSecondDownloadFinish(Context context, boolean z, String str) {
        if (z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("logo_file_uri", FileProvider.a(context, new File(str)).toString());
            contentValues.put("logo_path", str);
            com.oppo.camera.sticker.a.b.a(context, OppoDownloads.COLUMN_UUID, getStickerUUID(), contentValues);
        }
    }

    public void setFilePath(String str) {
        this.mFilePath = str;
    }

    public void setLogoPath(String str) {
        this.mLogoPath = str;
    }

    public void setThumbnailPath(String str) {
        this.mThumbnailPath = str;
    }

    public String toDumpString() {
        return "[id: " + getStickerId() + ", name: " + getStickerName() + ", pos: " + getPosition() + ", reqTime: " + getLastRequestTime() + ", dState: " + getDownloadState() + ", dTime: " + getDownloadTime() + ", dUid: " + getDownloadUid() + ", cId: " + getCategoryId() + ", cPos: " + getCategoryPosition() + ", ver: " + getVersion() + ", pVer: " + getProtocolVersion() + ", attr: " + getAttribute() + ", buildIn: " + isBuildIn() + ", hasMusic: " + hasMusic() + ", nUpdate: " + needUpdate() + ", isNew: " + isStickerNew() + ", valid: " + isValid() + ", uuid: " + getStickerUUID() + ", fileUri: " + getFileContentUri() + ", fileUrl: " + getFileDownloadUrl() + ", fileMd5: " + getFileMd5() + ", thumbUri: " + getThumbnailFileUri() + ", thumbUrl: " + getThumbnailUrl() + ", thumbMd5: " + getThumbnailMd5() + ", logoUri: " + getLogoFileUri() + ", logoUrl: " + getLogoUrl() + ", logoMd5: " + getLogoMd5() + "]";
    }
}
