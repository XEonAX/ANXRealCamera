package visidon.Lib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.oppo.camera.l.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@SuppressLint({"NewApi"})
public class Panorama {
    protected static final int MAX_FRAMES = 3;
    protected static final int STATE_CHANGE_POSITION = 3;
    protected static final int STATE_IDLE = 0;
    protected static final int STATE_TAKE_IMAGE = 1;
    protected static final int STATE_WAITING_IMAGE = 2;
    static int imageSet;
    protected final Lock _mutex;
    /* access modifiers changed from: private */
    public boolean autoCapture;
    /* access modifiers changed from: private */
    public float cumX;
    /* access modifiers changed from: private */
    public float cumY;
    /* access modifiers changed from: private */
    public float cumZ;
    /* access modifiers changed from: private */
    public int currentGuide;
    protected int direction;
    float edx;
    float edy;
    protected long engine;
    /* access modifiers changed from: private */
    public float failRotation;
    protected int failedByCamera;
    /* access modifiers changed from: private */
    public int focal;
    private long frameDelayForPreviewCapture;
    /* access modifiers changed from: private */
    public long frameDelayForStillCapture;
    Timer frameDelayTimer;
    /* access modifiers changed from: private */
    public boolean frameSaving;
    Sensor gyroSensor;
    PanoramaHandler handler;
    protected boolean hasbeeninitialized;
    protected int imagesTaken;
    protected int inputHeight;
    protected int inputWidth;
    protected int lastDisplacement;
    protected int lastDisplacementy;
    /* access modifiers changed from: private */
    public boolean leftCaptured;
    /* access modifiers changed from: private */
    public float limitRotation;
    /* access modifiers changed from: private */
    public float mCurrentGyroX;
    /* access modifiers changed from: private */
    public float mCurrentGyroY;
    /* access modifiers changed from: private */
    public float mCurrentGyroZ;
    /* access modifiers changed from: private */
    public float mGyroVector;
    /* access modifiers changed from: private */
    public boolean mbMirrorOutput;
    float minimum_ovelap;
    /* access modifiers changed from: private */
    public float motionStrength;
    protected float optimalRotate;
    /* access modifiers changed from: private */
    public int outheight;
    /* access modifiers changed from: private */
    public int outwidth;
    protected boolean processing;
    /* access modifiers changed from: private */
    public boolean rightCaptured;
    SensorManager sensorManager;
    protected int state;
    protected boolean stillMode;
    private boolean swipeMode;
    protected boolean transposed;
    /* access modifiers changed from: private */
    public boolean waitStill;
    /* access modifiers changed from: private */
    public float warnRotation;

    public enum FailureCode {
        REGISTRATION_FAILED,
        TIMEOUT,
        PROCESSING_FAILED,
        WRONG_MOTION,
        MAX_MOTION
    }

    public enum Guide {
        NONE,
        MOVE,
        MOVE_FREE,
        HOLD,
        SLOW_DOWN,
        MOVE_DOWN,
        MOVE_UP
    }

    public interface PanoramaBaseListener {
        void onBitmapReady(Bitmap bitmap);

        void onFailure(FailureCode failureCode);

        void onFrameAdded(Bitmap bitmap);

        void onGuide(Guide guide, int i);

        void onJPEGImageReady(byte[] bArr);

        void onNV21ImageReady(byte[] bArr);

        void onProcessingReady(int i, int i2);

        void onSetPreviewParameters(boolean z);
    }

    public interface PanoramaCam1Listener extends PanoramaBaseListener {
        void onTakeImage();
    }

    class PanoramaHandler extends Handler implements SensorEventListener {
        private static final float CURRENT_GYRO_DATA_PERCENTAGE = 0.4f;
        public static final int MSG_GET_IMAGE = 2;
        public static final int MSG_GET_JPEG_IMAGE = 5;
        public static final int MSG_GET_NV21_IMAGE = 3;
        public static final int MSG_RELEASE = 9;
        public static final int MSG_REQUEST_CANCEL = 6;
        public static final int MSG_REQUEST_PROCESS = 8;
        public static final int MSG_START = 1;
        public static final int MSG_TAKEPHOTO = 7;
        public static final int MSG_UPDATE = 4;
        private static final float NS2S = 1.0E-9f;
        private static final float PREVIOUS_GYRO_DATA_PERCENTAGE = 0.6f;
        SessionCam1CaptureCallback captureCam1Callback;
        private int captureState;
        int images;
        PanoramaCam1Listener listener1;
        private float maxPosition;
        private float minPosition;
        int nextframe;
        private int photosFromLeft;
        private int photosFromRight;
        private float previousCapture;
        boolean processing;
        float target;
        private long timestamp;

        private class SessionCam1CaptureCallback implements Camera.PictureCallback {
            public boolean cancelRequested;

            private SessionCam1CaptureCallback() {
                this.cancelRequested = false;
            }

            public void onPictureTaken(byte[] bArr, Camera camera) {
                OutputStream a2;
                Throwable th;
                if (this.cancelRequested) {
                    PanoramaHandler.this.onSetPreviewParameters(false);
                    return;
                }
                int length = bArr.length;
                Panorama.this.imagesTaken++;
                Log.i("Visidon", "On picture taken - images taken set to " + Panorama.this.imagesTaken);
                PanoramaHandler.this.onSetPreviewParameters(true);
                PanoramaHandler panoramaHandler = PanoramaHandler.this;
                panoramaHandler.processing = true;
                if (!Panorama.this.transposed) {
                    Panorama.this.nativeAddJpegFrame(bArr, length, Panorama.this.lastDisplacement, Panorama.this.engine);
                } else {
                    Panorama.this.nativeAddJpegFrame(bArr, length, Panorama.this.lastDisplacementy, Panorama.this.engine);
                }
                PanoramaHandler panoramaHandler2 = PanoramaHandler.this;
                panoramaHandler2.processing = false;
                if (this.cancelRequested) {
                    panoramaHandler2.onSetPreviewParameters(false);
                    return;
                }
                Panorama.this.state = 3;
                Panorama.this.StartFrameDelayTimer(Panorama.this.frameDelayForStillCapture);
                if (Panorama.this.frameSaving) {
                    Log.i("Visidon", "Save input frame");
                    a.f(new File("/storage/sdcard0/VDPanorama").getAbsolutePath());
                    try {
                        a2 = a.a("/storage/sdcard0/VDPanorama/image_set" + Panorama.imageSet + "_im" + (Panorama.this.imagesTaken - 1) + ".jpg", a.c);
                        a2.write(bArr, 0, bArr.length);
                        a2.flush();
                        Log.i("Visidon", "Frame saved to: /storage/sdcard0/VDPanorama/image_set" + Panorama.imageSet + "_im" + (Panorama.this.imagesTaken - 1) + ".jpg");
                        if (a2 != null) {
                            a2.close();
                        }
                    } catch (FileNotFoundException e) {
                        Log.i("Visidon", "saving failed");
                        e.printStackTrace();
                    } catch (IOException e2) {
                        Log.i("Visidon", "saving failed");
                        e2.printStackTrace();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                Log.i("Visidon", "Onpicturetaken ready");
                return;
                throw th;
            }
        }

        public PanoramaHandler(Looper looper) {
            super(looper);
            this.processing = false;
            this.captureState = 0;
            this.previousCapture = 0.0f;
            this.minPosition = 0.0f;
            this.maxPosition = 0.0f;
            this.photosFromLeft = 0;
            this.photosFromRight = 0;
            Panorama.this.state = 0;
            this.captureState = 0;
        }

        public PanoramaHandler(Panorama panorama, Looper looper, PanoramaCam1Listener panoramaCam1Listener) {
            this(looper);
            this.captureCam1Callback = new SessionCam1CaptureCallback();
            this.listener1 = panoramaCam1Listener;
        }

        private void takeAction(float f, float f2) {
            int i = 0;
            if (Panorama.this.failedByCamera > 25) {
                Panorama panorama = Panorama.this;
                panorama.failedByCamera = 0;
                panorama._mutex.unlock();
                onFailure(FailureCode.REGISTRATION_FAILED);
                Panorama.this._mutex.lock();
            }
            if (f2 > Panorama.this.failRotation || f2 < (-Panorama.this.failRotation)) {
                Panorama.this._mutex.unlock();
                onFailure(FailureCode.WRONG_MOTION);
                Panorama.this._mutex.lock();
            }
            if (this.captureState == 0) {
                this.previousCapture = 0.0f;
                this.photosFromRight = 0;
                this.photosFromLeft = 0;
                boolean unused = Panorama.this.rightCaptured = false;
                boolean unused2 = Panorama.this.leftCaptured = false;
                if (f > 5.0f) {
                    this.nextframe = 1;
                    this.captureState = 1;
                }
                if (f < -5.0f) {
                    this.nextframe = 2;
                    this.captureState = 2;
                }
            }
            if (this.captureState == 1) {
                if (f > 0.0f && f > this.maxPosition) {
                    this.maxPosition = f;
                }
                if (f > Math.max(this.previousCapture, 0.0f) + Panorama.this.minimum_ovelap || f > this.target) {
                    Panorama.this.state = 1;
                    this.photosFromRight++;
                    this.previousCapture = f;
                }
                if (f > this.target || f < this.maxPosition - 5.0f) {
                    boolean unused3 = Panorama.this.rightCaptured = true;
                    this.minPosition = 90.0f;
                    if (!Panorama.this.leftCaptured) {
                        this.captureState = 2;
                    } else {
                        this.captureState = 4;
                    }
                    int i2 = this.photosFromRight;
                    if (i2 == 0) {
                        this.photosFromRight = i2 + 1;
                        Panorama.this.state = 1;
                    }
                }
            }
            if (this.captureState == 2) {
                if (f < 0.0f && f < this.minPosition) {
                    this.minPosition = f;
                }
                if (f < Math.min(this.previousCapture, 0.0f) - Panorama.this.minimum_ovelap || f < (-this.target)) {
                    Panorama.this.state = 1;
                    this.photosFromLeft++;
                    this.previousCapture = f;
                }
                if (f < (-this.target) || f > this.minPosition + 5.0f) {
                    boolean unused4 = Panorama.this.leftCaptured = true;
                    this.maxPosition = -90.0f;
                    if (!Panorama.this.rightCaptured) {
                        this.captureState = 1;
                    } else {
                        this.captureState = 4;
                    }
                    int i3 = this.photosFromLeft;
                    if (i3 == 0) {
                        this.photosFromLeft = i3 + 1;
                        Panorama.this.state = 1;
                    }
                }
            }
            if (this.captureState == 4 && Panorama.this.state != 1) {
                Panorama panorama2 = Panorama.this;
                panorama2.state = 2;
                panorama2._mutex.unlock();
                onFailure(FailureCode.MAX_MOTION);
                Panorama.this._mutex.lock();
            }
            if (this.captureState == 1) {
                i = (int) ((this.target - f) * 4.0f);
            }
            if (this.captureState == 2) {
                i = (int) (((-this.target) - f) * 4.0f);
            }
            if (this.captureState <= 2) {
                int i4 = -1;
                if (Panorama.this.transposed) {
                    i4 = 1;
                }
                float f3 = ((float) i4) * f2;
                if (f3 > Panorama.this.warnRotation) {
                    onGuide(Guide.MOVE_UP, i);
                    return;
                } else if (f3 < (-Panorama.this.warnRotation)) {
                    onGuide(Guide.MOVE_DOWN, i);
                    return;
                }
            }
            if (this.captureState == 0) {
                onGuide(Guide.MOVE_FREE, 100);
            }
            int i5 = this.captureState;
            if (i5 == 1 || i5 == 2) {
                onGuide(Guide.MOVE, i);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:22:0x00c9, code lost:
            if (r11.this$0.state != 3) goto L_0x0129;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0013, code lost:
            if (r0 != 3) goto L_0x0129;
         */
        private void updateStateMachine() {
            Panorama.this._mutex.lock();
            int i = Panorama.this.state;
            if (i == 1) {
                if (Panorama.this.stillMode) {
                    onGuide(Guide.HOLD, 0);
                }
                if ((((double) Panorama.this.motionStrength) < 0.1d || !Panorama.this.waitStill) && !this.processing) {
                    if (Panorama.this.imagesTaken == 0) {
                        float unused = Panorama.this.cumX = 0.0f;
                        float unused2 = Panorama.this.cumY = 0.0f;
                        float unused3 = Panorama.this.cumZ = 0.0f;
                        this.maxPosition = 0.0f;
                        this.minPosition = 0.0f;
                    }
                    Panorama panorama = Panorama.this;
                    panorama.lastDisplacement = (int) (Math.tan((double) (panorama.cumX / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
                    Panorama panorama2 = Panorama.this;
                    panorama2.lastDisplacementy = (int) (Math.tan((double) (panorama2.cumY / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
                    Panorama.this.CancelFrameDelayTimer();
                    Panorama.this._mutex.unlock();
                    Panorama.this.state = 2;
                    onTakeImage();
                    Panorama.this._mutex.lock();
                    float unused4 = Panorama.this.cumX;
                    float unused5 = Panorama.this.cumY;
                    boolean z = Panorama.this.transposed;
                } else if (Panorama.this.imagesTaken > 0 && Panorama.this.autoCapture) {
                    Panorama.this.state = 3;
                }
            }
            Panorama panorama3 = Panorama.this;
            panorama3.lastDisplacement = (int) (Math.tan((double) (panorama3.cumX / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
            Panorama panorama4 = Panorama.this;
            panorama4.lastDisplacementy = (int) (Math.tan((double) (panorama4.cumY / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
            float access$1500 = (float) (((double) (Panorama.this.cumX * 180.0f)) / 3.141592653589793d);
            float access$1600 = (float) (((double) (Panorama.this.cumY * 180.0f)) / 3.141592653589793d);
            float unused6 = Panorama.this.cumZ;
            if (Panorama.this.transposed) {
                float f = access$1600;
                access$1600 = access$1500;
                access$1500 = f;
            }
            takeAction(access$1500, access$1600);
            Panorama.this._mutex.unlock();
        }

        public void Reset() {
            this.captureCam1Callback.cancelRequested = true;
            this.captureCam1Callback = new SessionCam1CaptureCallback();
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Bundle data = message.getData();
                    onSetPreviewParameters(true);
                    this.target = data.getFloat("target");
                    this.images = message.arg1;
                    Panorama panorama = Panorama.this;
                    panorama.imagesTaken = 0;
                    this.captureState = 0;
                    int unused = panorama.currentGuide = -1;
                    Panorama.imageSet++;
                    Panorama.this.state = 1;
                    return;
                case 2:
                    int unused2 = Panorama.this.nativeGetImage((Bitmap) message.obj, Panorama.this.engine);
                    onBitmapReady((Bitmap) message.obj);
                    return;
                case 4:
                    updateStateMachine();
                    return;
                case 5:
                    byte[] bArr = null;
                    if (Panorama.this.initialized()) {
                        bArr = Panorama.this.nativeGetJPEGImage(Integer.valueOf(message.arg1).intValue(), Integer.valueOf(message.arg2).intValue(), Panorama.this.mbMirrorOutput, Panorama.this.engine);
                    }
                    if (this.listener1 != null) {
                        onJPEGImageReady(bArr);
                        return;
                    }
                    return;
                case 6:
                    onFailure((FailureCode) message.obj);
                    return;
                case 7:
                    if (Panorama.this.direction != 0) {
                        Panorama.this.state = 1;
                        return;
                    }
                    return;
                case 8:
                    Panorama panorama2 = Panorama.this;
                    int[] access$200 = panorama2.nativeProcess(panorama2.engine);
                    int unused3 = Panorama.this.outwidth = access$200[0];
                    int unused4 = Panorama.this.outheight = access$200[1];
                    if (Panorama.this.outwidth <= 0) {
                        Log.i("Visidon", "Failed to create panorama");
                        onFailure(FailureCode.PROCESSING_FAILED);
                    } else {
                        onProcessingReady(Panorama.this.outwidth, Panorama.this.outheight);
                    }
                    Panorama.this.state = 0;
                    return;
                case 9:
                    Panorama panorama3 = Panorama.this;
                    panorama3.nativeRelease(panorama3.engine);
                    return;
                default:
                    return;
            }
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onBitmapReady(Bitmap bitmap) {
            this.listener1.onBitmapReady(bitmap);
        }

        public void onFailure(FailureCode failureCode) {
            this.listener1.onFailure(failureCode);
        }

        public void onGuide(Guide guide, int i) {
            this.listener1.onGuide(guide, i);
        }

        public void onJPEGImageReady(byte[] bArr) {
            this.listener1.onJPEGImageReady(bArr);
        }

        public void onProcessingReady(int i, int i2) {
            this.listener1.onProcessingReady(i, i2);
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            Panorama.this._mutex.lock();
            if (this.timestamp != 0) {
                float f = ((float) (sensorEvent.timestamp - this.timestamp)) * NS2S;
                Panorama panorama = Panorama.this;
                float unused = panorama.cumX = panorama.cumX + (sensorEvent.values[0] * f);
                Panorama panorama2 = Panorama.this;
                float unused2 = panorama2.cumY = panorama2.cumY + (sensorEvent.values[1] * f);
                Panorama panorama3 = Panorama.this;
                float unused3 = panorama3.cumZ = panorama3.cumZ + (sensorEvent.values[2] * f);
                Panorama panorama4 = Panorama.this;
                float unused4 = panorama4.mCurrentGyroX = (panorama4.mCurrentGyroX * PREVIOUS_GYRO_DATA_PERCENTAGE) + (sensorEvent.values[0] * CURRENT_GYRO_DATA_PERCENTAGE * f);
                Panorama panorama5 = Panorama.this;
                float unused5 = panorama5.mCurrentGyroY = (panorama5.mCurrentGyroY * PREVIOUS_GYRO_DATA_PERCENTAGE) + (sensorEvent.values[1] * CURRENT_GYRO_DATA_PERCENTAGE * f);
                Panorama panorama6 = Panorama.this;
                float unused6 = panorama6.mCurrentGyroZ = (panorama6.mCurrentGyroZ * PREVIOUS_GYRO_DATA_PERCENTAGE) + (sensorEvent.values[2] * CURRENT_GYRO_DATA_PERCENTAGE * f);
                Panorama panorama7 = Panorama.this;
                float unused7 = panorama7.mGyroVector = (float) Math.sqrt((double) ((panorama7.mCurrentGyroX * Panorama.this.mCurrentGyroX) + (Panorama.this.mCurrentGyroY * Panorama.this.mCurrentGyroY) + (Panorama.this.mCurrentGyroZ * Panorama.this.mCurrentGyroZ)));
                if (Panorama.this.transposed) {
                    if ((((double) Panorama.this.cumX) * 180.0d) / 3.14d > ((double) Panorama.this.limitRotation)) {
                        Panorama panorama8 = Panorama.this;
                        float unused8 = panorama8.cumX = (panorama8.limitRotation * 3.14f) / 180.0f;
                    }
                    if ((((double) Panorama.this.cumX) * 180.0d) / 3.14d < ((double) (-Panorama.this.limitRotation))) {
                        Panorama panorama9 = Panorama.this;
                        float unused9 = panorama9.cumX = ((-panorama9.limitRotation) * 3.14f) / 180.0f;
                    }
                } else {
                    if ((((double) Panorama.this.cumY) * 180.0d) / 3.14d > ((double) Panorama.this.limitRotation)) {
                        Panorama panorama10 = Panorama.this;
                        float unused10 = panorama10.cumY = (panorama10.limitRotation * 3.14f) / 180.0f;
                    }
                    if ((((double) Panorama.this.cumY) * 180.0d) / 3.14d < ((double) (-Panorama.this.limitRotation))) {
                        Panorama panorama11 = Panorama.this;
                        float unused11 = panorama11.cumY = ((-panorama11.limitRotation) * 3.14f) / 180.0f;
                    }
                }
            }
            this.timestamp = sensorEvent.timestamp;
            if (Panorama.this.state != 0 && Panorama.this.failedByCamera > 0) {
                Panorama panorama12 = Panorama.this;
                panorama12.lastDisplacementy = (int) (Math.tan((double) (panorama12.cumY / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
                Panorama panorama13 = Panorama.this;
                panorama13.lastDisplacement = (int) (Math.tan((double) (panorama13.cumX / 2.0f)) * ((double) Panorama.this.focal) * 2.0d);
            }
            Panorama.this._mutex.unlock();
        }

        public void onSetPreviewParameters(boolean z) {
            this.listener1.onSetPreviewParameters(true);
        }

        /* access modifiers changed from: protected */
        public void onTakeImage() {
            this.listener1.onTakeImage();
        }
    }

    static {
        System.loadLibrary("VDSelfiePanorama");
    }

    public Panorama(int i, int i2, int i3, boolean z) {
        this._mutex = new ReentrantLock(true);
        this.optimalRotate = 0.0f;
        this.hasbeeninitialized = false;
        this.failedByCamera = 0;
        this.state = 0;
        this.processing = false;
        this.stillMode = false;
        this.direction = 0;
        this.minimum_ovelap = 5.0f;
        this.edx = 0.0f;
        this.edy = 0.0f;
        this.frameDelayTimer = null;
        this.outwidth = 0;
        this.outheight = 0;
        this.frameSaving = true;
        this.motionStrength = 0.0f;
        this.rightCaptured = false;
        this.leftCaptured = false;
        this.swipeMode = false;
        this.autoCapture = true;
        this.waitStill = false;
        this.warnRotation = 8.0f;
        this.limitRotation = 15.0f;
        this.failRotation = 14.0f;
        this.frameDelayForStillCapture = 8000;
        this.frameDelayForPreviewCapture = 5000;
        this.mCurrentGyroX = 0.0f;
        this.mCurrentGyroY = 0.0f;
        this.mCurrentGyroZ = 0.0f;
        this.mGyroVector = 0.0f;
        this.mbMirrorOutput = false;
        Log.i("Visidon", "2016-06-14");
        Log.i("Visidon", "I: " + i + " imageHeight " + i2 + " transpose " + z);
        this.inputHeight = i2;
        this.inputWidth = i;
        this.focal = i3;
        this.transposed = z;
        this.hasbeeninitialized = false;
        this.processing = false;
        this.engine = nativeInit(i, i2, i3, this.transposed);
        if (this.engine == 0) {
            this.hasbeeninitialized = false;
            Log.e("Visidon", "Error in initialization");
            return;
        }
        this.hasbeeninitialized = true;
        double d = (double) i3;
        this.optimalRotate = (float) Math.atan2(((double) i2) / 2.0d, d);
        if (!this.transposed) {
            this.optimalRotate = (float) Math.atan2(((double) i) / 2.0d, d);
        }
        this.optimalRotate = (this.optimalRotate * 180.0f) / 3.14f;
    }

    public Panorama(int i, int i2, int i3, boolean z, Context context, PanoramaCam1Listener panoramaCam1Listener) {
        this(i, i2, i3, z, false, context, panoramaCam1Listener);
    }

    public Panorama(int i, int i2, int i3, boolean z, boolean z2, Context context, PanoramaCam1Listener panoramaCam1Listener) {
        this(i, i2, i3, z);
        Log.i("Visidon", "2016-06-14");
        HandlerThread handlerThread = new HandlerThread("panorama");
        handlerThread.start();
        this.handler = new PanoramaHandler(this, handlerThread.getLooper(), panoramaCam1Listener);
        initializeGyroscope(context, z2);
    }

    /* access modifiers changed from: private */
    public void StartFrameDelayTimer(long j) {
        this.frameDelayTimer = new Timer();
        this.frameDelayTimer.scheduleAtFixedRate(new TimerTask() {
            public void run() {
                Panorama.this.requestCancelDueToTimer();
            }
        }, j, j);
    }

    private native int nativeAddYUVFrame(byte[] bArr, int i, int i2, int i3, float f, long j);

    private native void nativeCancelProcessing(long j);

    /* access modifiers changed from: private */
    public native int nativeGetImage(Bitmap bitmap, long j);

    /* access modifiers changed from: private */
    public native byte[] nativeGetJPEGImage(int i, int i2, boolean z, long j);

    private native byte[] nativeGetNV21Image(long j);

    private native void nativeGuidanceImage(byte[] bArr, int i, int i2, float f, float f2, Bitmap bitmap, boolean z, long j);

    private native long nativeInit(int i, int i2, int i3, boolean z);

    /* access modifiers changed from: private */
    public native int[] nativeProcess(long j);

    private native void nativeReleaseOutput(long j);

    /* access modifiers changed from: private */
    public void requestCancelDueToTimer() {
        this.handler.sendMessage(this.handler.obtainMessage(6, FailureCode.TIMEOUT));
    }

    /* access modifiers changed from: protected */
    public void CancelFrameDelayTimer() {
        Timer timer = this.frameDelayTimer;
        if (timer != null) {
            timer.cancel();
        }
    }

    public int CancelProcessing() {
        int i = this.imagesTaken;
        Log.i("Visidon", "Cancel processing (images taken " + i + ")");
        this.state = 0;
        this.imagesTaken = 0;
        this.direction = 0;
        CancelFrameDelayTimer();
        PanoramaHandler panoramaHandler = this.handler;
        if (panoramaHandler != null) {
            panoramaHandler.Reset();
        }
        nativeCancelProcessing(this.engine);
        this.currentGuide = -1;
        this.motionStrength = 0.0f;
        return i;
    }

    public void Release() {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        Log.i("Visidon", "release");
        this.hasbeeninitialized = false;
        this.processing = false;
        CancelFrameDelayTimer();
        this.handler.sendMessage(this.handler.obtainMessage(9));
        SensorManager sensorManager2 = this.sensorManager;
        if (sensorManager2 != null) {
            sensorManager2.unregisterListener(this.handler);
        }
        this.handler.getLooper().quitSafely();
    }

    public void SetInputSaving(boolean z) {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
        } else {
            this.frameSaving = z;
        }
    }

    public void VDSetMode(boolean z) {
        this.stillMode = z;
        if (!z) {
            this.minimum_ovelap = 5.0f;
        } else {
            this.minimum_ovelap = this.optimalRotate / 1.0f;
        }
    }

    public void addPreviewFrame(byte[] bArr, int i, int i2) {
        OutputStream a2;
        Throwable th;
        Throwable th2;
        byte[] bArr2 = bArr;
        if (this.hasbeeninitialized && !this.processing) {
            this._mutex.lock();
            this.processing = true;
            this.imagesTaken++;
            int i3 = this.lastDisplacement;
            if (this.transposed) {
                i3 = this.lastDisplacementy;
            }
            int i4 = i3;
            byte[] copyOf = this.frameSaving ? Arrays.copyOf(bArr2, bArr2.length) : null;
            nativeAddYUVFrame(bArr, i, i2, i4, this.mGyroVector, this.engine);
            StartFrameDelayTimer(this.frameDelayForPreviewCapture);
            this.processing = false;
            this._mutex.unlock();
            if (this.frameSaving) {
                Log.i("Visidon", "Save input frame");
                a.f(new File("/sdcard/VDPanorama").getAbsolutePath());
                try {
                    a2 = a.a("/sdcard/VDPanorama/image_set" + imageSet + "_im" + (this.imagesTaken - 1) + ".yuv", a.f);
                    a2.write(copyOf, 0, (int) (((double) (i * i2)) * 1.5d));
                    a2.write(new byte[]{(byte) i4, (byte) (i4 >> 8), (byte) (i4 >> 16), (byte) (i4 >> 24)}, 0, 4);
                    a2.flush();
                    Log.i("Visidon", "Frame saved to: /sdcard/VDPanorama/image_set" + imageSet + "_im" + (this.imagesTaken - 1) + ".yuv");
                    if (a2 != null) {
                        a2.close();
                    }
                } catch (FileNotFoundException e) {
                    Log.i("Visidon", "saving failed");
                    e.printStackTrace();
                } catch (IOException e2) {
                    Log.i("Visidon", "saving failed");
                    e2.printStackTrace();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
            }
            this.state = 3;
            return;
        }
        return;
        throw th2;
    }

    public void getBitmap(Bitmap bitmap) {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.handler.sendMessage(this.handler.obtainMessage(2, bitmap));
    }

    public int getGuidanceBitmap(byte[] bArr, int i, int i2, Bitmap bitmap) {
        if (!this.hasbeeninitialized) {
            return 0;
        }
        this._mutex.lock();
        float f = ((float) this.lastDisplacement) / ((float) this.inputWidth);
        float f2 = ((float) this.lastDisplacementy) / ((float) this.inputHeight);
        this._mutex.unlock();
        nativeGuidanceImage(bArr, i, i2, f, f2, bitmap, false, this.engine);
        return this.direction;
    }

    public void getJPEGImage(int i, int i2, boolean z) {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.mbMirrorOutput = z;
        this.handler.sendMessage(this.handler.obtainMessage(5, i, i2));
    }

    public void getNV21Image() {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.handler.sendMessage(this.handler.obtainMessage(3));
    }

    public int getOutHeight() {
        if (initialized()) {
            return this.outheight;
        }
        Log.e("Visidon", "Engine not initialized!");
        return 0;
    }

    public int getOutWidth() {
        if (initialized()) {
            return this.outwidth;
        }
        Log.e("Visidon", "Engine not initialized!");
        return 0;
    }

    public void getPhoto() {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.failedByCamera = 0;
        this.handler.sendMessage(this.handler.obtainMessage(7));
    }

    public int getState() {
        if (this.rightCaptured && !this.leftCaptured) {
            return 1;
        }
        if (this.rightCaptured || !this.leftCaptured) {
            return (this.rightCaptured && this.leftCaptured) ? 3 : 0;
        }
        return 2;
    }

    public float getXRotation() {
        this._mutex.lock();
        float f = this.cumX;
        this._mutex.unlock();
        return f;
    }

    public float getXdisplacement() {
        this._mutex.lock();
        float f = ((float) this.lastDisplacement) / ((float) this.inputWidth);
        this._mutex.unlock();
        return f;
    }

    public float getYRotation() {
        this._mutex.lock();
        float f = this.cumY;
        this._mutex.unlock();
        return f;
    }

    public float getYdisplacement() {
        this._mutex.lock();
        float f = ((float) this.lastDisplacementy) / ((float) this.inputHeight);
        this._mutex.unlock();
        return f;
    }

    public float getZRotation() {
        this._mutex.lock();
        float f = this.cumZ;
        this._mutex.unlock();
        return f;
    }

    public void initializeGyroscope(Context context, boolean z) {
        if (!z) {
            this.gyroSensor = null;
        } else {
            this.sensorManager = (SensorManager) context.getSystemService("sensor");
            this.gyroSensor = this.sensorManager.getDefaultSensor(4);
        }
        Sensor sensor = this.gyroSensor;
        if (sensor == null) {
            Log.e("Visidon", "No Gyroscope data available.");
            return;
        }
        SensorManager sensorManager2 = this.sensorManager;
        PanoramaHandler panoramaHandler = this.handler;
        sensorManager2.registerListener(panoramaHandler, sensor, 0, panoramaHandler);
    }

    public boolean initialized() {
        return this.hasbeeninitialized;
    }

    /* access modifiers changed from: protected */
    public native int nativeAddFrame(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, float f, long j);

    /* access modifiers changed from: protected */
    public native int nativeAddJpegFrame(byte[] bArr, int i, int i2, long j);

    /* access modifiers changed from: protected */
    public native void nativeGuidanceImageBytebuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, float f, float f2, Bitmap bitmap, boolean z, long j);

    /* access modifiers changed from: protected */
    public native float[] nativeMeasureOverlap(byte[] bArr, int i, int i2, float f, float f2, long j);

    /* access modifiers changed from: protected */
    public native float[] nativeMeasureOverlapBytebuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, float f, float f2, long j);

    /* access modifiers changed from: protected */
    public native int nativeRelease(long j);

    public void process() {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.handler.sendMessage(this.handler.obtainMessage(8));
    }

    public void setPosition(float[] fArr) {
        this.direction = (int) fArr[3];
        if (fArr[2] == -1.0f) {
            this.failedByCamera = 0;
            this._mutex.lock();
            this.cumX = 0.0f;
            this.cumY = 0.0f;
            this.lastDisplacement = 0;
            this.lastDisplacementy = 0;
            this._mutex.unlock();
            return;
        }
        this._mutex.lock();
        if ((this.gyroSensor == null || fArr[2] < 3.0f) && (this.gyroSensor != null || fArr[2] < 2.0f)) {
            this.failedByCamera++;
        } else {
            float f = fArr[0];
            float f2 = this.edx;
            float f3 = (f - f2) * (fArr[0] - f2);
            float f4 = fArr[1];
            float f5 = this.edy;
            this.motionStrength = ((float) Math.sqrt((double) (f3 + ((f4 - f5) * (fArr[1] - f5))))) * 15.0f;
            this.edx = fArr[0];
            this.edy = fArr[1];
            if (this.imagesTaken == 0) {
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                this._mutex.unlock();
                return;
            }
            float f6 = fArr[0] * ((float) this.inputWidth);
            int i = this.focal;
            float f7 = (fArr[1] * ((float) this.inputHeight)) / (((float) i) * 2.0f);
            float atan = ((float) Math.atan((double) (f6 / (((float) i) * 2.0f)))) * 2.0f;
            if (this.transposed) {
                atan = -atan;
            }
            float atan2 = ((float) Math.atan((double) f7)) * 2.0f;
            if (this.transposed) {
                float f8 = this.limitRotation;
                if ((((double) atan) * 180.0d) / 3.14d > ((double) f8)) {
                    atan = (f8 * 3.14f) / 180.0f;
                }
                float f9 = this.limitRotation;
                if ((((double) atan) * 180.0d) / 3.14d < ((double) (-f9))) {
                    atan = ((-f9) * 3.14f) / 180.0f;
                }
            } else {
                float f10 = this.limitRotation;
                if ((((double) atan2) * 180.0d) / 3.14d > ((double) f10)) {
                    atan2 = (f10 * 3.14f) / 180.0f;
                }
                float f11 = this.limitRotation;
                if ((((double) atan2) * 180.0d) / 3.14d < ((double) (-f11))) {
                    atan2 = ((-f11) * 3.14f) / 180.0f;
                }
            }
            float abs = Math.abs(this.cumY - atan2);
            if (((double) Math.abs(this.cumX - atan)) < 0.1d || ((double) abs) < 0.1d || this.gyroSensor == null) {
                this.edx = fArr[0];
                this.edy = fArr[1];
                this.cumY = atan2;
                this.cumX = atan;
            } else {
                Log.i("Visidon", "ignore camera measurement");
            }
            this.lastDisplacementy = (int) (Math.tan((double) (this.cumY / 2.0f)) * ((double) this.focal) * 2.0d);
            this.lastDisplacement = (int) (Math.tan((double) (this.cumX / 2.0f)) * ((double) this.focal) * 2.0d);
            this.failedByCamera = 0;
        }
        this._mutex.unlock();
    }

    public void setSwipeMode(boolean z) {
        this.swipeMode = z;
    }

    public void start() {
        if (!initialized()) {
            Log.e("Visidon", "Engine not initialized!");
            return;
        }
        this.failedByCamera = 0;
        this.processing = false;
        Message obtainMessage = this.handler.obtainMessage(1);
        Bundle bundle = new Bundle();
        bundle.putFloat("target", this.optimalRotate);
        obtainMessage.arg1 = 3;
        obtainMessage.setData(bundle);
        this.handler.sendMessage(obtainMessage);
    }

    public void updateOrientationWithCameraInfo(byte[] bArr, int i, int i2) {
        if (this.hasbeeninitialized) {
            this._mutex.lock();
            float f = ((float) this.lastDisplacementy) / ((float) this.inputHeight);
            float f2 = ((float) this.lastDisplacement) / ((float) this.inputWidth);
            this._mutex.unlock();
            setPosition(nativeMeasureOverlap(bArr, i, i2, f2, f, this.engine));
            this.handler.sendMessage(this.handler.obtainMessage(4));
        }
    }
}
