package com.color.compat.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothA2dpWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.List;

public class BluetoothA2dpNative {
    private static final String TAG = "BluetoothA2dpNative";

    private BluetoothA2dpNative() {
    }

    public static boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.connect(bluetoothA2dp, bluetoothDevice);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean disconnect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.disconnect(bluetoothA2dp, bluetoothDevice);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.getActiveDevice(bluetoothA2dp);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static int getPriority(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.getPriority(bluetoothA2dp, bluetoothDevice);
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static boolean setActiveDevice(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.setActiveDevice(bluetoothA2dp, bluetoothDevice);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean setPriority(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice, int i) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.setPriority(bluetoothA2dp, bluetoothDevice, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static List<BluetoothDevice> tempowGetActiveDevices(BluetoothA2dp bluetoothA2dp) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.tempowGetActiveDevices(bluetoothA2dp);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return new ArrayList();
        }
    }

    public static boolean tempowRemoveActiveDevice(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothA2dpWrapper.tempowRemoveActiveDevice(bluetoothA2dp, bluetoothDevice);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
