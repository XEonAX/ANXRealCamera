package com.meicam.sdk;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import org.json.JSONObject;

public class NvsCheckExpirationOnline {
    private static final String TAG = "Meicam";
    private static NvsCheckExpirationOnline m_checker;
    private Context mContext = null;
    private Handler mHandler = null;
    /* access modifiers changed from: private */
    public Thread mThread = null;
    private Runnable runnable = new Runnable() {
        public void run() {
            if (NvsCheckExpirationOnline.this.mThread != null) {
                NvsCheckExpirationOnline.this.mThread.start();
            }
        }
    };

    private NvsCheckExpirationOnline(Context context) {
        this.mContext = context;
        this.mHandler = new Handler();
        this.mThread = new Thread(new Runnable() {
            public void run() {
                NvsCheckExpirationOnline.this.checkExpiration();
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkExpiration() {
        NvsHttpsRequest nvsHttpsRequest = new NvsHttpsRequest();
        HashMap hashMap = new HashMap();
        hashMap.put("command", "isExpired");
        hashMap.put("appId", this.mContext.getPackageName());
        try {
            JSONObject jSONObject = new JSONObject(nvsHttpsRequest.httpsRequest("https://api.meishesdk.com/license/index.php", hashMap));
            if (jSONObject.getInt("errNo") != 0) {
                String string = jSONObject.getString("errString");
                Log.e(TAG, "" + string);
            } else if (jSONObject.getBoolean("isExpired")) {
                NvsSystemVariableManager.setSystemVariableInt(this.mContext, "isExpired", 1);
                NvsSystemVariableManager.setSystemVariableString(this.mContext, "lastTime", NvsTimeUtil.getCurrentTime());
            } else {
                NvsSystemVariableManager.setSystemVariableInt(this.mContext, "isExpired", 0);
                NvsSystemVariableManager.setSystemVariableString(this.mContext, "lastTime", NvsTimeUtil.getCurrentTime());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static NvsCheckExpirationOnline instance(Context context) {
        if (m_checker == null) {
            m_checker = new NvsCheckExpirationOnline(context);
        }
        return m_checker;
    }

    public void release() {
        if (m_checker != null) {
            this.mContext = null;
            m_checker = null;
            this.mHandler.removeCallbacksAndMessages((Object) null);
            try {
                this.mThread.join();
                this.mThread = null;
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
            }
        }
    }

    public void startCheck() {
        Context context = this.mContext;
        if (context != null) {
            String systemVariableString = NvsSystemVariableManager.getSystemVariableString(context, "lastTime");
            if (!TextUtils.isEmpty(systemVariableString)) {
                int hourRange = NvsTimeUtil.getHourRange(systemVariableString, NvsTimeUtil.getCurrentTime());
                if (hourRange >= 0 && hourRange <= 24) {
                    return;
                }
            }
            int randomTime = NvsTimeUtil.getRandomTime(30000, 60000);
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.postDelayed(this.runnable, (long) randomTime);
            }
        }
    }
}
