package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothMapWrapper;
import java.util.ArrayList;
import java.util.List;

public class BluetoothMapNative {
    private static final String TAG = "BluetoothMapNative";
    private BluetoothMapWrapper mBluetoothMapWrapper = null;

    public BluetoothMapNative(BluetoothProfile bluetoothProfile) {
        this.mBluetoothMapWrapper = new BluetoothMapWrapper(bluetoothProfile);
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.connect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public List<BluetoothDevice> getConnectedDevices() {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.getConnectedDevices();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.getConnectionState(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public BluetoothProfile getDefaultProfile() {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.getDefaultProfile();
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.getDevicesMatchingConnectionStates(iArr);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.getPriority(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i) {
        try {
            if (this.mBluetoothMapWrapper != null) {
                return this.mBluetoothMapWrapper.setPriority(bluetoothDevice, i);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
