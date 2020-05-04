package com.oppo.camera.statistics.model;

import android.content.Context;
import com.oppo.camera.d;

public class PreviewStaticInfoMsgData extends DcsMsgData {
    private static final String EVENT_STATIC_INFO = "static_info";

    public PreviewStaticInfoMsgData(Context context) {
        super(context, "200", EVENT_STATIC_INFO, false);
    }

    public void report() {
        prepareLogTagByCaptureType();
        if (DEBUG) {
            d.b("DcsMsgData", "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mLogTag: " + this.mLogTag) + (", mEventId: " + this.mEventId) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mScreenBrightness: " + this.mScreenBrightness);
    }
}
