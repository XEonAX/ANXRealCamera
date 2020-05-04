package com.color.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import com.color.inner.bluetooth.BluetoothPbapWrapper;

public class BluetoothPbapNative {
    private static final String TAG = "BluetoothPbapNative";
    private BluetoothPbapWrapper mBluetoothPbapWrapper = null;
    private Context mContext = null;
    /* access modifiers changed from: private */
    public ServiceListener mServiceListener = null;

    private final class PbapWrapperServiceListener implements BluetoothPbapWrapper.ServiceListener {
        private PbapWrapperServiceListener() {
        }

        public void onServiceConnected(BluetoothPbapWrapper bluetoothPbapWrapper) {
            if (BluetoothPbapNative.this.mServiceListener != null) {
                BluetoothPbapNative.this.mServiceListener.onServiceConnected(BluetoothPbapNative.this);
            }
        }

        public void onServiceDisconnected() {
            if (BluetoothPbapNative.this.mServiceListener != null) {
                BluetoothPbapNative.this.mServiceListener.onServiceDisconnected();
            }
        }
    }

    public interface ServiceListener {
        void onServiceConnected(BluetoothPbapNative bluetoothPbapNative);

        void onServiceDisconnected();
    }

    public BluetoothPbapNative(Context context, ServiceListener serviceListener) {
        this.mContext = context;
        this.mServiceListener = serviceListener;
        this.mBluetoothPbapWrapper = new BluetoothPbapWrapper(context, new PbapWrapperServiceListener());
    }

    public void close() {
        try {
            if (this.mBluetoothPbapWrapper != null) {
                this.mBluetoothPbapWrapper.close();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public boolean disconnect(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapWrapper != null) {
                return this.mBluetoothPbapWrapper.disconnect(bluetoothDevice);
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        try {
            if (this.mBluetoothPbapWrapper != null) {
                return this.mBluetoothPbapWrapper.isConnected(bluetoothDevice);
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }
}
