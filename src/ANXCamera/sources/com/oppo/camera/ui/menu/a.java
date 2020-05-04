package com.oppo.camera.ui.menu;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: CameraMenuOptionInfo */
public class a {
    public static final int GROUP_TYPE_IMAGE_MENU = 3;
    public static final int GROUP_TYPE_MENU_EXPANDABLE = 2;
    public static final int GROUP_TYPE_NOMAL = 0;
    public static final int GROUP_TYPE_SHARE_RESOURCE = 1;
    private int mGroupType;
    private boolean mImageTitleColorChangeable;
    private boolean mImageTitleMode;
    private String mOptionDefaultValue;
    private Bitmap mOptionExpandIcon;
    private ArrayList<d> mOptionItems;
    private String mOptionKey;
    private Bitmap mOptionSingleIcon;
    private String mOptionTitle;
    private boolean mbOptionOnOff;

    public a() {
        this.mOptionKey = null;
        this.mOptionTitle = null;
        this.mOptionDefaultValue = null;
        this.mOptionItems = null;
        this.mbOptionOnOff = false;
        this.mOptionSingleIcon = null;
        this.mOptionExpandIcon = null;
        this.mGroupType = 0;
        this.mImageTitleMode = false;
        this.mImageTitleColorChangeable = false;
        this.mOptionKey = null;
        this.mOptionTitle = null;
        this.mOptionDefaultValue = null;
        this.mOptionItems = null;
        this.mbOptionOnOff = false;
    }

    public int getGroupType() {
        return this.mGroupType;
    }

    public boolean getImageTitleColorChangeable() {
        return this.mImageTitleColorChangeable;
    }

    public boolean getImageTitleMode() {
        return this.mImageTitleMode;
    }

    public String getOptionDefaultValue() {
        return this.mOptionDefaultValue;
    }

    public Bitmap getOptionExpandIcon() {
        return this.mOptionExpandIcon;
    }

    public ArrayList<d> getOptionItems() {
        return this.mOptionItems;
    }

    public String getOptionKey() {
        return this.mOptionKey;
    }

    public boolean getOptionOnOff() {
        return this.mbOptionOnOff;
    }

    public Bitmap getOptionSingleIcon() {
        return this.mOptionSingleIcon;
    }

    public String getOptionTitle() {
        return this.mOptionTitle;
    }

    public void release() {
        ArrayList<d> arrayList = this.mOptionItems;
        if (arrayList != null) {
            Iterator<d> it = arrayList.iterator();
            while (it.hasNext()) {
                d next = it.next();
                if (next != null) {
                    next.f();
                }
            }
            this.mOptionItems.clear();
            this.mOptionItems = null;
        }
        Bitmap bitmap = this.mOptionSingleIcon;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.mOptionSingleIcon.recycle();
            this.mOptionSingleIcon = null;
        }
        this.mOptionDefaultValue = null;
        this.mOptionKey = null;
        this.mOptionTitle = null;
    }

    public void setGroupType(int i) {
        this.mGroupType = i;
    }

    public void setImageTitleColorChangeable(boolean z) {
        this.mImageTitleColorChangeable = z;
    }

    public void setImageTitleMode(boolean z) {
        this.mImageTitleMode = z;
    }

    public void setOptionDefaultValue(String str) {
        this.mOptionDefaultValue = str;
    }

    public void setOptionExpandIcon(Bitmap bitmap) {
        this.mOptionExpandIcon = bitmap;
    }

    public void setOptionItems(ArrayList<d> arrayList) {
        this.mOptionItems = arrayList;
    }

    public void setOptionKey(String str) {
        this.mOptionKey = str;
    }

    public void setOptionOnOff(boolean z) {
        this.mbOptionOnOff = z;
    }

    public void setOptionSingleIcon(Bitmap bitmap) {
        this.mOptionSingleIcon = bitmap;
    }

    public void setOptionTitle(String str) {
        this.mOptionTitle = str;
    }
}
