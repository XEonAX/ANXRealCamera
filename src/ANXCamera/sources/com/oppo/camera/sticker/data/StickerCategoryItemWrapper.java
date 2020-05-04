package com.oppo.camera.sticker.data;

import android.content.ContentValues;
import android.content.Context;
import com.oppo.camera.d;
import com.oppo.camera.sticker.d.b;
import com.oppo.camera.sticker.download.thumbnail.a;
import com.oppo.camera.sticker.provider.FileProvider;
import java.io.File;

public class StickerCategoryItemWrapper extends StickerCategoryItem implements a {
    private static final String TAG = "StickerCategoryItemWrapper";
    private String mIconHighlightPath = null;
    private String mIconPath = null;

    public StickerCategoryItemWrapper() {
    }

    public StickerCategoryItemWrapper(StickerCategoryItem stickerCategoryItem) {
        setCategoryName(stickerCategoryItem.getCategoryName());
        setIconUrl(stickerCategoryItem.getIconUrl());
        setIconFileUri(stickerCategoryItem.getIconFileUri());
        setIconMd5(stickerCategoryItem.getIconMd5());
        setIconHighlightUrl(stickerCategoryItem.getIconHighlightUrl());
        setIconHighlightFileUri(stickerCategoryItem.getIconHighlightFileUri());
        setIconHighlightMd5(stickerCategoryItem.getIconHighlightMd5());
        setLastRequestTime(stickerCategoryItem.getLastRequestTime());
        setReadableId(stickerCategoryItem.getReadableId());
        setPosition(stickerCategoryItem.getPosition());
        setCategoryNew(stickerCategoryItem.isCategoryNew());
        setCategoryValid(stickerCategoryItem.isCategoryValid());
    }

    public String getDownloadFilePath(Context context, String str) {
        return b.a(context, b.g, b.a(str));
    }

    public String getFirstDownloadFileMd5() {
        return getIconMd5();
    }

    public String getFirstDownloadUrl() {
        return getIconUrl();
    }

    public String getIconHighlightPath() {
        return this.mIconHighlightPath;
    }

    public String getIconPath() {
        return this.mIconPath;
    }

    public String getSecondDownloadFileMd5() {
        return getIconHighlightMd5();
    }

    public String getSecondDownloadUrl() {
        return getIconHighlightUrl();
    }

    public void onFirstDownloadFinish(Context context, boolean z, String str) {
        if (z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("icon_file_uri", FileProvider.a(context, new File(str)).toString());
            contentValues.put("icon_path", str);
            com.oppo.camera.sticker.a.a.a(context, "readable_id", getReadableId(), contentValues);
            d.a(TAG, "onFirstDownloadFinish, getCategoryName: " + toDumpString());
        }
    }

    public void onSecondDownloadFinish(Context context, boolean z, String str) {
        if (z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("icon_highlight_file_uri", FileProvider.a(context, new File(str)).toString());
            contentValues.put("icon_highlight_path", str);
            com.oppo.camera.sticker.a.a.a(context, "readable_id", getReadableId(), contentValues);
            d.a(TAG, "onSecondDownloadFinish, getCategoryName: " + toDumpString());
        }
    }

    public void setIconHighlightPath(String str) {
        this.mIconHighlightPath = str;
    }

    public void setIconPath(String str) {
        this.mIconPath = str;
    }

    public String toDumpString() {
        return "[id: " + getReadableId() + ", pos: " + getPosition() + ", reqTime: " + getLastRequestTime() + ", isNew: " + isCategoryNew() + ", valid: " + isCategoryValid() + ", name: " + getCategoryName() + ", iconUri: " + getIconFileUri() + ", iconPath: " + getIconPath() + ", iconUrl: " + getIconUrl() + ", iconMd5: " + getIconMd5() + ", iconHUri: " + getIconHighlightFileUri() + ", iconHPath: " + getIconHighlightPath() + ", iconHUrl: " + getIconHighlightUrl() + ", iconHMd5: " + getIconHighlightMd5() + "]";
    }
}
