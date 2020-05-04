package com.oppo.camera.sticker.data;

import android.os.Parcel;
import android.os.Parcelable;

public class StickerCategoryItem implements Parcelable {
    public static final Parcelable.Creator<StickerCategoryItem> CREATOR = new Parcelable.Creator<StickerCategoryItem>() {
        /* renamed from: a */
        public StickerCategoryItem createFromParcel(Parcel parcel) {
            StickerCategoryItem stickerCategoryItem = new StickerCategoryItem();
            String unused = stickerCategoryItem.mReadableId = parcel.readString();
            String unused2 = stickerCategoryItem.mCategoryName = parcel.readString();
            String unused3 = stickerCategoryItem.mIconUrl = parcel.readString();
            String unused4 = stickerCategoryItem.mIconFileUri = parcel.readString();
            String unused5 = stickerCategoryItem.mIconMd5 = parcel.readString();
            String unused6 = stickerCategoryItem.mIconHighlightUrl = parcel.readString();
            String unused7 = stickerCategoryItem.mIconHighlightFileUri = parcel.readString();
            String unused8 = stickerCategoryItem.mIconHighlightMd5 = parcel.readString();
            long unused9 = stickerCategoryItem.mLastRequestTime = parcel.readLong();
            int unused10 = stickerCategoryItem.mPosition = parcel.readInt();
            boolean unused11 = stickerCategoryItem.mIsNew = parcel.readBoolean();
            boolean unused12 = stickerCategoryItem.mIsValid = parcel.readBoolean();
            return stickerCategoryItem;
        }

        /* renamed from: a */
        public StickerCategoryItem[] newArray(int i) {
            return new StickerCategoryItem[i];
        }
    };
    public static final String MY_CATEGORY_ID = "my_category_e5a3fe9c";
    /* access modifiers changed from: private */
    public String mCategoryName = null;
    /* access modifiers changed from: private */
    public String mIconFileUri = null;
    /* access modifiers changed from: private */
    public String mIconHighlightFileUri = null;
    /* access modifiers changed from: private */
    public String mIconHighlightMd5 = null;
    /* access modifiers changed from: private */
    public String mIconHighlightUrl = null;
    /* access modifiers changed from: private */
    public String mIconMd5 = null;
    /* access modifiers changed from: private */
    public String mIconUrl = null;
    /* access modifiers changed from: private */
    public boolean mIsNew = false;
    /* access modifiers changed from: private */
    public boolean mIsValid = true;
    /* access modifiers changed from: private */
    public long mLastRequestTime = 0;
    /* access modifiers changed from: private */
    public int mPosition = 0;
    /* access modifiers changed from: private */
    public String mReadableId = null;

    public static boolean isMyCategory(String str) {
        return MY_CATEGORY_ID.equals(str);
    }

    public void copy(StickerCategoryItem stickerCategoryItem) {
        this.mReadableId = stickerCategoryItem.mReadableId;
        this.mCategoryName = stickerCategoryItem.mCategoryName;
        this.mIconUrl = stickerCategoryItem.mIconUrl;
        this.mIconMd5 = stickerCategoryItem.mIconMd5;
        this.mIconFileUri = stickerCategoryItem.mIconFileUri;
        this.mIconHighlightUrl = stickerCategoryItem.mIconHighlightUrl;
        this.mIconHighlightMd5 = stickerCategoryItem.mIconHighlightMd5;
        this.mIconHighlightFileUri = stickerCategoryItem.mIconHighlightFileUri;
        this.mLastRequestTime = stickerCategoryItem.mLastRequestTime;
        this.mPosition = stickerCategoryItem.mPosition;
        this.mIsNew = stickerCategoryItem.mIsNew;
        this.mIsValid = stickerCategoryItem.mIsValid;
    }

    public int describeContents() {
        return 0;
    }

    public String getCategoryName() {
        return this.mCategoryName;
    }

    public String getIconFileUri() {
        return this.mIconFileUri;
    }

    public String getIconHighlightFileUri() {
        return this.mIconHighlightFileUri;
    }

    public String getIconHighlightMd5() {
        return this.mIconHighlightMd5;
    }

    public String getIconHighlightUrl() {
        return this.mIconHighlightUrl;
    }

    public String getIconMd5() {
        return this.mIconMd5;
    }

    public String getIconUrl() {
        return this.mIconUrl;
    }

    public long getLastRequestTime() {
        return this.mLastRequestTime;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public String getReadableId() {
        return this.mReadableId;
    }

    public boolean isCategoryNew() {
        return this.mIsNew;
    }

    public boolean isCategoryValid() {
        return this.mIsValid;
    }

    public void setCategoryName(String str) {
        this.mCategoryName = str;
    }

    public void setCategoryNew(boolean z) {
        this.mIsNew = z;
    }

    public void setCategoryValid(boolean z) {
        this.mIsValid = z;
    }

    public void setIconFileUri(String str) {
        this.mIconFileUri = str;
    }

    public void setIconHighlightFileUri(String str) {
        this.mIconHighlightFileUri = str;
    }

    public void setIconHighlightMd5(String str) {
        this.mIconHighlightMd5 = str;
    }

    public void setIconHighlightUrl(String str) {
        this.mIconHighlightUrl = str;
    }

    public void setIconMd5(String str) {
        this.mIconMd5 = str;
    }

    public void setIconUrl(String str) {
        this.mIconUrl = str;
    }

    public void setLastRequestTime(long j) {
        this.mLastRequestTime = j;
    }

    public void setPosition(int i) {
        this.mPosition = i;
    }

    public void setReadableId(String str) {
        this.mReadableId = str;
    }

    public String toString() {
        return "[id: " + this.mReadableId + ", name: " + this.mCategoryName + ", pos: " + this.mPosition + ", isNew: " + this.mIsNew + ", uri: " + this.mIconFileUri + ", hUri: " + this.mIconHighlightFileUri + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mReadableId);
        parcel.writeString(this.mCategoryName);
        parcel.writeString(this.mIconUrl);
        parcel.writeString(this.mIconFileUri);
        parcel.writeString(this.mIconMd5);
        parcel.writeString(this.mIconHighlightUrl);
        parcel.writeString(this.mIconHighlightFileUri);
        parcel.writeString(this.mIconHighlightMd5);
        parcel.writeLong(this.mLastRequestTime);
        parcel.writeInt(this.mPosition);
        parcel.writeBoolean(this.mIsNew);
        parcel.writeBoolean(this.mIsValid);
    }
}
