package com.color.compat.telephony;

import android.os.Looper;
import com.color.inner.telephony.PhoneStateListenerWrapper;

public class PhoneStateListenerNative extends PhoneStateListenerWrapper {
    public static int LISTEN_SRVCC_STATE_CHANGED = 16384;
    private static final String TAG = "PhoneStateListenerNative";

    public PhoneStateListenerNative(Looper looper) {
        super(looper);
    }

    public int getSubId() {
        return PhoneStateListenerNative.super.getSubId();
    }

    public void onCallStateChanged(int i, String str) {
        PhoneStateListenerNative.super.onCallStateChanged(i, str);
    }

    public void onSrvccStateChanged(int i) {
        PhoneStateListenerNative.super.onSrvccStateChanged(i);
    }

    public void setSubId(int i) {
        PhoneStateListenerNative.super.setSubId(i);
    }
}
