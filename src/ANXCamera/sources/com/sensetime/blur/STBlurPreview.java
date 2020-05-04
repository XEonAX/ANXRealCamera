package com.sensetime.blur;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import com.sensetime.faceapi.FaceTrack;
import com.sensetime.faceapi.FigureSegment;
import com.sensetime.faceapi.model.CvPixelFormat;
import com.sensetime.faceapi.model.FaceConfig;
import com.sensetime.faceapi.model.FaceInfo;
import com.sensetime.faceapi.model.FaceOrientation;
import com.sensetime.faceapi.utils.AccelerometerManager;
import com.sensetime.faceapi.utils.FaceRotationUtil;
import com.sensetime.utils.ShakeDetectorUtils;
import java.nio.ByteBuffer;

public class STBlurPreview implements ShakeDetectorUtils.OnShakeListener {
    private static boolean DEBUG = false;
    public static final int ST_BLUR_PARAM_TYPE_LEVEL = 4097;
    public static final int ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE = 4101;
    public static final int ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE = 4100;
    public static final int ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE = 4099;
    public static final int ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE = 4098;
    public static final int ST_BUFFER_ERROR = -4;
    public static final int ST_INTERNAL_ERROR = -6;
    public static final int ST_OK = 0;
    public static final int ST_PARAM_ERROR = -1;
    public static final int ST_PROGRAM_ERROR = -3;
    public static final int ST_SHADER_ERROR = -2;
    public static final int ST_TEXTURE_ERROR = -5;
    private static final String TAG = "STBlurPreview";
    private long PROCESS_LIFE_CYCLE_TIME;
    private long RESET_MASK_CYCLE_TIME;
    long debugSegCount;
    long debugSegSumTime;
    private Context mContext;
    private int mFrameNum;
    private boolean mFrontCamera;
    private boolean mInitialized;
    private long mLastProcessTime;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private ProcessThread mProcessThread;
    private boolean mResetMask;
    private long mResetMaskTime;
    /* access modifiers changed from: private */
    public FigureSegment mSegment;
    private byte[] mSegmentBuffer;
    private int mSegmentBufferHeight;
    private int mSegmentBufferWidth;
    /* access modifiers changed from: private */
    public String mSegmentModel;
    private int mSegmentOption;
    private ByteBuffer mSegmentOutBuffer;
    private int[] mSegmentOutBufferInfo;
    private final Object mSyncObject;
    private Rect[] mTmpFaceRects;
    private float[] mTmpYaws;
    /* access modifiers changed from: private */
    public FaceTrack mTrack;
    private boolean mUseSegment;

    public interface Callback {
        void onResult(boolean z, byte[] bArr, FaceInfo[] faceInfoArr);
    }

    class ProcessThread extends Thread {
        Callback callback;
        byte[] copyBuffer;
        boolean frontCamera;
        int height;
        private boolean isRunning;
        int width;

        ProcessThread() {
        }

        public synchronized void release() {
            this.isRunning = false;
            interrupt();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0021, code lost:
            monitor-enter(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
            r8.isRunning = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0024, code lost:
            monitor-exit(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0025, code lost:
            return;
         */
        public void run() {
            while (true) {
                try {
                    synchronized (this) {
                        if (!this.isRunning || isInterrupted()) {
                            break;
                        }
                        wait();
                    }
                    STBlurPreview.this.doOnPreviewCallback(this.copyBuffer, this.width, this.height, this.frontCamera, this.callback);
                } catch (InterruptedException e) {
                    try {
                        e.printStackTrace();
                        synchronized (this) {
                            this.isRunning = false;
                            return;
                        }
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.isRunning = false;
                            throw th;
                        }
                    }
                }
            }
        }

        public synchronized void start() {
            this.isRunning = true;
            super.start();
        }

        public void updateBuffer(byte[] bArr, int i, int i2, boolean z, Callback callback2) {
            this.width = i;
            this.height = i2;
            this.frontCamera = z;
            this.callback = callback2;
            byte[] bArr2 = this.copyBuffer;
            if (bArr2 == null || bArr.length != bArr2.length) {
                this.copyBuffer = new byte[bArr.length];
            }
            synchronized (this) {
                System.arraycopy(bArr, 0, this.copyBuffer, 0, bArr.length);
                notify();
            }
        }
    }

    public STBlurPreview(Context context) {
        this(context, true);
    }

    public STBlurPreview(Context context, boolean z) {
        this(context, z, (String) null, FaceConfig.FaceImageResize.RESIZE_320W, FaceConfig.TrackThreadCount.TWO_THREAD);
    }

    public STBlurPreview(Context context, boolean z, String str) {
        this(context, z, str, FaceConfig.FaceImageResize.RESIZE_320W, FaceConfig.TrackThreadCount.TWO_THREAD);
    }

    public STBlurPreview(Context context, boolean z, String str, FaceConfig.FaceImageResize faceImageResize, FaceConfig.TrackThreadCount trackThreadCount) {
        this.mSegmentOutBufferInfo = new int[2];
        this.mSegmentOption = 28;
        this.mFrontCamera = true;
        this.mSyncObject = new Object();
        this.PROCESS_LIFE_CYCLE_TIME = 3000;
        this.mResetMask = false;
        this.RESET_MASK_CYCLE_TIME = 300;
        this.debugSegSumTime = 0;
        this.debugSegCount = 0;
        if (this.mInitialized) {
            destroy();
        }
        this.mUseSegment = z;
        final boolean z2 = z;
        final String str2 = str;
        final FaceConfig.FaceImageResize faceImageResize2 = faceImageResize;
        final FaceConfig.TrackThreadCount trackThreadCount2 = trackThreadCount;
        AnonymousClass1 r2 = new Runnable() {
            public void run() {
                if (z2) {
                    FigureSegment unused = STBlurPreview.this.mSegment = new FigureSegment(str2, faceImageResize2);
                    String unused2 = STBlurPreview.this.mSegmentModel = str2;
                    return;
                }
                FaceTrack unused3 = STBlurPreview.this.mTrack = new FaceTrack(faceImageResize2, FaceConfig.FaceKeyPointCount.POINT_COUNT_21, trackThreadCount2);
            }
        };
        new Thread(r2).start();
        ShakeDetectorUtils.getInstance(context).registerOnShakeListener(this).start();
        AccelerometerManager.start(context);
        this.mInitialized = true;
        this.mContext = context;
    }

    /* access modifiers changed from: private */
    public void doOnPreviewCallback(byte[] bArr, int i, int i2, boolean z, Callback callback) {
        if (DEBUG) {
            Log.i(TAG, "doOnPreviewCallback data.length=" + bArr.length + ", width=" + i + ", height=" + i2);
        }
        this.mFrontCamera = z;
        this.mPreviewWidth = i;
        this.mPreviewHeight = i2;
        if (this.mUseSegment) {
            if (this.mSegment != null) {
                onSegment(bArr, i, i2, z, callback);
            }
        } else if (this.mTrack != null) {
            onTrack(bArr, i, i2, z, callback);
        }
    }

    private int getMaskTextureByFace(boolean z) {
        float[] fArr;
        Rect[] rectArr;
        synchronized (this.mSyncObject) {
            if (this.mTmpFaceRects == null || this.mTmpFaceRects.length <= 0) {
                rectArr = null;
                fArr = null;
            } else {
                int length = this.mTmpFaceRects.length;
                rectArr = new Rect[length];
                float[] fArr2 = new float[length];
                for (int i = 0; i < length; i++) {
                    fArr2[i] = this.mTmpYaws[i];
                    rectArr[i] = new Rect(this.mTmpFaceRects[i]);
                }
                fArr = fArr2;
            }
        }
        return BlurFilterLibrary.getMaskTextureByFace(z ? null : rectArr, false, fArr, this.mPreviewWidth, this.mPreviewHeight, (AccelerometerManager.getDegree() + 270) % 360, this.mFrontCamera);
    }

    private int getMaskTextureBySegment(boolean z) {
        byte[] bArr;
        int i;
        int i2;
        synchronized (this.mSyncObject) {
            bArr = this.mSegmentBuffer;
            i = this.mSegmentBufferWidth;
            i2 = this.mSegmentBufferHeight;
        }
        if (this.mResetMask && bArr != null) {
            for (int i3 = 0; i3 < bArr.length; i3++) {
                bArr[i3] = -1;
            }
            if (System.currentTimeMillis() - this.mResetMaskTime > this.RESET_MASK_CYCLE_TIME) {
                this.mResetMask = false;
            }
        }
        if (z || bArr == null) {
            return -1;
        }
        int[] iArr = new int[1];
        if (BlurFilterLibrary.processMaskBuffer(bArr, i, i2, true, iArr) != 0) {
            Log.e(TAG, "processMask error result code = " + r11);
        }
        if (DEBUG) {
            Log.d(TAG, "getMaskTextureBySegment out after process outTexture : " + iArr[0]);
        }
        return iArr[0];
    }

    public static String getVersion() {
        return BlurFilterLibrary.getVersion();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0016, code lost:
        if ((r2[0] * r6) != (r2[1] * r0)) goto L_0x0018;
     */
    private void onSegment(byte[] bArr, int i, int i2, boolean z, Callback callback) {
        int i3 = i;
        int i4 = i2;
        Callback callback2 = callback;
        if (this.mSegmentOutBuffer != null) {
            int[] iArr = this.mSegmentOutBufferInfo;
        }
        this.mSegment.createOutputBuffer(i3, i4, 240, this.mSegmentOutBufferInfo);
        int[] iArr2 = this.mSegmentOutBufferInfo;
        this.mSegmentOutBuffer = ByteBuffer.allocate(iArr2[0] * iArr2[1]);
        this.mSegmentOutBuffer.rewind();
        FaceOrientation faceOrientation = AccelerometerManager.getFaceOrientation(z);
        long currentTimeMillis = System.currentTimeMillis();
        this.mSegment.segment(bArr, CvPixelFormat.NV21, i, i2, i, faceOrientation, this.mSegmentOutBuffer.array(), this.mSegmentOption);
        this.debugSegSumTime += System.currentTimeMillis() - currentTimeMillis;
        this.debugSegCount++;
        if (DEBUG) {
            Log.i(TAG, "segment time = " + (this.debugSegSumTime / this.debugSegCount));
        }
        synchronized (this.mSyncObject) {
            this.mSegmentBuffer = this.mSegmentOutBuffer.array();
            this.mSegmentBufferWidth = this.mSegmentOutBufferInfo[0];
            this.mSegmentBufferHeight = this.mSegmentOutBufferInfo[1];
        }
        if (callback2 != null) {
            callback2.onResult(this.mUseSegment, (byte[]) null, (FaceInfo[]) null);
        }
    }

    private void onTrack(byte[] bArr, int i, int i2, boolean z, Callback callback) {
        FaceOrientation faceOrientation = AccelerometerManager.getFaceOrientation(z);
        FaceInfo[] track = this.mTrack.track(bArr, CvPixelFormat.NV21, i, i2, faceOrientation);
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("onTrack dir=");
            sb.append(faceOrientation.getValue());
            sb.append(", face=");
            sb.append(track == null ? "null" : Integer.valueOf(track.length));
            Log.d(TAG, sb.toString());
        }
        onFaceUpdate(track, i, i2, z);
        if (callback != null) {
            FaceRotationUtil.rotateFaceInfos(track, i, i2, z, 90);
            callback.onResult(this.mUseSegment, (byte[]) null, (FaceInfo[]) null);
        }
    }

    public static int setDebug(boolean z) {
        DEBUG = z;
        return BlurFilterLibrary.setDebug(z);
    }

    public int destroy() {
        ShakeDetectorUtils.getInstance(this.mContext).unregisterOnShakeListener(this).stop();
        AccelerometerManager.stop();
        if (DEBUG) {
            Log.d(TAG, "destroy");
        }
        ProcessThread processThread = this.mProcessThread;
        if (processThread != null) {
            processThread.release();
            try {
                this.mProcessThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (DEBUG) {
                Log.d(TAG, "destroy process thread join");
            }
            this.mProcessThread = null;
        }
        FaceTrack faceTrack = this.mTrack;
        if (faceTrack != null) {
            faceTrack.release();
            this.mTrack = null;
        }
        FigureSegment figureSegment = this.mSegment;
        if (figureSegment != null) {
            figureSegment.release();
            this.mSegment = null;
        }
        this.mInitialized = false;
        return destroyRender();
    }

    public int destroyRender() {
        return BlurFilterLibrary.destroy();
    }

    public String getTimeLog() {
        if (this.debugSegCount == 0) {
            return "";
        }
        return "segment time = " + (this.debugSegSumTime / this.debugSegCount) + " ms";
    }

    public int initRender(int i, int i2, boolean z) {
        this.mFrameNum = 0;
        int init = BlurFilterLibrary.init(i, i2);
        if (this.mSegmentModel == null) {
            setParam(4101, 0.3f);
            if (z) {
                setParam(4100, 0.15f);
            } else {
                setParam(4100, 0.01f);
            }
        } else {
            setParam(4101, 0.39f);
            if (z) {
                setParam(4100, 0.15f);
            } else {
                setParam(4100, 0.01f);
            }
        }
        if (z) {
            this.mSegmentOption = 28;
        } else {
            this.mSegmentOption = 24;
        }
        return init;
    }

    public void onFaceUpdate(FaceInfo[] faceInfoArr, int i, int i2, boolean z) {
        this.mUseSegment = false;
        this.mFrontCamera = z;
        this.mPreviewWidth = i;
        this.mPreviewHeight = i2;
        synchronized (this.mSyncObject) {
            if (faceInfoArr != null) {
                if (faceInfoArr.length > 0) {
                    int length = faceInfoArr.length;
                    this.mTmpFaceRects = new Rect[length];
                    this.mTmpYaws = new float[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        this.mTmpYaws[i3] = faceInfoArr[i3].yaw;
                        this.mTmpFaceRects[i3] = new Rect(faceInfoArr[i3].faceRect);
                    }
                }
            }
            this.mTmpFaceRects = null;
            this.mTmpYaws = null;
        }
        this.mLastProcessTime = System.currentTimeMillis();
    }

    public void onPreviewCallback(byte[] bArr, int i, int i2, boolean z) {
        onPreviewCallback(bArr, i, i2, z, (Callback) null);
    }

    public void onPreviewCallback(byte[] bArr, int i, int i2, boolean z, Callback callback) {
        onPreviewCallback(bArr, i, i2, z, true, 1, callback);
    }

    public void onPreviewCallback(byte[] bArr, int i, int i2, boolean z, boolean z2, int i3, Callback callback) {
        if (i3 > 1) {
            int i4 = this.mFrameNum;
            this.mFrameNum = i4 + 1;
            if (i4 % i3 != 0) {
                if (DEBUG) {
                    Log.i(TAG, "onPreviewCallback drop this frame");
                    return;
                }
                return;
            }
        }
        if (DEBUG) {
            Log.i(TAG, "onPreviewCallback do");
        }
        if (z2) {
            if (this.mProcessThread == null) {
                this.mProcessThread = new ProcessThread();
                this.mProcessThread.start();
            }
            this.mProcessThread.updateBuffer(bArr, i, i2, z, callback);
        } else {
            doOnPreviewCallback(bArr, i, i2, z, callback);
        }
        this.mLastProcessTime = System.currentTimeMillis();
    }

    public void onSegmentUpdate(byte[] bArr, int i, int i2, int i3, int i4) {
        this.mUseSegment = true;
        synchronized (this.mSyncObject) {
            this.mSegmentBuffer = bArr;
            this.mSegmentBufferWidth = i;
            this.mSegmentBufferHeight = i2;
            this.mPreviewWidth = i3;
            this.mPreviewHeight = i4;
        }
        this.mLastProcessTime = System.currentTimeMillis();
    }

    public void onShake(boolean z) {
        if (z) {
            resetMask();
        }
    }

    public int processOESTexture(int i, int[] iArr, boolean z) {
        int i2;
        if (System.currentTimeMillis() - this.mLastProcessTime < this.PROCESS_LIFE_CYCLE_TIME) {
            i2 = this.mUseSegment ? getMaskTextureBySegment(z) : getMaskTextureByFace(z);
        } else {
            if (DEBUG) {
                Log.d(TAG, "processOESTexture mask beyond the life cycle!");
            }
            i2 = -1;
        }
        return BlurFilterLibrary.processOESTextureByMask(i, i2, this.mFrontCamera, iArr);
    }

    public int processOESTextureGradual(int i, float[] fArr, int[] iArr, boolean z) {
        int i2;
        if (System.currentTimeMillis() - this.mLastProcessTime < this.PROCESS_LIFE_CYCLE_TIME) {
            i2 = this.mUseSegment ? getMaskTextureBySegment(z) : getMaskTextureByFace(z);
        } else {
            if (DEBUG) {
                Log.d(TAG, "processOESTexture mask beyond the life cycle!");
            }
            i2 = -1;
        }
        return BlurFilterLibrary.processOESTexureByMaskGradual(i, i2, this.mFrontCamera, AccelerometerManager.getDegree(), fArr, iArr);
    }

    public int processTexture(int i, int[] iArr, boolean z) {
        int i2;
        if (System.currentTimeMillis() - this.mLastProcessTime < this.PROCESS_LIFE_CYCLE_TIME) {
            i2 = this.mUseSegment ? getMaskTextureBySegment(z) : getMaskTextureByFace(z);
        } else {
            if (DEBUG) {
                Log.d(TAG, "processTexture mask beyond the life cycle!");
            }
            i2 = -1;
        }
        return BlurFilterLibrary.processTextureByMask(i, i2, this.mFrontCamera, iArr);
    }

    public int processTextureGradual(int i, float[] fArr, int[] iArr, boolean z) {
        int i2;
        if (System.currentTimeMillis() - this.mLastProcessTime < this.PROCESS_LIFE_CYCLE_TIME) {
            i2 = this.mUseSegment ? getMaskTextureBySegment(z) : getMaskTextureByFace(z);
        } else {
            if (DEBUG) {
                Log.d(TAG, "processOESTexture mask beyond the life cycle!");
            }
            i2 = -1;
        }
        return BlurFilterLibrary.processTexureByMaskGradual(i, i2, this.mFrontCamera, AccelerometerManager.getDegree(), fArr, iArr);
    }

    public void resetMask() {
        this.mResetMask = true;
        this.mResetMaskTime = System.currentTimeMillis();
    }

    public int rotateGrdualTexture(int i, boolean z, boolean z2) {
        return BlurFilterLibrary.rotateGradualTexture(i, z, z2);
    }

    public int rotateMaskTexture(int i, boolean z, boolean z2) {
        return BlurFilterLibrary.rotateMaskTexture(i, z, z2);
    }

    public int setDebugMask(boolean z) {
        return BlurFilterLibrary.setDebugMask(z);
    }

    public int setParam(int i, float f) {
        return BlurFilterLibrary.setParam(i, f);
    }

    public void setSegmentOption(int i) {
        this.mSegmentOption = i;
    }
}
