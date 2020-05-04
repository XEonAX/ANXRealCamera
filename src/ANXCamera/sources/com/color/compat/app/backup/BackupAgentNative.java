package com.color.compat.app.backup;

import android.app.backup.BackupAgent;
import android.content.Context;
import android.util.Log;
import com.color.inner.app.backup.BackupAgentWrapper;
import com.color.util.UnSupportedApiVersionException;
import com.color.util.VersionUtils;

public class BackupAgentNative {
    private static final String TAG = "BackupAgentNative";

    private BackupAgentNative() {
    }

    public static void attach(BackupAgent backupAgent, Context context) {
        try {
            if (VersionUtils.isQ()) {
                BackupAgentWrapper.attach(backupAgent, context);
                return;
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
