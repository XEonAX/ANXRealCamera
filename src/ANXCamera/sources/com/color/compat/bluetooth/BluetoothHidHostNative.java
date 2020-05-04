package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothHidHostWrapper;
import java.util.ArrayList;
import java.util.List;

public class BluetoothHidHostNative {
    private static final String TAG = "BluetoothPanNative";
    private BluetoothHidHostWrapper mBluetoothHidHostWrapper = null;

    public BluetoothHidHostNative(BluetoothProfile bluetoothProfile) {
        this.mBluetoothHidHostWrapper = new BluetoothHidHostWrapper(bluetoothProfile);
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.connect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public List<BluetoothDevice> getConnectedDevices() {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.getConnectedDevices();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.getConnectionState(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public BluetoothProfile getDefaultProfile() {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.getDefaultProfile();
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.getPriority(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i) {
        try {
            if (this.mBluetoothHidHostWrapper != null) {
                return this.mBluetoothHidHostWrapper.setPriority(bluetoothDevice, i);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
