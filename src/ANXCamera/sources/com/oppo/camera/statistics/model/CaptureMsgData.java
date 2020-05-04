package com.oppo.camera.statistics.model;

import android.content.Context;
import android.hardware.camera2.params.Face;
import android.text.TextUtils;
import com.oppo.camera.d;

public class CaptureMsgData extends DcsMsgData {
    private static final String EVENT_CAPTURE = "portrait";
    private static final String KEY_AE_AF_LOCK = "ae_af_lock";
    private static final String KEY_AI_SCENE = "ai_scene";
    private static final String KEY_BETWEEN_CLICK_BUTTON_COST_TIME = "between_click_btn_cost_time";
    private static final String KEY_BOKEH_CODE = "bokeh_code";
    private static final String KEY_BURST_COUNT = "burst_count";
    private static final String KEY_CCT = "cct_value";
    private static final String KEY_DELAYTIME = "delay_time";
    private static final String KEY_EXP = "exp_value";
    private static final String KEY_FACE_COORDINATE = "face_coordinate";
    private static final String KEY_FACE_COUNT = "face_count";
    private static final String KEY_FACE_SIZE = "face_size";
    private static final String KEY_FILTER_MENU_STATE = "filter_menu_state";
    private static final String KEY_FOCAL_LENGTH = "focal_length";
    private static final String KEY_HDR_MODE = "hdr_mode";
    private static final String KEY_HDR_TRIGGER = "hdr_trigger";
    private static final String KEY_IMAGE_HEIGHT = "height";
    private static final String KEY_IMAGE_WIDTH = "width";
    private static final String KEY_ISO = "iso_value";
    private static final String KEY_IS_AI_SCENE = "is_ai_scene";
    private static final String KEY_IS_ASSISTANT_LINE = "is_assistant_line";
    private static final String KEY_IS_GESTURE_CAPTURE_TYPE = "is_gesture_capture_type";
    private static final String KEY_IS_PI = "pi_effect";
    private static final String KEY_IS_RECORD_LOCATION = "is_record_location";
    private static final String KEY_IS_SD_CARD = "is_sd";
    private static final String KEY_IS_SHUTTER_VOICE = "is_shutter_voice";
    private static final String KEY_IS_SLOGAN = "is_slogan";
    private static final String KEY_IS_TAP_CAPTURE_TYPE = "is_tap_capture_type";
    private static final String KEY_LOCATION = "location";
    private static final String KEY_LUX = "lux_value";
    private static final String KEY_NEW_STYLE_MENU_STATE = "portrait_new_style_menu_state";
    private static final String KEY_NIGHT_STATE = "night_state";
    private static final String KEY_PANORAMA_DIRECTION = "panorama_direction";
    private static final String KEY_PICSIZETYPE = "pic_size_type";
    private static final String KEY_PREVIEW_CAPTURE_COST_TIME = "preview_capture_cost_time";
    private static final String KEY_PROFESSION_EXPOSURE_COMPENSATION = "profession_ev_value";
    private static final String KEY_PROFESSION_EXPOSURE_TIME = "profession_exp_time";
    private static final String KEY_PROFESSION_FOCUS_VALUE = "profession_focus_value";
    private static final String KEY_PROFESSION_HIGH_RESOLUTION = "profession_high_resolution";
    private static final String KEY_PROFESSION_ISO_VALUE = "profession_ISO_value";
    private static final String KEY_PROFESSION_WHITE_BALANCE = "profession_wb_value";
    private static final String KEY_SHUTTER_TRIGGER_TYPE = "shutter_trigger_type";
    private static final String KEY_SHUTTER_TYPE = "capture_type";
    private static final String KEY_SLOGAN_TYPE = "slogan_type";
    public static final String KEY_SMOOTH_CUBE = "self_smooth_cube";
    public static final String KEY_SMOOTH_DERMABRASION = "self_smooth_dermabrasion";
    public static final String KEY_SMOOTH_EYE_BIG = "self_smooth_eye_big";
    public static final String KEY_SMOOTH_FACE_JAW = "self_smooth_face_jaw";
    public static final String KEY_SMOOTH_FACE_LEAN = "self_smooth_face_lean";
    public static final String KEY_SMOOTH_FACE_SMALL = "self_smooth_face_small";
    public static final String KEY_SMOOTH_FRESHEN_UP = "self_smooth_freshen_up";
    public static final String KEY_SMOOTH_NOSE_LEAN = "self_smooth_nose_lean";
    private static final String KEY_TIMER_COORDINATE = "timer_coordinate";
    private static final String KEY_TIMER_SIZE = "timer_size";
    private static final String KEY_TOUCH_EXPOSURE_COMPENSATION = "touch_ev";
    private static final String KEY_TOUCH_XY = "touchxy_value";
    private static final String KEY_VOLUME_FUNCTION = "volume_function";
    private static final String TAG = "CaptureMsgData";
    public String mAeAfLock = "";
    public int mAiScene = 0;
    public long mBetweenClickBtnCostTime = 0;
    public int mBokehCode = -1;
    public int mBurstCount = -1;
    public String mCCT = "";
    public String mDelayTime = "";
    public long mEXP = 0;
    public String mFaceCoordinate = "";
    public int mFaceCount = 0;
    public String mFaceSize = "";
    public float mFocalLength = 0.0f;
    public String mHdrMode = "";
    public String mHeight = "";
    public int mISO = 0;
    public String mIsAiScene = "";
    public String mIsAssistantLine = "";
    public String mIsFingerprintShutter = "";
    public String mIsGestureCaptureType = "";
    public String mIsPi = "";
    public String mIsRecordLocation = "";
    public String mIsSDCard = "";
    public String mIsShutterVoice = "";
    public String mIsSlogan = "";
    public String mIsTapCaptureType = "";
    public String mLocation = "";
    public float mLux = 0.0f;
    public int mNightState = -1;
    public int mPanoramaDirection = 0;
    public String mPicSizeType = "";
    public long mPreviewCaptureCostTime = -1;
    public String mProfessionEvValue = "";
    public String mProfessionExpValue = "";
    public String mProfessionFocusValue = "";
    public String mProfessionHighResolution = "";
    public String mProfessionISOValue = "";
    public String mProfessionWbValue = "";
    public String mShutterTriggerType = "";
    public String mShutterType = "";
    public int mSloganType = 0;
    public int mSmoothCube = -1;
    public int mSmoothDermabrasion = -1;
    public int mSmoothEyeBig = -1;
    public int mSmoothFaceJaw = -1;
    public int mSmoothFaceLean = -1;
    public int mSmoothFaceSmall = -1;
    public int mSmoothFreshenUp = -1;
    public int mSmoothNoseLean = -1;
    public String mTimerCoordinate = "";
    public String mTimerSize = "";
    public int mTouchEVValue = 0;
    public String mTouchXYValue = "";
    public String mVolumeFunction = "";
    public String mWidth = "";
    public boolean mbHdrTrigger = false;

    public CaptureMsgData(Context context) {
        super(context, "200", "portrait", false);
    }

    public void parseFaceBeauty(int[] iArr) {
        if (iArr != null) {
            try {
                this.mSmoothDermabrasion = iArr[0];
                this.mSmoothFaceLean = iArr[1];
                this.mSmoothFaceSmall = iArr[2];
                this.mSmoothFaceJaw = iArr[3];
                this.mSmoothEyeBig = iArr[4];
                this.mSmoothNoseLean = iArr[5];
                this.mSmoothFreshenUp = iArr[6];
                this.mSmoothCube = iArr[7];
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
    }

    public void parseFaceInfo(Face[] faceArr) {
        if (faceArr != null) {
            this.mFaceCount = faceArr.length;
            StringBuilder sb = new StringBuilder();
            for (Face face : faceArr) {
                sb.append(face.getBounds().width());
                sb.append("x");
                sb.append(face.getBounds().height());
                sb.append(",");
            }
            this.mFaceSize = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            for (Face face2 : faceArr) {
                sb2.append(face2.getBounds().left);
                sb2.append(",");
                sb2.append(face2.getBounds().top);
                sb2.append(",");
                sb2.append(face2.getBounds().right);
                sb2.append(",");
                sb2.append(face2.getBounds().bottom);
                sb2.append("x");
            }
            String sb3 = sb2.toString();
            if (sb3.endsWith(",")) {
                sb3 = sb3.substring(0, sb3.length() - 1);
            }
            this.mFaceCoordinate = sb3;
        }
    }

    public void report() {
        this.mEventMap.put(KEY_ISO, String.valueOf(this.mISO));
        this.mEventMap.put(KEY_EXP, String.valueOf(this.mEXP));
        if (!TextUtils.isEmpty(this.mCCT)) {
            this.mEventMap.put(KEY_CCT, this.mCCT);
        }
        this.mEventMap.put("focal_length", String.valueOf(this.mFocalLength));
        if (!TextUtils.isEmpty(this.mLocation)) {
            this.mEventMap.put("location", this.mLocation);
        }
        this.mEventMap.put("face_count", String.valueOf(this.mFaceCount));
        this.mEventMap.put(KEY_LUX, String.valueOf(this.mLux));
        if (this.mFaceCount > 0) {
            this.mEventMap.put("face_size", this.mFaceSize);
        }
        if (!TextUtils.isEmpty(this.mDelayTime)) {
            this.mEventMap.put("delay_time", this.mDelayTime);
            this.mEventMap.put(KEY_TIMER_SIZE, this.mTimerSize);
            this.mEventMap.put(KEY_TIMER_COORDINATE, this.mTimerCoordinate);
        }
        if (!TextUtils.isEmpty(this.mPicSizeType)) {
            this.mEventMap.put(KEY_PICSIZETYPE, this.mPicSizeType);
        }
        if (!TextUtils.isEmpty(this.mIsRecordLocation)) {
            this.mEventMap.put(KEY_IS_RECORD_LOCATION, this.mIsRecordLocation);
        }
        if (!TextUtils.isEmpty(this.mIsAssistantLine)) {
            this.mEventMap.put(KEY_IS_ASSISTANT_LINE, this.mIsAssistantLine);
        }
        if (!TextUtils.isEmpty(this.mIsSDCard)) {
            this.mEventMap.put(KEY_IS_SD_CARD, this.mIsSDCard);
        }
        if (!TextUtils.isEmpty(this.mIsSlogan)) {
            this.mEventMap.put(KEY_IS_SLOGAN, this.mIsSlogan);
        }
        if (!TextUtils.isEmpty(this.mIsShutterVoice)) {
            this.mEventMap.put(KEY_IS_SHUTTER_VOICE, this.mIsShutterVoice);
        }
        if (!TextUtils.isEmpty(this.mIsAiScene)) {
            this.mEventMap.put(KEY_IS_AI_SCENE, this.mIsAiScene);
        }
        if (!TextUtils.isEmpty(this.mVolumeFunction)) {
            this.mEventMap.put("volume_function", this.mVolumeFunction);
        }
        if (!TextUtils.isEmpty(this.mIsGestureCaptureType)) {
            this.mEventMap.put(KEY_IS_GESTURE_CAPTURE_TYPE, this.mIsGestureCaptureType);
        }
        if (!TextUtils.isEmpty(this.mIsTapCaptureType)) {
            this.mEventMap.put(KEY_IS_TAP_CAPTURE_TYPE, this.mIsTapCaptureType);
        }
        if (!TextUtils.isEmpty(this.mIsPi)) {
            this.mEventMap.put(KEY_IS_PI, this.mIsPi);
        }
        if (!TextUtils.isEmpty(this.mProfessionWbValue)) {
            this.mEventMap.put("profession_wb_value", this.mProfessionWbValue);
        }
        if (!TextUtils.isEmpty(this.mProfessionEvValue)) {
            this.mEventMap.put("profession_ev_value", this.mProfessionEvValue);
        }
        if (!TextUtils.isEmpty(this.mProfessionExpValue)) {
            this.mEventMap.put("profession_exp_time", this.mProfessionExpValue);
        }
        if (!TextUtils.isEmpty(this.mProfessionISOValue)) {
            this.mEventMap.put("profession_ISO_value", this.mProfessionISOValue);
        }
        if (!TextUtils.isEmpty(this.mProfessionFocusValue)) {
            this.mEventMap.put("profession_focus_value", this.mProfessionFocusValue);
        }
        if (!TextUtils.isEmpty(this.mProfessionHighResolution)) {
            this.mEventMap.put("profession_high_resolution", this.mProfessionHighResolution);
        }
        if (!TextUtils.isEmpty(this.mFaceCoordinate)) {
            this.mEventMap.put("face_coordinate", this.mFaceCoordinate);
        }
        if (!TextUtils.isEmpty(this.mTouchXYValue)) {
            this.mEventMap.put(KEY_TOUCH_XY, this.mTouchXYValue);
        }
        if (this.mBokehCode >= 0) {
            this.mEventMap.put("bokeh_code", String.valueOf(this.mBokehCode));
        }
        this.mEventMap.put("touch_ev", String.valueOf(this.mTouchEVValue));
        if (this.mBurstCount > 0) {
            this.mEventMap.put("burst_count", String.valueOf(this.mBurstCount));
        }
        if (this.mSloganType > 0) {
            this.mEventMap.put("slogan_type", String.valueOf(this.mSloganType));
        }
        if (this.mPreviewCaptureCostTime > 0) {
            this.mEventMap.put("preview_capture_cost_time", String.valueOf(this.mPreviewCaptureCostTime));
        }
        if (this.mBetweenClickBtnCostTime > 0) {
            this.mEventMap.put("between_click_btn_cost_time", String.valueOf(this.mBetweenClickBtnCostTime));
        }
        if (!TextUtils.isEmpty(this.mAeAfLock)) {
            this.mEventMap.put("ae_af_lock", String.valueOf(this.mAeAfLock));
        }
        if (this.mPanoramaDirection > 0) {
            this.mEventMap.put("panorama_direction", String.valueOf(this.mPanoramaDirection));
        }
        if (!TextUtils.isEmpty(this.mWidth)) {
            this.mEventMap.put("width", this.mWidth);
        }
        if (!TextUtils.isEmpty(this.mHeight)) {
            this.mEventMap.put("height", this.mHeight);
        }
        if (!TextUtils.isEmpty(this.mHdrMode)) {
            this.mEventMap.put(KEY_HDR_MODE, this.mHdrMode);
        }
        this.mEventMap.put(KEY_HDR_TRIGGER, String.valueOf(this.mbHdrTrigger));
        if (!TextUtils.isEmpty(this.mShutterType)) {
            this.mEventMap.put("capture_type", this.mShutterType);
        }
        if (!TextUtils.isEmpty(this.mShutterTriggerType)) {
            this.mEventMap.put(KEY_SHUTTER_TRIGGER_TYPE, this.mShutterTriggerType);
        }
        this.mEventMap.put("ai_scene", String.valueOf(this.mAiScene));
        if (this.mNightState >= 0) {
            this.mEventMap.put("night_state", String.valueOf(this.mNightState));
        }
        if (this.mSmoothDermabrasion >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_DERMABRASION, String.valueOf(this.mSmoothDermabrasion));
        }
        if (this.mSmoothFaceLean >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_FACE_LEAN, String.valueOf(this.mSmoothFaceLean));
        }
        if (this.mSmoothFaceSmall >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_FACE_SMALL, String.valueOf(this.mSmoothFaceSmall));
        }
        if (this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_FACE_JAW, String.valueOf(this.mSmoothFaceJaw));
        }
        if (this.mSmoothEyeBig >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_EYE_BIG, String.valueOf(this.mSmoothEyeBig));
        }
        if (this.mSmoothNoseLean >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_NOSE_LEAN, String.valueOf(this.mSmoothNoseLean));
        }
        if (this.mSmoothFreshenUp >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_FRESHEN_UP, String.valueOf(this.mSmoothFreshenUp));
        }
        if (this.mSmoothCube >= 0 && this.mSmooth == 102) {
            this.mEventMap.put(KEY_SMOOTH_CUBE, String.valueOf(this.mSmoothCube));
        }
        if (DEBUG) {
            d.b(TAG, "report, " + toString());
        }
        super.report();
    }

    public String toString() {
        return ("  mLogTag: " + this.mLogTag) + (", mEventId: " + this.mEventId) + (", mCaptureMode: " + this.mCaptureMode) + (", mOrientation: " + this.mOrientation) + (", mCameraId: " + this.mCameraId) + (", mIsMirror: " + this.mIsMirror) + (", mFlashMode: " + this.mFlashMode) + (", mbFlashTrigger: " + this.mbFlashTrigger) + (", mFilterType: " + this.mFilterType) + (", mPortraitNewStyleType: " + this.mPortraitNewStyleType) + (", mSmooth: " + this.mSmooth) + (", mISO: " + this.mISO) + (", mEXP: " + this.mEXP) + (", mCCT: " + this.mCCT) + (", mWidth: " + this.mWidth) + (", mHeight: " + this.mHeight) + (", mFocalLength: " + this.mFocalLength) + (", mIsRecordLocation: " + this.mIsRecordLocation) + (", mIsAssistantLine: " + this.mIsAssistantLine) + (", mIsSDCard: " + this.mIsSDCard) + (", mIsSlogan: " + this.mIsSlogan) + (", mIsShutterVoice: " + this.mIsShutterVoice) + (", mIsAiScene: " + this.mIsAiScene) + (", mVolumeFunction: " + this.mVolumeFunction) + (", mIsGestureCaptureType: " + this.mIsGestureCaptureType) + (", mIsTapCaptureType: " + this.mIsTapCaptureType) + (", mIsPi: " + this.mIsPi) + (", mProfessionWbValue: " + this.mProfessionWbValue) + (", mProfessionEvValue: " + this.mProfessionEvValue) + (", mProfessionExpValue: " + this.mProfessionExpValue) + (", mProfessionFocusValue: " + this.mProfessionFocusValue) + (", mProfessionISOValue: " + this.mProfessionISOValue) + (", mProfessionHighResolution: " + this.mProfessionHighResolution) + (", mSmoothDermabrasion: " + this.mSmoothDermabrasion) + (", mSmoothFaceLean: " + this.mSmoothFaceLean) + (", mSmoothFaceSmall: " + this.mSmoothFaceSmall) + (", mSmoothFaceJaw: " + this.mSmoothFaceJaw) + (", mSmoothEyeBig: " + this.mSmoothEyeBig) + (", mSmoothNoseLean: " + this.mSmoothNoseLean) + (", mSmoothFreshenUp: " + this.mSmoothFreshenUp) + (", mSmoothCube: " + this.mSmoothCube) + (", mZoomValue: " + this.mZoomValue) + (", mLocation: " + this.mLocation) + (", mFaceCount: " + this.mFaceCount) + (", mFaceSize: " + this.mFaceSize) + (", mFaceCoordinate: " + this.mFaceCoordinate) + (", mDelayTime: " + this.mDelayTime) + (", mTimerSize: " + this.mTimerSize) + (", mTimerCoordinate: " + this.mTimerCoordinate) + (", mPicSizeType: " + this.mPicSizeType) + (", mTouchXYValue: " + this.mTouchXYValue) + (", mTouchEVValue: " + this.mTouchEVValue) + (", mBokehCode: " + this.mBokehCode) + (", mBurstCount: " + this.mBurstCount) + (", mSloganType: " + this.mSloganType) + (", mPortraitNewStyleType: " + this.mPortraitNewStyleType) + (", mPreviewCaptureCostTime: " + this.mPreviewCaptureCostTime) + (", mBetweenClickBtnCostTime: " + this.mBetweenClickBtnCostTime) + (", mAeAfLock: " + this.mAeAfLock) + (", mPanoramaDirection: " + this.mPanoramaDirection) + (", mHdrMode: " + this.mHdrMode) + (", mbHdrTrigger: " + this.mbHdrTrigger) + (", mShutterType: " + this.mShutterType) + (", mShutterTriggerType: " + this.mShutterTriggerType) + (", mAiScene: " + this.mAiScene) + (", mNightState: " + this.mNightState);
    }
}
