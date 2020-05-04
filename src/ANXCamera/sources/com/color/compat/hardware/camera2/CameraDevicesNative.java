package com.color.compat.hardware.camera2;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import android.util.Log;
import com.color.inner.hardware.camera2.CameraDeviceWrapper;
import java.util.List;

public class CameraDevicesNative {
    private static final String TAG = "CameraDevicesNative";

    private CameraDevicesNative() {
    }

    public static void createCustomCaptureSession(CameraDevice cameraDevice, InputConfiguration inputConfiguration, List<OutputConfiguration> list, int i, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        try {
            CameraDeviceWrapper.createCustomCaptureSession(cameraDevice, inputConfiguration, list, i, stateCallback, handler);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
