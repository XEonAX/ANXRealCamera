package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class ReminderMsgData extends DcsMsgData {
    private static final String KEY_AI_SCENE = "ai_scene";
    public static final String KEY_BATTERY_CAM = "battery_cam";
    public static final String KEY_BATTERY_FLASH = "battery_flash";
    private static final String KEY_BOKEH_CODE = "bokeh_code";
    public static final String KEY_CHARGE_FALSE = "charge_false";
    public static final String KEY_CHARGE_TRUE = "charge_true";
    private static final String KEY_DISABLE_CODE = "disable_code";
    public static final String KEY_MEMORY_CAM = "memory_cam";
    public static final String KEY_MEMORY_VIDEO = "memory_video";
    private static final String KEY_REMINDER_TRIGGER = "reminder_trigger";
    public static final String KEY_TEMPS_CAM = "temps_cam";
    public static final String KEY_TEMPS_FLASH = "temps_flash";
    private static final String REMINDER_CODE = "reminder_code";
    private static final String REMINDER_TRIGGER = "reminder_trigger";
    private static final String REMINDER_TYPE = "reminder_type";
    private static final String TAG = "ReminderMsgData";
    public int mAiSceneValue = 0;
    public int mBokehCode = -1;
    public String mReminderCodeValue = "";
    public String mReminderTrigger = "";

    public ReminderMsgData(Context context) {
        super(context, REMINDER_TYPE, false);
    }

    public void report() {
        if (!TextUtils.isEmpty(this.mReminderCodeValue)) {
            this.mEventMap.put(KEY_DISABLE_CODE, this.mReminderCodeValue);
        }
        if (KEY_TEMPS_FLASH.equals(this.mReminderCodeValue) && !TextUtils.isEmpty(this.mReminderTrigger)) {
            this.mEventMap.put("reminder_trigger", this.mReminderTrigger);
        }
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mLogTag: " + this.mLogTag) + (", mEventId: " + this.mEventId) + (", mCameraId: " + this.mCameraId) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mAiSceneValue: " + this.mAiSceneValue) + (", mBokehCode: " + this.mBokehCode) + (", mReminderCodeValue: " + this.mReminderCodeValue) + (", mReminderTrigger: " + this.mReminderTrigger);
    }
}
