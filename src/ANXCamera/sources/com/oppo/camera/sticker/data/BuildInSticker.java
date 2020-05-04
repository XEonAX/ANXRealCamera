package com.oppo.camera.sticker.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.Expose;

public class BuildInSticker implements Parcelable {
    public static final Parcelable.Creator<BuildInSticker> CREATOR = new Parcelable.Creator<BuildInSticker>() {
        /* renamed from: a */
        public BuildInSticker createFromParcel(Parcel parcel) {
            BuildInSticker buildInSticker = new BuildInSticker();
            long unused = buildInSticker.mStickerId = parcel.readLong();
            String unused2 = buildInSticker.mCategoryId = parcel.readString();
            int unused3 = buildInSticker.mCategoryPos = parcel.readInt();
            String unused4 = buildInSticker.mStickerUUID = parcel.readString();
            String unused5 = buildInSticker.mStickerName = parcel.readString();
            String unused6 = buildInSticker.mAssetFilePath = parcel.readString();
            String unused7 = buildInSticker.mAssetThumbnailPath = parcel.readString();
            long unused8 = buildInSticker.mVersion = parcel.readLong();
            long unused9 = buildInSticker.mProtocolVersion = parcel.readLong();
            int unused10 = buildInSticker.mPosition = parcel.readInt();
            int unused11 = buildInSticker.mAttribute = parcel.readInt();
            boolean unused12 = buildInSticker.mHasMusic = parcel.readBoolean();
            int unused13 = buildInSticker.mMaterialType = parcel.readInt();
            String unused14 = buildInSticker.mBackgroundColor = parcel.readString();
            return buildInSticker;
        }

        /* renamed from: a */
        public BuildInSticker[] newArray(int i) {
            return new BuildInSticker[i];
        }
    };
    /* access modifiers changed from: private */
    @Expose
    public String mAssetFilePath = null;
    /* access modifiers changed from: private */
    @Expose
    public String mAssetThumbnailPath = null;
    /* access modifiers changed from: private */
    @Expose
    public int mAttribute = 0;
    /* access modifiers changed from: private */
    @Expose
    public String mBackgroundColor = null;
    /* access modifiers changed from: private */
    @Expose
    public String mCategoryId = null;
    /* access modifiers changed from: private */
    @Expose
    public int mCategoryPos = -1;
    /* access modifiers changed from: private */
    @Expose
    public boolean mHasMusic = false;
    /* access modifiers changed from: private */
    @Expose
    public int mMaterialType;
    /* access modifiers changed from: private */
    @Expose
    public int mPosition = 0;
    /* access modifiers changed from: private */
    @Expose
    public long mProtocolVersion = 0;
    /* access modifiers changed from: private */
    @Expose
    public long mStickerId = 0;
    /* access modifiers changed from: private */
    @Expose
    public String mStickerName = null;
    /* access modifiers changed from: private */
    @Expose
    public String mStickerUUID = null;
    /* access modifiers changed from: private */
    @Expose
    public long mVersion = 0;

    public int describeContents() {
        return 0;
    }

    public String getAssetFilePath() {
        return this.mAssetFilePath;
    }

    public String getAssetThumbnailPath() {
        return this.mAssetThumbnailPath;
    }

    public int getAttribute() {
        return this.mAttribute;
    }

    public String getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getCategoryId() {
        return this.mCategoryId;
    }

    public int getCategoryPosition() {
        return this.mCategoryPos;
    }

    public boolean getHasMusic() {
        return this.mHasMusic;
    }

    public int getMaterialType() {
        return this.mMaterialType;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public long getProtocolVersion() {
        return this.mProtocolVersion;
    }

    public long getStickerId() {
        return this.mStickerId;
    }

    public String getStickerName() {
        return this.mStickerName;
    }

    public String getStickerUUID() {
        return this.mStickerUUID;
    }

    public long getVersion() {
        return this.mVersion;
    }

    public StickerItemWrapper obtainStickerItem() {
        StickerItemWrapper stickerItemWrapper = new StickerItemWrapper();
        stickerItemWrapper.setStickerId(this.mStickerId);
        stickerItemWrapper.setStickerUUID(this.mStickerUUID);
        stickerItemWrapper.setStickerName(this.mStickerName);
        stickerItemWrapper.setVersion(this.mVersion);
        stickerItemWrapper.setProtocolVersion(this.mProtocolVersion);
        stickerItemWrapper.setCategoryId(this.mCategoryId);
        stickerItemWrapper.setCategoryPosition(this.mCategoryPos);
        stickerItemWrapper.setPosition(this.mPosition);
        stickerItemWrapper.setAttribute((long) this.mAttribute);
        stickerItemWrapper.setHasMusic(this.mHasMusic);
        stickerItemWrapper.setMaterialType(this.mMaterialType);
        return stickerItemWrapper;
    }

    public void setAssetFilePath(String str) {
        this.mAssetFilePath = str;
    }

    public void setAssetThumbnailPath(String str) {
        this.mAssetThumbnailPath = str;
    }

    public void setAttribute(int i) {
        this.mAttribute = i;
    }

    public void setBackgroundColor(String str) {
        this.mBackgroundColor = str;
    }

    public void setCategoryId(String str) {
        this.mCategoryId = str;
    }

    public void setCategoryPosition(int i) {
        this.mCategoryPos = i;
    }

    public void setHasMusic(boolean z) {
        this.mHasMusic = z;
    }

    public void setMaterialType(int i) {
        this.mMaterialType = i;
    }

    public void setPosition(int i) {
        this.mPosition = i;
    }

    public void setProtocolVersion(long j) {
        this.mProtocolVersion = j;
    }

    public void setStickerId(long j) {
        this.mStickerId = j;
    }

    public void setStickerName(String str) {
        this.mStickerName = str;
    }

    public void setStickerUUID(String str) {
        this.mStickerUUID = str;
    }

    public void setVersion(long j) {
        this.mVersion = j;
    }

    public String toString() {
        return "[pos: " + this.mPosition + ", attr: " + this.mAttribute + ", cId: " + this.mCategoryId + ", cPos: " + this.mCategoryPos + ", ver: " + this.mVersion + ", pVer: " + this.mProtocolVersion + ", music: " + this.mHasMusic + ", type: " + this.mMaterialType + ", color: " + this.mBackgroundColor + ", uuid: " + this.mStickerUUID + ", name: " + this.mStickerName + ", path: " + this.mAssetFilePath + ", tPath: " + this.mAssetThumbnailPath + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mStickerId);
        parcel.writeString(this.mCategoryId);
        parcel.writeInt(this.mCategoryPos);
        parcel.writeString(this.mStickerUUID);
        parcel.writeString(this.mStickerName);
        parcel.writeString(this.mAssetFilePath);
        parcel.writeString(this.mAssetThumbnailPath);
        parcel.writeLong(this.mVersion);
        parcel.writeLong(this.mProtocolVersion);
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.mAttribute);
        parcel.writeBoolean(this.mHasMusic);
        parcel.writeInt(this.mMaterialType);
        parcel.writeString(this.mBackgroundColor);
    }
}
