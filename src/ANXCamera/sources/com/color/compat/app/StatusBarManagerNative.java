package com.color.compat.app;

import android.content.Context;
import android.util.Log;
import com.color.inner.app.StatusBarManagerWrapper;

public class StatusBarManagerNative {
    private static final String TAG = "StatusBarManagerNative";
    private StatusBarManagerWrapper mWrapper;

    public StatusBarManagerNative(Context context) {
        try {
            this.mWrapper = new StatusBarManagerWrapper(context);
        } catch (Throwable th) {
            Log.e(TAG, "StatusBarManagerNative: " + th.toString());
        }
    }

    public void collapsePanels() {
        try {
            this.mWrapper.collapsePanels();
        } catch (Throwable th) {
            Log.e(TAG, "collapsePanels: " + th.toString());
        }
    }

    public void expandNotificationsPanel() {
        try {
            this.mWrapper.expandNotificationsPanel();
        } catch (Throwable th) {
            Log.e(TAG, "expandNotificationsPanel: " + th.toString());
        }
    }

    public void setShortcutsPanelState(int i) {
        try {
            this.mWrapper.setShortcutsPanelState(i);
        } catch (Throwable th) {
            Log.e(TAG, "setShortcutsPanelState: " + th.toString());
        }
    }
}
