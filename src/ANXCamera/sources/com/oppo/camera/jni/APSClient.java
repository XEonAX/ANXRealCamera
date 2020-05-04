package com.oppo.camera.jni;

import android.media.Image;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.oppo.camera.d;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

public class APSClient {
    private static final int CALLBACK_STATUS_FAIL = 0;
    private static final int CALLBACK_STATUS_SUCCESS = 1;
    public static final int CAMERA_MSG_JPEG_DATA = 1;
    public static final int CAMERA_MSG_RAW_DATA = 2;
    private static final int CAMERA_MSG_SERVER_DIED = 255;
    private static final String TAG = "APSClient";
    /* access modifiers changed from: private */
    public BufferCallback mBufferCallback;
    private int mConnectStatus;
    private Object mConnectSync;
    private EventHandler mEventHandler;
    private int mNativeObj;
    private boolean mbConnected;

    public class APSResultInfo {
        public long mAppAlgoFlag = 0;
        public int mBufferType = 0;
        public ByteBuffer mBuffers = null;
        public byte[] mCopyBuffer = null;
        public int mCropBottom = 0;
        public int mCropLeft = 0;
        public int mCropRight = 0;
        public int mCropTop = 0;
        public int mHeight = 0;
        public long mIdentity = 0;
        public Image mImage = null;
        public int mMessageType = 0;
        public int mRotation = 0;
        public int mScanline = 0;
        public int mStride = 0;
        public int mWidth = 0;

        public APSResultInfo() {
        }
    }

    public interface BufferCallback {
        void onDataCallback(APSResultInfo aPSResultInfo);

        void onServiceDied();
    }

    private class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            d.b(APSClient.TAG, "handleMessage, type: " + message.what + ", mBufferCallback: " + APSClient.this.mBufferCallback);
            if (APSClient.this.mBufferCallback == null) {
                d.e(APSClient.TAG, "handleMessage, mBufferCallback is null");
                return;
            }
            int i = message.what;
            if (i == 1 || i == 2) {
                if (message.obj == null) {
                    d.e(APSClient.TAG, "handleMessage, msg object is null, return");
                    return;
                }
                APSClient.this.mBufferCallback.onDataCallback((APSResultInfo) message.obj);
            } else if (i != 255) {
                d.e(APSClient.TAG, "handleMessage, the message type is error, please check, return");
            } else {
                APSClient.this.mBufferCallback.onServiceDied();
            }
        }
    }

    static {
        System.loadLibrary("APSClient-jni");
    }

    public APSClient() {
        this.mbConnected = false;
        this.mConnectStatus = -1;
        this.mNativeObj = 0;
        this.mEventHandler = null;
        this.mBufferCallback = null;
        this.mConnectSync = new Object();
        this.mBufferCallback = null;
        if (Looper.myLooper() != null) {
            this.mEventHandler = new EventHandler(Looper.myLooper());
        } else if (Looper.getMainLooper() != null) {
            this.mEventHandler = new EventHandler(Looper.getMainLooper());
        } else {
            this.mEventHandler = null;
        }
    }

    private int connect() {
        return connect(new WeakReference(this));
    }

    private static void dumpApsCallbackInfos(APSResultInfo aPSResultInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append("width: " + aPSResultInfo.mWidth + "\n");
        sb.append("height: " + aPSResultInfo.mHeight + "\n");
        sb.append("format: " + aPSResultInfo.mBufferType + "\n");
        sb.append("orientation: " + aPSResultInfo.mRotation + "\n");
        sb.append("timestamp: " + aPSResultInfo.mIdentity + "\n");
        sb.append("appAlgoFlag: " + aPSResultInfo.mAppAlgoFlag + "\n");
        sb.append("stride: " + aPSResultInfo.mStride + "\n");
        sb.append("scanline: " + aPSResultInfo.mScanline + "\n");
        sb.append("status: " + aPSResultInfo.mMessageType + "\n");
        sb.append("mCropLeft: " + aPSResultInfo.mCropLeft + "\n");
        sb.append("mCropTop: " + aPSResultInfo.mCropTop + "\n");
        sb.append("mCropRight: " + aPSResultInfo.mCropRight + "\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mCropBottom: ");
        sb2.append(aPSResultInfo.mCropBottom);
        sb.append(sb2.toString());
        d.b(TAG, "dumpApsCallbackInfos: \n" + sb.toString());
    }

    private static void postEventFromNative(Object obj, Object obj2) {
        APSClient aPSClient = (APSClient) ((WeakReference) obj).get();
        APSResultInfo aPSResultInfo = obj2 != null ? (APSResultInfo) obj2 : null;
        d.c(TAG, "postEventFromNative, client: " + aPSClient + ", apsResults: " + aPSResultInfo);
        if (aPSClient == null || aPSResultInfo == null) {
            d.c(TAG, "postEventFromNative, apsclient or apsResults is null, return");
            return;
        }
        dumpApsCallbackInfos(aPSResultInfo);
        if (aPSClient.mEventHandler != null) {
            int i = aPSResultInfo.mMessageType;
            if (255 != i) {
                ByteBuffer byteBuffer = aPSResultInfo.mBuffers;
                aPSResultInfo.mCopyBuffer = new byte[byteBuffer.remaining()];
                byteBuffer.get(aPSResultInfo.mCopyBuffer);
            }
            aPSClient.mEventHandler.sendMessage(aPSClient.mEventHandler.obtainMessage(i, aPSResultInfo));
        }
    }

    public native int addFrameBuff(long j, ByteBuffer[] byteBufferArr, int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    public native int algoInit(String[] strArr, String[] strArr2, int i, int i2, int i3, String[] strArr3);

    public native int clear();

    public native int connect(Object obj);

    public native int disconnect();

    public native int[] getIonBuf(int i, int i2);

    public native int processImages(String[] strArr, String[] strArr2);

    public native int reset(int i);

    public int resetConnectStatus() {
        int i;
        synchronized (this.mConnectSync) {
            this.mbConnected = false;
            this.mConnectStatus = -1;
            i = this.mConnectStatus;
        }
        return i;
    }

    public void setDataCallback(BufferCallback bufferCallback) {
        this.mBufferCallback = bufferCallback;
    }

    public int startConnect() {
        int i;
        synchronized (this.mConnectSync) {
            if (!this.mbConnected) {
                this.mConnectStatus = connect();
                this.mbConnected = true;
            }
            i = this.mConnectStatus;
        }
        return i;
    }

    public native int stop(int i);

    public native int unint(String[] strArr, String[] strArr2);
}
