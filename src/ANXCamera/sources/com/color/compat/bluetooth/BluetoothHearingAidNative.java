package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHearingAid;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothHearingAidWrapper;
import java.util.ArrayList;
import java.util.List;

public class BluetoothHearingAidNative {
    private static final String TAG = "BHearingAidNative";

    private BluetoothHearingAidNative() {
    }

    public static boolean connect(BluetoothHearingAid bluetoothHearingAid, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHearingAidWrapper.connect(bluetoothHearingAid, bluetoothDevice);
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static boolean disconnect(BluetoothHearingAid bluetoothHearingAid, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHearingAidWrapper.disconnect(bluetoothHearingAid, bluetoothDevice);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static List<BluetoothDevice> getActiveDevices(BluetoothHearingAid bluetoothHearingAid) {
        try {
            return BluetoothHearingAidWrapper.getActiveDevices(bluetoothHearingAid);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return new ArrayList();
        }
    }

    public static long getHiSyncId(BluetoothHearingAid bluetoothHearingAid, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHearingAidWrapper.getHiSyncId(bluetoothHearingAid, bluetoothDevice);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static int getPriority(BluetoothHearingAid bluetoothHearingAid, BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothHearingAidWrapper.getPriority(bluetoothHearingAid, bluetoothDevice);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getVolume(BluetoothHearingAid bluetoothHearingAid) {
        try {
            return BluetoothHearingAidWrapper.getVolume(bluetoothHearingAid);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static boolean setPriority(BluetoothHearingAid bluetoothHearingAid, BluetoothDevice bluetoothDevice, int i) {
        try {
            return BluetoothHearingAidWrapper.setPriority(bluetoothHearingAid, bluetoothDevice, i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void setVolume(BluetoothHearingAid bluetoothHearingAid, int i) {
        try {
            BluetoothHearingAidWrapper.setVolume(bluetoothHearingAid, i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}
