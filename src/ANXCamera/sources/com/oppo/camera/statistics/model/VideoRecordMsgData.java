package com.oppo.camera.statistics.model;

import android.content.Context;
import android.text.TextUtils;
import com.oppo.camera.d;

public class VideoRecordMsgData extends DcsMsgData {
    private static final String EVENT_VIDEO_RECORD = "videoRecord";
    private static final String KEY_AE_AF_LOCK = "ae_af_lock";
    private static final String KEY_AVAILABLE_STORAGE = "available_storage";
    private static final String KEY_FACE_COUNT = "face_count";
    private static final String KEY_FLASH_MODE = "flash_mode";
    private static final String KEY_IS_RECORD_LOCATION = "is_record_location";
    private static final String KEY_IS_SHUTTER_VOICE = "is_shutter_voice";
    private static final String KEY_LOCATION = "location";
    private static final String KEY_PREVIEW_CAPTURE_COST_TIME = "preview_capture_cost_time";
    private static final String KEY_TOUCH_EXPOSURE_COMPENSATION = "touch_ev";
    private static final String KEY_TOUCH_XY = "touchxy_value";
    private static final String KEY_VIDEO_CODEC = "video_codec";
    private static final String KEY_VIDEO_FACE_BEAUTY = "video_face_beauty";
    private static final String KEY_VIDEO_FPS = "video_fps";
    private static final String KEY_VIDEO_MODE = "video_mode";
    private static final String KEY_VIDEO_RECORDER_SOUND = "video_recorder_sound";
    private static final String KEY_VIDEO_SIZE_TYPE = "video_rec_mode";
    private static final String KEY_VIDEO_TIME = "video_time";
    private static final String KEY_VOLUME_FUNCTION = "volume_function";
    private static final String TAG = "VideoRecordMsgData";
    public String mAeAfLock = "";
    public long mAvaliableStorage = 0;
    public int mFaceCount = 0;
    public String mFlashMode = "";
    public String mIsRecordLocation = "";
    public String mIsShutterVoice = "";
    public String mLocation = "";
    public long mPreviewCaptureCostTime = 0;
    public int mTouchEVValue = 0;
    public String mTouchXYValue = "";
    public String mVideoCodec = "";
    public int mVideoFaceBeauty = 0;
    public int mVideoFps = 0;
    public String mVideoMode = "";
    public String mVideoRecorderSound = "";
    public String mVideoSizeType = "";
    public long mVideoTime = 0;
    public String mVolumeFunction = "";

    public VideoRecordMsgData(Context context) {
        super(context, "202", "videoRecord", false);
    }

    public void report() {
        if (!TextUtils.isEmpty(this.mVideoMode)) {
            this.mEventMap.put("video_mode", this.mVideoMode);
        }
        if (!TextUtils.isEmpty(this.mLocation)) {
            this.mEventMap.put("location", this.mLocation);
        }
        if (this.mVideoTime > 0) {
            this.mEventMap.put("video_time", String.valueOf(this.mVideoTime));
        }
        if (!TextUtils.isEmpty(this.mVideoSizeType)) {
            this.mEventMap.put("video_rec_mode", this.mVideoSizeType);
        }
        if (this.mVideoFps > 0) {
            this.mEventMap.put("video_fps", String.valueOf(this.mVideoFps));
        }
        if (this.mAvaliableStorage >= 0) {
            this.mEventMap.put("available_storage", String.valueOf(this.mAvaliableStorage));
        }
        if (!TextUtils.isEmpty(this.mVideoCodec)) {
            this.mEventMap.put("video_codec", this.mVideoCodec);
        }
        if (!TextUtils.isEmpty(this.mVideoRecorderSound)) {
            this.mEventMap.put("video_recorder_sound", this.mVideoRecorderSound);
        }
        if (!TextUtils.isEmpty(this.mVolumeFunction)) {
            this.mEventMap.put("volume_function", this.mVolumeFunction);
        }
        if (this.mPreviewCaptureCostTime >= 0) {
            this.mEventMap.put("preview_capture_cost_time", String.valueOf(this.mPreviewCaptureCostTime));
        }
        if (!TextUtils.isEmpty(this.mTouchXYValue)) {
            this.mEventMap.put(KEY_TOUCH_XY, this.mTouchXYValue);
        }
        this.mEventMap.put("touch_ev", String.valueOf(this.mTouchEVValue));
        if (!TextUtils.isEmpty(this.mFlashMode)) {
            this.mEventMap.put(KEY_FLASH_MODE, this.mFlashMode);
        }
        if (!TextUtils.isEmpty(this.mIsShutterVoice)) {
            this.mEventMap.put(KEY_IS_SHUTTER_VOICE, this.mIsShutterVoice);
        }
        if (!TextUtils.isEmpty(this.mAeAfLock)) {
            this.mEventMap.put("ae_af_lock", String.valueOf(this.mAeAfLock));
        }
        this.mEventMap.put("face_count", String.valueOf(this.mFaceCount));
        if (!TextUtils.isEmpty(this.mIsRecordLocation)) {
            this.mEventMap.put(KEY_IS_RECORD_LOCATION, this.mIsRecordLocation);
        }
        if (this.mVideoFaceBeauty > 0) {
            this.mEventMap.put("video_face_beauty", String.valueOf(this.mVideoFaceBeauty));
        }
        this.mEventMap.put("video_codec", String.valueOf(this.mTouchEVValue));
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("mEventId: " + this.mEventId) + (", mLogTag: " + this.mLogTag) + (", mCaptureType: " + this.mCaptureType) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mVideoMode: " + this.mVideoMode) + (", mVideoTime: " + this.mVideoTime) + (", mVideoSizeType: " + this.mVideoSizeType) + (", mVideoFps: " + this.mVideoFps) + (", mFlashMode: " + this.mFlashMode) + (", mbFlashTrigger: " + this.mbFlashTrigger) + (", mAvaliableStorage: " + this.mAvaliableStorage) + (", mVideoCodec: " + this.mVideoCodec) + (", mVideoRecorderSound: " + this.mVideoRecorderSound) + (", mVideoFaceBeauty: " + this.mVideoFaceBeauty) + (", mIsMirror: " + this.mIsMirror) + (", mFilterType: " + this.mFilterType) + (", mSmooth: " + this.mSmooth) + (", mPreviewCaptureCostTime: " + this.mPreviewCaptureCostTime) + (", mZoomValue: " + this.mZoomValue) + (", mTouchXYValue: " + this.mTouchXYValue) + (", mTouchEVValue: " + this.mTouchEVValue);
    }
}
