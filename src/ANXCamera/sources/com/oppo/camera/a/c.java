package com.oppo.camera.a;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.media.Image;
import com.color.compat.hardware.camera2.impl.CameraMetadataNativeNative;
import com.oppo.camera.d;
import com.oppo.camera.e.a;
import com.oppo.camera.jni.APSClient;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ApsUtils */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap<String, Integer> f1826a = new HashMap<>();

    static {
        for (String put : com.oppo.camera.c.d) {
            f1826a.put(put, -1);
        }
        f1826a.put("common", 0);
        f1826a.put(CameraStatisticsUtil.EVENT_CAPTURE, 1);
        f1826a.put("professional", 0);
        f1826a.put("night", 2);
    }

    public static int a(int i) {
        return (i == 16 || i == 17 || i == 35 || i == 842094169) ? 2 : 1;
    }

    public static ConcurrentHashMap<CaptureResult.Key<?>, Integer> a(CaptureResult captureResult) {
        return CameraMetadataNativeNative.getVendorTagId(captureResult);
    }

    public static int[] a(int i, Image image) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = image.getPlanes()[i2].getRowStride();
        }
        return iArr;
    }

    private static int[] a(CameraCharacteristics cameraCharacteristics, String str, APSClient aPSClient) {
        if (cameraCharacteristics != null && str != null && !str.isEmpty() && aPSClient != null) {
            return a((Object) cameraCharacteristics, aPSClient);
        }
        d.e("ApsUtils", "getCharacteristicsFieldValue, error");
        return null;
    }

    public static int[] a(CaptureResult captureResult, APSClient aPSClient) {
        if (captureResult != null) {
            return a((Object) captureResult, aPSClient);
        }
        d.e("ApsUtils", "getCaptureResultMetaData, CaptureResult is null, return");
        return null;
    }

    private static int[] a(Object obj, APSClient aPSClient) {
        int bufSize = CameraMetadataNativeNative.getBufSize(obj);
        int i = (bufSize + 4096) - (bufSize % 4096);
        int[] ionBuf = aPSClient.getIonBuf(i, 0);
        int copyBuf = CameraMetadataNativeNative.copyBuf(obj, (long) ionBuf[0]);
        d.b("ApsUtils", "getFieldReflectValue, size: " + i + ", addr: " + ionBuf[0] + ", copy ret: " + copyBuf + ", mMetaBufferFd: " + ionBuf[1]);
        return new int[]{ionBuf[0], ionBuf[1], i};
    }

    public static int[] a(String str, APSClient aPSClient) {
        if (str != null && !str.isEmpty() && aPSClient != null) {
            return a(a.a(Integer.parseInt(str)).E(), "mProperties", aPSClient);
        }
        d.e("ApsUtils", "getCameraCharacteristicsData, camera id is null or empty, return");
        return null;
    }

    public static int[] a(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr3[i] = i;
        }
        return iArr3;
    }

    public static int[] a(ByteBuffer[] byteBufferArr) {
        int[] iArr = new int[byteBufferArr.length];
        for (int i = 0; i < byteBufferArr.length; i++) {
            iArr[i] = byteBufferArr[i].limit();
        }
        return iArr;
    }

    public static ByteBuffer[] a(int i, Image image, int i2) {
        ByteBuffer[] byteBufferArr = new ByteBuffer[i];
        if (32 != i2) {
            byteBufferArr[0] = image.getPlanes()[0].getBuffer();
            byteBufferArr[1] = image.getPlanes()[2].getBuffer();
        } else {
            byteBufferArr[0] = image.getPlanes()[0].getBuffer();
        }
        return byteBufferArr;
    }
}
