package com.color.compat.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.ParcelUuid;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothAdapterWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;
import java.util.ArrayList;
import java.util.List;

public class BluetoothAdapterNative {
    private static final String TAG = "BluetoothAdapterWrapper";

    private BluetoothAdapterNative() {
    }

    public static int getConnectionState(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.getConnectionState(bluetoothAdapter);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    public static int getMaxConnectedAudioDevices(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.getMaxConnectedAudioDevices(bluetoothAdapter);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 1;
        }
    }

    public static List<Integer> getSupportedProfiles(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.getSupportedProfiles(bluetoothAdapter);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return new ArrayList();
        }
    }

    public static ParcelUuid[] getUuids(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.getUuids(bluetoothAdapter);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static boolean setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.setScanMode(bluetoothAdapter, i);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public static byte[] tempowCommand(BluetoothAdapter bluetoothAdapter, int i, byte[] bArr) {
        try {
            if (VersionUtils.isQ()) {
                return BluetoothAdapterWrapper.tempowCommand(bluetoothAdapter, i, bArr);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public static void tempowIntent(BluetoothAdapter bluetoothAdapter, Intent intent) {
        try {
            if (VersionUtils.isQ()) {
                BluetoothAdapterWrapper.tempowIntent(bluetoothAdapter, intent);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
