package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.color.inner.bluetooth.BluetoothDeviceWrapper;

public class BluetoothDeviceNative {
    private BluetoothDeviceNative() {
    }

    public static boolean cancelBondProcess(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.cancelBondProcess(bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static String getAliasName(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.getAliasName(bluetoothDevice);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int getBatteryLevel(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.getBatteryLevel(bluetoothDevice);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int getMessageAccessPermission(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.getMessageAccessPermission(bluetoothDevice);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int getPhonebookAccessPermission(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.getPhonebookAccessPermission(bluetoothDevice);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean isBluetoothDock(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.isBluetoothDock(bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isBondingInitiatedLocally(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.isBondingInitiatedLocally(bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isConnected(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.isConnected(bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean removeBond(BluetoothDevice bluetoothDevice) {
        try {
            return BluetoothDeviceWrapper.removeBond(bluetoothDevice);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean setAlias(BluetoothDevice bluetoothDevice, String str) {
        try {
            return BluetoothDeviceWrapper.setAlias(bluetoothDevice, str);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean setMessageAccessPermission(BluetoothDevice bluetoothDevice, int i) {
        try {
            return BluetoothDeviceWrapper.setMessageAccessPermission(bluetoothDevice, i);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean setPhonebookAccessPermission(BluetoothDevice bluetoothDevice, int i) {
        try {
            return BluetoothDeviceWrapper.setPhonebookAccessPermission(bluetoothDevice, i);
        } catch (Exception unused) {
            return false;
        }
    }
}
