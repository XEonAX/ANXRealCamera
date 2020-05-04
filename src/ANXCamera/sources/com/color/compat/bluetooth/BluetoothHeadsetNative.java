package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import com.color.inner.bluetooth.BluetoothHeadsetWrapper;

public class BluetoothHeadsetNative {
    private BluetoothHeadsetNative() {
    }

    public static boolean connect(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHeadsetWrapper.connect(bluetoothHeadset, bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean disconnect(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHeadsetWrapper.disconnect(bluetoothHeadset, bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static BluetoothDevice getActiveDevice(BluetoothHeadset bluetoothHeadset) {
        try {
            return BluetoothHeadsetWrapper.getActiveDevice(bluetoothHeadset);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getPriority(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHeadsetWrapper.getPriority(bluetoothHeadset, bluetoothDevice);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean setPriority(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice, int i) {
        try {
            return BluetoothHeadsetWrapper.setPriority(bluetoothHeadset, bluetoothDevice, i);
        } catch (Exception unused) {
            return false;
        }
    }
}
