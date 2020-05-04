package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothPbapClientWrapper;
import java.util.ArrayList;
import java.util.List;

public class BluetoothPbapClientNative {
    private static final String TAG = "BluetoothPbapClient";
    private BluetoothPbapClientWrapper mBluetoothPbapClientWrapper = null;

    public BluetoothPbapClientNative(BluetoothProfile bluetoothProfile) {
        this.mBluetoothPbapClientWrapper = new BluetoothPbapClientWrapper(bluetoothProfile);
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.connect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public List<BluetoothDevice> getConnectedDevices() {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.getConnectedDevices();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.getConnectionState(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public BluetoothProfile getDefaultProfile() {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.getDefaultProfile();
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.getDevicesMatchingConnectionStates(iArr);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getPriority(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.getPriority(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public boolean setPriority(BluetoothDevice bluetoothDevice, int i) {
        try {
            if (this.mBluetoothPbapClientWrapper != null) {
                return this.mBluetoothPbapClientWrapper.setPriority(bluetoothDevice, i);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }
}
