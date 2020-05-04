package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class EnterExitDcsMsgData extends DcsMsgData {
    public static final String EVENT_ENTER = "enter";
    public static final String EVENT_EXIT = "exit";
    private static final String KEY_ENTER_CALLER_PACKAGE = "enter_caller_package";
    private static final String KEY_ENTER_CAMERA_ENTER_TIME_GAP = "camera_enter_time_gap";
    private static final String KEY_EXIT_CALLER_PACKAGE = "exit_caller_package";
    private static final String KEY_EXIT_RESUME_PAUSE_DURATION_TIME = "resume_pause_time";
    private static final String KEY_EXIT_RESUME_PAUSE_VIDEO_TIME = "resume_pause_video_time";
    private static final String KEY_EXIT_TO_GALLERY = "to_gallery";
    private static final String LOCK_SUB_FIX = "LOCK";
    private static final String LOGTAG_ENTER = "201";
    private static final String SEPARATOR = "_";
    private static final String TAG = "EnterExitDcsMsgData";
    public long mCameraEnterTimeGap = 0;
    public String mEnterCallPackage = "";
    public String mExitCallPackage = "";
    public long mResumePauseTime = 0;
    public long mResumePauseVideoTime = 0;
    public String mShortcutType = "";
    public boolean mbFromLock = false;
    public boolean mbToGallery = false;

    public EnterExitDcsMsgData(Context context, String str) {
        super(context, LOGTAG_ENTER, str, true);
    }

    public void report() {
        if (!TextUtils.isEmpty(this.mEnterCallPackage)) {
            String str = this.mEnterCallPackage;
            if (this.mbFromLock) {
                str = str + "_LOCK";
            } else if (!TextUtils.isEmpty(this.mShortcutType)) {
                str = str + SEPARATOR + this.mShortcutType;
            }
            this.mEventMap.put(KEY_ENTER_CALLER_PACKAGE, str);
        }
        if (!TextUtils.isEmpty(this.mExitCallPackage)) {
            String str2 = this.mExitCallPackage;
            if (this.mbFromLock) {
                str2 = str2 + "_LOCK";
            } else if (!TextUtils.isEmpty(this.mShortcutType)) {
                str2 = str2 + SEPARATOR + this.mShortcutType;
            }
            this.mEventMap.put(KEY_EXIT_CALLER_PACKAGE, str2);
        }
        if (this.mCameraEnterTimeGap > 0 && "enter".equals(this.mEventId)) {
            this.mEventMap.put("camera_enter_time_gap", String.valueOf(this.mCameraEnterTimeGap));
        }
        if (this.mResumePauseTime > 0 && "exit".equals(this.mEventId)) {
            this.mEventMap.put("resume_pause_time", String.valueOf(this.mResumePauseTime));
        }
        if (this.mResumePauseVideoTime > 0 && "exit".equals(this.mEventId)) {
            this.mEventMap.put("resume_pause_video_time", String.valueOf(this.mResumePauseVideoTime));
        }
        if ("exit".equals(this.mEventId)) {
            this.mEventMap.put("to_gallery", String.valueOf(this.mbToGallery));
        }
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mEventId: " + this.mEventId) + (", mEnterCallPackage: " + this.mEnterCallPackage) + (", mShortcutType: " + this.mShortcutType) + (", mCameraEnterTimeGap: " + this.mCameraEnterTimeGap) + (", mResumePauseTime: " + this.mResumePauseTime) + (", mResumePauseVideoTime: " + this.mResumePauseVideoTime) + (", mbToGallery: " + this.mbToGallery) + (", mbFromLock: " + this.mbFromLock);
    }
}
