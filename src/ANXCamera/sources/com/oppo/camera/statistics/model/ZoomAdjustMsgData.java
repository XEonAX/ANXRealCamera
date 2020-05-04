package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class ZoomAdjustMsgData extends DcsMsgData {
    public static final int DOUBLE_FINGER_TYPE = 4;
    private static final String EVENT_ZOOM_ADJUST = "zoom_adjust";
    private static final String KEY_IS_RECORDING = "is_recording";
    private static final String KEY_ZOOM_TYPE = "zoom_type";
    private static final String KEY_ZOOM_VALUE = "zoom_value";
    private static final String TAG = "ZoomAdjustMsgData";
    public static final int VOLUME_BUTTON_TYPE = 3;
    public static final int ZOOM_BUTTON_TYPE = 1;
    public static final int ZOOM_SEEKBAR_TYPE = 2;
    public int mZoomType = 1;
    public String mZoomValue = "";
    public boolean mbVideoRecording = false;

    public ZoomAdjustMsgData(Context context) {
        super(context, EVENT_ZOOM_ADJUST, false);
    }

    public void report() {
        prepareLogTagByCaptureType();
        if (!TextUtils.isEmpty(this.mZoomValue)) {
            this.mEventMap.put(KEY_ZOOM_VALUE, this.mZoomValue);
        }
        int i = this.mZoomType;
        if (i >= 1 && i <= 4) {
            this.mEventMap.put(KEY_ZOOM_TYPE, String.valueOf(this.mZoomType));
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
        return ("  mLogTag: " + this.mLogTag) + (", mEventId: " + this.mEventId) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mZoomValue: " + this.mZoomValue) + (", mZoomType: " + this.mZoomType);
    }
}
