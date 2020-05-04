package com.color.compat.bluetooth;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothPan;
import android.bluetooth.BluetoothProfile;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothPanWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.List;

public class BluetoothPanNative {
    private static final String TAG = "BluetoothPanNative";
    private BluetoothPanWrapper mBluetoothPanWrapper;
    private BluetoothPan mService;

    public BluetoothPanNative(BluetoothProfile bluetoothProfile) {
        try {
            if (VersionUtils.isQ()) {
                this.mBluetoothPanWrapper = new BluetoothPanWrapper(bluetoothProfile);
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (bluetoothProfile instanceof BluetoothPan) {
                this.mService = (BluetoothPan) bluetoothProfile;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPanWrapper != null) {
                return this.mBluetoothPanWrapper.connect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPanWrapper != null) {
                return this.mBluetoothPanWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    @SuppressLint({"MissingPermission"})
    public List<BluetoothDevice> getConnectedDevices() {
        try {
            if (VersionUtils.isQ()) {
                if (this.mBluetoothPanWrapper != null) {
                    return this.mBluetoothPanWrapper.getConnectedDevices();
                }
            } else if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            } else if (this.mService != null) {
                return this.mService.getConnectedDevices();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        return new ArrayList();
    }

    public int getConnectionState(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPanWrapper != null) {
                return this.mBluetoothPanWrapper.getConnectionState(bluetoothDevice);
            }
            return 0;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public BluetoothProfile getDefaultProfile() {
        try {
            if (this.mBluetoothPanWrapper != null) {
                return this.mBluetoothPanWrapper.getDefaultProfile();
            }
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public boolean isTetheringOn() {
        try {
            if (VersionUtils.isQ()) {
                if (this.mBluetoothPanWrapper != null) {
                    return this.mBluetoothPanWrapper.isTetheringOn();
                }
                return false;
            } else if (VersionUtils.isN_MR1()) {
                return this.mService != null && this.mService.isTetheringOn();
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
