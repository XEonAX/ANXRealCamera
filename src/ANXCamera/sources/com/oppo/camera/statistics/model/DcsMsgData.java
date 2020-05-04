package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.color.compat.os.SystemPropertiesNative;
import com.oppo.camera.entry.b;
import com.oppo.camera.o.d;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.statistics.NearMeStatistics;
import java.util.HashMap;

public abstract class DcsMsgData {
    public static final int CAPTURE_TYPE = 0;
    public static final boolean DEBUG = SystemPropertiesNative.getBoolean("persist.sys.assert.panic", false);
    protected static final String KEY_CAMERA_ID = "camera_id";
    protected static final String KEY_CAPTURE_MODE = "capture_mode";
    private static final String KEY_ENTER_TIMESTAMP = "enter_timestamp";
    private static final String KEY_ENTER_TYPE = "enter_type";
    private static final String KEY_FILTER_TYPE = "filter_type";
    private static final String KEY_FLASH_MODE = "flash_mode";
    private static final String KEY_FLASH_TRIGGER = "flash_trigger";
    private static final String KEY_IS_MIRROR = "is_mirror";
    private static final String KEY_NEW_STYLE_TYPE = "portrait_new_style_type";
    protected static final String KEY_ORIENTATION = "orientation";
    protected static final String KEY_SCREEN_BRIGHTNESS = "screen_brightness";
    private static final String KEY_SMOOTH_LEVEL = "smooth_value";
    private static final String KEY_ZOOM_VALUE = "zoom_value";
    protected static final String LOGTAG_CAPTURE = "200";
    protected static final String LOGTAG_STICKER = "205";
    protected static final String LOGTAG_VIDEO = "202";
    private static final int SESSION_TIME_OUT = 10;
    public static final int STICKER_TYPE = 2;
    protected static final String TAG = "DcsMsgData";
    public static final int VIDEO_TYPE = 1;
    public String mCameraEnterTimeStamp = String.valueOf(b.j());
    public String mCameraEnterType = String.valueOf(1);
    public String mCameraId = null;
    public String mCaptureMode = null;
    public int mCaptureType = 0;
    private Context mContext;
    protected String mEventId = null;
    protected HashMap<String, String> mEventMap = null;
    public String mFilterType = "";
    public String mFlashMode = "";
    public String mIsMirror = "";
    protected String mLogTag = null;
    public int mOrientation = -1;
    public String mPortraitNewStyleType = "";
    private boolean mRealTime = false;
    public int mScreenBrightness = -1;
    public int mSmooth = -1;
    public String mZoomValue = "";
    public int mbFlashTrigger = -1;

    public DcsMsgData(Context context, String str, String str2, boolean z) {
        this.mContext = context;
        this.mLogTag = str;
        this.mEventId = str2;
        this.mRealTime = z;
        this.mEventMap = new HashMap<>();
    }

    public DcsMsgData(Context context, String str, boolean z) {
        this.mContext = context;
        this.mEventId = str;
        this.mRealTime = z;
        this.mEventMap = new HashMap<>();
    }

    public static void init(Context context) {
        CameraStatisticsUtil.onError(context);
        CameraStatisticsUtil.onDebug(DEBUG);
        CameraStatisticsUtil.setSessionTimeOut(context, 10);
    }

    /* access modifiers changed from: protected */
    public void destroy() {
        this.mContext = null;
    }

    public boolean isValid() {
        if (!d.T()) {
            return !TextUtils.isEmpty(this.mLogTag) || !TextUtils.isEmpty(this.mEventId);
        }
        com.oppo.camera.d.b(TAG, "isValid, monkey is running do not report");
        return false;
    }

    public void onPause() {
        CameraStatisticsUtil.onPause(this.mContext);
    }

    public void onResume() {
        CameraStatisticsUtil.onResume(this.mContext);
    }

    /* access modifiers changed from: protected */
    public void prepareLogTagByCaptureType() {
        int i = this.mCaptureType;
        if (i == 0) {
            this.mLogTag = LOGTAG_CAPTURE;
        } else if (i == 1) {
            this.mLogTag = LOGTAG_VIDEO;
        } else if (i == 2) {
            this.mLogTag = LOGTAG_STICKER;
        }
    }

    public void put(String str, String str2) {
        this.mEventMap.put(str, str2);
    }

    public void report() {
        if (isValid()) {
            if (!TextUtils.isEmpty(this.mCaptureMode)) {
                this.mEventMap.put("capture_mode", this.mCaptureMode);
            }
            if (!TextUtils.isEmpty(this.mCameraId)) {
                this.mEventMap.put("camera_id", this.mCameraId);
            }
            int i = this.mOrientation;
            if (i > -1) {
                this.mEventMap.put("orientation", String.valueOf(i));
            }
            int i2 = this.mScreenBrightness;
            if (i2 > 0) {
                this.mEventMap.put("screen_brightness", String.valueOf(i2));
            }
            if (!TextUtils.isEmpty(this.mIsMirror)) {
                this.mEventMap.put(KEY_IS_MIRROR, this.mIsMirror);
            }
            if (!TextUtils.isEmpty(this.mFilterType)) {
                this.mEventMap.put("filter_type", this.mFilterType);
            }
            if (!TextUtils.isEmpty(this.mPortraitNewStyleType)) {
                this.mEventMap.put("portrait_new_style_type", this.mPortraitNewStyleType);
            }
            if (!TextUtils.isEmpty(this.mFlashMode)) {
                this.mEventMap.put(KEY_FLASH_MODE, this.mFlashMode);
            }
            int i3 = this.mbFlashTrigger;
            if (i3 > 0) {
                this.mEventMap.put(KEY_FLASH_TRIGGER, String.valueOf(i3));
            }
            int i4 = this.mSmooth;
            if (i4 >= 0) {
                this.mEventMap.put(KEY_SMOOTH_LEVEL, String.valueOf(i4));
            }
            if (!TextUtils.isEmpty(this.mZoomValue)) {
                this.mEventMap.put(KEY_ZOOM_VALUE, this.mZoomValue);
            }
            if (!TextUtils.isEmpty(this.mCameraEnterTimeStamp)) {
                this.mEventMap.put(KEY_ENTER_TIMESTAMP, this.mCameraEnterTimeStamp);
            }
            if (!TextUtils.isEmpty(this.mCameraEnterType)) {
                this.mEventMap.put(KEY_ENTER_TYPE, this.mCameraEnterType);
            }
            NearMeStatistics.onCommon(this.mContext, this.mLogTag, this.mEventId, this.mEventMap, this.mRealTime);
        }
    }
}
