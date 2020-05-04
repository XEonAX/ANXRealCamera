package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class FocusAimMsgData extends DcsMsgData {
    private static final String EVENT_FOCUS_AIM = "focus_aim";
    private static final String EVENT_TOUCH_XY = "touchXY";
    private static final String KEY_IS_RECORDING = "is_recording";
    private static final String TAG = "FocusAimMsgData";
    public String mTouchXY = "";
    public boolean mbVideoRecording = false;

    public FocusAimMsgData(Context context) {
        super(context, EVENT_FOCUS_AIM, false);
    }

    public void report() {
        prepareLogTagByCaptureType();
        if (!TextUtils.isEmpty(this.mTouchXY)) {
            this.mEventMap.put(EVENT_TOUCH_XY, this.mTouchXY);
        }
        if (this.mCaptureType == 1) {
            this.mEventMap.put(KEY_IS_RECORDING, String.valueOf(this.mbVideoRecording));
        }
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mEventId: " + this.mEventId) + (", mLogTag: " + this.mLogTag) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mTouchXY: " + this.mTouchXY);
    }
}
