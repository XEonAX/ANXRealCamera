package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class SwitchCameraMsgData extends DcsMsgData {
    private static final String EVENT_SWITCH_CAMERA = "switch_cameraId";
    private static final String KEY_TO_CAPTURE_MODE = "to_capture_mode";
    private static final String TAG = "SwitchCameraMsgData";
    public String mToCaptureMode = "";

    public SwitchCameraMsgData(Context context) {
        super(context, EVENT_SWITCH_CAMERA, false);
    }

    public void report() {
        prepareLogTagByCaptureType();
        if (!TextUtils.isEmpty(this.mToCaptureMode)) {
            this.mEventMap.put(KEY_TO_CAPTURE_MODE, this.mToCaptureMode);
        }
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mLogTag: " + this.mLogTag) + (", mEventId: " + this.mEventId) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mScreenBrightness: " + this.mScreenBrightness);
    }
}
