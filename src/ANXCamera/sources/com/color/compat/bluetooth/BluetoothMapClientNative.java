package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothMapClientWrapper;
import java.util.ArrayList;
import java.util.List;

public class BluetoothMapClientNative {
    private static final String TAG = "MapClientNative";
    private BluetoothMapClientWrapper mBluetoothMapClientWrapper = null;

    public BluetoothMapClientNative(BluetoothProfile bluetoothProfile) {
        this.mBluetoothMapClientWrapper = new BluetoothMapClientWrapper(bluetoothProfile);
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.connect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public List<BluetoothDevice> getConnectedDevices() {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.getConnectedDevices();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.getConnectionState(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public BluetoothProfile getDefaultProfile() {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.getDefaultProfile();
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.getDevicesMatchingConnectionStates(iArr);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.getPriority(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i) {
        try {
            if (this.mBluetoothMapClientWrapper != null) {
                return this.mBluetoothMapClientWrapper.setPriority(bluetoothDevice, i);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
