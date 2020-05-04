package com.sensetime.faceapi;

import android.util.Log;
import com.sensetime.faceapi.model.CvPixelFormat;
import com.sensetime.faceapi.model.FaceConfig;
import com.sensetime.faceapi.model.FaceOrientation;

public class FigureSegment extends FaceHandleBase {
    public static final int CV_COMMON_SEGMENT_DEFLICKER = 16;
    public static final int CV_COMMON_SEGMENT_NV21MODEL = 8;
    public static final int CV_FACE_SEGMENT_ANTI_SHAKE = 2;
    public static final int CV_FACE_SEGMENT_REDUCE_HOLE = 4;
    public static final int CV_FACE_SEGMENT_RESET = 1;
    private static final boolean DEBUG = true;
    private static final String TAG = "FaceSegment";

    public FigureSegment(String str) {
        this(str, FaceConfig.FaceImageResize.RESIZE_320W);
    }

    public FigureSegment(String str, FaceConfig.FaceImageResize faceImageResize) {
        this.mCvFaceHandle = FaceLibrary.cvFaceCreateFigureSeg(str, faceImageResize.getValue());
        Log.e(TAG, "cvFaceCreateFigureSeg handle: " + this.mCvFaceHandle);
    }

    public int createOutputBuffer(int i, int i2, int i3, int[] iArr) {
        return FaceLibrary.cvFaceFigureSegSetOuputLength(this.mCvFaceHandle, i, i2, i3, iArr);
    }

    /* access modifiers changed from: protected */
    public void releaseHandle() {
        Log.e(TAG, "releaseHandle handle : " + this.mCvFaceHandle);
        FaceLibrary.cvFaceDestroyFigureSeg(this.mCvFaceHandle);
    }

    public int segment(byte[] bArr, CvPixelFormat cvPixelFormat, int i, int i2, int i3, FaceOrientation faceOrientation, byte[] bArr2) {
        return segment(bArr, cvPixelFormat, i, i2, i3, faceOrientation, bArr2, 0);
    }

    public int segment(byte[] bArr, CvPixelFormat cvPixelFormat, int i, int i2, int i3, FaceOrientation faceOrientation, byte[] bArr2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("segment width: ");
        int i5 = i;
        sb.append(i);
        sb.append(" height: ");
        int i6 = i2;
        sb.append(i6);
        sb.append(" stride: ");
        int i7 = i3;
        sb.append(i7);
        sb.append(" orientation: ");
        sb.append(faceOrientation.getValue());
        Log.e(TAG, sb.toString());
        return FaceLibrary.cvFaceFigureSeg(this.mCvFaceHandle, bArr, cvPixelFormat.getValue(), i, i6, i7, faceOrientation.getValue(), bArr2, i4);
    }
}
