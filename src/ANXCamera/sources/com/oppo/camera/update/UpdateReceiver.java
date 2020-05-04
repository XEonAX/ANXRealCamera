package com.oppo.camera.update;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.oppo.camera.d;
import java.util.ArrayList;

public class UpdateReceiver extends BroadcastReceiver {
    private static final String ACTION_OTA_SUCCESSED = "oppo.intent.action.OPPO_OTA_UPDATE_SUCCESSED";
    private static final String ROM_UPDATE_ACTION = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS";
    private static final String TAG = "UpdateReceiver";
    private static final String UPDATE_LIST_KEY = "ROM_UPDATE_CONFIG_LIST";

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (ROM_UPDATE_ACTION.equals(action)) {
            ArrayList<String> arrayList = null;
            try {
                arrayList = intent.getStringArrayListExtra(UPDATE_LIST_KEY);
            } catch (Exception e) {
                e.printStackTrace();
            }
            d.a(TAG, "onReceive, updateList: " + arrayList);
            if (arrayList != null) {
                UpdateUtil.getInstance(context).startUpdate(arrayList.contains(UpdateUtil.FILE_NAME_TO_UPDATE), arrayList.contains(UpdateUtil.APP_TO_UPDATE), false);
            }
        } else if (ACTION_OTA_SUCCESSED.equals(action)) {
            d.a(TAG, "onReceive, action: " + action);
            com.oppo.camera.o.d.j(context);
            if (!com.oppo.camera.o.d.b()) {
                Process.killProcess(Process.myPid());
            }
        }
    }
}
